package cn.city.manager.activity;

import android.graphics.Bitmap;
import android.view.View;

public class BMapUtil {
    	
	/**
	 * 从view 得到图片
	 * @param view
	 * @return
	 */
	public static Bitmap getBitmapFromView(View view) {
        view.destroyDrawingCache();
        view.measure(View.MeasureSpec.makeMeasureSpec(0, View.MeasureSpec.UNSPECIFIED),
                View.MeasureSpec.makeMeasureSpec(0, View.MeasureSpec.UNSPECIFIED));
        view.layout(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight());
        view.setDrawingCacheEnabled(true);
        Bitmap bitmap = view.getDrawingCache(true);
        return bitmap;
	}
	
	
	
	/**
	*
	*<font color="\"#ff0000\""> </font><font color="\"#ff00\"">特别是这里x一定要传lon,y值传lat 传反了后果自负(我就是在这里栽跟头的 谨记谨记)</font>
	*/
//	String bmapBase64Encode = "http://api.map.baidu.com/ag/coord/convert?from=0&to=4<font color="\"#ff0000\"">&x=%1$s&y=%2$s"</font>;
	/**
	* 转换百度地图坐标
	* @param baiduLat
	* 百度地图坐标 纬度
	* @param baiduLon
	* 百度地图坐标 经度
	* @throws IOException
	* @throws HWNetException
	* @throws JSONException
	*/
//	private void tran(double baiduLat,double baiduLon) throws Exception {
//		CoordinateConvert.
//	//就一个普通个的url请求封装成Client而已
//	AndroidClient client = new AndroidClient();
//	//获取请求后数据
//	String json = client.doGetWithString(String.format(bmapBase64Encode,String.valueOf(baiduLon),String.valueOf(baiduLat)));
//	//得到JSON对象
//	JSONObject object = new JSONObject(json);
//	System.out.println(object);
//	Double lon1 = Double.parseDouble(new String(Base64.decodeBase64(object.getString("x").getBytes())));
//	Double lat1 = Double.parseDouble(new String(Base64.decodeBase64(object.getString("y").getBytes())));
//	System.out.println("转换出来的百度坐标经度:"+lon1+"纬度:"+lat1);
//	//这里的就是GPS坐标 经过下面算法转换 基本上合真实的GPS坐标相差无几  
//	super.gpsLat = baiduLat*2-lat1;
//	super.gpsLon = baiduLon*2-lon1;
//	System.out.println("算法转算后的百度坐标经度:"+gpsLon+"纬度:"+gpsLat);
//	}
}
