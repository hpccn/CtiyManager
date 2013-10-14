package cn.city.manage.model;


import android.content.Context;
import android.view.View;



public abstract class BaseFragment {
	public static final String ARG_SECTION_NUMBER = "section_number";
	
	public abstract String getTitle();
	public abstract View getView(final Context context);
	public abstract void setJsonData(final String jsonData);
	public abstract BaseContent getBaseContent();
}
