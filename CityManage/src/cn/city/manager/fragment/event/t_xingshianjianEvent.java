package cn.city.manager.fragment.event;



import org.json.JSONObject;

import com.google.gson.Gson;



public class t_xingshianjianEvent extends BaseEvent {
//	public final static String category = IllegalStructure.class.getSimpleName();//"IllegalStructure";

//	protected long time;
	protected int id;
	protected String s_netid;// ": 1,
	protected String s_villagename;// ":"村名",
	protected String s_netname;// ":"网格名称",
	protected String s_eventtype;// ":"事件类型",
	protected String s_eventid;// ":"事件ID",
	protected String t_tijiao;// ":1380962998588,// 提交日期
	protected String s_discoverername;// ":"发现人",
	protected String s_discovererlevel;// ":"发现人级别",
	protected String s_solvestatus;// ": "解决状态",
	
	protected String s_netleadername;// ":"格长姓名",
	protected String s_netleadertel;// ":"格长电话",
	protected String s_updatename;// ":"最近更新人",
	protected String s_updatelevel;// ":"更新人级别",
	protected String t_updatetime;// ":1380962998588,// 更新时间
	protected String s_remark;// ":"备注",

	protected String s_yinhuanaddress;//	事件地点	no	事件专属字段。
	protected String s_yinhuanxiangqing;//	nvarchar(500)	基本情况	no	事件专属字段。

	protected double d_latitude;// ": "38.112",
	protected double d_longitude;// ": "116.002"

	
	public t_xingshianjianEvent() {
		super();
//		time = System.currentTimeMillis();
	}

	public t_xingshianjianEvent(JSONObject jObj) {
		super();
//		if (null == jObj) {
//			time = System.currentTimeMillis();
//			return;
//		}
		try {
			fromJSONObject(jObj);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

//	Type listType;

	@Override
	public BaseEvent fromJSONObject(JSONObject jObj) throws Exception {
		if (null == jObj)
			return null;
		Gson gson = new Gson();  
//		Type listType = new TypeToken<IllegalStructureEvent>(){}.getType();
////		Gson gson = new Gson();
//		IllegalStructureEvent event = gson.fromJson(jObj.toString(), listType);
		t_xingshianjianEvent event = gson.fromJson(jObj.toString(), this.getClass());

		
		return event;
	}








	public String getS_netid() {
		return s_netid;
	}

	public void setS_netid(String netid) {
		this.s_netid = netid;
	}

	public String getS_villagename() {
		return s_villagename;
	}

	public void setS_villagename(String villagename) {
		this.s_villagename = villagename;
	}

	public String getS_netname() {
		return s_netname;
	}

	public void setS_netname(String netname) {
		this.s_netname = netname;
	}

	public String getS_eventtype() {
		return s_eventtype;
	}

	public void setS_eventtype(String eventtype) {
		this.s_eventtype = eventtype;
	}

	public String getS_eventid() {
		return s_eventid;
	}

	public void setS_eventid(String eventid) {
		this.s_eventid = eventid;
	}

	public String getS_tijiao() {
		return t_tijiao;
	}

	public void setS_tijiao(String tijiao) {
		this.t_tijiao = tijiao;
	}

	public String getS_discoverername() {
		return s_discoverername;
	}

	public void setS_discoverername(String discoverername) {
		this.s_discoverername = discoverername;
	}

	public String getS_discovererlevel() {
		return s_discovererlevel;
	}

	public void setS_discovererlevel(String discovererlevel) {
		this.s_discovererlevel = discovererlevel;
	}



	public String getS_netleadername() {
		return s_netleadername;
	}

	public void setS_netleadername(String netleadername) {
		this.s_netleadername = netleadername;
	}

	public String getS_netleadertel() {
		return s_netleadertel;
	}

	public void setS_netleadertel(String netleadertel) {
		this.s_netleadertel = netleadertel;
	}

	public String getS_updatename() {
		return s_updatename;
	}

	public void setS_updatename(String updatename) {
		this.s_updatename = updatename;
	}

	public String getS_updatelevel() {
		return s_updatelevel;
	}

	public void setS_updatelevel(String updatelevel) {
		this.s_updatelevel = updatelevel;
	}

	public String getT_updatetime() {
		return t_updatetime;
	}

	public void setT_updatetime(String updatetime) {
		this.t_updatetime = updatetime;
	}

//	public String getUpdateid() {
//		return updateid;
//	}
//
//	public void setUpdateid(String updateid) {
//		this.updateid = updateid;
//	}

	public String getS_remark() {
		return s_remark;
	}

	public void setS_remark(String remark) {
		this.s_remark = remark;
	}




	public double getD_latitude() {
		return d_latitude;
	}

	public void setL_latitude(double latitude) {
		this.d_latitude = latitude;
	}

	public double getD_longitude() {
		return d_longitude;
	}

	public void setD_longitude(double longitude) {
		this.d_longitude = longitude;
	}



	@Override
	public String getVillage() {
		// TODO Auto-generated method stub
		return s_villagename;
	}

	@Override
	public String getNetGridId() {
		// TODO Auto-generated method stub
		return s_netname;
	}




	@Override
	public String getSortValue() {
		// TODO Auto-generated method stub
		return t_tijiao;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Override
	public String getVillageId() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getYearMonth() {
		// TODO Auto-generated method stub
		return t_tijiao;
	}

	@Override
	public String getContent() {
		// TODO Auto-generated method stub
		return s_yinhuanxiangqing;
	}

	@Override
	public String getS_solvestatus() {
		// TODO Auto-generated method stub
		return s_solvestatus;
	}

	@Override
	public String getAddress() {
		// TODO Auto-generated method stub
		return s_yinhuanaddress;
	}

	@Override
	public void setAddress(String address) {
		// TODO Auto-generated method stub
		s_yinhuanaddress = address;
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

	public String getT_tijiao() {
		return t_tijiao;
	}

	public void setT_tijiao(String t_tijiao) {
		this.t_tijiao = t_tijiao;
	}

	public String getS_yinhuanaddress() {
		return s_yinhuanaddress;
	}

	public void setS_yinhuanaddress(String s_yinhuanaddress) {
		this.s_yinhuanaddress = s_yinhuanaddress;
	}

	public String getS_yinhuanxiangqing() {
		return s_yinhuanxiangqing;
	}

	public void setS_yinhuanxiangqing(String s_yinhuanxiangqing) {
		this.s_yinhuanxiangqing = s_yinhuanxiangqing;
	}

	public void setS_solvestatus(String s_solvestatus) {
		this.s_solvestatus = s_solvestatus;
	}




}
