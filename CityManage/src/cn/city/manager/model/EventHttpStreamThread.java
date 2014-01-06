package cn.city.manager.model;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

import android.content.Context;
import android.net.Uri;
import cn.hpc.common.HttpStreamThread;

public class EventHttpStreamThread extends HttpStreamThread {
	public interface OnStringLoadListener {
		public void onStringLoaded(String url, String string);
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

}
