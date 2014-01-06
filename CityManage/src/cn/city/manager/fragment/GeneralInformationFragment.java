package cn.city.manager.fragment;

import org.json.JSONObject;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.provider.MediaStore;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;

import cn.city.manager.R;
import cn.city.manager.activity.DetailActivity;
import cn.city.manager.fragment.event.BaseEvent;
import cn.city.manager.location.Location;
import cn.city.manager.location.LocationListener;

public class GeneralInformationFragment {
	public static final int NONE = 0;

	public static final int IMAGE_CAPTURE = 1;// 拍照

	public static final int PHOTOZOOM = 2; // 缩放

	public static final int PHOTORESOULT = 3;// 结果

	
	
	public static final String IMAGE_UNSPECIFIED = "image/*";

	public static final int VIDEO_CAPTURE = 4;// 拍照

	final private Context context;
	public GeneralInformationFragment(final Context context){
		this.context = context;
	}
	
	public void updateMedia(final Context context, final View rootView, final BaseFragment fragment){
		
	}
	
	public void updateTitle(final Context context, final View rootView, final BaseFragment fragment){
		TextView tvMainTitle = (TextView) rootView.findViewById(R.id.id_main_title);
		TextView tvSubTitle = (TextView) rootView.findViewById(R.id.id_sub_title);
		if (null != tvMainTitle)
			tvMainTitle.setText(fragment.getTitle());
		if (null != tvSubTitle)
			tvSubTitle.setText(fragment.getSubTitle());

	}

	public void updatePhoto(final Context context, final View rootView, final BaseFragment fragment){
		TextView tvMainTitle = (TextView) rootView.findViewById(R.id.id_main_title);
		TextView tvSubTitle = (TextView) rootView.findViewById(R.id.id_sub_title);
		tvMainTitle.setText(fragment.getTitle());
		tvSubTitle.setText(fragment.getSubTitle());

	}
	
	
	public void updateLocation(final Context context, final EditText etAddress, final BaseEvent baseContent){
		Location location = new Location(context);
		location.asyncLoc(new LocationListener(){

			@Override
			public void onLocation(double latitude, double longitude,
					String address) {
				
				
				// TODO Auto-generated method stub
				baseContent.setL_latitude(latitude);
				baseContent.setD_longitude(longitude);
				baseContent.setAddress(address);
				etAddress.setText(address);
//				JSONObject jObj = new JSONObject();
//				try {
//					jObj.put("latitude", latitude);
//					jObj.put("longitude", longitude);
//					jObj.put("address", address);
//				} catch (Exception e) {
//					// TODO Auto-generated catch block
//					e.printStackTrace();
//				}
//				etAddress.setText(jObj.toString());
//				((EditText) findViewById(R.id.et_address)).setText(jObj.toString());
			}
			
		});
	}
	
	
	
	final protected View.OnClickListener onClickListener = new View.OnClickListener() {
		
		@Override
		public void onClick(View v) {
			switch (v.getId()){
			case R.id.btn_cancel:
//				DetailActivity.this.finish();
				break;
			case R.id.btn_commit:
				break;
			case R.id.examination_date_time:
//				setDateTime();
				break;
				
			case R.id.btn_add_picture:{
				Intent intent = new Intent(
						MediaStore.ACTION_IMAGE_CAPTURE);

				// intent.putExtra(MediaStore.EXTRA_OUTPUT, Uri
				// .fromFile(new File(Environment
				// .getExternalStorageDirectory(),
				// "temp.jpg")));

				((Activity) context).startActivityForResult(intent, IMAGE_CAPTURE);
			}
				break;
			case R.id.btn_add_video:{
				Intent intent = new Intent(MediaStore.ACTION_VIDEO_CAPTURE);
				
				// intent.putExtra(MediaStore.EXTRA_OUTPUT, Uri
				// .fromFile(new File(Environment
				// .getExternalStorageDirectory(),
				// "temp.jpg")));

				((Activity) context).startActivityForResult(intent, VIDEO_CAPTURE);
			}
				break;
				
			
			default:
			}
			
		}
	};
}
