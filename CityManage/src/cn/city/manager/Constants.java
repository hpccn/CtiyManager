package cn.city.manager;

import android.graphics.Shader.TileMode;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;


public class Constants {

	

	final public static String host = "http://www.iisale.com";
//	final public static String host = "http://192.168.6.55:8080";
//	final public static String town_map = host + "/wangge/?q=node/8";
//	final public static String weijian_statics = host + "/wangge/?q=node/10";
	
	final public static String register_option = host + "/wangge/sites/all/themes/wangge/android/to-android-register.php?s1=%s&s2=%s";
	final static public String obtainRegisterUrl (String user, String password){
		return String.format(register_option, user, password);
//		return "http://192.168.1.4:8000/400.php";
		
	}
	final public static String weijian_commit_new = host + "/wangge/sites/all/themes/wangge/android/from-android-event-insert.php";
	
	final public static String weijian_commit_update = host + "/wangge/sites/all/themes/wangge/android/from-android-event-update.php";

//	这个是接收服务器端发给移动端登录人和移动端所选月份的违建事件。转化这个json为列表之后，就可以点取其中一行进行编辑，
//	编辑后点击“修改”，上传到上边的from-android-event-update.php这个路径，我接收去更新数据库。
//	final public static String weijian_list = host + "/wangge/?q=node/10";
//	final public static String weijian_list = host + "/wangge/sites/all/themes/wangge/android/to-android-event.php";
//	final public static String weijian_list = host + "/wangge/sites/all/themes/wangge/android/to-android-event.php?kind=t_weijian&id=010101&time=month";
	final private static String weijian_list_option = host + "/wangge/sites/all/themes/wangge/android/to-android-event.php?kind=t_weijian&id=%s&time=%s&start=%d&step=%d";
	final static public String obtainWeijianListUrl (String userid, String time, int start, int step){
		return String.format(weijian_list_option, userid, time, start, step);
	}
	
	final static public String obtainLastWeijianListUrl(){
		return String.format(weijian_list_option
				, Configuration.getInstance().getUsername()
				, Configuration.getInstance().getTime()
				, Configuration.getInstance().getStart()
				, Configuration.getInstance().getStep() * Configuration.getInstance().getCount());
	}
	final static public String obtainLastWeijianListUrl(int start, int step){
		return String.format(weijian_list_option
				, Configuration.getInstance().getUsername()
				, Configuration.getInstance().getTime()
				, start
				, step);
	}
//	这个是违建统计：镇域图
//	final public static String weijian_zhenyutu = host + "/wangge/?q=node/13&s_yearmonth_selected=&s_statistics_type=&s_chart=no";
	final private static String weijian_zhenyutu = host + "/wangge/sites/all/themes/wangge/android/to-android-event-statistics.php?kind=t_weijian&id=%s&s_statistics_type=违建数量&s_chart=no";
	final static public String obtainWeijianZhenyutuUrl (String userId){
		return String.format(weijian_zhenyutu, userId);
	}
//	这个是违建统计：柱状图
//	final public static String weijian_tongji = host + "/wangge/?q=node/13&s_yearmonth_selected=&s_statistics_type=&s_chart=yes";
	final private static String weijian_tongji = host + "/wangge/sites/all/themes/wangge/android/to-android-event-statistics.php?kind=t_weijian&id=%s&s_statistics_type=违建数量&s_chart=yes";
	final static public String obtainWeijianTongjiUrl (String userId){
		return String.format(weijian_tongji, userId);
	}
//	final public static String wangge_village_netbaseinfo_list = host + "/wangge/sites/all/themes/wangge/android/to-android-netinfo.php?kind=s_villageid&id=010101";
	final private static String wangge_netbaseinfo_list = host + "/wangge/sites/all/themes/wangge/android/to-android-netinfo.php?kind=%s&id=%s";
	final static public String obtainNetbaseinfoListUrl (String type, String id){
		return String.format(wangge_netbaseinfo_list, type, id);
	}
	
//	这个是网格基本信息列表
//	final public static String wangge_netbaseinfo = host + "/wangge/?q=node/11";
//	final public static String wangge_netbaseinfo = host + "/wangge/sites/all/themes/wangge/android/to-android-netinfo.php";
//	final private static String wangge_netgrid_netbaseinfo_list = host + "/wangge/sites/all/themes/wangge/android/to-android-netinfo.php?kind=s_netid&id=010101";
	
//这个是网格统计：镇域图
//	final public static String wangge_zhenyutu = host + "/wangge/?q=node/12&s_yearmonth_selected=&s_statistics_type=%s&s_chart=no";
	final public static String wangge_zhenyutu = host + "/wangge/sites/all/themes/wangge/android/to-android-netinfo-statistics.php?kind=t_netbaseinfo&id=%s&s_statistics_type=%s&s_chart=no";

//这个是网格统计：柱状图
//	final public static String wangge_tongji = host + "/wangge/?q=node/12&s_yearmonth_selected=&s_statistics_type=%s&s_chart=yes";
	final public static String wangge_tongji = host + "/wangge/sites/all/themes/wangge/android/to-android-netinfo-statistics.php?kind=t_netbaseinfo&id=%s&s_statistics_type=%s&s_chart=yes";
	final static public String obtainNetbaseinfoTongjiUrl (String userId, String type){
		return String.format(wangge_tongji, userId, type);
	}
	final static public String obtainNetbaseinfoZhenyuUrl (String userId, String type){
		return String.format(wangge_zhenyutu, userId, type);
	}
	
	
	// 统计图
	final public static int tongjitu_width = 1280;
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
		"门店数"
		};

	//	图片地址
	private final static String imageUrl = "http://www.iisale.com/wangge/sites/all/themes/wangge/android/photo/";
	final static public String obtainImageUrl (String image){
		return imageUrl + image;
	}
	
	//	图片地址
	private final static String iconImageUrl = "http://www.iisale.com/wangge/sites/all/themes/wangge/android/icon/";
	final static public String obtainIconImageUrl (String image){
		return iconImageUrl + image;
	}

	
//	视频地址
	private final static String videoUrl = "http://www.iisale.com/wangge/sites/all/themes/wangge/android/video/";
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
