package cn.hpc.common.cache;

/*
 * Copyright (C) 2011-2012 MIT Mobile Experience Lab
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
 */
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.lang.ref.SoftReference;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.URL;
import java.net.URLConnection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.concurrent.RejectedExecutionException;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.HttpResponseException;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.HttpParams;

import android.app.Activity;
import android.content.Context;

import android.net.Uri;
import android.os.AsyncTask;
import android.util.Log;
import android.widget.ImageView;

/**
 * <p>
 * An image download-and-cacher that also knows how to efficiently generate
 * thumbnails of various sizes.
 * </p>
 *
 * <p>
 * The cache is shared with the entire process, so make sure you
 * {@link #registerOnImageLoadListener(OnStringLoadListener)} and
 * {@link #unregisterOnImageLoadListener(OnStringLoadListener)} any load
 * listeners in your activities.
 * </p>
 *
 * @author <a href="mailto:spomeroy@mit.edu">Steve Pomeroy</a>
 *
 *使用方法：
 *
 *1 初始化ImageCache imc = ImageCache.getInstance(context);
 *2 应用中增加 implements ImageCache.OnImageLoadListener
 *3 imc.scheduleLoadImage(imgId, mUri, -1, -1); 之后，-1， -1 原始图片大小
 *4 在图片下载完成之后回调 onImageLoaded(long id, Uri imageUri, Drawable image)，处理下载完的图片
 *5 使用前需要注册Listener：imc.registerOnImageLoadListener(OnImageLoadListener);
 *6 使用完后注销Listener： imc.unregisterOnImageLoadListener(OnImageLoadListener);
 * 
 * 同步接口 getImage()
 * 异步接口 loadImage()
 */
public class StringCacheFactory extends DiskCache<String, String> {
	private static final String TAG = StringCacheFactory.class.getSimpleName();

	static final boolean DEBUG = false;

	private final HashSet<OnStringLoadListener> mLoadListeners = new HashSet<StringCacheFactory.OnStringLoadListener>();

	private final HashMap<String, SoftReference<String>> mMemCache = new HashMap<String, SoftReference<String>>();

	private long mIDCounter = 0;

	private static StringCacheFactory mInstance;

	private final HttpClient hc;



	// TODO make it so this is customizable on the instance level.
	/**
	 * Gets an instance of the cache.
	 *
	 * @param context
	 * @return an instance of the cache
	 */
	public static StringCacheFactory getInstance(Context context) {
		if (mInstance == null) {
			mInstance = new StringCacheFactory(context);
		}
		return mInstance;
	}
	final private static String cacheDir = android.os.Environment.getExternalStorageDirectory().getPath() + File.separator + ".cache";
	final private static File cacheFile = new File(cacheDir);
	private StringCacheFactory(Context context) {
//		super(context.getCacheDir(), null, getExtension(format));
		
		super(cacheFile, null, ".tmp");
		cacheFile.mkdirs();
		Log.d(TAG, "cache: " +context.getCacheDir());
		hc = getHttpClient();


	}



	/**
	 * If loading a number of images where you don't have a unique ID to
	 * represent the individual load, this can be used to generate a sequential
	 * ID.
	 *
	 * @return a new unique ID
	 */
	public synchronized long getNewID() {
		return mIDCounter++;
	}

	@Override
	protected String fromDisk(String key, InputStream in) {

		if (DEBUG) {
			Log.d(TAG, "disk cache hit");
		}
		try {
//			final Bitmap image = BitmapFactory.decodeStream(in);
//			return image;
			StringBuilder sb=new StringBuilder();
			InputStreamReader isr = new InputStreamReader(in);
			BufferedReader br = new BufferedReader(isr);
			String str = null;
			while (null != (str = br.readLine())){
				sb.append(str);
			}
			return sb.toString();
		} catch (final Exception oom) {
			oomClear();
			return null;
		}
	}

	@Override
	protected void toDisk(String key, String value, OutputStream out) {
		if (DEBUG) {
			Log.d(TAG, "cache write for key " + key);
		}
		
		try {
			out.write(value.getBytes());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
//		if (image != null) {
//			if (!image.compress(mCompressFormat, mQuality, out)) {
//				Log.e(TAG, "error writing compressed image to disk for key "
//						+ key);
//			}
//		} else {
//			Log.e(TAG, "attempting to write null image to cache");
//		}
	}

	/**
	 * Gets an instance of AndroidHttpClient if the devices has it (it was
	 * introduced in 2.2), or falls back on a http client that should work
	 * reasonably well.
	 *
	 * @return a working instance of an HttpClient
	 */
	private HttpClient getHttpClient() {
		HttpClient ahc;
		try {
			final Class<?> ahcClass = Class
					.forName("android.net.http.AndroidHttpClient");
			final Method newInstance = ahcClass.getMethod("newInstance",
					String.class);
			ahc = (HttpClient) newInstance.invoke(null, "ImageCache");

		} catch (final ClassNotFoundException e) {
			DefaultHttpClient dhc = new DefaultHttpClient();
			final HttpParams params = dhc.getParams();
			dhc = null;

			final SchemeRegistry registry = new SchemeRegistry();
			registry.register(new Scheme("http", PlainSocketFactory
					.getSocketFactory(), 80));
			registry.register(new Scheme("https", SSLSocketFactory
					.getSocketFactory(), 443));

			final ThreadSafeClientConnManager manager = new ThreadSafeClientConnManager(
					params, registry);
			ahc = new DefaultHttpClient(manager, params);

		} catch (final NoSuchMethodException e) {

			final RuntimeException re = new RuntimeException(
					"Programming error");
			re.initCause(e);
			throw re;

		} catch (final IllegalAccessException e) {
			final RuntimeException re = new RuntimeException(
					"Programming error");
			re.initCause(e);
			throw re;

		} catch (final InvocationTargetException e) {
			final RuntimeException re = new RuntimeException(
					"Programming error");
			re.initCause(e);
			throw re;
		}
		return ahc;
	}

	/**
	 * <p>
	 * Registers an {@link OnStringLoadListener} with the cache. When an image is
	 * loaded asynchronously either directly by way of
	 * {@link #scheduleLoadImage(long, Uri, int, int)} or indirectly by
	 * {@link #loadImage(long, Uri, int, int)}, any registered listeners will
	 * get called.
	 * </p>
	 *
	 * <p>
	 * This should probably be called from {@link Activity#onResume()}.
	 * </p>
	 *
	 * @param onImageLoadListener
	 */
	public void registerOnImageLoadListener(
			OnStringLoadListener onImageLoadListener) {
		mLoadListeners.add(onImageLoadListener);
	}

	/**
	 * <p>
	 * Unregisters the listener with the cache. This will not cancel any pending
	 * load requests.
	 * </p>
	 *
	 * <p>
	 * This should probably be called from {@link Activity#onPause()}.
	 * </p>
	 *
	 * @param onImageLoadListener
	 */
	public void unregisterOnImageLoadListener(
			OnStringLoadListener onImageLoadListener) {
		mLoadListeners.remove(onImageLoadListener);
	}

	private class LoadResult {
		public LoadResult(long id, Uri uri, String string) {
			this.id = id;
			this.uri = uri;
			this.string = string;
		}

		final Uri uri;
		final long id;
		final String string;
	}

	/**
	 * @param uri
	 *            the image uri
	 * @return a key unique to the given uri
	 */
	public String getKey(Uri uri) {
		return uri.toString();
	}

	/**
	 * Gets the given key as a drawable, retrieving it from memory cache if it's present. If it's not in memory cache,
	 * it will check disk cache as well and return a BitmapDrawable if it finds it there.
	 *
	 * @param key a key generated by {@link #getKey(Uri)} or {@link #getKey(Uri, int, int)}
	 * @return the drawable if it's in the cache or null.
	 * @throws IOException if there is a problem getting accessing the disk cache
	 */
	public String getText(String key) throws IOException {
		final SoftReference<String> memCached = mMemCache.get(key);
		if (memCached != null) {
			final String img = memCached.get();
			if (img != null) {
				if (DEBUG) {
					Log.d(TAG, "mem cache hit");
				}
				return img;
			}
		}

		return null;
	}

	/**
	 * Puts a drawable into memory cache.
	 * @param key a key generated by {@link #getKey(Uri)} or {@link #getKey(Uri, int, int)}
	 * @param value
	 */
	public void putStringData(String key, String value) {
		mMemCache.put(key, new SoftReference<String>(value));
	}


	
	public String getString(Uri uri)
			throws Exception {
		final String origKey = getKey(uri);

		String string = getText(origKey);
		if (string != null){
			return string;
		}

		String text = get(origKey);

		if(text == null){
			if ("file".equals(uri.getScheme())) {
				text = localTxt(new File(uri.getPath()));
			} else {
				final String sourceKey = getKey(uri);

				if (! contains(sourceKey)) {
					downloadText(sourceKey, uri);
				}
				text = localTxt(getFile(sourceKey));
				if (text == null){
					clear(sourceKey);
				}
			}
		}
		if (text == null) {
//			Log.w(TAG, "got null bitmap from request to scale");
			throw new Exception("got null bitmap from request to scale");

		}
		

		return text;
	}


	private class StringLoadTask extends AsyncTask<Object, Void, LoadResult> {

		@Override
		protected LoadResult doInBackground(Object... params) {
			final long id = (Long) params[0];
			final Uri uri = (Uri) params[1];

			try {
				return new LoadResult(id, uri, getString(uri));

				// TODO this exception came about, no idea why:
				// java.lang.IllegalArgumentException: Parser may not be null
			} catch (final Exception e) {
				Log.e(TAG, e.getLocalizedMessage(), e);
			} 
			return null;
		};

		@Override
		protected void onPostExecute(LoadResult result) {
			if (result == null) {
				Log.w(TAG, "ImageLoadTask result was null");
				return;
			}
			if (DEBUG) {
				Log.d(TAG, "OnImageLoadListener");
			}

			for (final OnStringLoadListener listener : mLoadListeners) {
				listener.onStringLoaded(result.id, result.uri, result.string);
			}
		};
	}

	private void oomClear() {
		Log.w(TAG, "out of memory, clearing mem cache");
		mMemCache.clear();
	}



	/**
	 * Schedules a load of the given image. When the image has finished loading
	 * and scaling, all registered {@link OnStringLoadListener}s will be called.
	 *
	 * @param id
	 *            An ID to keep track of image load requests. For one-off loads,
	 *            this can just be the ID of the {@link ImageView}. Otherwise,
	 *            an unique ID can be acquired using {@link #getNewID()}.
	 *
	 * @param uri
	 *            the image to be loaded. Can be a local file or a network
	 *            resource.


	 */
	public void scheduleLoadString(long id, Uri uri) {
		if (DEBUG){
			Log.d(TAG, "executing new ImageLoadTask");
		}
		final StringLoadTask imt = new StringLoadTask();

		try {
			imt.execute(id, uri);
		}catch (final RejectedExecutionException re){
			Log.e(TAG, re.getLocalizedMessage(), re);
			// oh well. At least we didn't crash!
		}
	}

	/**
	 * Cancels all the asynchronous image loads.
	 * Note: currently does not function properly.
	 *
	 */
	public void cancelLoads() {
		// TODO actually make it possible to cancel tasks
	}


	
	private static String localTxt(File localFile)
			throws ClientProtocolException, IOException {

		if (DEBUG){
			Log.d(TAG, "Local(" + localFile +  ")");
		}

		if (!localFile.exists()) {
			throw new IOException("local file does not exist: " + localFile);
		}
		if (!localFile.canRead()) {
			throw new IOException("cannot read from local file: " + localFile);
		}

		// the below borrowed from:
		// https://github.com/thest1/LazyList/blob/master/src/com/fedorvlasov/lazylist/ImageLoader.java

		StringBuilder sb=new StringBuilder();
		FileInputStream fi=new FileInputStream(localFile);
		InputStreamReader isr = new InputStreamReader(fi);
		BufferedReader br = new BufferedReader(isr);
		String str = null;
		while (null != (str = br.readLine())){
			sb.append(str);
		}
		
//		final String str =  BitmapFactory.decodeStream(new FileInputStream(localFile), null, null);

//		if (str == null) {
//			Log.e(TAG, localFile + " could not be decoded");
//		}

		return sb.toString();
	}
	
	private static final boolean USE_APACHE_NC = true;

	/**
	 * Blocking call to download an image. The image is placed directly into the disk cache at the given key.
	 *
	 * @param uri
	 *            the location of the image
	 * @return a decoded bitmap
	 * @throws ClientProtocolException
	 *             if the HTTP response code wasn't 200 or any other HTTP errors
	 * @throws IOException
	 */
	private void downloadText(String key, Uri uri) throws ClientProtocolException,
			IOException {

		if (DEBUG){
			Log.d(TAG, "downloadImage("+uri+")");
		}
		if (USE_APACHE_NC){
			final HttpGet get = new HttpGet(uri.toString());

			final HttpResponse hr = hc.execute(get);
			final StatusLine hs = hr.getStatusLine();
			if (hs.getStatusCode() != 200) {
				throw new HttpResponseException(hs.getStatusCode(),
						hs.getReasonPhrase());
			}

			final HttpEntity ent = hr.getEntity();


			try {
				putRaw(key, ent.getContent());

			} finally {
				ent.consumeContent();
			}
		}else{
			final URLConnection con = new URL(uri.toString()).openConnection();
			putRaw(key, con.getInputStream());
		}
	}

	/**
	 * Implement this and register it using
	 * {@link StringCacheFactory#registerOnImageLoadListener(OnStringLoadListener)} to be
	 * notified when asynchronous image loads have completed.
	 *
	 * @author <a href="mailto:spomeroy@mit.edu">Steve Pomeroy</a>
	 *
	 */
	public interface OnStringLoadListener {
		/**
		 * Called when the image has been loaded and scaled.
		 *
		 * @param id the ID provided by {@link StringCacheFactory#loadImage(long, Uri, int, int)} or {@link StringCacheFactory#scheduleLoadImage(long, Uri, int, int)}
		 * @param imageUri the uri of the image that was originally requested
		 * @param image the loaded and scaled image
		 */
		public void onStringLoaded(long id, Uri uri, String string);
	}
}
