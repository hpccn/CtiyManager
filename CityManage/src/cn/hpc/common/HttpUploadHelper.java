package cn.hpc.common;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import org.apache.commons.lang.StringUtils;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.mime.HttpMultipartMode;
import org.apache.http.entity.mime.MultipartEntity;
import org.apache.http.entity.mime.content.FileBody;
import org.apache.http.entity.mime.content.StringBody;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.protocol.BasicHttpContext;
import org.apache.http.protocol.HttpContext;

import cn.city.manager.fragment.event.BaseEvent;

import android.net.http.AndroidHttpClient;
import android.util.Log;
import android.webkit.MimeTypeMap;

public class HttpUploadHelper {

	private final static String TAG = HttpUploadHelper.class.getSimpleName();
	// private final static String report_url =
	// "http://";
	protected AndroidHttpClient client = null;
	
	public void httpPostEvent(final String url, final BaseEvent baseEvent) {
		Thread th = new Thread() {

			@Override
			public void run() {
				// TODO Auto-generated method stub
				super.run();
				// "message = {\"success\": true}";
				postEvent(url, baseEvent);
			}

		};
		th.start();

	}

	private int postEvent(String url, final BaseEvent baseEvent) {
		if (null == baseEvent) return 400;

		int status = 0;
		HttpClient client = new DefaultHttpClient();

		HttpContext localContext = new BasicHttpContext();
		HttpPost post = new HttpPost(url);

		
		MultipartEntity entity = new MultipartEntity(
				HttpMultipartMode.BROWSER_COMPATIBLE);
		

		try {
			entity.addPart("kind", new StringBody(
					baseEvent.getCategory(),
					Charset.forName("utf-8")));
			entity.addPart("content", new StringBody(
					baseEvent.toJSONObject(),
					Charset.forName("utf-8")));
//			entity.addPart("content", new StringBody(
//					baseEvent.toJSONObject().toString(),
//					Charset.forName("utf-8")));

			if (null != baseEvent.getS_photo()) {
				File picFile = new File(baseEvent.getS_photo());
				if (null != picFile && picFile.isFile() && picFile.canRead()) {
					MimeTypeMap mimeTypeMap = MimeTypeMap.getSingleton();
					String mimeType = mimeTypeMap.getMimeTypeFromExtension(MimeTypeMap
							.getFileExtensionFromUrl(picFile.getName()));
					FileBody fileBody = new FileBody(picFile, picFile.getName(), mimeType, null);
					entity.addPart("photo", fileBody);
				}
			}
			
			if (null != baseEvent.getS_video()) {
				File file = new File(baseEvent.getS_video());
				if (null != file && file.isFile() && file.canRead()) {
					MimeTypeMap mimeTypeMap = MimeTypeMap.getSingleton();
					String mimeType = mimeTypeMap.getMimeTypeFromExtension(MimeTypeMap
							.getFileExtensionFromUrl(file.getName()));
					FileBody fileBody = new FileBody(file, file.getName(), mimeType, null);
					entity.addPart("video", fileBody);
				}
			}


			post.setEntity(entity);

			HttpResponse response = client.execute(post, localContext);
			status = response.getStatusLine().getStatusCode();

			Header[] headers = response.getAllHeaders();
			for (Header header : headers) {
				Log.d(header.getName(), header.getValue());
			}

			if (200 == response.getStatusLine().getStatusCode()) {
				Log.d("response ok ", "ok" + status);
			} else {
				Log.d("response error ", "error" + status);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}

	
	public void httpPostMap(final String url, final Map<String, String> msgMap) {
		Thread th = new Thread() {

			@Override
			public void run() {
				// TODO Auto-generated method stub
				super.run();
				// "message = {\"success\": true}";
				doPostMap(url, msgMap);
			}

		};
		th.start();

	}
	
	public void httpPost(final String url, final String data) {
		Thread th = new Thread() {

			@Override
			public void run() {
				// TODO Auto-generated method stub
				super.run();
				// "message = {\"success\": true}";
				Map <String, String> msgMap = new HashMap<String, String>();
				msgMap.put("data", data);
				doPostMap(url, msgMap);
			}

		};
		th.start();

	}
	
	public void httpPostPhotoFile(final String url, final String fileName) {
		Thread th = new Thread() {

			@Override
			public void run() {
				super.run();
				// "message = {\"success\": true}";
				final List<NameValuePair> nameValuePairs = new ArrayList<NameValuePair>();
				nameValuePairs.add(new BasicNameValuePair("param1", fileName));
				postFile(url, nameValuePairs);
			}

		};
		th.start();

	}

	private void doPostMap(final String url, final Map<String, String> map) {
		// 封装数据
//		Map<String, String> parmas = new HashMap<String, String>();
//		parmas.put("message", val);

//		DefaultHttpClient client = new DefaultHttpClient();// http客户端
		client = AndroidHttpClient.newInstance("android");
		HttpPost httpPost = new HttpPost(url);

		ArrayList<BasicNameValuePair> pairs = new ArrayList<BasicNameValuePair>();
//		if (map != null) {
//			Set<String> keys = map.keySet();
//			for (Iterator<String> i = keys.iterator(); i.hasNext();) {
//				String key = (String) i.next();
//				pairs.add(new BasicNameValuePair(key, map.get(key)));
//			}
//		}
		Iterator<Entry<String, String>> iterator = map.entrySet().iterator(); 
		while(iterator.hasNext()){
			Entry<String, String> entry = iterator.next();
			pairs.add(new BasicNameValuePair(entry.getKey(), entry.getValue()));
		}
		
		
		try {
			UrlEncodedFormEntity p_entity = new UrlEncodedFormEntity(pairs, "utf-8");
			/*
			 * 将POST数据放入HTTP请求
			 */
			httpPost.setEntity(p_entity);
			/*
			 * 发出实际的HTTP POST请求
			 */
			HttpResponse response = client.execute(httpPost);
			HttpEntity entity = response.getEntity();
			InputStream content = entity.getContent();
			String returnConnection = convertStreamToString(content);
			Log.d(TAG, returnConnection);
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	protected String convertStreamToString(InputStream is) {
		BufferedReader reader = new BufferedReader(new InputStreamReader(is));
		StringBuilder sb = new StringBuilder();
		String line = null;
		try {
			while ((line = reader.readLine()) != null) {
				sb.append(line);
			}
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				is.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return sb.toString();
	}
	
	
	public static Set<String> suffixes = new HashSet<String>();
	static {
		suffixes.add("png");
		suffixes.add("jpg");
		suffixes.add("jpeg");
		suffixes.add("gif");
		suffixes.add("bmp");
	}
	
	/**
	 * 			final List<NameValuePair> nameValuePairs = new ArrayList<NameValuePair>();
				nameValuePairs.add(new BasicNameValuePair("picture", picfile));
				postFile(uploadurl, nameValuePairs);
	 * 
	 * 
	 * 
	 * @param url
	 * @param nameValuePairs
	 * @return
	 */
	private int postFile(String url, List<NameValuePair> nameValuePairs) {

		int status = 0;
		HttpClient client = new DefaultHttpClient();

		HttpContext localContext = new BasicHttpContext();
		HttpPost post = new HttpPost(url);
//		System.out.println("sn:"+sn);
//		post.addHeader("sn", sn);
//		post.addHeader("mobile", mobile);
//		post.addHeader("version", version);
		
		MultipartEntity entity = new MultipartEntity(
				HttpMultipartMode.BROWSER_COMPATIBLE);
		try {
			for (int index = 0; index < nameValuePairs.size(); index++) {
				String fileSuffixe = StringUtils.substringAfterLast(
						nameValuePairs.get(index).getValue(), ".")
						.toLowerCase();
				if (suffixes.contains(fileSuffixe)) {
					// if (nameValuePairs.get(index).getName().contains("pic"))
					// {
					// entity.addPart("pic[]", new FileBody(new File(
					// nameValuePairs.get(index).getValue())));
					File picFile = new File(nameValuePairs.get(index).getValue());

					MimeTypeMap mimeTypeMap = MimeTypeMap.getSingleton();
					String mimeType = mimeTypeMap.getMimeTypeFromExtension(MimeTypeMap
							.getFileExtensionFromUrl(picFile.getName()));
					FileBody fileBody = new FileBody(picFile, picFile.getName(), mimeType, null);
					// entity.addPart("pic[]", fileBody);
					entity.addPart("picture", fileBody);
					
//					if (null != sn){
//						entity.addPart("sn", new StringBody(sn, Charset.forName("UTF-8")));
//					} 
//					if (null != mobile){
//						entity.addPart("mobile", new StringBody(mobile, Charset.forName("UTF-8")));
//					}

				} else {
					// Log.d(TAG, "input text : " +
					// input.getText()+" pic1path1 : "+pic1Path+" picpath2 : "+pic2Path
					// +" rewardValue : "+rewardValue);
					entity.addPart(nameValuePairs.get(index).getName(),
							new StringBody(
									nameValuePairs.get(index).getValue(),
									Charset.forName("utf-8")));

				}
			}
			post.setEntity(entity);

			HttpResponse response = client.execute(post, localContext);
			status = response.getStatusLine().getStatusCode();

			Header[] headers = response.getAllHeaders();
			for (Header header : headers) {
				Log.d(header.getName(), header.getValue());
			}

			if (200 == response.getStatusLine().getStatusCode()) {
				Log.d("response ok ", "ok" + status);
			} else {
				Log.d("response error ", "error" + status);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}

}
