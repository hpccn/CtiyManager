package cn.city.manager.fragment.event;

import org.json.JSONObject;

import com.google.gson.Gson;


public class t_registerEvent extends BaseEvent {
	
	public final static String category = t_registerEvent.class.getSimpleName();

	
	private String s_netid;//	网格ID	yes
	private String s_netname;//	网格名称	yes
	private String s_villageid;//	村ID	yes
	private String s_villagename;//	村名称	yes
	private String s_username;//	用户名	no
	private String s_password;//	密码	no
	private String s_name;//	真实姓名	no
	private String s_contact;//	联系方式	no
	private String s_level;//	所属级别	no
	private String s_department;//	所属部门	yes
	private String s_title;//	职务	no
	private String t_createdate;//	datetime	创建时间	no
	private String s_effective;//	int	是否有效	no
	
	
	@Override
	public BaseEvent fromJSONObject(JSONObject jObj) throws Exception {
		Gson gson = new Gson();
		t_registerEvent event = gson.fromJson(jObj.toString(), this.getClass());
		return event;
	}

	@Override
	public String getContent() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getVillage() {
		// TODO Auto-generated method stub
		return s_villagename;
	}

	@Override
	public String getNetGridId() {
		// TODO Auto-generated method stub
		return null;
	}





	@Override
	public void setAddress(String address) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void setL_latitude(double latitude) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void setD_longitude(double longitude) {
		// TODO Auto-generated method stub
		
	}


	public String getCategory() {
		return category;
	}

	@Override
	public String getS_photo() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setS_photo(String photo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public String getS_video() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setS_video(String video) {
		// TODO Auto-generated method stub
		
	}

	public String getS_netid() {
		return s_netid;
	}

	public void setS_netid(String s_netid) {
		this.s_netid = s_netid;
	}

	public String getS_netname() {
		return s_netname;
	}

	public void setS_netname(String s_netname) {
		this.s_netname = s_netname;
	}

	public String getS_villageid() {
		return s_villageid;
	}

	public void setS_villageid(String s_villageid) {
		this.s_villageid = s_villageid;
	}

	public String getS_villagename() {
		return s_villagename;
	}

	public void setS_villagename(String s_villagename) {
		this.s_villagename = s_villagename;
	}

	public String getS_username() {
		return s_username;
	}

	public void setS_username(String s_username) {
		this.s_username = s_username;
	}

	public String getS_password() {
		return s_password;
	}

	public void setS_password(String s_password) {
		this.s_password = s_password;
	}

	public String getS_name() {
		return s_name;
	}

	public void setS_name(String s_name) {
		this.s_name = s_name;
	}

	public String getS_contact() {
		return s_contact;
	}

	public void setS_contact(String s_contact) {
		this.s_contact = s_contact;
	}

	public String getS_level() {
		return s_level;
	}

	public void setS_level(String s_level) {
		this.s_level = s_level;
	}

	public String getS_department() {
		return s_department;
	}

	public void setS_department(String s_department) {
		this.s_department = s_department;
	}



	public String getT_createdate() {
		return t_createdate;
	}

	public void setT_createdate(String t_createdate) {
		this.t_createdate = t_createdate;
	}

	public String getS_title() {
		return s_title;
	}

	public void setS_title(String s_title) {
		this.s_title = s_title;
	}

	public String getS_effective() {
		return s_effective;
	}

	public void setS_effective(String s_effective) {
		this.s_effective = s_effective;
	}

	@Override
	public String getSortValue() {
		// TODO Auto-generated method stub
		return s_netid;
	}

	@Override
	public String getVillageId() {
		// TODO Auto-generated method stub
		return s_villageid;
	}

	@Override
	public String getYearMonth() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public double getD_latitude() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public double getD_longitude() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public String getS_solvestatus() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getT_updatetime() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getAddress() {
		// TODO Auto-generated method stub
		return null;
	}


}
