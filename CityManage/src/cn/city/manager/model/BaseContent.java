package cn.city.manager.model;

import org.json.JSONException;
import org.json.JSONObject;

import android.graphics.drawable.Drawable;

public interface BaseContent {
	public boolean isMe(String category);
	public String getCategory();
	public JSONObject toJSONObject();
	public BaseContent fromJSONObject(JSONObject jObj)throws JSONException;
	public String getContent();
	public Drawable getIcon(); 
	
	public long getTime();
	public void setTime(long time);
	public void setAddress(String address);
	public void setLatitude(String latitude);
	public void setLongitude(String longitude);
}
