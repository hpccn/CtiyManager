package cn.city.manager.model;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.protocol.HTTP;

import android.content.Context;
import android.net.Uri;
import cn.hpc.common.HttpStreamThread;

public class EventHttpStreamThread extends HttpStreamThread {
	public interface OnStringLoadListener {
		public void onStringLoaded(String url, String string);
		public void onMoved(String url);
	}
	
	private OnStringLoadListener listener;
	public EventHttpStreamThread(Context context, String url, OnStringLoadListener listener) {
		super(context, url);
		this.listener = listener;
	}

	@Override
	public boolean retrieveInputStream(InputStream is) {
//		int size = 0;
//		try {
//			size = is.available();
//		} catch (Exception e1) {
//			// TODO Auto-generated catch block
//			e1.printStackTrace();
//		}
//
//        // Read the entire asset into a local byte buffer.
//        byte[] buffer = new byte[size];
//        try {
//			is.read(buffer);
//		} catch (IOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		StringBuilder sb=new StringBuilder();
		InputStreamReader isr = new InputStreamReader(is);
		BufferedReader br = new BufferedReader(isr);
		String str = null;
		try {
			while (null != (str = br.readLine())){
				sb.append(str);
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        listener.onStringLoaded(url, sb.toString());
		return true;
	}

	@Override
	public void setHttpPostParams(HttpPost httpPost) {

		
		List<BasicNameValuePair> pairs = new ArrayList<BasicNameValuePair>();
		pairs.add(new BasicNameValuePair("name", "010101"));
		pairs.add(new BasicNameValuePair("pass", "123456"));
		pairs.add(new BasicNameValuePair("form_build_id", "form-MfVHBGW6U5fLmiZ2Idcz4MHHwJALAdFNe2ue_sP0gBc"));
		pairs.add(new BasicNameValuePair("form_id", "user_login_block"));
		pairs.add(new BasicNameValuePair("op", " 登 录 "));
		try {
			httpPost.setEntity(new UrlEncodedFormEntity(pairs, HTTP.UTF_8));
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public void moved(String url) {
		// TODO Auto-generated method stub
		listener.onMoved(url);
	}

}
