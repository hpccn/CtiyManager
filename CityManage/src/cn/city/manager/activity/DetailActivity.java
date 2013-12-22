package cn.city.manager.activity;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.json.JSONObject;

import android.app.Activity;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.provider.MediaStore;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.Gallery;
import android.widget.TextView;
import cn.city.manager.R;
import cn.city.manager.location.Location;
import cn.city.manager.location.LocationListener;
import cn.city.manager.model.BaseContent;
import cn.city.manager.model.BaseFragment;
import cn.city.manager.view.DateTimePickerDialog;
import cn.city.manager.view.ImageAdapter;
import cn.city.manager.view.ViewSingletonFactory;

public class DetailActivity extends Activity {
	public static final int NONE = 0;

	public static final int IMAGE_CAPTURE = 1;// 拍照

	public static final int PHOTOZOOM = 2; // 缩放

	public static final int PHOTORESOULT = 3;// 结果

	
	
	public static final String IMAGE_UNSPECIFIED = "image/*";

	public static final int VIDEO_CAPTURE = 4;// 拍照

	
	private String jsonValue;
	private Gallery gallery;
	private ImageAdapter imageAdapter;
	private BaseContent baseContent;
	private View mainView;
	private TextView tvMainTitle, tvSubTitle;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		Log.i("", "" + System.currentTimeMillis());
		mainView = View.inflate(this, R.layout.detail_main, null);
		setContentView(mainView);//(R.layout.detail_main);
		
		tvMainTitle = (TextView) mainView.findViewById(R.id.id_main_title);
		tvSubTitle = (TextView) mainView.findViewById(R.id.id_sub_title);
		
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

	Handler handler = new Handler(){

		@Override
		public void dispatchMessage(Message msg) {
			switch (msg.what) {
			case 0x1001:
//				Bundle b = msg.getData();
//				double latitude = b.getDouble("latitude");
//				double longitude = b.getDouble("longitude");
//				String address = b.getString("address");

				break;
			default:
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

		super.onDestroy();
	}

	private void selectView(String category) {
		BaseFragment fragment = null;
		try {
			fragment = (BaseFragment) ViewSingletonFactory.getInstance()
					.getFragment(category).newInstance();
			// ViewSingletonFactory.getInstance().setPosition(position);

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			this.finish();
			return;
		}

		fragment.setJsonData(jsonValue);
		FrameLayout fl = (FrameLayout) this.findViewById(R.id.detail_container);
		fl.removeAllViews();
		fl.addView(fragment.getView(this, (ViewGroup)mainView));
		try {
			init();
		} catch (Exception e) {
			e.printStackTrace();
		}
		this.setTitle(fragment.getTitle());
		
		baseContent = fragment.getBaseContent();
		if (null == baseContent) return;
		Location location = new Location(this);
		location.asyncLoc(new LocationListener(){

			@Override
			public void onLocation(double latitude, double longitude,
					String address) {
				
				
				// TODO Auto-generated method stub
				baseContent.setLatitude(latitude);
				baseContent.setLongitude(longitude);
				baseContent.setAddress(address);
				JSONObject jObj = new JSONObject();
				try {
					jObj.put("latitude", latitude);
					jObj.put("longitude", longitude);
					jObj.put("address", address);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				((EditText) findViewById(R.id.et_address)).setText(jObj.toString());
			}
			
		});
		tvMainTitle.setText(fragment.getTitle());
		tvSubTitle.setText(fragment.getSubTitle());
	}
	


	private void  init () throws NullPointerException{
		findViewById(R.id.btn_add_picture).setOnClickListener(onClickListener);
		findViewById(R.id.btn_add_video).setOnClickListener(onClickListener);
		findViewById(R.id.btn_commit).setOnClickListener(onClickListener);
		findViewById(R.id.btn_cancel).setOnClickListener(onClickListener);
		gallery = (Gallery) findViewById(R.id.gallery);
		imageAdapter = new ImageAdapter(this);
		gallery.setAdapter(imageAdapter);
		gallery.setOnItemSelectedListener(new OnItemSelectedListener() {

			@Override
			public void onItemSelected(AdapterView<?> parent, View view,
					int position, long id) {
				// TODO Auto-generated method stub

			}

			@Override
			public void onNothingSelected(AdapterView<?> parent) {
				// TODO Auto-generated method stub

			}

		});
		
		initToolBar();
	}
	
	

	@Override
	protected void onActivityResult(int requestCode, int resultCode, Intent data) {

		if (resultCode == NONE)

			return;

		switch(requestCode){
		case IMAGE_CAPTURE: {// 拍照//if (requestCode == PHOTOHRAPH)
			// 设置文件保存路径这里放在跟目录下

//			File pictureFile = new File(Environment.getExternalStorageDirectory() + "/temp.jpg");
			Bundle extras = data.getExtras();
			Bitmap b = (Bitmap) extras.get("data");
			Bitmap bmp = small(b);

			imageAdapter.addBitmap(bmp);// (pictureFile);
			imageAdapter.notifyDataSetChanged();
			// startPhotoZoom(Uri.fromFile(picture));

		} 
		break;
		case VIDEO_CAPTURE:	 {
			Cursor cursor = getContentResolver().query(data.getData(), null,
					null, null, null);
			cursor.moveToFirst();
			String mediaFilePath = cursor.getString(1);
			cursor.close();
//			File mMediaFile = new File(mediaFilePath);
			Log.d("", "VIDEO_CAPTURE : " + mediaFilePath);
//			File pictureFile = new File(
//					Environment.getExternalStorageDirectory() + "/temp.jpg");
//			Bundle extras = data.getExtras();
//			Bitmap b = (Bitmap) extras.get("data");
//			Bitmap bmp = small(b);
//
//			imageAdapter.addBitmap(bmp);// (pictureFile);
//			imageAdapter.notifyDataSetChanged();
			// startPhotoZoom(Uri.fromFile(picture));

		} 
		break;
		}
		super.onActivityResult(requestCode, resultCode, data);
	}

	private static Bitmap small(Bitmap bitmap) {
//        int w = b.getWidth();
//        int h = b.getHeight();
//        int wScale = 1;
//        int hScale = 1;
//        if ( w > h) {
//        	wScale = 800;
//        	hScale = h * 800  / w;
//        } else {
//        	hScale = 800;
//        	wScale = w * 800  / h;
//        }
//        Bitmap bmp = Bitmap.createScaledBitmap(b, wScale, hScale, true);
		Matrix matrix = new Matrix();
		int max = bitmap.getHeight();
		if (max < bitmap.getWidth()) {
			max = bitmap.getWidth();
		}
		float scale = 800.0f / max;
		matrix.postScale(scale, scale); // 长和宽放大缩小的比例
		Bitmap resizeBmp = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(),
				bitmap.getHeight(), matrix, true);
		return resizeBmp;
	}

	
	EditText etTime;
	private void initToolBar(){
		etTime = (EditText) this.findViewById(R.id.examination_date_time);
		int [] ids = {R.id.examination_date_time};
		for (int id : ids) {
			this.findViewById(id).setOnClickListener(onClickListener);
		}
	}
	
	final protected View.OnClickListener onClickListener = new View.OnClickListener() {
		
		@Override
		public void onClick(View v) {
			switch (v.getId()){
			case R.id.btn_cancel:
				DetailActivity.this.finish();
				break;
			case R.id.btn_commit:
				break;
			case R.id.examination_date_time:
				setDateTime();
				break;
				
			case R.id.btn_add_picture:{
				Intent intent = new Intent(
						MediaStore.ACTION_IMAGE_CAPTURE);

				// intent.putExtra(MediaStore.EXTRA_OUTPUT, Uri
				// .fromFile(new File(Environment
				// .getExternalStorageDirectory(),
				// "temp.jpg")));

				startActivityForResult(intent, IMAGE_CAPTURE);
			}
				break;
			case R.id.btn_add_video:{
				Intent intent = new Intent(MediaStore.ACTION_VIDEO_CAPTURE);
				
				// intent.putExtra(MediaStore.EXTRA_OUTPUT, Uri
				// .fromFile(new File(Environment
				// .getExternalStorageDirectory(),
				// "temp.jpg")));

				startActivityForResult(intent, VIDEO_CAPTURE);
			}
				break;
				
			
			default:
			}
			
		}
	};
	

	final protected DateTimePickerDialog.OnDateTimeChangedListener listener  = new DateTimePickerDialog.OnDateTimeChangedListener(){

		@Override
		public void onDateTimeChanged(long millisecond) {
			// TODO Auto-generated method stub
			Date date = new Date(millisecond);
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String dateTime = sdf.format(date);
			etTime.setText(dateTime);
			baseContent.setTime(millisecond);
		}
		 
	 };

	private void setDateTime(){
		DateTimePickerDialog dateTimePicKDialog = new DateTimePickerDialog(this);
		dateTimePicKDialog.dateTimePicKDialog(listener, baseContent.getTime());
		
	}
}
