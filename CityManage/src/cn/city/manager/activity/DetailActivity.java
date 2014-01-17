package cn.city.manager.activity;

import java.io.File;
import java.io.FileNotFoundException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.http.HttpStatus;

import com.baidu.platform.comapi.basestruct.GeoPoint;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
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
import cn.city.manager.R;
import cn.city.manager.fragment.BaseFragment;
import cn.city.manager.fragment.t_netbaseinfoGrid;
import cn.city.manager.fragment.t_netbaseinfo;
import cn.city.manager.fragment.event.BaseEvent;
import cn.city.manager.location.Location;
import cn.city.manager.location.LocationListener;
import cn.city.manager.view.DateTimeChanger;
import cn.city.manager.view.DateTimePickerDialog;
import cn.city.manager.view.ViewSingletonFactory;
import cn.hpc.common.BaiduMapHelper;
import cn.hpc.common.HttpUploadHelper;

public class DetailActivity extends Activity {
	public static final int NONE = 0;

	public static final int IMAGE_CAPTURE = 1;// 拍照

	public static final int PHOTOZOOM = 2; // 缩放

	public static final int PHOTORESOULT = 3;// 结果

	public static final String IMAGE_UNSPECIFIED = "image/*";

	public static final int VIDEO_CAPTURE = 4;// 拍照
	public static final int IMAGE_SELECT = 5;// 拍照
	public static final int VIDEO_SELECT = 6;// 拍照


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
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		context = this;
		Log.i("", "" + System.currentTimeMillis());
		mainView = View.inflate(this, R.layout.detail_main, null);
		setContentView(mainView);// (R.layout.detail_main);
		tvTitle = (TextView) mainView.findViewById(R.id.id_titlebar_title);
		// tvMainTitle = (TextView) mainView.findViewById(R.id.id_main_title);
		// tvSubTitle = (TextView) mainView.findViewById(R.id.id_sub_title);
		detailMainContainer = (LinearLayout) mainView
				.findViewById(R.id.id_detail_main_container);

		jsonValue = this.getIntent().getStringExtra("jsonValue");
		if (null != jsonValue)
			Log.i("", jsonValue);

		String category = this.getIntent().getStringExtra("category");
		selectView(category);

		// if ("food".equals(category)){
		// onNavigationItemSelected(1, 0);
		// } else {
		// onNavigationItemSelected(0, 0);
		// }

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
		// if (keyCode == KeyEvent.KEYCODE_BACK) {
		// return true;
		// }
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
		
		tvVideoFile  = (TextView) findViewById(R.id.tv_video_file);
		int []ids = {R.id.btn_commit, R.id.btn_cancel,
				R.id.btn_add_picture, R.id.btn_add_video, 
				R.id.btn_select_picture, R.id.btn_select_video,
				R.id.tv_video_file, 
				R.id.id_browse_mode};
		Button btn = (Button) this.findViewById(R.id.id_browse_mode);
		btn.setVisibility(View.VISIBLE);
		btn.setText("地图导航");
		for (int id : ids){
			findViewById(id).setOnClickListener(onClickListener);
		}
		
		imageView = (ImageView) findViewById(R.id.picture);
		findViewById(R.id.btn_add_picture).setOnClickListener(onClickListener);
		findViewById(R.id.btn_add_video).setOnClickListener(onClickListener);
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
		case IMAGE_SELECT: {
			Uri uri = data.getData();
			Cursor cursor = getContentResolver().query(uri, null, null, null,
					null);
			cursor.moveToFirst();
//			// String imgNo = cursor.getString(0); // 图片编号
			String imgPath = cursor.getString(1); // 图片文件路径
//			String imgSize = cursor.getString(2); // 图片大小
//			String imgName = cursor.getString(3); // 图片文件名
//			String fileName = imgName;
//			String fileSize = imgSize;
			// Log.e("uri", uri.toString());
			baseContent.setS_photo(imgPath);
			ContentResolver cr = this.getContentResolver();
			try {
				Bitmap bitmap = BitmapFactory.decodeStream(cr
						.openInputStream(uri));
//				ImageView imageView = (ImageView) findViewById(R.id.imview);
//				// 将Bitmap设定到ImageView 
				Bitmap bmp = small(bitmap);
				imageView.setImageBitmap(bmp);
//				imageAdapter.addBitmap(bitmap);// (pictureFile);
//				imageAdapter.notifyDataSetChanged();
			} catch (FileNotFoundException e) {
				// Log.e("Exception", e.getMessage(),e);
			}
			cursor.close();
		}
		break;
		
		case VIDEO_SELECT:{
			Cursor cursor = getContentResolver().query(data.getData(), null,
					null, null, null);
			cursor.moveToFirst();
			String mediaFilePath = cursor.getString(1);
			cursor.close();
			tvVideoFile.setText(mediaFilePath);
			baseContent.setS_video(mediaFilePath);
			// File mMediaFile = new File(mediaFilePath);
			Log.d("", "VIDEO_CAPTURE : " + mediaFilePath);

		}
		break;
		case IMAGE_CAPTURE: {// 拍照//if (requestCode == PHOTOHRAPH)
			// 设置文件保存路径这里放在跟目录下

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
			baseContent.setS_photo(imgPath);
			try {
//				File pictureFile = new File(imgPath);

				Bitmap bitmap = BitmapFactory.decodeFile(imgPath);
//				ImageView imageView = (ImageView) findViewById(R.id.imview);
//				// 将Bitmap设定到ImageView 
				Bitmap bmp = small(bitmap);
				imageView.setImageBitmap(bmp);
//				imageAdapter.addBitmap(bitmap);// (pictureFile);
//				imageAdapter.notifyDataSetChanged();
			} catch (Exception e) {
				// Log.e("Exception", e.getMessage(),e);
			}
		}
			break;
		case VIDEO_CAPTURE: {
			Cursor cursor = getContentResolver().query(data.getData(), null,
					null, null, null);
			cursor.moveToFirst();
			String mediaFilePath = cursor.getString(1);
			cursor.close();
			baseContent.setS_video(mediaFilePath);
			tvVideoFile.setText(mediaFilePath);
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
			break;
		}
		super.onActivityResult(requestCode, resultCode, data);
	}

	protected static Bitmap small(Bitmap bitmap) {
		// int w = b.getWidth();
		// int h = b.getHeight();
		// int wScale = 1;
		// int hScale = 1;
		// if ( w > h) {
		// wScale = 800;
		// hScale = h * 800 / w;
		// } else {
		// hScale = 800;
		// wScale = w * 800 / h;
		// }
		// Bitmap bmp = Bitmap.createScaledBitmap(b, wScale, hScale, true);
		Matrix matrix = new Matrix();
		int max = bitmap.getHeight();
		if (max < bitmap.getWidth()) {
			max = bitmap.getWidth();
		}
		float scale = 400.0f / max;
		matrix.postScale(scale, scale); // 长和宽放大缩小的比例
		Bitmap resizeBmp = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(),
				bitmap.getHeight(), matrix, true);
		return resizeBmp;
	}

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
	protected final String imgPath = Environment.getExternalStorageDirectory() + "/photo.jpg";

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
						uploadUrl = Constants.weijian_commit_update;
					} else {
						uploadUrl = Constants.weijian_commit_new;
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
				intent.setType("image/*");
				 //intent.setType("video/*;image/*");//同时选择视频和图片
				// 使用Intent.ACTION_GET_CONTENT这个Action
//				intent.setAction(Intent.ACTION_GET_CONTENT);
				//取得相片后返回本画面
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
				Intent intent = new Intent(MediaStore.ACTION_VIDEO_CAPTURE);

				// intent.putExtra(MediaStore.EXTRA_OUTPUT, Uri
				// .fromFile(new File(Environment
				// .getExternalStorageDirectory(),
				// "temp.jpg")));

				startActivityForResult(intent, VIDEO_CAPTURE);
			}
				break;
			case R.id.tv_video_file:
				showVideo();
				break;
				
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
			ViewSingletonFactory.getInstance().showProcessDialog(context, null, "位置信息无效,为法为您导航");
			
		}
		
		ViewSingletonFactory.getInstance().showProcessDialog(context, null, "准备导航数据 ...");
		Location location = new Location(context);
		location.asyncLoc(new LocationListener(){

			@Override
			public void onLocation(double latitude, double longitude,
					String address) {
				ViewSingletonFactory.getInstance().hideProcessDialog();
				if (address.contains("error")) return;

				GeoPoint from = BaiduMapHelper.createGeoPoint(latitude, longitude);
				GeoPoint to = BaiduMapHelper.createGeoPoint(baseContent.getD_latitude(), baseContent.getD_longitude());
				BaiduMapHelper.startNavi(context, from, to);
			}
			
		});		
	}
	
	private void showVideo(){
		
		String video = tvVideoFile.getText().toString();
		if (null != video && video.length() > 1){
			Uri uri = null;
			if (video.startsWith("/")){
				uri = Uri.parse("file://" + video);
			} else {
				uri = Uri.parse(video);
			}
			if (null != uri){
				try {
					Intent i = new Intent(Intent.ACTION_VIEW);
					i.setData(uri);
					i.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
					context.startActivity(i);
				} catch (Exception e){
					e.printStackTrace();
				}
			}
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
}
