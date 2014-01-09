package cn.city.manager;


public class Constants {

	final public static String host = "http://www.iisale.com";
//	final public static String host = "http://192.168.6.55:8080";
//	final public static String town_map = host + "/wangge/?q=node/8";
//	final public static String weijian_statics = host + "/wangge/?q=node/10";
	
	final public static String register_option = host + "/wangge/sites/all/themes/wangge/android/to-android-register.php?s1=%s&s2=%s";
	final static public String obtainRegisterUrl (String user, String password){
		return String.format(register_option, user, password);
		
	}
	final public static String weijian_commit_new = host + "/wangge/sites/all/themes/wangge/android/from-android-event-insert.php";
	
	final public static String weijian_commit_update = host + "/wangge/sites/all/themes/wangge/android/from-android-event-update.php";

//	这个是接收服务器端发给移动端登录人和移动端所选月份的违建事件。转化这个json为列表之后，就可以点取其中一行进行编辑，
//	编辑后点击“修改”，上传到上边的from-android-event-update.php这个路径，我接收去更新数据库。
//	final public static String weijian_list = host + "/wangge/?q=node/10";
//	final public static String weijian_list = host + "/wangge/sites/all/themes/wangge/android/to-android-event.php";
	final public static String weijian_list = host + "/wangge/sites/all/themes/wangge/android/to-android-event.php?kind=t_weijian&level=s_netid&id=010101&time=month";
	final public static String weijian_list_option = host + "/wangge/sites/all/themes/wangge/android/to-android-event.php?kind=t_weijian&level=s_netid&id=010101&time=%s";
//	这个是违建统计：镇域图
	final public static String weijian_zhenyutu = host + "/wangge/?q=node/13&s_yearmonth_selected=&s_statistics_type=&s_chart=no";

//	这个是违建统计：柱状图
	final public static String weijian_tongji = host + "/wangge/?q=node/13&s_yearmonth_selected=&s_statistics_type=&s_chart=yes";


	
	final public static String wangge_village_netbaseinfo = host + "/wangge/sites/all/themes/wangge/android/to-android-netinfo.php?kind=s_villageid&level=s_netid&id=010101";

	
//	这个是网格基本信息列表
//	final public static String wangge_netbaseinfo = host + "/wangge/?q=node/11";
//	final public static String wangge_netbaseinfo = host + "/wangge/sites/all/themes/wangge/android/to-android-netinfo.php";
	final public static String wangge_netbaseinfo = host + "/wangge/sites/all/themes/wangge/android/to-android-netinfo.php?kind=s_netid&level=s_netid&id=010101";
//这个是网格统计：镇域图
	final public static String wangge_zhenyutu = host + "/wangge/?q=node/12&s_yearmonth_selected=&s_statistics_type=&s_chart=no";
	
//这个是网格统计：柱状图
	final public static String wangge_tongji = host + "/wangge/?q=node/12&s_yearmonth_selected=&s_statistics_type=&s_chart=yes";


	
//	final public static String s_netid = "010101";
	

}
