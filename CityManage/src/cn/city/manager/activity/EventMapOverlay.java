package cn.city.manager.activity;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

import org.json.JSONException;
import org.json.JSONObject;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.RadioButton;
import android.widget.TextView;
import cn.city.manager.Configuration;
import cn.city.manager.Constants;
import cn.city.manager.MainApplication;
import cn.city.manager.R;
import cn.city.manager.fragment.event.BaseEvent;
import cn.city.manager.fragment.event.t_weijianEvent;
import cn.city.manager.model.EventHttpStreamThread;
import cn.city.manager.model.EventSingletonFactory;
import cn.city.manager.view.ViewSingletonFactory;
import cn.hpc.common.BaiduMapHelper;
import cn.hpc.common.HttpStreamThread;
import cn.hpc.common.cache.ImageCacheFactory;

import com.baidu.mapapi.BMapManager;
import com.baidu.mapapi.map.Ground;
import com.baidu.mapapi.map.GroundOverlay;
import com.baidu.mapapi.map.ItemizedOverlay;
import com.baidu.mapapi.map.MapController;
import com.baidu.mapapi.map.MapView;
import com.baidu.mapapi.map.OverlayItem;
import com.baidu.mapapi.map.PopupClickListener;
import com.baidu.mapapi.map.PopupOverlay;
import com.baidu.platform.comapi.basestruct.GeoPoint;
import com.umeng.analytics.MobclickAgent;

/**
 * 覆盖物的用法
 */
public class EventMapOverlay extends Activity {

	/**
	 *  MapView 是地图主控件
	 */
	private MapView mMapView = null;
	/**
	 *  用MapController完成地图控制 
	 */
	private MapController mMapController = null;
	private MyOverlay mOverlay = null;
	private PopupOverlay   pop  = null;
	private ArrayList<OverlayItem>  mItems = null; 
	private TextView  popupText = null;
	private ImageView popupEventPhoto = null;
	private TextView popupInfoTitle = null;
	private TextView popupInfoContent = null;
	private View viewCache = null;
	private Button button = null;
	private MapView.LayoutParams layoutParam = null;
	private OverlayItem mCurItem = null;
	/**
	 * overlay 位置坐标
	 */
	private ImageCacheFactory imc;
	
	// ground overlay
	private GroundOverlay mGroundOverlay;
	private Ground mGround;
//	private double mLon5 = 116.380338;
//	private double mLat5 = 39.92235;
//	private double mLon6 = 116.414977;
//	private double mLat6 = 39.947246;
	
	protected Context context;
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        
		com.umeng.common.Log.LOG = true;
//		MobclickAgent.setDebugMode(true);
		MobclickAgent.onError(this);
		
        context = this;
        imc  = ImageCacheFactory.getInstance();
        /**
         * 使用地图sdk前需先初始化BMapManager.
         * BMapManager是全局的，可为多个MapView共用，它需要地图模块创建前创建，
         * 并在地图地图模块销毁后销毁，只要还有地图模块在使用，BMapManager就不应该销毁
         */
        MainApplication app = (MainApplication)this.getApplication();
        if (app.mBMapManager == null) {
            app.mBMapManager = new BMapManager(this);
            /**
             * 如果BMapManager没有初始化则初始化BMapManager
             */
            app.mBMapManager.init(MainApplication.strKey,new MainApplication.MyGeneralListener());
        }
        /**
          * 由于MapView在setContentView()中初始化,所以它需要在BMapManager初始化之后
          */
        setContentView(R.layout.activity_overlay);
        mMapView = (MapView)findViewById(R.id.bmapView);
        /**
         * 获取地图控制器
         */
        mMapController = mMapView.getController();
        /**
         *  设置地图是否响应点击事件  .
         */
        mMapController.enableClick(true);
        /**
         * 设置地图缩放级别
         */
        mMapController.setZoom(13);
        /**
         * 显示内置缩放控件
         */
        mMapView.setBuiltInZoomControls(true);
        
//        initOverlay();

        /**
         * 设定地图中心点
         */
        GeoPoint p = new GeoPoint((int)(39.933859 * 1E6), (int)(116.400191* 1E6));
        mMapController.setCenter(p);
        
        new Thread(){

			@Override
			public void run() {
				// TODO Auto-generated method stub
				super.run();
		        try {
					loadEvents();
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
        	
        }.start();

        
        
        init();
    }
  
    private void init(){
    	this.findViewById(R.id.id_return).setOnClickListener(new View.OnClickListener() {
			
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				EventMapOverlay.this.finish();
			}
		});
    }
    
    
    private final List<GeoPoint> geoPoints = new ArrayList<GeoPoint>();
    private final List<OverlayItem> overlayItems = new ArrayList<OverlayItem>();
    

    
	protected List <BaseEvent> events;
	
	protected List<BaseEvent> loadEvents() throws Exception {
		String url = Constants.obtainLastEventsListUrl();//Constants.obtainWeijianListUrl(Configuration.getInstance().getUsername(), "month");//weijian_list;//"http://longhorn.free3v.net/t_weijian.html";
		EventSingletonFactory.getInstance().loadEvents(context, url, onLoadListener);
		return null;
	}
	
	EventSingletonFactory.OnLoadListener onLoadListener = new EventSingletonFactory.OnLoadListener(){

		@Override
		public void onLoaded(String url, List<BaseEvent> evs) {
			// TODO Auto-generated method stub
			events = evs;
//			updateMedia(events);
			handler.sendEmptyMessage(100);
		}

		@Override
		public void onError(String url) {
			// TODO Auto-generated method stub
			
		}
		
	};
	
	Handler handler = new Handler(){
		public void handleMessage(Message msg) {
			switch (msg.what) {
			case 100:
				onEventLoad();
				break;
			default:	
			}
		}

	};
	/**
	 * 补丁,修正服务器不能生成 图片,视频完整url
	 * 
	 * @param events
	 */
	private void updateMedia( List <BaseEvent> events){
		if (null == events || events.isEmpty()) return;
		for (BaseEvent ev : events){
			String photo = ev.getS_photo();
			if (photo!= null && photo.length() > 2 && !photo.startsWith("http")){
				ev.setS_photo(Constants.obtainImageUrl(photo));
				ev.setIcon(Constants.obtainIconImageUrl(photo));
			}
			
			String video = ev.getS_video();
			if (video != null && video.length() > 2 && !video.startsWith("http")){
				ev.setS_video(Constants.obtainVideoUrl(video));
			}
		}
	}
	
	private void onEventLoad(){
		
		if (null == events || events.isEmpty()) return;
		for (BaseEvent e : events){
			if (e instanceof t_weijianEvent){
				t_weijianEvent ev = (t_weijianEvent)e;
				geoPoints.add(BaiduMapHelper.createGeoPoint(ev.getD_latitude(), ev.getD_longitude()));
			}
		}
		initOverlay();
		asyncDownloadImage();
	}
	protected ExecutorService executorService = Executors.newFixedThreadPool(10);    //固定五个线程来执行任务

	private void asyncDownloadImage(){
		Thread th = new Thread(){

			@Override
			public void run() {
				// TODO Auto-generated method stub
				super.run();
				
				if (null != events) {
					executorService.shutdownNow();
					executorService = Executors.newFixedThreadPool(10); 

					for (BaseEvent content : events){
						if (null != content && null != content.getIcon() && content.getIcon().length() > 4){
							final Uri uri = Uri.parse(content.getIcon());
							if (null != uri && uri.getHost() != null)
								try {
									executorService.submit(new Runnable() {
										public void run() {
											Log.d("", "download img : " + uri.toString());
											try {
												imc.getImage(uri);//, 72, 72);
												handler.sendEmptyMessage(0x1001);
											} catch (Exception e) {
												// TODO Auto-generated catch block
												e.printStackTrace();
											}
										}
									});
								} catch (Exception e1){
									
								}

						}
					}
				}
				
			}
			
		};
		th.setPriority(Thread.MIN_PRIORITY);
		th.start();
	}
	
    public void initOverlay(){
    	
    	Drawable d = getResources().getDrawable(R.drawable.nav_turn_via_1);//icon_marka);//
    	/**
    	 * 创建自定义overlay
    	 */
//         mOverlay = new MyOverlay(getResources().getDrawable(R.drawable.nav_turn_via_1),mMapView);	//icon_marka
         mOverlay = new MyOverlay(d, mMapView);	//icon_marka
         /**
          * 准备overlay 数据
          */
         if (null != geoPoints && !geoPoints.isEmpty()){
             mMapController.setCenter(geoPoints.get(0));
         }
         for (GeoPoint gp : geoPoints){
        	 OverlayItem item = new OverlayItem(gp,"违章建筑1","");
             /**
              * 设置overlay图标，如不设置，则使用创建ItemizedOverlay时的默认图标.
              */
        	 
//             item.setMarker(getResources().getDrawable(R.drawable.nav_turn_via_1));//icon_marka
             item.setMarker(d);//icon_marka
        	 overlayItems.add(item);
         }
         
         for (OverlayItem item : overlayItems){
             /**
              * 将item 添加到overlay中
              * 注意： 同一个itme只能add一次
              */

        	 mOverlay.addItem(item);
         }

         /**
          * 保存所有item，以便overlay在reset后重新添加
          */
         mItems = new ArrayList<OverlayItem>();
         mItems.addAll(mOverlay.getAllItem());

		// 初始化 ground 图层
//		mGroundOverlay = new GroundOverlay(mMapView);
//		GeoPoint leftBottom = new GeoPoint((int) (mLat5 * 1E6),
//				(int) (mLon5 * 1E6));
//		GeoPoint rightTop = new GeoPoint((int) (mLat6 * 1E6),
//				(int) (mLon6 * 1E6));
//		Drawable d = getResources().getDrawable(R.drawable.ground_overlay);
//		Bitmap bitmap = ((BitmapDrawable) d).getBitmap();
//		mGround = new Ground(bitmap, leftBottom, rightTop);

         /**
          * 将overlay 添加至MapView中
          */
         mMapView.getOverlays().add(mOverlay);
//         mMapView.getOverlays().add(mGroundOverlay);
//         mGroundOverlay.addGround(mGround);
         

         /**
          * 刷新地图
          */
         mMapView.refresh();
         
         /**
          * 向地图添加自定义View.
          */
        

         viewCache = getLayoutInflater().inflate(R.layout.custom_event_map_item_view, null);
         popupEventPhoto = (ImageView) viewCache.findViewById(R.id.img_event_photo);
         popupInfoTitle = (TextView) viewCache.findViewById(R.id.id_text_title);
         popupInfoContent = (TextView) viewCache.findViewById(R.id.id_text_content);
//         popupText =(TextView) viewCache.findViewById(R.id.textcache);
         
         button = new Button(this);
         button.setBackgroundResource(R.drawable.popup);
         
         /**
          * 创建一个popupoverlay
          */
         PopupClickListener popListener = new PopupClickListener(){
			@Override
			public void onClickedPopup(int index) {
//				if ( index == 0){
//					//更新item位置
//				      pop.hidePop();
//				      GeoPoint p = new GeoPoint(mCurItem.getPoint().getLatitudeE6()+5000,
//				    		  mCurItem.getPoint().getLongitudeE6()+5000);
//				      mCurItem.setGeoPoint(p);
//				      mOverlay.updateItem(mCurItem);
//				      mMapView.refresh();
//				}
//				else if(index == 2){
//					//更新图标
//					mCurItem.setMarker(getResources().getDrawable(R.drawable.nav_turn_via_1));
//					mOverlay.updateItem(mCurItem);
//				    mMapView.refresh();
//				}
			}
         };
         pop = new PopupOverlay(mMapView,popListener);
         
         mOverlay.onTap(0);
    }
    /**
     * 清除所有Overlay
     * @param view
     */
    public void clearOverlay(View view){
    	mOverlay.removeAll();
    	mGroundOverlay.removeGround(mGround);
    	if (pop != null){
            pop.hidePop();
    	}
    	mMapView.removeView(button);
    	mMapView.refresh();
    }
    /**
     * 重新添加Overlay
     * @param view
     */
    public void resetOverlay(View view){
    	clearOverlay(null);
    	//重新add overlay
    	mOverlay.addItem(mItems);
//    	mGroundOverlay.addGround(mGround);
    	mMapView.refresh();
    }
   
    @Override
    protected void onPause() {
    	/**
    	 *  MapView的生命周期与Activity同步，当activity挂起时需调用MapView.onPause()
    	 */
        mMapView.onPause();
        
        super.onPause();
        MobclickAgent.onPause(this);
    }
    
    @Override
    protected void onResume() {
    	/**
    	 *  MapView的生命周期与Activity同步，当activity恢复时需调用MapView.onResume()
    	 */
        mMapView.onResume();
        super.onResume();
        MobclickAgent.onResume(this);
    }
    
    @Override
    protected void onDestroy() {
    	/**
    	 *  MapView的生命周期与Activity同步，当activity销毁时需调用MapView.destroy()
    	 */
        mMapView.destroy();
        executorService.shutdown();
        super.onDestroy();
    }
    
    @Override
    protected void onSaveInstanceState(Bundle outState) {
    	super.onSaveInstanceState(outState);
    	mMapView.onSaveInstanceState(outState);
    	
    }
    
    @Override
    protected void onRestoreInstanceState(Bundle savedInstanceState) {
    	super.onRestoreInstanceState(savedInstanceState);
    	mMapView.onRestoreInstanceState(savedInstanceState);
    }
    
    public class MyOverlay extends ItemizedOverlay{

		public MyOverlay(Drawable defaultMarker, MapView mapView) {
			super(defaultMarker, mapView);
		}
		

		@Override
		public boolean onTap(int index){
			OverlayItem item = getItem(index);
			if (null == item) return false;
			mCurItem = item ;
//			if (index == 3){
//				button.setText("这是一个系统控件");
//				GeoPoint pt = new GeoPoint((int) (mLat4 * 1E6),
//						(int) (mLon4 * 1E6));
//				// 弹出自定义View
//				pop.showPopup(button, pt, 32);
//			}
//			else{
//			   popupText.setText(getItem(index).getTitle());
//			   Bitmap[] bitMaps={
//				    BMapUtil.getBitmapFromView(popupLeft), 		
//				    BMapUtil.getBitmapFromView(popupInfo), 		
//				    BMapUtil.getBitmapFromView(popupRight) 		
//			    };
//			    pop.showPopup(bitMaps,item.getPoint(),32);
//			}
			
//			   popupText.setText(getItem(index).getTitle());
			
	         try {
				popupEventPhoto.setImageDrawable(imc.getLocalImage(Uri.parse(events.get(index).getIcon())));//()), 72, 72));
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				popupEventPhoto.setImageResource(R.drawable.ic_default_event);
			}
	         popupInfoTitle.setText("网格:" + events.get(index).getNetGridId());
	         popupInfoContent.setText(events.get(index).getContent());

			   Bitmap[] bitMaps={
//				    BMapUtil.getBitmapFromView(popupLeft), 		
//				    BMapUtil.getBitmapFromView(popupInfo), 		
//				    BMapUtil.getBitmapFromView(popupRight) 		
					   BMapUtil.getBitmapFromView(viewCache) 		
			    };
			    pop.showPopup(bitMaps,item.getPoint(),32);
			return true;
		}
		
		@Override
		public boolean onTap(GeoPoint pt , MapView mMapView){
			if (pop != null){
                pop.hidePop();
                mMapView.removeView(button);
			}
			return false;
		}
    	
    }
    
    
    
    /**
     * 设置底图显示模式
     * @param view
     */
    public void setMapMode(View view){
    	 boolean checked = ((RadioButton) view).isChecked();
         switch(view.getId()) {
             case R.id.normal:
                 if (checked)
                	 mMapView.setSatellite(false);
                 break;
             case R.id.statellite:
                 if (checked)
                	 mMapView.setSatellite(true);
                 break;
         }	
    }
    /**
     * 设置是否显示交通图
     * @param view
     */
    public void setTraffic(View view){
    	mMapView.setTraffic(((CheckBox) view).isChecked());
    }
}
