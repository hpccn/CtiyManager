package cn.city.manager.fragment;


import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import cn.city.manager.Configuration;
import cn.city.manager.R;
import cn.city.manager.fragment.event.BaseEvent;
import cn.city.manager.view.DateTimePickerDialog;
import cn.hpc.common.cache.ImageCacheFactory;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;



public abstract class BaseFragment {
	public static final String ARG_SECTION_NUMBER = "section_number";
	
	public abstract String getTitle(final Context context);
	public abstract String getSubTitle(final Context context);
	public abstract View getView(final Context context, ViewGroup parent);
	public abstract void setJsonData(final String jsonData);
	public abstract BaseEvent getBaseContent();
	public abstract void updateView(View rootView);
	public abstract void updateData(View rootView);
	
//	public abstract String getCommitUrl(final Context context);
//	public abstract String getUpdateUrl(final Context context);
	
	final private SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	protected ImageCacheFactory imc = ImageCacheFactory.getInstance();
	final protected GeneralInformationFragment general = new GeneralInformationFragment();
	protected String jsonData;
	final protected String millisecondToString(long millisecond){
		Date date = new Date(millisecond);
		String dateTime = sdf.format(date);
		return dateTime;
	}

	final protected double string2Double(String str){
		try{
			return Double.parseDouble(str);
		} catch (Exception e ){
			return 0;
		}
	}
	
	
	final protected void setDateTime(final Context context, DateTimePickerDialog.OnDateTimeChangedListener listener, String strDate) {
		
		DateTimePickerDialog dateTimePicKDialog = new DateTimePickerDialog(context);
		Calendar calendar = Calendar.getInstance();
		if (null != strDate) {
			String[] data = strDate.split("-");
			if (data.length > 2);
				calendar.set(Integer.parseInt(data[0]), Integer.parseInt(data[1]) - 1, Integer.parseInt(data[2]));
		}
//		Date date = new Date();
//		date.setYear(Integer.parseInt(data[0]));
//		date.setMonth(Integer.parseInt(data[1]) - 1);
//		date.setDate(Integer.parseInt(data[2]));
		dateTimePicKDialog.dateTimePicKDialog(listener, calendar.getTimeInMillis());//date.getTime());//baseContent.getTime());
		
	}

	final protected SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy-MM-dd");
	final protected  String getDateText(long millisecond) {
		Date date = new Date(millisecond);
		String dateTime = sdf2.format(date);
		return dateTime;
	}
	
	final protected void setViewText(final View rootView, int id, long millisecond) {
		Date date = new Date(millisecond);
		String dateTime = sdf2.format(date);
		((EditText)rootView.findViewById(id)).setText(dateTime);
	}
	
	protected void onSelectListener(final Context context, final View rootView, int id){
		switch (id) {
		default:
			break;
		case R.id.et_solvestatus:
		{
			// 解决状态
			String []status = {"未解决","已解决"};
			general.setSingleChoiceItems(context,  R.id.et_solvestatus, status, 0, new GeneralInformationFragment.OnChangedListener() {
				@Override
				public void onChanged(int id, int which, String value) {
					// TODO Auto-generated method stub
					((EditText)rootView.findViewById(id)).setText(value);
				}
			});
		}
			break;
			
		case R.id.et_villagename:
		{
			// 村
			String []status = Configuration.getInstance().getVillageNames();
			if (null == status || status.length == 0){
//				((EditText)rootView.findViewById(R.id.et_villagename)).setText(Configuration.getInstance().getRegister().getS_villagename());
			} else if (status.length == 1){
				((EditText)rootView.findViewById(R.id.et_villagename)).setText(status[0]);
			} else {
//				{Configuration.getInstance().getRegister().getS_villagename() , "other"};
				general.setSingleChoiceItems(context,  R.id.et_villagename, status, 0, new GeneralInformationFragment.OnChangedListener() {
					@Override
					public void onChanged(int id, int which, String value) {
						// TODO Auto-generated method stub
						((EditText)rootView.findViewById(id)).setText(value);
					}
				});
			}
		}

			break;
		case R.id.et_netname:
		{
			
			//格
			String []status = Configuration.getInstance().getNetNames();
//			String []status = {Configuration.getInstance().getRegister().getS_netname() , "other"};
			if (null == status || status.length == 0){
//				((EditText)rootView.findViewById(R.id.et_netname)).setText(Configuration.getInstance().getRegister().getS_netname());
			} else if (status.length == 1){
				((EditText)rootView.findViewById(R.id.et_netname)).setText(status[0]);
			} else {
				general.setSingleChoiceItems(context,  R.id.et_netname, status, 0, new GeneralInformationFragment.OnChangedListener() {
					@Override
					public void onChanged(int id, int which, String value) {
						// TODO Auto-generated method stub
						((EditText)rootView.findViewById(id)).setText(value);
					}
				});
			}
		}

		break;
		}
	}
}
