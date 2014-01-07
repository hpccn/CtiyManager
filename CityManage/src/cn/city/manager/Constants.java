package cn.city.manager;


public interface Constants {

	final public static String host = "http://www.iisale.com";
//	final public static String host = "http://192.168.6.55:8080";
	final public static String town_map = host + "/wangge/?q=node/8";
	final public static String weijian_statics = host + "/wangge/?q=node/10";
	
	final public static String weijian_commit = host + "/wangge/from-android.php";
	
	final public static String weijian_list = host + "/wangge/?q=node/10";

	
//	这个是违建统计：镇域图
	final public static String weijian_zhenyutu = "http://www.iisale.com/wangge/?q=node/13&s_yearmonth_selected=&s_statistics_type=&s_chart=no";

//	这个是违建统计：柱状图
	final public static String weijian_tongji = "http://www.iisale.com/wangge/?q=node/13&s_yearmonth_selected=&s_statistics_type=&s_chart=yes";


}
