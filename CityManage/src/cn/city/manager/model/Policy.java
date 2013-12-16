package cn.city.manager.model;

import org.json.JSONObject;

import android.content.Context;

public interface Policy {
	public  boolean exec(Context context, JSONObject policy);

}
