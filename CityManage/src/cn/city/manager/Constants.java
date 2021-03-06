package cn.city.manager;

import java.util.HashMap;
import java.util.Map;

import android.graphics.Shader.TileMode;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;


public class Constants {

	
//	final public static String host = "http://www.iisale.com";
//	final public static String host = "http://www.iisale.com/wangge";
	final public static String host = "http://gaoliying.hberp.com";

//	final public static String host = "http://192.168.1.104:8000";
//	final public static String host = "http://192.168.6.55:8080";
//	final public static String town_map = host + "/?q=node/8";
//	final public static String weijian_statics = host + "/?q=node/10";
	
	final public static String register_option = host + "/sites/all/themes/wangge/android/to-android-register.php?s1=%s&s2=%s";
	final static public String obtainRegisterUrl (String user, String password){
		return String.format(register_option, user, password);
//		return "http://192.168.1.4:8000/400.php";
		
	}
	
	final public static String URL_commit_new = host + "/sites/all/themes/wangge/android/from-android-event-insert.php";// 新事件上传
	
	final public static String URL_commit_update = host + "/sites/all/themes/wangge/android/from-android-event-update.php";// 事件更新

//	这个是接收服务器端发给移动端登录人和移动端所选月份的违建事件。转化这个json为列表之后，就可以点取其中一行进行编辑，
//	编辑后点击“修改”，上传到上边的from-android-event-update.php这个路径，我接收去更新数据库。
//	final public static String weijian_list = host + "/?q=node/10";
//	final public static String weijian_list = host + "/sites/all/themes/wangge/android/to-android-event.php";
//	final public static String weijian_list = host + "/sites/all/themes/wangge/android/to-android-event.php?kind=t_weijian&id=010101&time=month";
	final private static String events_list_option = host + "/sites/all/themes/wangge/android/to-android-event.php?kind=%s&id=%s&time=%s&start=%d&step=%d";
	final static public String obtainEventsListUrl(String kind, String userid, String time, int start, int step){
		if (10 > step) step = 10; 
		return String.format(events_list_option, kind, userid, time, start, step);
	}
	
	final static public String obtainLastEventsListUrl(){
		int step = Configuration.getInstance().getStep() * Configuration.getInstance().getCount();
		if (10 > step) step = 10; 
		return String.format(events_list_option
				, Configuration.getInstance().getKind()
				, Configuration.getInstance().getUsername()
				, Configuration.getInstance().getTime()
				, Configuration.getInstance().getStart()
				, step);
	}
	final static public String obtainLastWeijianListUrl(int start, int step){
		return String.format(events_list_option
				, Configuration.getInstance().getUsername()
				, Configuration.getInstance().getTime()
				, start
				, step);
	}
//	这个是违建统计：镇域图
//	final public static String weijian_zhenyutu = host + "/?q=node/13&s_yearmonth_selected=&s_statistics_type=&s_chart=no";
	public final static String event_zhenyutu = host + "/sites/all/themes/wangge/android/to-android-event-statistics.php?kind=%s&id=%s&s_time=%s&s_statistics_type=违建数量&s_chart=no";
	final static public String obtainEventZhenyutuUrl(String kind, String userId, String time){
		time = eventTongjiMap.get(time);
		if (null == time) time = event_tongji_time[0];
		return String.format(event_zhenyutu, kind, userId, time);
	}
//	这个是违建统计：柱状图
//	final public static String weijian_tongji = host + "/?q=node/13&s_yearmonth_selected=&s_statistics_type=&s_chart=yes";
	public final static String event_tongji = host + "/sites/all/themes/wangge/android/to-android-event-statistics.php?kind=%s&id=%s&s_time=%s&s_statistics_type=违建数量&s_chart=yes";
	final static public String obtainEventTongjiUrl (String kind, String userId, String time){
		time = eventTongjiMap.get(time);
		if (null == time) time = event_tongji_time[0];
		return String.format(event_tongji, kind, userId, time);
	}
//	final public static String wangge_village_netbaseinfo_list = host + "/sites/all/themes/wangge/android/to-android-netinfo.php?kind=s_villageid&id=010101";
	final private static String wangge_netbaseinfo_list = host + "/sites/all/themes/wangge/android/to-android-netinfo.php?kind=%s&id=%s";
	final static public String obtainNetbaseinfoListUrl (String type, String id){
		return String.format(wangge_netbaseinfo_list, type, id);
	}
	
//	这个是网格基本信息列表
//	final public static String wangge_netbaseinfo = host + "/?q=node/11";
//	final public static String wangge_netbaseinfo = host + "/sites/all/themes/wangge/android/to-android-netinfo.php";
//	final private static String wangge_netgrid_netbaseinfo_list = host + "/sites/all/themes/wangge/android/to-android-netinfo.php?kind=s_netid&id=010101";
	
//这个是网格统计：镇域图
//	final public static String wangge_zhenyutu = host + "/?q=node/12&s_yearmonth_selected=&s_statistics_type=%s&s_chart=no";
	final public static String wangge_zhenyutu = host + "/sites/all/themes/wangge/android/to-android-netinfo-statistics.php?kind=%s&id=%s&s_statistics_type=%s&s_chart=no";
//	final public static String wangge_zhenyutu = host + "/sites/all/themes/wangge/android/to-android-netinfo-statistics.php?kind=t_netbaseinfo&id=%s&s_statistics_type=%s&s_chart=no";

//这个是网格统计：柱状图
//	final public static String wangge_tongji = host + "/?q=node/12&s_yearmonth_selected=&s_statistics_type=%s&s_chart=yes";
	final public static String wangge_tongji = host + "/sites/all/themes/wangge/android/to-android-netinfo-statistics.php?kind=%s&id=%s&s_statistics_type=%s&s_chart=yes";
//	final public static String wangge_tongji = host + "/sites/all/themes/wangge/android/to-android-netinfo-statistics.php?kind=t_netbaseinfo&id=%s&s_statistics_type=%s&s_chart=yes";
	final static public String obtainNetbaseinfoTongjiUrl (String userId, String type){
		return String.format(wangge_tongji, "t_netbaseinfo", userId, type);
	}
	final static public String obtainNetbaseinfoZhenyuUrl (String userId, String type){
		return String.format(wangge_zhenyutu, "t_netbaseinfo", userId, type);
	}
	// 每类事件中新增事件,未解决事件的个数, 
	final public static String wangge_eventCount = host + "/sites/all/themes/wangge/android/to-android-event-reminder.php?id=%s";
	final static public String obtainEventCountUrl (String userId){
		return String.format(wangge_eventCount, userId);
	}

	
	// 统计图
	final public static int tongjitu_width = 400;//1280;
	// 镇域图
	final public static int zhenyutu_width = 682;
//	final public static String s_netid = "010101";
	
	final public static String [] netbaseinfo_zhenyutu = {
		"常驻户数",
		"常驻人口数",
		"流动人口情况",
		"出租房屋情况",
		"无业人员",
		"育龄妇女",
		"企业数",
		"门店数",
		"废品收购站数",
		"幼儿园或培训机构数",
		"种养殖地数",
		"炉具取暖户数"
		};

	final public static Map<String, String> eventTongjiMap = new HashMap<String, String>();
	final public static String [] event_tongji_time = {
		"day",
		"overdue",
		"week",
		"month",
		"year",
		"all"
		};
	final public static String [] event_tongji_time_title = {
		"今日",
		"逾期未处理",
		"本周",
		"本月",
		"本年",
		"全部"
		};
	static {
		for (int i = 0; i < event_tongji_time.length; ++i){
			eventTongjiMap.put(event_tongji_time_title[i], event_tongji_time[i]);
		}
	};
	
	public static String obtainStatisticsUrl(String kind, String userId, String time){
		if (null == kind) return host + "/sites/all/themes/wangge/android/to-android-event-statistics.php";
		if (kind.equalsIgnoreCase("")){
			
		}else {
			
		}
		return time;
	}

	//	图片地址
	private final static String imageUrl = host + "/sites/all/themes/wangge/android/photo/";
	final static public String obtainImageUrl (String image){
		return imageUrl + image;
	}
	
	//	图片地址
	private final static String iconImageUrl = host + "/sites/all/themes/wangge/android/icon/";
	final static public String obtainIconImageUrl (String image){
		return iconImageUrl + image;
	}

	
//	视频地址
	private final static String videoUrl = host + "/sites/all/themes/wangge/android/video/";
	final static public String obtainVideoUrl(String video) {
		return videoUrl + video;
	}
	
	
	
	public static void fixBackgroundRepeat(View view) {
		Drawable bg = view.getBackground();
		if (bg != null) {
			if (bg instanceof BitmapDrawable) {
				BitmapDrawable bmp = (BitmapDrawable) bg;
				bmp.mutate(); // make sure that we aren't sharing state anymore
				bmp.setTileModeXY(TileMode.REPEAT, TileMode.REPEAT);
			}
		}
	}

}
