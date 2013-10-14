package cn.hpc.common;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;

import android.util.Log;

public class HttpPostMsg {

	private final static String TAG = HttpPostMsg.class.getSimpleName();
	// private final static String report_url =
	// "http://";

	public void report(final String report_url, final Map<String, String> msgMap) {
		Thread th = new Thread() {

			@Override
			public void run() {
				// TODO Auto-generated method stub
				super.run();
				// "message = {\"success\": true}";
				doPost(report_url, msgMap);
			}

		};
		th.start();

	}


	private void doPost(String url, Map<String, String> parmas) {
		// 封装数据
//		Map<String, String> parmas = new HashMap<String, String>();
//		parmas.put("message", val);

		DefaultHttpClient client = new DefaultHttpClient();// http客户端
//		HttpPost httpPost = new HttpPost("http://mhycoe.com/test/post.php");
		HttpPost httpPost = new HttpPost(url);

		ArrayList<BasicNameValuePair> pairs = new ArrayList<BasicNameValuePair>();
		if (parmas != null) {
			Set<String> keys = parmas.keySet();
			for (Iterator<String> i = keys.iterator(); i.hasNext();) {
				String key = (String) i.next();
				pairs.add(new BasicNameValuePair(key, parmas.get(key)));
			}
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
}
