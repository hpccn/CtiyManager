package cn.city.manager.model;

import org.json.JSONObject;

import android.graphics.drawable.Drawable;

public interface BaseContent {
	public boolean isMe(String category);
	public String getCategory();
	public JSONObject toJSONObject();
	public BaseContent fromJSONObject(JSONObject jObj)throws Exception;
	public String getContent();
	public String getVillage();
	public String getCell();

	public Drawable getIcon(); 
	
	public long getTime();
	public void setTime(long time);
	public void setAddress(String address);
	public void setLatitude(String latitude);
	public void setLongitude(String longitude);
}
