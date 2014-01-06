package cn.hpc.common;

import java.io.IOException;
import java.io.InputStream;

import org.apache.http.HttpResponse;
import org.apache.http.HttpStatus;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;

import android.content.Context;
import android.net.http.AndroidHttpClient;
import android.util.Log;

public abstract class HttpStreamThread extends Thread {
	public static final String TAG = "HttpStreamThread";

	protected static Object syncObject = new Object();
	protected Context context;
	protected String url;

	protected AndroidHttpClient httpClient = null;

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

			return httpClient.execute(httppost);

		} catch (IOException e) {
			Log.e(TAG, "getNetworkResponse:" + e.getMessage(), e);
		}

		return null;
	}

	public boolean obtainRemoteData() {
		try {
			httpClient = AndroidHttpClient.newInstance("android");
			if (httpClient == null) {
				Log.d(TAG, "getCloudInfo mHttpClient == null");
				return false;
			}

			HttpResponse hr = obtainHttpPostResponse();
			if (hr != null) {
				if (hr.getStatusLine().getStatusCode() == HttpStatus.SC_OK) {
					InputStream is = hr.getEntity().getContent();
					boolean bRes = retrieveInputStream(is);
					is.close();
					hr.getEntity().consumeContent();

					return bRes;
				} else if (hr.getStatusLine().getStatusCode() == HttpStatus.SC_NO_CONTENT) {
					Log.d(TAG, "get no cloud content!");

					return true;
				}
			}
		} catch (Exception e) {
			/* 线程执行发生中断 */
			Log.e(TAG, "getCloudInfo: " + e.getMessage(), e);
		} finally {
			if (httpClient != null) {
				httpClient.close();
				// Log.d(TAG, "finally mHttpClient closed");
			}
		}

		return false;
	}

	public void setHttpPostParams(HttpPost httpPost) {
	}

	/*
	 * Process the file stream from network, such as parsing xml. Param is:
	 * input file stream from network Result: true - success false - fail
	 */
	public abstract boolean retrieveInputStream(InputStream is);
}
