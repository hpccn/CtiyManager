package cn.city.manager.location;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Vibrator;
import android.util.Log;

import com.baidu.location.BDLocation;
import com.baidu.location.BDLocationListener;
import com.baidu.location.BDNotifyListener;
import com.baidu.location.GeofenceClient;
import com.baidu.location.LocationClient;
import com.baidu.location.LocationClientOption;

public class Location {
	private LocationClient mLocationClient = null;
	public GeofenceClient mGeofenceClient;
//	private String mData;  
	
//	public TextView mTv;
	
	public Vibrator mVibrator01;
	public static String TAG = "Loc";
//	private Handler handler = null;
//	
//	private final Context context;
	public Location(Context context){
//		this.context = context;
		init(context);
	}
	private void init(Context context){
		mLocationClient = new LocationClient( context );
		/**——————————————————————————————————————————————————————————————————
		 * 这里的AK和应用签名包名绑定，如果使用在自己的工程中需要替换为自己申请的Key
		 * ——————————————————————————————————————————————————————————————————
		 */
//		final String key = getKey(context);
//		mLocationClient.setAK(key);
		mLocationClient.setAK("6f194e37ba11d0b8f4c8cefc32cebef6");
//		mLocationClient.setAK("37ac672a8f7fbc4c1158cd70969c730e");// demo key
		mLocationClient.registerLocationListener( myListener );
		mGeofenceClient = new GeofenceClient(context);
		//位置提醒相关代码
//		mNotifyer = new NotifyLister();
//		mNotifyer.SetNotifyLocation(40.047883,116.312564,3000,"gps");//4个参数代表要位置提醒的点的坐标，具体含义依次为：纬度，经度，距离范围，坐标系类型(gcj02,gps,bd09,bd09ll)
//		mLocationClient.registerNotify(mNotifyer);
	}
	
	
	private void postMsg(double latitude, double longitude, String address){
//		if (null == handler) return;
//		Message msg = new Message();
//		Bundle b = new Bundle();
//		b.putDouble("latitude", latitude);
//		b.putDouble("longitude", longitude);
//		b.putString("address", address);
//		msg.setData(b);
//		msg.what = 0x1001;
//		handler.sendMessage(msg);
		if (null != locationListener) {
			locationListener.onLocation(latitude, longitude, address);
		}
	}
	
	/**
	 * 监听函数，有更新位置的时候，格式化成字符串，输出到屏幕中
	 */
	public final BDLocationListener myListener = new BDLocationListener() {
		@Override
		public void onReceiveLocation(BDLocation location) {
			if (location == null)
				return ;
			StringBuffer sb = new StringBuffer(256);
			sb.append("time : ");
			sb.append(location.getTime());
			sb.append("\nerror code : ");
			sb.append(location.getLocType());
			sb.append("\nlatitude : ");
			sb.append(location.getLatitude());
			sb.append("\nlontitude : ");
			sb.append(location.getLongitude());
			sb.append("\nradius : ");
			sb.append(location.getRadius());
			if (location.getLocType() == BDLocation.TypeGpsLocation){
				sb.append("\nspeed : ");
				sb.append(location.getSpeed());
				sb.append("\nsatellite : ");
				sb.append(location.getSatelliteNumber());
			} else if (location.getLocType() == BDLocation.TypeNetWorkLocation){
				/**
				 * 格式化显示地址信息
				 */
				// 这几行注释
				sb.append("\n省：");
				sb.append(location.getProvince());
				sb.append("\n市：");
				sb.append(location.getCity());
				sb.append("\n区/县：");
				sb.append(location.getDistrict());
				////////////////////////////////
				sb.append("\naddr : ");
				sb.append(location.getAddrStr());
			}
			sb.append("\nsdk version : ");
			sb.append(mLocationClient.getVersion());
			sb.append("\nisCellChangeFlag : ");
			sb.append(location.isCellChangeFlag());
			logMsg(sb.toString());
			Log.i(TAG, sb.toString());
			if (null == location.getAddrStr()) {
				postMsg(0.0, 0.0, "error code : " + location.getLocType());
			} else {
				
				postMsg(location.getLatitude(), location.getLongitude(), location.getAddrStr());
			}
			try{
				mLocationClient.stop();
			} catch (Exception e){
				
			}
		}
		
		public void onReceivePoi(BDLocation poiLocation) {
			if (poiLocation == null){
				return ; 
			}
			StringBuffer sb = new StringBuffer(256);
			sb.append("Poi time : ");
			sb.append(poiLocation.getTime());
			sb.append("\nerror code : "); 
			sb.append(poiLocation.getLocType());
			sb.append("\nlatitude : ");
			sb.append(poiLocation.getLatitude());
			sb.append("\nlontitude : ");
			sb.append(poiLocation.getLongitude());
			sb.append("\nradius : ");
			sb.append(poiLocation.getRadius());
			if (poiLocation.getLocType() == BDLocation.TypeNetWorkLocation){
				sb.append("\naddr : ");
				sb.append(poiLocation.getAddrStr());
			} 
			if(poiLocation.hasPoi()){
				sb.append("\nPoi:");
				sb.append(poiLocation.getPoi());
			}else{				
				sb.append("noPoi information");
			}
			logMsg(sb.toString());
			if (null == poiLocation.getAddrStr()) {
				postMsg(0.0, 0.0, "error code : " + poiLocation.getLocType());
			} else {
				postMsg(poiLocation.getLatitude(), poiLocation.getLongitude(), poiLocation.getAddrStr());
			}

			
			mLocationClient.stop();
		}
	};
	
	public final BDNotifyListener mNotifyer = new BDNotifyListener(){
		public void onNotify(BDLocation mlocation, float distance){
			mVibrator01.vibrate(1000);
		}
	};
	
	
	public String getKey(Context context){
		String key = null;
		ApplicationInfo info;
        try {
            info = context.getPackageManager().getApplicationInfo(
            		context.getPackageName(), PackageManager.GET_META_DATA);

            key = info.metaData.getString("baidu_loc_key");
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        
        return key;
	}

//	public Handler getHandler() {
//		return handler;
//	}
//
//	public void setHandler(Handler handler) {
//		this.handler = handler;
//	}
	LocationListener locationListener;
	public void asyncLoc(LocationListener locationListener){
		this.locationListener = locationListener;
		LocationClientOption option = new LocationClientOption();
		option.setOpenGps(true);
		option.setServiceName("com.baidu.location.service_v2.9");
		option.setPoiExtraInfo(true);
		option.setAddrType("all");
		option.setScanSpan(2000);
		option.setPriority(LocationClientOption.NetWorkFirst);
		option.setPoiNumber(10);
		option.disableCache(true);	
		mLocationClient.setLocOption(option);
		mLocationClient.start();
	}
	
	/**
	 * 显示请求字符串
	 * @param str
	 */
	public void logMsg(String str) {
//		try {
//			mData = str;
//			if ( mTv != null )
//				mTv.setText(mData);
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
	}
}
