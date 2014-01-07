package cn.hpc.common;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.HttpStatus;
import org.apache.http.client.CookieStore;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.cookie.Cookie;
import org.apache.http.impl.client.DefaultHttpClient;

import android.content.Context;
import android.net.http.AndroidHttpClient;
import android.util.Log;

public abstract class HttpStreamThread extends Thread {
	public static final String TAG = "HttpStreamThread";

	protected static Object syncObject = new Object();
	protected Context context;
	protected String url;

	protected DefaultHttpClient httpClient = null;

	public static List<Cookie> cookies = null;
	public final static String cookie_key = "SESS273b99b6acbccb3052ab6aa8f50fc105";
	public static String cookie_value = null;
	
	public static Cookie sessionCookie = null;
	
	public HttpStreamThread(Context context, String url) {
		this.context = context;
		this.url = url;
	}


	@Override
	public void run() {
		if (url == null || url.length() == 0) {
			Log.e(TAG, "invalid cloud url!");
			return;
		}

		synchronized (syncObject) {
			// Log.d(TAG, "start get cloud info thread!");
			obtainRemoteData();
		}
	}

	public HttpResponse obtainHttpGetResponse() {
		try {
			Log.d(TAG, "getNetworkResponse url:" + url);

			return httpClient.execute(new HttpGet(url));
		} catch (IOException e) {
			Log.e(TAG, "getNetworkResponse:" + e.getMessage(), e);
		}

		return null;
	}

	public HttpResponse obtainHttpPostResponse() {
		try {
			Log.d(TAG, "getNetworkResponse url:" + url);

			HttpPost httppost = new HttpPost(url);
			setHttpPostParams(httppost);
			if(null != cookie_value) {
				httppost.addHeader("Cookie", cookie_key + "=" + cookie_value);
			}
			return httpClient.execute(httppost);

		} catch (IOException e) {
			Log.e(TAG, "getNetworkResponse:" + e.getMessage(), e);
		}

		return null;
	}

	public boolean obtainRemoteData() {
		try {
			httpClient = new DefaultHttpClient();//AndroidHttpClient.newInstance("android");
			if (httpClient == null) {
				Log.d(TAG, "getCloudInfo mHttpClient == null");
				return false;
			}

			HttpResponse hr = obtainHttpPostResponse();
			if (hr != null) {
				switch (hr.getStatusLine().getStatusCode()) {
				case HttpStatus.SC_MOVED_TEMPORARILY:
					Header header = hr.getFirstHeader("Location");
					String gateway = header.getValue();
					moved(gateway);
					break;
				case HttpStatus.SC_OK:
					
					if (null == cookies) {
						 CookieStore mCookieStore = httpClient.getCookieStore();
			             cookies = mCookieStore.getCookies();
					}
					for (int i = 0; i < cookies.size(); i++) {
	                    //这里是读取Cookie['PHPSESSID']的值存在静态变量中，保证每次都是同一个值
	                    if (cookie_key.equals(cookies.get(i).getName())) {
	                    	cookie_value = cookies.get(i).getValue();
	                    	sessionCookie = cookies.get(i);
	                        break;
	                    }

	                }
					InputStream is = hr.getEntity().getContent();
					boolean bRes = retrieveInputStream(is);
					is.close();
					hr.getEntity().consumeContent();

					return bRes;

				case HttpStatus.SC_NO_CONTENT:
					Log.d(TAG, "get no cloud content!");

					return true;
				default:

				}

			}
		} catch (Exception e) {
			/* 线程执行发生中断 */
			Log.e(TAG, "getCloudInfo: " + e.getMessage(), e);
		} finally {
//			if (httpClient != null) {
//				httpClient.close();
//				// Log.d(TAG, "finally mHttpClient closed");
//			}
		}

		return false;
	}

	public abstract void setHttpPostParams(HttpPost httpPost);
	
	public abstract void moved(String url);

	/*
	 * Process the file stream from network, such as parsing xml. Param is:
	 * input file stream from network Result: true - success false - fail
	 */
	public abstract boolean retrieveInputStream(InputStream is);
}
