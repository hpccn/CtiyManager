package cn.city.manager.fragment;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import org.json.JSONObject;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.TextView;
import cn.city.manager.R;
import cn.city.manager.activity.DetailActivity;
import cn.city.manager.fragment.event.BaseEvent;
import cn.city.manager.fragment.event.t_weijianEvent;
import cn.city.manager.view.DateTimeChanger;
import cn.city.manager.view.DateTimePickerDialog;

/**
 * 违章建筑
 * @author hpc
 *
 */
public class t_weijian extends BaseFragment {
	public static final String ARG_SECTION_NUMBER = "section_number";
	
	private ViewGroup parent;
	private Context context;
	private t_weijianEvent content;

	private GeneralInformationFragment general;// = new GeneralInformationFragment();
	private View rootView;
	@Override
	public View getView(Context context, ViewGroup parent) {
		this.context = context;
		this.parent= parent;
//		View rootView = View.inflate(context, R.layout.detail_general,
//				null);
//		FrameLayout fl = (FrameLayout) rootView.findViewById(R.id.detail_container);
//		fl.removeAllViews();
//		View illegalStructure = View.inflate(context, R.layout.fragment_illegal_structure,
//				null);
//		fl.addView(illegalStructure);
		View v = View.inflate(context, R.layout.detail_illegal_structure_main, null);
		return v;
	}


	@Override
	public String getTitle() {
		return context.getResources().getString(R.string.illegal_structure_examination);
	}


	@Override
	public void setJsonData(String jsonData) {
		this.jsonData = jsonData;
		if (null == jsonData) {
			content = new t_weijianEvent();
			return;
		}
		JSONObject js = null;
		try {
			js = new JSONObject(jsonData);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		t_weijianEvent event = new t_weijianEvent();//(js);
		try {
			content = (t_weijianEvent) event.fromJSONObject(js);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


	@Override
	public BaseEvent getBaseContent() {
		// TODO Auto-generated method stub
		return content;
	}


	@Override
	public String getSubTitle() {
		return context.getResources().getString(R.string.illegal_structure_examination_sub_title);
		
	}


	@Override 
	public void updateView(View rootView){
		if (null == rootView) return;
		this.rootView = rootView;
		if (null == general){
			general = new GeneralInformationFragment(context);
		}
//		TextView tvMainTitle = (TextView) rootView.findViewById(R.id.id_main_title);
//		TextView tvSubTitle = (TextView) rootView.findViewById(R.id.id_sub_title);

		
		String strAddress = content.getS_yinhuanaddress();
		if (null == strAddress || strAddress.length() < 2)
			general.updateLocation(context, (EditText) rootView.findViewById(R.id.et_yinhuanaddress), content);
		general.updateTitle(context, rootView, this);
		
		
		((TextView)rootView.findViewById(R.id.tv_video_file)).setText(content.getS_video());
		
		//
		((EditText)rootView.findViewById(R.id.et_villagename)).setText(content.getS_villagename());
		((EditText)rootView.findViewById(R.id.et_netname)).setText(content.getS_netname());
		((EditText)rootView.findViewById(R.id.et_eventid)).setText(content.getS_eventid());
		
		((EditText)rootView.findViewById(R.id.et_jianzhumianji)).setText("" + content.getD_jianzhumianji());
		((EditText)rootView.findViewById(R.id.et_landstatus)).setText(content.getS_landstatus());

		((EditText)rootView.findViewById(R.id.et_construction)).setText(content.getS_construction());
		((EditText)rootView.findViewById(R.id.et_landarea)).setText("" + content.getD_landarea());
		((EditText)rootView.findViewById(R.id.et_buildtime)).setText(content.getT_buildtime());
		
		
		//yinhuan
		((EditText)rootView.findViewById(R.id.et_yinhuanxiangqing)).setText(content.getS_yinhuanxiangqing());
		((EditText)rootView.findViewById(R.id.et_yinhuanaddress)).setText(content.getS_yinhuanaddress());
		((EditText)rootView.findViewById(R.id.et_weijianxiangduiren)).setText(content.getS_weijianxiangduiren());
		((EditText)rootView.findViewById(R.id.et_yinhuanren)).setText(content.getS_yinhuanren());
		((EditText)rootView.findViewById(R.id.et_yinhuanlianluo)).setText(content.getS_yinhuanlianluo());
		
		//discoverer
		((EditText)rootView.findViewById(R.id.et_discovererlevel)).setText(content.getS_discovererlevel());
		((EditText)rootView.findViewById(R.id.et_discoverername)).setText(content.getS_discoverername());
		((EditText)rootView.findViewById(R.id.et_tijiao)).setText(content.getS_tijiao());
		
		//event
//		((EditText)rootView.findViewById(R.id.et_eventtype)).setText(content.getEventtype());
//		((EditText)rootView.findViewById(R.id.et_eventid)).setText(content.getEventid());
		
		//leader
//		((EditText)rootView.findViewById(R.id.et_leaderid)).setText(content.getLeaderid());
//		((EditText)rootView.findViewById(R.id.et_leadername)).setText(content.getLeadername());
		
		//net 
//		((EditText)rootView.findViewById(R.id.et_netid)).setText("" + content.getNetid());
//		((EditText)rootView.findViewById(R.id.et_netname)).setText(content.getNetname());
		
		
		//netleader
		((EditText)rootView.findViewById(R.id.et_netleadername)).setText(content.getS_netleadername());
		((EditText)rootView.findViewById(R.id.et_netleadertel)).setText(content.getS_netleadertel());
		
		//solve
		
		((EditText)rootView.findViewById(R.id.et_solvemethod)).setText(content.getS_solvemethod());
		((EditText)rootView.findViewById(R.id.et_solvestatus)).setText(content.getS_solvestatus());
		((EditText)rootView.findViewById(R.id.et_solvetime)).setText(content.getT_solvetime());

		((EditText)rootView.findViewById(R.id.et_unsolvedreason)).setText(content.getS_unsolvedreason());
		//
		((EditText)rootView.findViewById(R.id.et_result)).setText(content.getS_result());
		
		//updater
//		((EditText)rootView.findViewById(R.id.et_updateid)).setText(content.getUpdateid());
		((EditText)rootView.findViewById(R.id.et_updatename)).setText(content.getS_updatename());
		((EditText)rootView.findViewById(R.id.et_updatelevel)).setText(content.getS_updatelevel());
		((EditText)rootView.findViewById(R.id.et_updatetime)).setText(content.getT_updatetime());
		
		((EditText)rootView.findViewById(R.id.et_remark)).setText(content.getS_remark());
		
		
//		((EditText)rootView.findViewById(R.id.)).setText(event);
//		((EditText)rootView.findViewById(R.id.)).setText(event);
//		((EditText)rootView.findViewById(R.id.)).setText(event);
//		((EditText)rootView.findViewById(R.id.)).setText(event);
//		((EditText)rootView.findViewById(R.id.)).setText(event);
//		((EditText)rootView.findViewById(R.id.)).setText(event);		
//		((EditText)rootView.findViewById(R.id.)).setText(event);
//		((EditText)rootView.findViewById(R.id.)).setText(event);
//		((EditText)rootView.findViewById(R.id.)).setText(event);
//		((EditText)rootView.findViewById(R.id.)).setText(event);
//		((EditText)rootView.findViewById(R.id.)).setText(event);
		initModifyTime();
	}
	
	@Override
	public void updateData(View rootView) {
		if (null == rootView) return;
		this.rootView = rootView;
//		TextView tvMainTitle = (TextView) rootView.findViewById(R.id.id_main_title);
//		TextView tvSubTitle = (TextView) rootView.findViewById(R.id.id_sub_title);

		content.setS_yinhuanaddress(((EditText) rootView.findViewById(R.id.et_yinhuanaddress)).getText().toString());
		
		
		content.setS_video(((TextView)rootView.findViewById(R.id.tv_video_file)).getText().toString());
		
		//
		content.setS_villagename(((EditText)rootView.findViewById(R.id.et_villagename)).getText().toString());
		content.setS_netname(((EditText)rootView.findViewById(R.id.et_netname)).getText().toString());
		content.setS_eventid(((EditText)rootView.findViewById(R.id.et_eventid)).getText().toString());
		
		content.setD_jianzhumianji(Double.parseDouble(((EditText)rootView.findViewById(R.id.et_jianzhumianji)).getText().toString()));
		content.setS_landstatus(((EditText)rootView.findViewById(R.id.et_landstatus)).getText().toString());

		content.setS_construction(((EditText)rootView.findViewById(R.id.et_construction)).getText().toString());
		content.setD_landarea(Double.parseDouble(((EditText)rootView.findViewById(R.id.et_landarea)).getText().toString()));
//		((EditText)rootView.findViewById(R.id.et_buildtime)).getText().toString()millisecondToString(content.getBuildtime()));
		
		
		//yinhuan
		content.setS_yinhuanxiangqing(((EditText)rootView.findViewById(R.id.et_yinhuanxiangqing)).getText().toString());
		content.setS_yinhuanaddress(((EditText)rootView.findViewById(R.id.et_yinhuanaddress)).getText().toString());
		content.setS_weijianxiangduiren(((EditText)rootView.findViewById(R.id.et_weijianxiangduiren)).getText().toString());
		content.setS_yinhuanren(((EditText)rootView.findViewById(R.id.et_yinhuanren)).getText().toString());
		content.setS_yinhuanlianluo(((EditText)rootView.findViewById(R.id.et_yinhuanlianluo)).getText().toString());
		
		//discoverer
		content.setS_discovererlevel(((EditText)rootView.findViewById(R.id.et_discovererlevel)).getText().toString());
		content.setS_discoverername(((EditText)rootView.findViewById(R.id.et_discoverername)).getText().toString());
//		((EditText)rootView.findViewById(R.id.et_tijiao)).getText().toString()millisecondToString(content.setTijiao());
		
		//event
//		((EditText)rootView.findViewById(R.id.et_eventtype)).setText(content.getEventtype());
//		((EditText)rootView.findViewById(R.id.et_eventid)).setText(content.getEventid());
		
		//leader
//		((EditText)rootView.findViewById(R.id.et_leaderid)).setText(content.getLeaderid());
//		((EditText)rootView.findViewById(R.id.et_leadername)).setText(content.getLeadername());
		
		//net 
//		((EditText)rootView.findViewById(R.id.et_netid)).setText("" + content.getNetid());
//		((EditText)rootView.findViewById(R.id.et_netname)).setText(content.getNetname());
		
		
		//netleader
		content.setS_netleadername(((EditText)rootView.findViewById(R.id.et_netleadername)).getText().toString());
		content.setS_netleadertel(((EditText)rootView.findViewById(R.id.et_netleadertel)).getText().toString());
		
		//solve
		
		content.setS_solvemethod(((EditText)rootView.findViewById(R.id.et_solvemethod)).getText().toString());
		content.setS_solvestatus(((EditText)rootView.findViewById(R.id.et_solvestatus)).getText().toString());
//		((EditText)rootView.findViewById(R.id.et_solvetime)).getText().toString((millisecondToStringcontent.setSolvetime()));

		content.setS_unsolvedreason(((EditText)rootView.findViewById(R.id.et_unsolvedreason)).getText().toString());
		//
		content.setS_result(((EditText)rootView.findViewById(R.id.et_result)).getText().toString());
		
		//updater
//		((EditText)rootView.findViewById(R.id.et_updateid)).setTextcontent.setUpdateid());
		content.setS_updatename(((EditText)rootView.findViewById(R.id.et_updatename)).getText().toString());
		content.setS_updatelevel(((EditText)rootView.findViewById(R.id.et_updatelevel)).getText().toString());
//		((EditText)rootView.findViewById(R.id.et_updatetime)).getText().toString((millisecondToStringcontent.setUpdatetime()));
		
		content.setS_remark(((EditText)rootView.findViewById(R.id.et_remark)).getText().toString());
		
	}
	
	private void initModifyTime() {
//		etTime = (EditText) this.findViewById(R.id.examination_date_time);
//		int[] ids = { R.id.examination_date_time };
		int[] ids = {R.id.et_buildtime, R.id.et_solvetime, R.id.et_tijiao, R.id.et_updatetime};

		for (int id : ids) {
//			rootView.findViewById(id).setOnClickListener(onClickListener);
//			rootView.findViewById(id).setOnFocusChangeListener(onFocusChangeListener);
			rootView.findViewById(id).setOnTouchListener(onTouchListener);
		}
	}
	View.OnTouchListener onTouchListener = new View.OnTouchListener() {

		@Override
		public boolean onTouch(View v, MotionEvent event) {
			if (event.getAction() != MotionEvent.ACTION_UP){
				return false;
			}
			switch (v.getId()) {
			case R.id.et_buildtime:

				setDateTime(
						new DateTimePickerDialog.OnDateTimeChangedListener() {

							@Override
							public void onDateTimeChanged(long millisecond) {
								// TODO Auto-generated method stub
								
								content.setT_buildtime(getDateText(millisecond));
								setViewText(R.id.et_buildtime, millisecond);
							}

						}, content.getT_buildtime());
				break;
			case R.id.et_solvetime:
				setDateTime(
						new DateTimePickerDialog.OnDateTimeChangedListener() {

							@Override
							public void onDateTimeChanged(long millisecond) {
								// TODO Auto-generated method stub
								content.setT_solvetime(getDateText(millisecond));
								setViewText(R.id.et_solvetime, millisecond);
							}

						}, content.getT_solvetime());
				break;
			case R.id.et_tijiao:
				setDateTime(
						new DateTimePickerDialog.OnDateTimeChangedListener() {

							@Override
							public void onDateTimeChanged(long millisecond) {
								// TODO Auto-generated method stub
								content.setS_tijiao(getDateText(millisecond));
								setViewText(R.id.et_tijiao, millisecond);
							}

						}, content.getS_tijiao());

				break;
			case R.id.et_updatetime:
				setDateTime(
						new DateTimePickerDialog.OnDateTimeChangedListener() {

							@Override
							public void onDateTimeChanged(long millisecond) {
								// TODO Auto-generated method stub
								content.setT_solvetime(getDateText(millisecond));
								setViewText(R.id.et_updatetime, millisecond);
							}

						}, content.getT_buildtime());

				break;

			default:

			}

			return true;
		}
		
	};

	final protected View.OnClickListener onClickListener = new View.OnClickListener() {
		@Override
		public void onClick(View v) {
			switch (v.getId()) {
			case R.id.btn_cancel:
				break;
			case R.id.btn_commit:
				break;
				
			case R.id.et_buildtime:
				
				setDateTime(new DateTimePickerDialog.OnDateTimeChangedListener(){

					@Override
					public void onDateTimeChanged(long millisecond) {
						// TODO Auto-generated method stub
						content.setT_buildtime(getDateText(millisecond));
						setViewText(R.id.et_buildtime, millisecond);
					}
					
				}, content.getT_buildtime());
				break;
			case R.id.et_solvetime:
				setDateTime(new DateTimePickerDialog.OnDateTimeChangedListener(){

					@Override
					public void onDateTimeChanged(long millisecond) {
						// TODO Auto-generated method stub
						content.setT_solvetime(getDateText(millisecond));
						setViewText(R.id.et_solvetime, millisecond);
					}
					
				}, content.getT_solvetime());
				break;
			case R.id.et_tijiao:
				setDateTime(new DateTimePickerDialog.OnDateTimeChangedListener(){

					@Override
					public void onDateTimeChanged(long millisecond) {
						// TODO Auto-generated method stub
						content.setS_tijiao(getDateText(millisecond));
						setViewText(R.id.et_tijiao, millisecond);
					}
					
				}, content.getS_tijiao());
				
				break;
			case R.id.et_updatetime:
				setDateTime(new DateTimePickerDialog.OnDateTimeChangedListener(){

					@Override
					public void onDateTimeChanged(long millisecond) {
						// TODO Auto-generated method stub
						content.setT_solvetime(getDateText(millisecond));
						setViewText(R.id.et_updatetime, millisecond);
					}
					
				}, content.getT_buildtime());

				break;
			
			default:
				
			}
		}
	};
	
	private void setDateTime(DateTimePickerDialog.OnDateTimeChangedListener listener, String strDate) {
		if(null == strDate) return;
		DateTimePickerDialog dateTimePicKDialog = new DateTimePickerDialog(context);
		
		String[] data = strDate.split("-");
		if (data.length < 2) return;
		Calendar calendar = Calendar.getInstance();
		calendar.set(Integer.parseInt(data[0]), Integer.parseInt(data[1]) - 1, Integer.parseInt(data[2]));
//		Date date = new Date();
//		date.setYear(Integer.parseInt(data[0]));
//		date.setMonth(Integer.parseInt(data[1]) - 1);
//		date.setDate(Integer.parseInt(data[2]));
		dateTimePicKDialog.dateTimePicKDialog(listener, calendar.getTimeInMillis());//date.getTime());//baseContent.getTime());
		
	}
	
//	private final SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	private void setViewText(int id, long millisecond) {
		Date date = new Date(millisecond);
		String dateTime = sdf2.format(date);
		((EditText)rootView.findViewById(id)).setText(dateTime);
	}

	private final SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy-MM-dd");
	private String getDateText(long millisecond) {
		Date date = new Date(millisecond);
		String dateTime = sdf2.format(date);
		return dateTime;
	}


}
