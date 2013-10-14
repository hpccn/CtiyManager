package cn.city.manage.model.food;

import org.json.JSONException;
import org.json.JSONObject;

import android.graphics.drawable.Drawable;

import cn.city.manage.model.BaseContent;



public class FoodEvent implements BaseContent {

	private int level;
	private String status; //状态
	private boolean businessLicence; //营业执照
	private boolean hygieneLicence;//卫生许可证
	private String note;//
	private String enterprise;
	private String principal;//负责人
	private long time;//检查时间long 
	private String address;//
	private String latitude;
	private String longitude;
	
	public final static String category = "food";
	
	public FoodEvent(){
		time = System.currentTimeMillis();
	}
	
	public FoodEvent(JSONObject jObj){
		if (null == jObj) {
			time = System.currentTimeMillis();
			return;
		}
		try {
			fromJSONObject(jObj);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}	
	
	@Override
	public String getCategory() {
		// TODO Auto-generated method stub
		return category;
	}
	
	@Override
	public JSONObject toJSONObject() {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public BaseContent fromJSONObject(JSONObject jObj) throws JSONException {
		if (null == jObj) return null;
		
		if (jObj.has("level")){
			level = jObj.getInt("level");
		}
		
		if (jObj.has("status")){
			status = jObj.getString("status");
		}

		if (jObj.has("business_licence")){
			businessLicence = jObj.getBoolean("business_licence");
		}
		
		if (jObj.has("hygiene_licence")){
			hygieneLicence = jObj.getBoolean("hygiene_licence");//卫生许可证
		}

		if (jObj.has("note")){
			note = jObj.getString("note");
		}
		

		if (jObj.has("enterprise")){
			enterprise = jObj.getString("enterprise");
		}

		if (jObj.has("principal")){
			principal = jObj.getString("principal");//负责人
		}
		

		if (jObj.has("time")){
			time = jObj.getLong("time");//检查时间long 
		}

		if (jObj.has("address")){
			address = jObj.getString("address");
		}


		if (jObj.has("latitude")){
			latitude = jObj.getString("latitude");
		}

		if (jObj.has("longitude")){
			longitude = jObj.getString("longitude");
		}
		
		return this;
	}

	
	
	public int getLevel() {
		return level;
	}
	public void setLevel(int level) {
		this.level = level;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public boolean isBusinessLicence() {
		return businessLicence;
	}
	public void setBusinessLicence(boolean businessLicence) {
		this.businessLicence = businessLicence;
	}
	public boolean isHygieneLicence() {
		return hygieneLicence;
	}
	public void setHygieneLicence(boolean hygieneLicence) {
		this.hygieneLicence = hygieneLicence;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	public String getEnterprise() {
		return enterprise;
	}
	public void setEnterprise(String enterprise) {
		this.enterprise = enterprise;
	}
	public String getPrincipal() {
		return principal;
	}
	public void setPrincipal(String principal) {
		this.principal = principal;
	}
	public long getTime() {
		return time;
	}
	public void setTime(long time) {
		this.time = time;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getLatitude() {
		return latitude;
	}
	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}
	public String getLongitude() {
		return longitude;
	}
	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}

	@Override
	public boolean isMe(String category) {
		// TODO Auto-generated method stub
		return this.category.equals(category);
	}

	@Override
	public String getContent() {
		// TODO Auto-generated method stub
		return note;
	}

	@Override
	public Drawable getIcon() {
		// TODO Auto-generated method stub
		return null;
	}


}
