package cn.city.manager.fragment;


import java.text.SimpleDateFormat;
import java.util.Date;

import cn.city.manager.fragment.event.BaseEvent;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;



public abstract class BaseFragment {
	public static final String ARG_SECTION_NUMBER = "section_number";
	
	public abstract String getTitle();
	public abstract String getSubTitle();
	public abstract View getView(final Context context, ViewGroup parent);
	public abstract void setJsonData(final String jsonData);
	public abstract BaseEvent getBaseContent();
	public abstract void updateView(View rootView);
	public abstract void updateData(View rootView);
	
	final private SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	
	protected String jsonData;
	final protected String millisecondToString(long millisecond){
		Date date = new Date(millisecond);
		String dateTime = sdf.format(date);
		return dateTime;
	}

}
