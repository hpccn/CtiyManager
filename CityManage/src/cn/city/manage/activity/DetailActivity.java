package cn.city.manage.activity;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.provider.MediaStore;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.Gallery;
import cn.city.manage.location.Location;
import cn.city.manage.location.LocationListener;
import cn.city.manage.model.BaseContent;
import cn.city.manage.model.BaseFragment;
import cn.city.manage.view.DateTimePickerDialog;
import cn.city.manage.view.ImageAdapter;
import cn.city.manage.view.ViewSingletonFactory;
import cn.city.manager.R;

public class DetailActivity extends Activity {
	public static final int NONE = 0;

	public static final int PHOTOHRAPH = 1;// 拍照

	public static final int PHOTOZOOM = 2; // 缩放

	public static final int PHOTORESOULT = 3;// 结果

	public static final String IMAGE_UNSPECIFIED = "image/*";

	private String jsonValue;
	private Gallery gallery;
	private ImageAdapter imageAdapter;
	private BaseContent baseContent;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		Log.i("", "" + System.currentTimeMillis());
		setContentView(R.layout.detail_main);
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
				Bundle b = msg.getData();
				double latitude = b.getDouble("latitude");
				double longitude = b.getDouble("longitude");
				String address = b.getString("address");

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
		fl.addView(fragment.getView(this));
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
				baseContent.setLatitude("" + latitude);
				baseContent.setLongitude("" + longitude);
				baseContent.setAddress(address);
				
				((EditText) findViewById(R.id.et_address)).setText(address + ", latitude:" + latitude + ", longitude:" + longitude);
			}
			
		});
	}
	
	private void invalidate(){
		
	}

	private void  init () throws NullPointerException{
		this.findViewById(R.id.btn_add_picture).setOnClickListener(
				new View.OnClickListener() {

					@Override
					public void onClick(View v) {
						Intent intent = new Intent(
								MediaStore.ACTION_IMAGE_CAPTURE);

						// intent.putExtra(MediaStore.EXTRA_OUTPUT, Uri
						// .fromFile(new File(Environment
						// .getExternalStorageDirectory(),
						// "temp.jpg")));

						startActivityForResult(intent, PHOTOHRAPH);

					}
				});

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

		// 拍照

		if (requestCode == PHOTOHRAPH) {

			// 设置文件保存路径这里放在跟目录下

			File pictureFile = new File(
					Environment.getExternalStorageDirectory() + "/temp.jpg");
			Bundle extras = data.getExtras();
			Bitmap b = (Bitmap) extras.get("data");
			Bitmap bmp = small(b);

			imageAdapter.addBitmap(bmp);// (pictureFile);
			imageAdapter.notifyDataSetChanged();
			// startPhotoZoom(Uri.fromFile(picture));

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
	
	private View.OnClickListener onClickListener = new View.OnClickListener() {
		
		@Override
		public void onClick(View v) {
			switch (v.getId()){
			case R.id.examination_date_time:
				setDateTime();
				break;
			default:
			}
			
		}
	};
	
	 DateTimePickerDialog.OnDateTimeChangedListener listener  = new DateTimePickerDialog.OnDateTimeChangedListener(){

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
