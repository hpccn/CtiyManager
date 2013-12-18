package cn.city.manager.model;


import android.content.Context;
import android.view.View;
import android.view.ViewGroup;



public abstract class BaseFragment {
	public static final String ARG_SECTION_NUMBER = "section_number";
	
	public abstract String getTitle();
	public abstract String getSubTitle();
	public abstract View getView(final Context context, ViewGroup parent);
	public abstract void setJsonData(final String jsonData);
	public abstract BaseContent getBaseContent();
}
