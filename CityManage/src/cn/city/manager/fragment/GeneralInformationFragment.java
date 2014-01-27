package cn.city.manager.fragment;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import cn.city.manager.R;
import cn.city.manager.fragment.event.BaseEvent;
import cn.city.manager.location.Location;
import cn.city.manager.location.LocationListener;

public class GeneralInformationFragment {
	
	public interface OnChangedListener{
		public void onChanged(int id, int which, String whichValue);
	}
	public static final int NONE = 0;

	public static final int IMAGE_CAPTURE = 1;// 拍照

	public static final int PHOTOZOOM = 2; // 缩放

	public static final int PHOTORESOULT = 3;// 结果

	
	
	public static final String IMAGE_UNSPECIFIED = "image/*";

	public static final int VIDEO_CAPTURE = 4;// 拍照

	public GeneralInformationFragment(){
	}
	
	public void updateMedia(final Context context, final View rootView, final BaseFragment fragment){
		
	}
	
	public void updateTitle(final Context context, final View rootView, final BaseFragment fragment){
		TextView tvMainTitle = (TextView) rootView.findViewById(R.id.id_main_title);
		TextView tvSubTitle = (TextView) rootView.findViewById(R.id.id_sub_title);
		if (null != tvMainTitle)
			tvMainTitle.setText(fragment.getTitle(context));
		if (null != tvSubTitle)
			tvSubTitle.setText(fragment.getSubTitle(context));

	}

	public void updatePhoto(final Context context, final View rootView, final BaseFragment fragment){
		TextView tvMainTitle = (TextView) rootView.findViewById(R.id.id_main_title);
		TextView tvSubTitle = (TextView) rootView.findViewById(R.id.id_sub_title);
		tvMainTitle.setText(fragment.getTitle(context));
		tvSubTitle.setText(fragment.getSubTitle(context));

	}
	
	
	
	public void updateLocation(final Context context, final EditText etAddress, final BaseEvent baseContent){
		Location location = new Location(context);
		location.asyncLoc(new LocationListener(){

			@Override
			public void onLocation(double latitude, double longitude,
					String address) {
				
				if (address.contains("error")) return;
				// TODO Auto-generated method stub
				baseContent.setL_latitude(latitude);
				baseContent.setD_longitude(longitude);
				baseContent.setAddress(address);
				if (null != etAddress){
					String tmp = etAddress.getText().toString();
					if (null == tmp || tmp.length() < 2)
						etAddress.setText(address);
				}
					
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
	
	
	
//	final protected View.OnClickListener onClickListener = new View.OnClickListener() {
//		
//		@Override
//		public void onClick(View v) {
//			switch (v.getId()){
//			case R.id.btn_cancel:
////				DetailActivity.this.finish();
//				break;
//			case R.id.btn_commit:
//				break;
//			case R.id.examination_date_time:
////				setDateTime();
//				break;
//				
//			case R.id.btn_add_picture:{
//				Intent intent = new Intent(
//						MediaStore.ACTION_IMAGE_CAPTURE);
//
//				// intent.putExtra(MediaStore.EXTRA_OUTPUT, Uri
//				// .fromFile(new File(Environment
//				// .getExternalStorageDirectory(),
//				// "temp.jpg")));
//
//				((Activity) context).startActivityForResult(intent, IMAGE_CAPTURE);
//			}
//				break;
//			case R.id.btn_add_video:{
//				Intent intent = new Intent(MediaStore.ACTION_VIDEO_CAPTURE);
//				
//				// intent.putExtra(MediaStore.EXTRA_OUTPUT, Uri
//				// .fromFile(new File(Environment
//				// .getExternalStorageDirectory(),
//				// "temp.jpg")));
//
//				((Activity) context).startActivityForResult(intent, VIDEO_CAPTURE);
//			}
//				break;
//				
//			
//			default:
//			}
//			
//		}
//	};

	public void setSingleChoiceItems(final Context context, final int viewId, final String []items, int checkedItem, final OnChangedListener listener) {
	    AlertDialog.Builder builder = new AlertDialog.Builder(context);
	    builder.setIcon(R.drawable.ic_logo);
	    builder.setCancelable(true);
	    
	    builder.setSingleChoiceItems(items, checkedItem, new DialogInterface.OnClickListener(){

			@Override
			public void onClick(DialogInterface dialog, int which) {

				listener.onChanged(viewId, which, items[which]);
				dialog.dismiss();
	    }});
	    
	    AlertDialog ad = builder.create();  
		ad.show();
	}
	
	public void initNewEvent(final View rootView){
		int ids[] = {R.id.id_eventid, R.id.id_discoverer, R.id.id_updater, R.id.id_netleader, R.id.id_threeadress, R.id.id_browse_mode, R.id.id_eventid};//, R.id., R.id., R.id., R.id., R.id., R.id., R.id., R.id., R.id., R.id., R.id.};
		for (int id : ids) {
			View view = rootView.findViewById(id);
			if (null != view){
				view.setVisibility(View.GONE);
			}
		}
		
//		rootView.findViewById(R.id.id_threeadress).setVisibility(View.GONE);
//		rootView.findViewById(R.id.id_browse_mode).setVisibility(View.GONE);

	}
}
