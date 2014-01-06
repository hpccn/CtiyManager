package cn.city.manager.fragment.event;


import java.lang.reflect.Type;

import org.json.JSONObject;

import com.google.gson.Gson;

import android.graphics.drawable.Drawable;

public class t_weijianEvent extends BaseEvent {
//	public final static String category = IllegalStructure.class.getSimpleName();//"IllegalStructure";

//	private long time;
	
	private String s_netid;// ": 1,
	private String s_villagename;// ":"村名",
	private String s_netname;// ":"网格名称",
	private String s_eventtype;// ":"事件类型",
	private String s_eventid;// ":"事件ID",
	private String t_tijiao;// ":1380962998588,// 提交日期
	private String s_discoverername;// ":"发现人",
	private String s_discovererlevel;// ":"发现人级别",
	private String s_solvestatus;// ": "解决状态",
	private String s_result;//解决结果
	private String t_solvetime;// ": 1380962998588,
	private String s_unsolvedreason;// ": "未解决原因",
	
	private String s_photo;//"现场照片",
	private String t_photouploaddate;//380962998588,
	private String s_photoposition;//"照片地理信息",
	private String s_photouploadperson;//"照片上传人",
	private String s_photouploadlevel;//"照片上传人级别",
	private String s_video;//"现场视频",
	private String t_videouploaddate;//1380962998588,
	private String s_videouploadperson;//"视频上传人"
	private String s_videouploadlevel;//"视频上传人级别"
	
	private String s_leaderinstruction;// ":"领导批示",
	private String s_voiceinstruction;// ":"语音批示",
	private String t_instructiondate;// ":"批示日期",
	private String s_leaderid;// ":"批示人id",
	private String s_leadername;// ":"批示人姓名",
	private String s_netleadername;// ":"格长姓名",
	private String s_netleadertel;// ":"格长电话",
	private String s_updatename;// ":"最近更新人",
	private String s_updatelevel;// ":"更新人级别",
	private String t_updatetime;// ":1380962998588,
//	private String updateid;// ":"更新人id",
	private String s_remark;// ":"备注",
	private String s_yinhuanaddress;// ":"违法建设具体位置",
	private String s_weijianxiangduiren;// ":"违法建设相对人",
	private String s_yinhuanxiangqing;// ":"隐患描述",
	private String s_landstatus;// ":"土地性质",
	private double d_landarea;// ":"占地面积（亩）",
	private String s_construction;// ":"建筑结构",
	private double d_jianzhumianji;// ":100,
	private String t_buildtime;// ":1380962998588,
	private String s_solvemethod;// ":"当日新发现和拆除情况",
	private String s_yinhuanren;// ":"涉及人姓名",
	private String s_yinhuanlianluo;// ":"涉及人联系方式",
	private String t_jianshedate;// ":1380962998588,
	private double d_latitude;// ": "38.112",
	private double d_longitude;// ": "116.002"
//	private List<MediaContent> photos = new ArrayList<MediaContent>();
//	private List<MediaContent> videos = new ArrayList<MediaContent>();
	
//	private String[] medias = {"photo", "video"};
	
//	private String[] jsStrings = {
//			//double
//			"jianzhumianji", "landarea"
//			, "latitude", "longitude"
//			// long
//			,"netid", "committime","instructiontime"
//			,"updatetime", "buildtime", "jianshedate","solvetime"
//			// string
//			,"villagename", "netname", "eventtype",
//            "eventid",
//            "discoverername",
//            "discovererlevel",
//            "leaderinstruction",
//            "voiceinstruction",
//            
//            "leaderid",
//            "leadername",
//            "netleadername",
//            "netleadertel",
//            "updatename",
//            "updatelevel",
//            "updateid",
//            "remark",
//            "yinhuanaddress",
//            "weijianxiangduiren",
//            "yinhuanxiangqing",
//            "landstatus",
//            
//            "construction",
//            
//            
//            "solvemethod",
//            "yinhuanren",
//            "yinhuanlianluo",
//            
//            "solvestatus",
//            
//            "unsolvedreason"
//           };
	
	public t_weijianEvent() {
		super();
//		time = System.currentTimeMillis();
	}

	public t_weijianEvent(JSONObject jObj) {
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
		t_weijianEvent event = gson.fromJson(jObj.toString(), this.getClass());
//		yinhuanxiangqing = jObj.getString("yinhuanxiangqing");

//		Object obj = null;
//		for (String str : jsStrings){
//			if (jObj.has(str)) {
////				Log.d("", str);
//				obj = jObj.get(str);
//				setProperty("set"+str, obj); //这个方法写的还有点不完善
//
////				 Field field = this.getClass().getDeclaredField(str);
////				 boolean accessible = field.isAccessible();
////				field.setAccessible(true);
////				field.set(this, obj);
////				field.setAccessible(accessible);
//			}
//		}
		
/*		
		listType = new TypeToken<LinkedList<MediaContent>>(){}.getType();
		LinkedList<MediaContent> extras;

		多照片,多視頻
		String listExtra = "photo";
		if (jObj.has(listExtra)){
			obj = jObj.get(listExtra);
			extras = gson.fromJson(obj.toString(), listType);
			photos.addAll(extras);
		}
		event.setPhotos(photos);

//		for (Iterator iterator = users.iterator(); iterator.hasNext();) {
//			MediaContent media = (MediaContent) iterator.next();
//			System.out.println(media.getFile());
//		}

		listExtra = "video";
		if (jObj.has(listExtra)){
			obj = jObj.get(listExtra);
			extras = gson.fromJson(obj.toString(), listType);
			videos.addAll(extras);
			
		}
		event.setVideos(videos);
		
*/
		
		return event;
	}

	@Override
	public String getContent() {
		// TODO Auto-generated method stub
		return s_yinhuanxiangqing;
	}

	@Override
	public Drawable getIcon() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public long getTime() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void setTime(long time) {
		// TODO Auto-generated method stub

	}

	@Override
	public void setAddress(String address) {
		// TODO Auto-generated method stub

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

	public String getS_leaderinstruction() {
		return s_leaderinstruction;
	}

	public void setS_leaderinstruction(String leaderinstruction) {
		this.s_leaderinstruction = leaderinstruction;
	}

	public String getS_voiceinstruction() {
		return s_voiceinstruction;
	}

	public void setS_voiceinstruction(String voiceinstruction) {
		this.s_voiceinstruction = voiceinstruction;
	}

	public String getS_instructiondate() {
		return t_instructiondate;
	}

	public void setS_instructiondate(String instructiondate) {
		this.t_instructiondate = instructiondate;
	}

	public String getS_leaderid() {
		return s_leaderid;
	}

	public void setS_leaderid(String leaderid) {
		this.s_leaderid = leaderid;
	}

	public String getS_leadername() {
		return s_leadername;
	}

	public void setS_leadername(String leadername) {
		this.s_leadername = leadername;
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

	public String getS_yinhuanaddress() {
		return s_yinhuanaddress;
	}

	public void setS_yinhuanaddress(String yinhuanaddress) {
		this.s_yinhuanaddress = yinhuanaddress;
	}

	public String getS_weijianxiangduiren() {
		return s_weijianxiangduiren;
	}

	public void setS_weijianxiangduiren(String weijianxiangduiren) {
		this.s_weijianxiangduiren = weijianxiangduiren;
	}

	public String getS_yinhuanxiangqing() {
		return s_yinhuanxiangqing;
	}

	public void setS_yinhuanxiangqing(String yinhuanxiangqing) {
		this.s_yinhuanxiangqing = yinhuanxiangqing;
	}

	public String getS_landstatus() {
		return s_landstatus;
	}

	public void setS_landstatus(String landstatus) {
		this.s_landstatus = landstatus;
	}

	public double getD_landarea() {
		return d_landarea;
	}

	public void setD_landarea(double landarea) {
		this.d_landarea = landarea;
	}

	public String getS_construction() {
		return s_construction;
	}

	public void setS_construction(String construction) {
		this.s_construction = construction;
	}

	public double getD_jianzhumianji() {
		return d_jianzhumianji;
	}

	public void setD_jianzhumianji(double jianzhumianji) {
		this.d_jianzhumianji = jianzhumianji;
	}

	public String getT_buildtime() {
		return t_buildtime;
	}

	public void setT_buildtime(String buildtime) {
		this.t_buildtime = buildtime;
	}

	public String getS_solvemethod() {
		return s_solvemethod;
	}

	public void setS_solvemethod(String solvemethod) {
		this.s_solvemethod = solvemethod;
	}

	public String getS_yinhuanren() {
		return s_yinhuanren;
	}

	public void setS_yinhuanren(String yinhuanren) {
		this.s_yinhuanren = yinhuanren;
	}

	public String getS_yinhuanlianluo() {
		return s_yinhuanlianluo;
	}

	public void setS_yinhuanlianluo(String yinhuanlianluo) {
		this.s_yinhuanlianluo = yinhuanlianluo;
	}

	public String getT_jianshedate() {
		return t_jianshedate;
	}

	public void setT_jianshedate(String jianshedate) {
		this.t_jianshedate = jianshedate;
	}

	public String getS_solvestatus() {
		return s_solvestatus;
	}

	public void setS_solvestatus(String solvestatus) {
		this.s_solvestatus = solvestatus;
	}

	public String getT_solvetime() {
		return t_solvetime;
	}

	public void setT_solvetime(String solvetime) {
		this.t_solvetime = solvetime;
	}

	public String getS_unsolvedreason() {
		return s_unsolvedreason;
	}

	public void setS_unsolvedreason(String unsolvedreason) {
		this.s_unsolvedreason = unsolvedreason;
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

//	public List<MediaContent> getPhotos() {
//		return photos;
//	}
//
//	public void setPhotos(List<MediaContent> photos) {
//		this.photos = photos;
//	}
//
//	public List<MediaContent> getVideos() {
//		return videos;
//	}
//
//	public void setVideos(List<MediaContent> videos) {
//		this.videos = videos;
//	}

	@Override
	public String getVillage() {
		// TODO Auto-generated method stub
		return s_villagename;
	}

	@Override
	public String getCell() {
		// TODO Auto-generated method stub
		return s_netname;
	}

	public String getS_result() {
		return s_result;
	}

	public void setS_result(String result) {
		this.s_result = result;
	}

	public String getS_photo() {
		return s_photo;
	}

	public void setS_photo(String photo) {
		this.s_photo = photo;
	}

	public String getT_photouploaddate() {
		return t_photouploaddate;
	}

	public void setT_photouploaddate(String photouploaddate) {
		this.t_photouploaddate = photouploaddate;
	}

	public String getS_photoposition() {
		return s_photoposition;
	}

	public void setS_photoposition(String photoposition) {
		this.s_photoposition = photoposition;
	}

	public String getS_photouploadperson() {
		return s_photouploadperson;
	}

	public void setS_photouploadperson(String photouploadperson) {
		this.s_photouploadperson = photouploadperson;
	}

	public String getS_photouploadlevel() {
		return s_photouploadlevel;
	}

	public void setS_photouploadlevel(String photouploadlevel) {
		this.s_photouploadlevel = photouploadlevel;
	}

	public String getS_video() {
		return s_video;
	}

	public void setS_video(String video) {
		this.s_video = video;
	}

	public String getT_videouploaddate() {
		return t_videouploaddate;
	}

	public void setT_videouploaddate(String videouploaddate) {
		this.t_videouploaddate = videouploaddate;
	}

	public String getS_videouploadperson() {
		return s_videouploadperson;
	}

	public void setS_videouploadperson(String videouploadperson) {
		this.s_videouploadperson = videouploadperson;
	}

	public String getS_videouploadlevel() {
		return s_videouploadlevel;
	}

	public void setS_videouploadlevel(String videouploadlevel) {
		this.s_videouploadlevel = videouploadlevel;
	}





}
