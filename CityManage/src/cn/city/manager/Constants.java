package cn.city.manager;


public interface Constants {

	final public static String host = "http://www.iisale.com";
//	final public static String host = "http://192.168.6.55:8080";
//	final public static String town_map = host + "/wangge/?q=node/8";
//	final public static String weijian_statics = host + "/wangge/?q=node/10";
	
	final public static String weijian_commit = host + "/wangge/sites/all/themes/wangge/android/from-android-event-insert.php";
	
	final public static String weijian_update = host + "/wangge/sites/all/themes/wangge/android/from-android-event-update.php";
	
	final public static String weijian_list = host + "/wangge/?q=node/10";

	
//	这个是违建统计：镇域图
	final public static String weijian_zhenyutu = host + "/wangge/?q=node/13&s_yearmonth_selected=&s_statistics_type=&s_chart=no";

//	这个是违建统计：柱状图
	final public static String weijian_tongji = host + "/wangge/?q=node/13&s_yearmonth_selected=&s_statistics_type=&s_chart=yes";


	
//	这个是网格基本信息列表
	final public static String wangge_netbaseinfo = host + "/wangge/?q=node/11";

//这个是网格统计：镇域图
	final public static String wangge_zhenyutu = host + "/wangge/?q=node/12&s_yearmonth_selected=&s_statistics_type=&s_chart=no";
	
//这个是网格统计：柱状图
	final public static String wangge_tongji = host + "/wangge/?q=node/12&s_yearmonth_selected=&s_statistics_type=&s_chart=yes";


	
	final public static String s_netid = "010101";
	

}
