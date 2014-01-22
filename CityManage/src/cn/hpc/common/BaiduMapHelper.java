package cn.hpc.common;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import cn.city.manager.location.Location;
import cn.city.manager.location.LocationListener;

import com.baidu.mapapi.navi.BaiduMapAppNotSupportNaviException;
import com.baidu.mapapi.navi.BaiduMapNavigation;
import com.baidu.mapapi.navi.NaviPara;
import com.baidu.mapapi.utils.CoordinateConvert;
import com.baidu.platform.comapi.basestruct.GeoPoint;

public class BaiduMapHelper {
	public static final GeoPoint createGeoPoint(double lat, double lon) {
		GeoPoint p = new GeoPoint((int) (lat * 1E6), (int) (lon * 1E6));//createGeoPoint(gpsLat, gpsLon);
//		GeoPoint p1 = CoordinateConvert.fromWgs84ToBaidu(p);
		GeoPoint p1 = CoordinateConvert.fromGcjToBaidu(p);
		return p1;//new GeoPoint((int) (lat * 1E6), (int) (lon * 1E6));
	}
	
	public static final boolean geoPoint2Gps(GeoPoint gp, Double gpsLat, Double gpsLon) {
		gpsLat = gp.getLatitudeE6() * 1.0d / 1E6;
		gpsLon = gp.getLongitudeE6() * 1.0d / 1E6;
		return true;//new GeoPoint((int) (lat * 1E6), (int) (lon * 1E6));
	}

	
//	
//	public static GeoPoint conver(double gpsLat, double gpsLon){
////		Android中把GPS坐标转换为百度地图坐标
//		
//		GeoPoint p = createGeoPoint(gpsLat, gpsLon);
//		GeoPoint p1 = CoordinateConvert.fromWgs84ToBaidu(p);
//		return p1;
////		p为GPS坐标点，p1为百度坐标点
////		CoordinateConvert.bundleDecode(CoordinateConvert.fromWgs84ToBaidu(
////				new GeoPoint((int)(gpsLat*1E6), (int)(gpsLon*1E6))));
//	}
	
	/**
	 * 开始导航
	 * 
	 * @param view
	 */
	public static final  void startNavi(final Activity activity, GeoPoint from, GeoPoint to) {
		// int lat = (int) (mLat1 *1E6);
		// int lon = (int) (mLon1 *1E6);
		// GeoPoint pt1 = new GeoPoint(lat, lon);
		// lat = (int) (mLat2 *1E6);
		// lon = (int) (mLon2 *1E6);
		// GeoPoint pt2 = new GeoPoint(lat, lon);
		// 构建 导航参数
		NaviPara para = new NaviPara();
		para.startPoint = from;
		para.startName = "从这里开始";
		para.endPoint = to;
		para.endName = "到这里结束";

		try {

			BaiduMapNavigation.openBaiduMapNavi(para, activity);

		} catch (BaiduMapAppNotSupportNaviException e) {
			e.printStackTrace();
			AlertDialog.Builder builder = new AlertDialog.Builder(activity);
			builder.setMessage("您尚未安装百度地图app或app版本过低，点击确认安装？");
			builder.setTitle("提示");
			builder.setPositiveButton("确认", new OnClickListener() {
				@Override
				public void onClick(DialogInterface dialog, int which) {
					dialog.dismiss();
					BaiduMapNavigation.GetLatestBaiduMapApp(activity);
				}
			});

			builder.setNegativeButton("取消", new OnClickListener() {
				@Override
				public void onClick(DialogInterface dialog, int which) {
					dialog.dismiss();
				}
			});

			builder.create().show();
		}
	}
	
	public void updateLocation(final Context context){
		Location location = new Location(context);
		location.asyncLoc(new LocationListener(){

			@Override
			public void onLocation(double latitude, double longitude,
					String address) {
				
				if (address.contains("error")) return;


			}
			
		});
	}
}
