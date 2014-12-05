package cn.city.manager.activity;

import java.io.File;

import org.apache.http.HttpStatus;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.provider.MediaStore;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import cn.city.manager.Constants;
import cn.city.manager.MainApplication;
import cn.city.manager.R;
import cn.city.manager.fragment.BaseFragment;
import cn.city.manager.fragment.GeneralInformationFragment;
import cn.city.manager.fragment.t_netbaseinfo;
import cn.city.manager.fragment.t_netbaseinfoGrid;
import cn.city.manager.fragment.event.BaseEvent;
import cn.city.manager.view.ViewSingletonFactory;
import cn.hpc.common.BaiduMapHelper;
import cn.hpc.common.DrawableUtils;
import cn.hpc.common.HttpUploadHelper;

import com.baidu.platform.comapi.basestruct.GeoPoint;
import com.umeng.analytics.MobclickAgent;

public class DetailActivity extends Activity {
	public static final int NONE = 0;

	public static final int IMAGE_CAPTURE = 1;// 拍照

	public static final int PHOTOZOOM = 2; // 缩放

	public static final int PHOTORESOULT = 3;// 结果

	public static final String IMAGE_UNSPECIFIED = "image/*";

	public static final int VIDEO_CAPTURE = 4;// 
	public static final int IMAGE_SELECT = 5;// 
	public static final int VIDEO_SELECT = 6;// 
	public static final int VIDEO_CAPTURE2 = 8;// 
	
	public static final int IMAGE_CROP = 7;// 剪图

	protected String jsonValue;
//	protected Gallery gallery;
//	protected ImageAdapter imageAdapter;
	protected ImageView imageView;
	protected BaseEvent baseContent;
	protected BaseFragment fragment;
	protected View mainView;
	protected TextView tvTitle;//tvMainTitle, tvSubTitle;
	protected LinearLayout detailMainContainer;
	protected TextView tvVideoFile;
	protected Activity context;
	private GeneralInformationFragment general;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		com.umeng.common.Log.LOG = true;
//		MobclickAgent.setDebugMode(true);
		MobclickAgent.onError(this);
		
		context = this;
		general = new GeneralInformationFragment();
//		Log.i("", "" + System.currentTimeMillis());
		mainView = View.inflate(this, R.layout.detail_main, null);
		setContentView(mainView);// (R.layout.detail_main);
		tvTitle = (TextView) mainView.findViewById(R.id.id_titlebar_title);
		// tvMainTitle = (TextView) mainView.findViewById(R.id.id_main_title);
		// tvSubTitle = (TextView) mainView.findViewById(R.id.id_sub_title);
		detailMainContainer = (LinearLayout) mainView
				.findViewById(R.id.id_detail_main_container);

		jsonValue = this.getIntent().getStringExtra("jsonValue");
//		if (null != jsonValue)
//			Log.i("", jsonValue);

		String category = this.getIntent().getStringExtra("category");
		selectView(category);

		// if ("food".equals(category)){
		// onNavigationItemSelected(1, 0);
		// } else {
		// onNavigationItemSelected(0, 0);
		// }

	}
	@Override
	protected void onResume() {
		super.onResume();
		MobclickAgent.onResume(this);
	}

	@Override
	protected void onPause() {
		super.onPause();
		MobclickAgent.onPause(this);
	}

	final protected Handler handler = new Handler() {

		@Override
		public void dispatchMessage(Message msg) {
			switch (msg.what) {
			case 0x1001:
				// Bundle b = msg.getData();
				// double latitude = b.getDouble("latitude");
				// double longitude = b.getDouble("longitude");
				// String address = b.getString("address");

				break;
			case 0x1002:
				ViewSingletonFactory.getInstance().hideProcessDialog();
//				Intent intent = new Intent();
//				intent.putExtra("finish", "");
//				setResult(Activity.RESULT_OK, intent);
				setResult(BaseBrowseActivity.REQUEST_UPDATE_CODE);
				DetailActivity.this.finish();
				break;
			case HttpStatus.SC_OK:
//				alertDialog.setMessage("上传事件成功");
//				progressDialog.setMessage("上传事件成功");
//				progressDialog.setTitle("上传事件成功");
				ViewSingletonFactory.getInstance().hideProcessDialog();
				ViewSingletonFactory.getInstance().showProcessDialog(context, null, "上传事件成功");
				Toast.makeText(DetailActivity.this, "上传事件成功", Toast.LENGTH_LONG).show();
				
				handler.sendEmptyMessageDelayed(0x1002, 500);
				
			default:
				ViewSingletonFactory.getInstance().hideProcessDialog();
//				showMessage("上传事件错误, 请重新上传");
				
				super.dispatchMessage(msg);
			}

		}
	};

	@Override
	public boolean onKeyDown(int keyCode, KeyEvent event) {
		// TODO Auto-generated method stub
		 if (keyCode == KeyEvent.KEYCODE_BACK) {
			 DetailActivity.this.finish();
			 return true;
		 }
		return super.onKeyDown(keyCode, event);
		// return true;
	}

	@Override
	protected void onDestroy() {
		overridePendingTransition(R.anim.zoom_enter, R.anim.zoom_exit);
		
		super.onDestroy();
	}
	
	protected void selectView(String category) {
		
		String pkg = BaseFragment.class.getPackage().getName();
		try {
			Class<?> userClz = Class.forName(pkg + "." + category);
			fragment = (BaseFragment) userClz.newInstance();
			tvTitle.setText(fragment.getTitle(context));
			// structureView = fragment.getView(context, parent);
			// fragment = (BaseFragment) ViewSingletonFactory.getInstance()
			// .getFragment(category).newInstance();
			// ViewSingletonFactory.getInstance().setPosition(position);
			// structureView = new StructureView();

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			this.finish();
			return;
		}

		fragment.setJsonData(jsonValue);

		detailMainContainer.removeAllViews();
		detailMainContainer.addView(fragment
				.getView(this, (ViewGroup) mainView));

		// 新建事件,需要隐藏一些字段
		if (null == jsonValue)
			general.initNewEvent(mainView);
		
		// FrameLayout fl = (FrameLayout)
		// this.findViewById(R.id.detail_container);
		// fl.removeAllViews();
		// fl.addView(fragment.getView(this, (ViewGroup)mainView));
		if (category.equals(t_netbaseinfo.class.getSimpleName())
				|| category.equals(t_netbaseinfoGrid.class.getSimpleName())) {
			findViewById(R.id.btn_commit).setVisibility(View.INVISIBLE);
			findViewById(R.id.btn_cancel).setOnClickListener(onClickListener);

		} else {
			try {
				init();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		this.setTitle(fragment.getTitle(context));

		baseContent = fragment.getBaseContent();
//		if (null == baseContent)
//			return;
		
//		Log.d("", baseContent.toJSONObject());
		// 更新位置

		// tvMainTitle.setText(fragment.getTitle());
		// tvSubTitle.setText(fragment.getSubTitle());

		// 更新View

		// structureView.setEvent(((StructureEvent)(fragment.getBaseContent())));
		// structureView.updateView(mainView);

		fragment.updateView(mainView);
	}

	// StructureView structureView;

	protected void init() throws NullPointerException {
//		findViewById(R.id.btn_commit).setOnClickListener(onClickListener);
//		findViewById(R.id.btn_cancel).setOnClickListener(onClickListener);
		
		//是否允行编辑
//		if (null != jsonValue){
//			int []ids = {R.id.btn_commit,
//					R.id.btn_add_picture, R.id.btn_add_video, 
//					R.id.btn_select_picture, R.id.btn_select_video };
//			for (int id : ids){
//				findViewById(id).setVisibility(View.INVISIBLE);
//			}
//			findViewById(R.id.btn_cancel).setOnClickListener(onClickListener);
//			return;
//		}
		
		int []ids = {R.id.btn_commit, R.id.btn_cancel,
				R.id.id_browse_mode,
				R.id.id_threeadress,
				R.id.btn_add_picture, R.id.btn_add_video, 
				R.id.btn_select_picture, R.id.btn_select_video,
				R.id.tv_video_file, R.id.picture};
		Button btn = (Button) this.findViewById(R.id.id_browse_mode);
		btn.setVisibility(View.VISIBLE);
		
		
		btn.setBackgroundResource(R.drawable.title_btn_map);
		btn.setText(null);//"事发地点");
		for (int id : ids){
			findViewById(id).setOnClickListener(onClickListener);
		}
		
		
		tvVideoFile  = (TextView) findViewById(R.id.tv_video_file);
		
		this.findViewById(R.id.btn_select_picture).setVisibility(View.GONE);
		this.findViewById(R.id.btn_select_video).setVisibility(View.GONE);
		
		imageView = (ImageView) findViewById(R.id.picture);
		
//		findViewById(R.id.btn_add_picture).setOnClickListener(onClickListener);
//		findViewById(R.id.btn_add_video).setOnClickListener(onClickListener);
//		gallery = (Gallery) findViewById(R.id.gallery);
//		imageAdapter = new ImageAdapter(this);
//		gallery.setAdapter(imageAdapter);
//		gallery.setOnItemSelectedListener(new OnItemSelectedListener() {
//
//			@Override
//			public void onItemSelected(AdapterView<?> parent, View view,
//					int position, long id) {
//				// TODO Auto-generated method stub
//
//			}
//
//			@Override
//			public void onNothingSelected(AdapterView<?> parent) {
//				// TODO Auto-generated method stub
//
//			}
//
//		});

//		initModifyTime();
	}

	@Override
	protected void onActivityResult(int requestCode, int resultCode, Intent data) {

		if (resultCode == NONE ||  (resultCode != RESULT_OK) ) {
			super.onActivityResult(requestCode, resultCode, data);
			return;
		}

			

		switch (requestCode) {
		case IMAGE_CROP:{
			baseContent.setS_photo(imgPath);
			Bitmap bmp = DrawableUtils.decodeBitmapWithSize(imgPath, 100, 100);
			imageView.setImageBitmap(bmp);

		}
		break;
		case IMAGE_SELECT: {
			
			startPhotoZoom(data.getData());
//			Uri uri = data.getData();
//			Cursor cursor = getContentResolver().query(uri, null, null, null,
//					null);
//			cursor.moveToFirst();
////			// String imgNo = cursor.getString(0); // 图片编号
//			String imgPath = cursor.getString(1); // 图片文件路径
////			String imgSize = cursor.getString(2); // 图片大小
////			String imgName = cursor.getString(3); // 图片文件名
////			String fileName = imgName;
////			String fileSize = imgSize;
//			// Log.e("uri", uri.toString());
//			
			//增加切图:	
			
//			baseContent.setS_photo(imgPath);
//			ContentResolver cr = this.getContentResolver();
//			try {
////				Bitmap bitmap = BitmapFactory.decodeStream(cr
////						.openInputStream(uri));
////				ImageView imageView = (ImageView) findViewById(R.id.imview);
////				// 将Bitmap设定到ImageView 
////				Bitmap bmp = small(bitmap);
////				imageView.setImageBitmap(bmp);
////				imageView.setImageURI(uri);
//				Bitmap bmp = DrawableUtils.decodeBitmapWithSize(imgPath, 100, 100);
//				imageView.setImageBitmap(bmp);
////				imageAdapter.addBitmap(bitmap);// (pictureFile);
////				imageAdapter.notifyDataSetChanged();
//			} catch (Exception e) {
//				// Log.e("Exception", e.getMessage(),e);
//			}
//			cursor.close();
		}
		break;
		
		case VIDEO_SELECT:{
			Cursor cursor = getContentResolver().query(data.getData(), null,
					null, null, null);
			cursor.moveToFirst();
			String mediaFilePath = cursor.getString(1);
			cursor.close();
			tvVideoFile.setText(null);//mediaFilePath);
			tvVideoFile.setBackgroundResource(R.drawable.ic_media_play);
			baseContent.setS_video(mediaFilePath);
			// File mMediaFile = new File(mediaFilePath);
			Log.d("", "VIDEO_CAPTURE : " + mediaFilePath);

		}
		break;
		case IMAGE_CAPTURE: {// 拍照//if (requestCode == PHOTOHRAPH)
			// 设置文件保存路径这里放在跟目录下
			startPhotoZoom(Uri.parse("file://"+imgPath));
//			Bundle extras = data.getExtras();
//			Bitmap b = (Bitmap) extras.get("data");
//			Bitmap bmp = small(b);
//			imageView.setImageBitmap(bmp);
////			imageAdapter.addBitmap(bmp);// (pictureFile);
////			imageAdapter.notifyDataSetChanged();
//			// startPhotoZoom(Uri.fromFile(picture));
////			Uri uri = data.getData();
////			Cursor cursor = getContentResolver().query(uri, null, null, null,
////					null);
////			cursor.moveToFirst();
//////			// String imgNo = cursor.getString(0); // 图片编号
////			String imgPath = cursor.getString(1); // 图片文件路径
//			
//			
	//增加切图:		
//			baseContent.setS_photo(imgPath);
//			try {
////				File pictureFile = new File(imgPath);
//
////				Bitmap bitmap = BitmapFactory.decodeFile(imgPath);
////				ImageView imageView = (ImageView) findViewById(R.id.imview);
////				// 将Bitmap设定到ImageView 
////				Bitmap bmp = small(bitmap);
//				Bitmap bmp = DrawableUtils.decodeBitmapWithSize(imgPath, 100, 100);
//
//				imageView.setImageBitmap(bmp);
////				imageAdapter.addBitmap(bitmap);// (pictureFile);
////				imageAdapter.notifyDataSetChanged();
//			} catch (Exception e) {
//				// Log.e("Exception", e.getMessage(),e);
//			}
		}
			break;
		case VIDEO_CAPTURE: {
			Cursor cursor = getContentResolver().query(data.getData(), null,
					null, null, null);
			cursor.moveToFirst();
			String mediaFilePath = cursor.getString(1);
			cursor.close();
			baseContent.setS_video(mediaFilePath);
			tvVideoFile.setBackgroundResource(R.drawable.ic_media_play);
			tvVideoFile.setText(null);//mediaFilePath);
			// File mMediaFile = new File(mediaFilePath);
			Log.d("", "VIDEO_CAPTURE : " + mediaFilePath);
			// File pictureFile = new File(
			// Environment.getExternalStorageDirectory() + "/temp.jpg");
			// Bundle extras = data.getExtras();
			// Bitmap b = (Bitmap) extras.get("data");
			// Bitmap bmp = small(b);
			//
			// imageAdapter.addBitmap(bmp);// (pictureFile);
			// imageAdapter.notifyDataSetChanged();
			// startPhotoZoom(Uri.fromFile(picture));

		}
		
		case VIDEO_CAPTURE2:{
			String mediaFilePath = data.getData().getPath();
			baseContent.setS_video(mediaFilePath);
			tvVideoFile.setBackgroundResource(R.drawable.ic_media_play);
			tvVideoFile.setText(null);//mediaFilePath);
			// File mMediaFile = new File(mediaFilePath);
			Log.d("", "VIDEO_CAPTURE : " + mediaFilePath);

		}
			break;
		}
		super.onActivityResult(requestCode, resultCode, data);
	}

//	protected static Bitmap small(Bitmap bitmap) {
//		// int w = b.getWidth();
//		// int h = b.getHeight();
//		// int wScale = 1;
//		// int hScale = 1;
//		// if ( w > h) {
//		// wScale = 800;
//		// hScale = h * 800 / w;
//		// } else {
//		// hScale = 800;
//		// wScale = w * 800 / h;
//		// }
//		// Bitmap bmp = Bitmap.createScaledBitmap(b, wScale, hScale, true);
//		Matrix matrix = new Matrix();
//		int max = bitmap.getHeight();
//		if (max < bitmap.getWidth()) {
//			max = bitmap.getWidth();
//		}
//		float scale = 400.0f / max;
//		matrix.postScale(scale, scale); // 长和宽放大缩小的比例
//		Bitmap resizeBmp = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(),
//				bitmap.getHeight(), matrix, true);
//		return resizeBmp;
//	}

//	protected EditText etTime;
//
//	protected void initModifyTime() {
//		etTime = (EditText) this.findViewById(R.id.examination_date_time);
////		int[] ids = { R.id.examination_date_time };
//		int[] ids = {R.id.et_buildtime, R.id.et_solvetime, R.id.et_tijiao, R.id.et_updatename};
//
//		for (int id : ids) {
//			this.findViewById(id).setOnClickListener(onClickListener);
//		}
//	}
	protected final String imgPath = MainApplication.dataPath + File.separator + "photo.jpg";

//	protected final String uploadUrl = Constants.weijian_commit_new;//"http://192.168.1.2:8080/upload";//
	
	final protected View.OnClickListener onClickListener = new View.OnClickListener() {
		@Override
		public void onClick(View v) {
			switch (v.getId()) {
			case R.id.btn_cancel:
				DetailActivity.this.finish();
				break;
			case R.id.btn_commit:
				if (null != fragment){
					ViewSingletonFactory.getInstance().showProcessDialog(context, null, "正在上传数据,请稍候...");
					fragment.updateData(mainView);
					HttpUploadHelper uploader = new HttpUploadHelper(handler);
					String uploadUrl = null;
					if (null != jsonValue) {
						uploadUrl = Constants.URL_commit_update;
					} else {
						uploadUrl = Constants.URL_commit_new;
					}
					uploader.httpPostEvent(uploadUrl, baseContent);
				}
				break;
//			case R.id.examination_date_time:
//				setDateTime(R.id.examination_date_time);
//				break;
			case R.id.btn_select_picture: {
				Intent intent = new Intent(Intent.ACTION_GET_CONTENT);
				// 开启Pictures画面Type设定为image
//				intent.setType("image/*");
				 //intent.setType("video/*;image/*");//同时选择视频和图片
				// 使用Intent.ACTION_GET_CONTENT这个Action
//				intent.setAction(Intent.ACTION_GET_CONTENT);
				//取得相片后返回本画面
				
				intent.setType("image/*");
//				intent.putExtra("crop", "true");

//				//裁剪框比例
//				intent.putExtra("aspectX", 2);
//				intent.putExtra("aspectY", 1);

				//图片输出大小
//				intent.putExtra("outputX", 1024);
//				intent.putExtra("outputY", 768);
//				intent.putExtra("scale", true);
//				intent.putExtra("return-data", false);
//				intent.putExtra(MediaStore.EXTRA_OUTPUT, imgPath);
//				intent.putExtra("outputFormat", Bitmap.CompressFormat.JPEG.toString());

				//不启用人脸识别
				intent.putExtra("noFaceDetection", false); 
				//
				startActivityForResult(intent, IMAGE_SELECT);
			}
				break;
			case R.id.btn_select_video: {
				Intent intent = new Intent(Intent.ACTION_GET_CONTENT);
				// 开启Pictures画面Type设定为image
				intent.setType("video/*");
				// 使用Intent.ACTION_GET_CONTENT这个Action
//				intent.setAction(Intent.ACTION_GET_CONTENT);
				//取得相片后返回本画面
				startActivityForResult(intent, VIDEO_SELECT);
			}
				break;
			case R.id.btn_add_picture: {
				general.updateLocation(context, (EditText) findViewById(R.id.et_yinhuanaddress), baseContent);
				Intent intent = new Intent(MediaStore.ACTION_IMAGE_CAPTURE);
				intent.putExtra(MediaStore.EXTRA_OUTPUT, Uri.fromFile(new File(imgPath)));
				// intent.putExtra(MediaStore.EXTRA_OUTPUT, Uri
				// .fromFile(new File(Environment
				// .getExternalStorageDirectory(),
				// "temp.jpg")));

				startActivityForResult(intent, IMAGE_CAPTURE);
			}
				break;
			case R.id.btn_add_video: {
				general.updateLocation(context, (EditText) findViewById(R.id.et_yinhuanaddress), baseContent);
				Intent intent = new Intent();//(MediaStore.ACTION_VIDEO_CAPTURE);
				intent.setClass(context, BasicVideoCapture.class);
				//设置视频大小
				intent.putExtra(android.provider.MediaStore.EXTRA_SIZE_LIMIT, 2*1024*1024);
				//
				intent.putExtra(android.provider.MediaStore.EXTRA_VIDEO_QUALITY , 0);

				//设置视频时间  秒单位
				intent.putExtra(android.provider.MediaStore.EXTRA_DURATION_LIMIT, 60);
//				startActivityForResult(intent, VIDEO);

				// intent.putExtra(MediaStore.EXTRA_OUTPUT, Uri
				// .fromFile(new File(Environment
				// .getExternalStorageDirectory(),
				// "temp.jpg")));

				startActivityForResult(intent, VIDEO_CAPTURE2);
			}
				break;
			case R.id.picture:
				showPicture();
				break;
			case R.id.tv_video_file:
				showVideo();
				break;
			case R.id.id_threeadress:
			case R.id.id_browse_mode:
				startNavi();
				break;
			default:
			}

		}
	};
	
	private boolean isZero(double d){
		if (d > -0.01 && d < 0.01) return true;
		return false;
	}
	private void startNavi(){
		
		if (isZero(baseContent.getD_latitude()) || isZero(baseContent.getD_longitude())){
			Toast.makeText(context, "地理位置无效, 无法进入地图模式", Toast.LENGTH_LONG).show();
			return;
		}
		
		String lat =null;
		String lon = null;
		GeoPoint gp = BaiduMapHelper.createGeoPoint(baseContent.getD_latitude(), baseContent.getD_longitude());
		Double gpsLat = 0.0d, gpsLon = 0.0d;
		gpsLat = gp.getLatitudeE6() * 1.0d / 1E6;
		gpsLon = gp.getLongitudeE6() * 1.0d / 1E6;

		lat = String.valueOf(gpsLat);
		lon = String.valueOf(gpsLon);
//		String strIntent = "intent://map/direction?origin=latlng:39.981042,116.779937|name:我的位置&destination=latlng:39.805961,116.194632|name:西单&mode=driving&region=北京&referer=Autohome|GasStation#Intent;scheme=bdapp;package=com.baidu.BaiduMap;end";
		//移动APP调起Android百度地图方式举例
//		String strIntent = "intent://map/marker?location=39.805961,116.194632&title=事发地点&content=百度奎科大厦&src=yourCompanyName|yourAppName#Intent;scheme=bdapp;package=com.baidu.BaiduMap;end";  
		String strIntent = String.format("intent://map/marker?location=%s,%s&title=%s&content=事发地点&src=hpccn|QQ285993990#Intent;scheme=bdapp;package=com.baidu.BaiduMap;end"
//			, String.valueOf(baseContent.getD_latitude())
//			, String.valueOf(baseContent.getD_longitude())
			, lat
			, lon
			, baseContent.getAddress());

//		String strIntent = String.format("intent://map/direction?origin=latlng:%s,%s|name:我的位置&destination=latlng:%s,%s|name:%s&mode=driving&region=北京&referer=Autohome|GasStation#Intent;scheme=bdapp;package=com.baidu.BaiduMap;end"
//				, String.valueOf(baseContent.getD_latitude()), String.valueOf(baseContent.getD_longitude())
//				, String.valueOf(baseContent.getD_latitude()), String.valueOf(baseContent.getD_longitude())
//				, baseContent.getAddress());
		Intent intent;
//		//调起百度地图客户端
        try {
                intent = Intent.getIntent(strIntent);
                if(isInstallByread("com.baidu.BaiduMap")){
                        startActivity(intent); //启动调用
                         Log.e("GasStation", "百度地图客户端已经安装") ;
                }else{
                         Log.e("GasStation", "没有安装百度地图客户端") ;
                }
        } catch (Exception e) {
                e.printStackTrace();
        }
        
        
//		if (isZero(baseContent.getD_latitude()) || isZero(baseContent.getD_longitude())){
//			ViewSingletonFactory.getInstance().showProcessDialog(context, null, "位置信息无效,为法为您导航");
//			
//		}
//		
//		ViewSingletonFactory.getInstance().showProcessDialog(context, null, "准备导航数据 ...");
//		Location location = new Location(context);
//		location.asyncLoc(new LocationListener(){
//
//			@Override
//			public void onLocation(double latitude, double longitude,
//					String address) {
//				ViewSingletonFactory.getInstance().hideProcessDialog();
//				if (address.contains("error")) return;
//
//				GeoPoint from = BaiduMapHelper.createGeoPoint(latitude, longitude);
//				GeoPoint to = BaiduMapHelper.createGeoPoint(baseContent.getD_latitude(), baseContent.getD_longitude());
////				BaiduMapHelper.startNavi(context, from, to);
//				Intent intent;
////				String strIntent = "intent://map/marker?location=39.916979519873,116.41004950566&title=我的位置&content=百度奎科大厦"
//					//调起百度PC或web地图，且在（lat:39.916979519873，lng:116.41004950566）坐标点上显示名称“我的位置”，内容“百度奎科大厦”的信息窗口。
//				//"intent://map/direction?origin=latlng:34.264642646862,108.95108518068|name:我家&destination=大雁塔&mode=driving®ion=西安&referer=Autohome|GasStation#Intent;scheme=bdapp;package=com.baidu.BaiduMap;end"
//				
//				// 直接导航 
//				String strIntent = String.format("intent://map/direction?origin=latlng:%s,%s|name:我的位置&destination=latlng:%s,%s|name:%s&mode=driving&region=北京&referer=Autohome|GasStation#Intent;scheme=bdapp;package=com.baidu.BaiduMap;end"
//					, String.valueOf(latitude), String.valueOf(longitude)
//					, String.valueOf(baseContent.getD_latitude()), String.valueOf(baseContent.getD_longitude())
//					, baseContent.getAddress());
//				
//
//				//调起百度地图客户端
//                try {
//                        intent = Intent.getIntent(strIntent);
//                        startActivity(intent); //启动调用
////                        if(isInstallByread("com.baidu.BaiduMap")){
////                                startActivity(intent); //启动调用
////                                 Log.e("GasStation", "百度地图客户端已经安装") ;
////                        }else{
////                                 Log.e("GasStation", "没有安装百度地图客户端") ;
////                        }
//                } catch (Exception e) {
//                        e.printStackTrace();
//                }
//			}
//			
//		});		
	}
	
	private boolean isInstallByread(String packageName) {   
        return new File("/data/data/" + packageName).exists();   
    } 
	
	private void showPicture(){
		String pic = baseContent.getS_photo();//tvVideoFile.getText().toString();
		if (null != pic && pic.length() > 1){
			Uri uri = null;
			if (pic.startsWith("/")){
				uri = Uri.parse("file://" + pic);
			} else {
				uri = Uri.parse(pic);
			}
			if (null != uri){
				try {
					Intent i = new Intent();//(Intent.ACTION_VIEW);
					i.setClass(context, ImageViewActivity.class);
					String type = "image/* ";
//					i.setData(uri);
					i.setDataAndType(uri, type);
//					i.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
					context.startActivity(i);
				} catch (Exception e){
					e.printStackTrace();
				}
			}
		}	
	}
	
	private void showVideo(){
		
		String video = baseContent.getS_video();//tvVideoFile.getText().toString();
		if (null != video && video.length() > 1){
			Uri uri = null;
			if (video.startsWith("/")){
				uri = Uri.parse("file://" + video);
			} else {
				uri = Uri.parse(video);
			}
			MobclickAgent.onEvent(context, "play_video", uri.toString());
			if (null != uri){
				try {
					Intent i = new Intent(Intent.ACTION_VIEW);
					i.setClass(context, InternetVideoPlayerActivity.class);
					String type = "video/* ";
//					i.setData(uri);
					i.setDataAndType(uri, type);
					i.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
					context.startActivity(i);
				} catch (Exception e){
					e.printStackTrace();
					obatinException(e);
					MobclickAgent.onEvent(context, "play_video", sb.toString());
				}
			}
		}

	}
	
	private StringBuilder sb = new StringBuilder();
	
	private void obatinException(Exception e){
		sb.append(e.getMessage());
		sb.append("\n");
		StackTraceElement[] stes = e.getStackTrace();
		for (StackTraceElement ste : stes) {
			sb.append(ste.toString());
			sb.append("\n");
		}
	}
	AlertDialog alertDialog;
	

	protected void showMessage(String message){

		
	    AlertDialog.Builder builder = new AlertDialog.Builder(this);
	    builder.setIcon(R.drawable.ic_logo);
	    builder.setTitle("正在上传数据");
	    builder.setMessage(message);
	    builder.setCancelable(true);
	    alertDialog = builder.create();  
	    alertDialog.show();
	}
//	protected void setDateTime(int viewId) {
//		DateTimeChanger dtc = new DateTimeChanger(this, (TextView)this.findViewById(viewId), baseContent);
//	}
//	final protected DateTimePickerDialog.OnDateTimeChangedListener listener = new DateTimePickerDialog.OnDateTimeChangedListener() {
//
//		@Override
//		public void onDateTimeChanged(long millisecond) {
//			// TODO Auto-generated method stub
//			Date date = new Date(millisecond);
//			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//			String dateTime = sdf.format(date);
//			etTime.setText(dateTime);
//			baseContent.setTime(millisecond);
//		}
//
//	};
//
//	protected void setDateTime() {
//		DateTimePickerDialog dateTimePicKDialog = new DateTimePickerDialog(this);
//		dateTimePicKDialog.dateTimePicKDialog(listener, baseContent.getTime());
//
//	}

	@Override
	protected void onStop() {
		if (null != alertDialog){
			alertDialog.cancel();
			alertDialog.dismiss();
		}
		super.onStop();
	}

	@Override
	public void finish() {
//		Intent intent = new Intent();
//		intent.putExtra("finish", "");
//		setResult(Activity.RESULT_OK, intent);
//		this.setResult(100);
		super.finish();
	}
	
	
	/**
	 * 裁剪图片方法实现
	 * 
	 * @param uri
	 */
	public void startPhotoZoom(Uri uri) {

//		Intent intent = new Intent("com.android.camera.action.CROP");
//		intent.setDataAndType(uri, "image/*");
//		// 设置裁剪
//		intent.putExtra("crop", "true");
//		// aspectX aspectY 是宽高的比例
//		intent.putExtra("aspectX", 1);
//		intent.putExtra("aspectY", 1);
//		// outputX outputY 是裁剪图片宽高
//		intent.putExtra("outputX", 320);
//		intent.putExtra("outputY", 320);
//		intent.putExtra("return-data", true);
//		startActivityForResult(intent, 2);
	
		// 裁剪图片
//		 Intent intent = new Intent("com.android.camera.action.CROP");
//		 intent.setDataAndType(uri, "image/*");
//		 intent.putExtra("crop", "true");
////		 intent.putExtra("aspectX", 1);
////		 intent.putExtra("aspectY", 1);
////		 intent.putExtra("outputX", 1024);
////		 intent.putExtra("outputY", 768);
//		 intent.putExtra("scale", true);
//		 intent.putExtra(MediaStore.EXTRA_OUTPUT, Uri.parse("file://"+imgPath));
//		 intent.putExtra("return-data", false);
//		 intent.putExtra("outputFormat", Bitmap.CompressFormat.JPEG.toString());
//		 intent.putExtra("noFaceDetection", true); // no face detection
//		 startActivityForResult(intent, IMAGE_CROP);
		
		Bitmap bmp = DrawableUtils.decodeBitmapWithSize(uri.getPath(), 1024, 768);
		
		DrawableUtils.bitmapToFile(bmp, imgPath);
		
		baseContent.setS_photo(imgPath);
		bmp = DrawableUtils.decodeBitmapWithSize(imgPath, 100, 100);
		imageView.setImageBitmap(bmp);

	}

}
