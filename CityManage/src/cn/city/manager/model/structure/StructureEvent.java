package cn.city.manager.model.structure;


import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

import org.json.JSONObject;

import android.graphics.drawable.Drawable;
import android.util.Log;
import cn.city.manager.model.BaseContent;
import cn.city.manager.model.MediaContent;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

public class StructureEvent extends BaseContent {
	public final static String category = "IllegalStructure";

//	private long time;
	
	private int netid;// ": 1,
	private String villagename;// ":"村名",
	private String netname;// ":"网格名称",
	private String eventtype;// ":"事件类型",
	private String eventid;// ":"事件ID",
	private long committime;// ":1380962998588,
	private String discoverername;// ":"发现人",
	private String discovererlevel;// ":"发现人级别",
	private String leaderinstruction;// ":"领导批示",
	private String voiceinstruction;// ":"语音批示",
	private long instructiontime;// ":"批示日期",
	private String leaderid;// ":"批示人id",
	private String leadername;// ":"批示人姓名",
	private String netleadername;// ":"格长姓名",
	private String netleadertel;// ":"格长电话",
	private String updatename;// ":"最近更新人",
	private String updatelevel;// ":"更新人级别",
	private long updatetime;// ":1380962998588,
	private String updateid;// ":"更新人id",
	private String remark;// ":"备注",
	private String yinhuanaddress;// ":"违法建设具体位置",
	private String weijianxiangduiren;// ":"违法建设相对人",
	private String yinhuanxiangqing;// ":"隐患描述",
	private String landstatus;// ":"土地性质",
	private double landarea;// ":"占地面积（亩）",
	private String construction;// ":"建筑结构",
	private double jianzhumianji;// ":100,
	private long buildtime;// ":1380962998588,
	private String solvemethod;// ":"当日新发现和拆除情况",
	private String yinhuanren;// ":"涉及人姓名",
	private String yinhuanlianluo;// ":"涉及人联系方式",
	private long jianshedate;// ":1380962998588,
	private String solvestatus;// ": "解决状态",
	private long solvetime;// ": 1380962998588,
	private String unsolvedreason;// ": "未解决原因",
	private double latitude;// ": "38.112",
	private double longitude;// ": "116.002"
	private List<MediaContent> photos = new ArrayList<MediaContent>();
	private List<MediaContent> videos = new ArrayList<MediaContent>();
	
	private String[] medias = {"photo", "video"};
	
	private String[] jsStrings = {
			//double
			"jianzhumianji", "landarea"
			, "latitude", "longitude"
			// long
			,"netid", "committime","instructiontime"
			,"updatetime", "buildtime", "jianshedate","solvetime"
			// string
			,"villagename", "netname", "eventtype",
            "eventid",
            "discoverername",
            "discovererlevel",
            "leaderinstruction",
            "voiceinstruction",
            
            "leaderid",
            "leadername",
            "netleadername",
            "netleadertel",
            "updatename",
            "updatelevel",
            "updateid",
            "remark",
            "yinhuanaddress",
            "weijianxiangduiren",
            "yinhuanxiangqing",
            "landstatus",
            
            "construction",
            
            
            "solvemethod",
            "yinhuanren",
            "yinhuanlianluo",
            
            "solvestatus",
            
            "unsolvedreason"
           };
	
	public StructureEvent() {
		super();
//		time = System.currentTimeMillis();
	}

	public StructureEvent(JSONObject jObj) {
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
	public BaseContent fromJSONObject(JSONObject jObj) throws Exception {
		if (null == jObj)
			return null;
		
//		yinhuanxiangqing = jObj.getString("yinhuanxiangqing");

		Object obj = null;
		for (String str : jsStrings){
			if (jObj.has(str)) {
//				Log.d("", str);
				obj = jObj.get(str);
				setProperty("set"+str, obj);

//				 Field field = this.getClass().getDeclaredField(str);
//				 boolean accessible = field.isAccessible();
//				field.setAccessible(true);
//				field.set(this, obj);
//				field.setAccessible(accessible);
			}
		}
		
		
		Type listType = new TypeToken<LinkedList<MediaContent>>(){}.getType();
		Gson gson = new Gson();
		LinkedList<MediaContent> extras;

		
		String listExtra = "photo";
		if (jObj.has(listExtra)){
			obj = jObj.get(listExtra);
			extras = gson.fromJson(obj.toString(), listType);
			photos.addAll(extras);
		}
		
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

		

		
		return this;
	}

	@Override
	public boolean isMe(String category) {
		// TODO Auto-generated method stub
		return this.category.equals(category);
	}

	@Override
	public String getContent() {
		// TODO Auto-generated method stub
		return yinhuanxiangqing;
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



	public int getNetid() {
		return netid;
	}

	public void setNetid(int netid) {
		this.netid = netid;
	}

	public String getVillagename() {
		return villagename;
	}

	public void setVillagename(String villagename) {
		this.villagename = villagename;
	}

	public String getNetname() {
		return netname;
	}

	public void setNetname(String netname) {
		this.netname = netname;
	}

	public String getEventtype() {
		return eventtype;
	}

	public void setEventtype(String eventtype) {
		this.eventtype = eventtype;
	}

	public String getEventid() {
		return eventid;
	}

	public void setEventid(String eventid) {
		this.eventid = eventid;
	}

	public long getCommittime() {
		return committime;
	}

	public void setCommittime(long committime) {
		this.committime = committime;
	}

	public String getDiscoverername() {
		return discoverername;
	}

	public void setDiscoverername(String discoverername) {
		this.discoverername = discoverername;
	}

	public String getDiscovererlevel() {
		return discovererlevel;
	}

	public void setDiscovererlevel(String discovererlevel) {
		this.discovererlevel = discovererlevel;
	}

	public String getLeaderinstruction() {
		return leaderinstruction;
	}

	public void setLeaderinstruction(String leaderinstruction) {
		this.leaderinstruction = leaderinstruction;
	}

	public String getVoiceinstruction() {
		return voiceinstruction;
	}

	public void setVoiceinstruction(String voiceinstruction) {
		this.voiceinstruction = voiceinstruction;
	}

	public long getInstructiontime() {
		return instructiontime;
	}

	public void setInstructiontime(long instructiontime) {
		this.instructiontime = instructiontime;
	}

	public String getLeaderid() {
		return leaderid;
	}

	public void setLeaderid(String leaderid) {
		this.leaderid = leaderid;
	}

	public String getLeadername() {
		return leadername;
	}

	public void setLeadername(String leadername) {
		this.leadername = leadername;
	}

	public String getNetleadername() {
		return netleadername;
	}

	public void setNetleadername(String netleadername) {
		this.netleadername = netleadername;
	}

	public String getNetleadertel() {
		return netleadertel;
	}

	public void setNetleadertel(String netleadertel) {
		this.netleadertel = netleadertel;
	}

	public String getUpdatename() {
		return updatename;
	}

	public void setUpdatename(String updatename) {
		this.updatename = updatename;
	}

	public String getUpdatelevel() {
		return updatelevel;
	}

	public void setUpdatelevel(String updatelevel) {
		this.updatelevel = updatelevel;
	}

	public long getUpdatetime() {
		return updatetime;
	}

	public void setUpdatetime(long updatetime) {
		this.updatetime = updatetime;
	}

	public String getUpdateid() {
		return updateid;
	}

	public void setUpdateid(String updateid) {
		this.updateid = updateid;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getYinhuanaddress() {
		return yinhuanaddress;
	}

	public void setYinhuanaddress(String yinhuanaddress) {
		this.yinhuanaddress = yinhuanaddress;
	}

	public String getWeijianxiangduiren() {
		return weijianxiangduiren;
	}

	public void setWeijianxiangduiren(String weijianxiangduiren) {
		this.weijianxiangduiren = weijianxiangduiren;
	}

	public String getYinhuanxiangqing() {
		return yinhuanxiangqing;
	}

	public void setYinhuanxiangqing(String yinhuanxiangqing) {
		this.yinhuanxiangqing = yinhuanxiangqing;
	}

	public String getLandstatus() {
		return landstatus;
	}

	public void setLandstatus(String landstatus) {
		this.landstatus = landstatus;
	}

	public double getLandarea() {
		return landarea;
	}

	public void setLandarea(double landarea) {
		this.landarea = landarea;
	}

	public String getConstruction() {
		return construction;
	}

	public void setConstruction(String construction) {
		this.construction = construction;
	}

	public double getJianzhumianji() {
		return jianzhumianji;
	}

	public void setJianzhumianji(double jianzhumianji) {
		this.jianzhumianji = jianzhumianji;
	}

	public long getBuildtime() {
		return buildtime;
	}

	public void setBuildtime(long buildtime) {
		this.buildtime = buildtime;
	}

	public String getSolvemethod() {
		return solvemethod;
	}

	public void setSolvemethod(String solvemethod) {
		this.solvemethod = solvemethod;
	}

	public String getYinhuanren() {
		return yinhuanren;
	}

	public void setYinhuanren(String yinhuanren) {
		this.yinhuanren = yinhuanren;
	}

	public String getYinhuanlianluo() {
		return yinhuanlianluo;
	}

	public void setYinhuanlianluo(String yinhuanlianluo) {
		this.yinhuanlianluo = yinhuanlianluo;
	}

	public long getJianshedate() {
		return jianshedate;
	}

	public void setJianshedate(long jianshedate) {
		this.jianshedate = jianshedate;
	}

	public String getSolvestatus() {
		return solvestatus;
	}

	public void setSolvestatus(String solvestatus) {
		this.solvestatus = solvestatus;
	}

	public long getSolvetime() {
		return solvetime;
	}

	public void setSolvetime(long solvetime) {
		this.solvetime = solvetime;
	}

	public String getUnsolvedreason() {
		return unsolvedreason;
	}

	public void setUnsolvedreason(String unsolvedreason) {
		this.unsolvedreason = unsolvedreason;
	}

	public double getLatitude() {
		return latitude;
	}

	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}

	public double getLongitude() {
		return longitude;
	}

	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}

	public List<MediaContent> getPhotos() {
		return photos;
	}

	public void setPhotos(List<MediaContent> photos) {
		this.photos = photos;
	}

	public List<MediaContent> getVideos() {
		return videos;
	}

	public void setVideos(List<MediaContent> videos) {
		this.videos = videos;
	}

	@Override
	public String getVillage() {
		// TODO Auto-generated method stub
		return villagename;
	}

	@Override
	public String getCell() {
		// TODO Auto-generated method stub
		return netname;
	}
}
