package cn.hpc.common;

import java.io.IOException;
import java.io.InputStream;

import org.apache.http.HttpResponse;
import org.apache.http.HttpStatus;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;

import android.content.Context;
import android.net.http.AndroidHttpClient;
import android.os.Handler;
import android.util.Log;



public abstract class HttpStreamThread extends Thread {
	public static final String TAG = "HttpStreamThread";
	public static final  int HTTP_TYPE_GET = 0;
	public static final  int HTTP_TYPE_POST = 1;
	
	protected static Object mSyncObject = new Object();
	protected Context mContext;
	protected Handler mHandler = null;
	protected String mUrl;
	protected int mHttpType;
	protected AndroidHttpClient mHttpClient = null;

	public HttpStreamThread(Context context, String url, int httpType) {
		mContext = context;
		mUrl = url;
		mHttpType = httpType;
//		imc = ImageCacheFactory.getInstance(context);

	}

	public HttpStreamThread(Context context, Handler handler, String url, int httpType) {
		mContext = context;
		mHandler = handler;
		mUrl = url;
		mHttpType = httpType;

	}

	@Override
	public void run() {
		if(mUrl == null || mUrl.length() == 0) {
			Log.e(TAG, "invalid cloud url!");
			return;
		}
		
		synchronized (mSyncObject) {
//			Log.d(TAG, "start get cloud info thread!");
			obtainRemoteData();
		}	
	}

	public HttpResponse getNetworkResponse() {
		try {
			Log.d(TAG, "getNetworkResponse url:" + mUrl);
			if(mHttpType == HTTP_TYPE_GET) {
				return mHttpClient.execute(new HttpGet(mUrl));
			} else {
				HttpPost httppost = new HttpPost(mUrl);
				setHttpPostParams(httppost);
	
				return mHttpClient.execute(httppost);
			}
		} catch (IOException e) {
			Log.e(TAG, "getNetworkResponse:" + e.getMessage(), e);
		}
		
		return null;
	}
	
	public boolean obtainRemoteData() {
		try {
			mHttpClient = AndroidHttpClient.newInstance("android");
			if(mHttpClient == null) {
				Log.d(TAG, "getCloudInfo mHttpClient == null");
				return false;
			}
			
			HttpResponse hr = getNetworkResponse();
			if(hr != null) {
				if(hr.getStatusLine().getStatusCode() == HttpStatus.SC_OK) {
					InputStream is = hr.getEntity().getContent();
					boolean bRes = processData(is);
					is.close();
					hr.getEntity().consumeContent();

					return bRes;
				} else if(hr.getStatusLine().getStatusCode() == HttpStatus.SC_NO_CONTENT) {
					Log.d(TAG, "get no cloud content!");

					return true;
				}
			}
		} catch (Exception e) {
			/* 线程执行发生中断 */
			Log.e(TAG, "getCloudInfo: " + e.getMessage(), e);
		} finally {
			if(mHttpClient != null) {
				mHttpClient.close();
//				Log.d(TAG, "finally mHttpClient closed");
			}
		}
		
		return false;
	}

	
	public void setHttpPostParams(HttpPost httpPost) {
	}
	
	/*
	 * Process the file stream from network, such as parsing xml.
	 * Param is: input file stream from network
	 * Result:	true - success
	 * 			false - fail 
	 */
	public abstract boolean processData(InputStream is);
}
