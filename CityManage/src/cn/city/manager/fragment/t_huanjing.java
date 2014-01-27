package cn.city.manager.fragment;

import java.util.Date;

import org.json.JSONObject;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import cn.city.manager.Configuration;
import cn.city.manager.R;
import cn.city.manager.fragment.event.BaseEvent;
import cn.city.manager.fragment.event.t_huanjingEvent;
import cn.city.manager.view.DateTimePickerDialog;
import cn.hpc.common.cache.ImageCacheFactory;

/**
 * 事件管理-04-环境安全
 * @author hpc
 *
 */
public class t_huanjing extends BaseFragment implements ImageCacheFactory.OnImageLoadListener{
	public static final String ARG_SECTION_NUMBER = "section_number";
	
	protected ViewGroup parent;
	protected Context context;
	protected t_huanjingEvent content;


	protected View rootView;
	protected ImageView imageView;
	protected ImageCacheFactory imc;
	
	@Override
	public View getView(Context context, ViewGroup parent) {
		this.context = context;
		this.parent= parent;

		View v = null;
//		if (null == jsonData){
//			v = View.inflate(context, R.layout.detail_illegal_structure_main_new, null);
//		} else {
//			v = View.inflate(context, R.layout.detail_shengchan_main, null);
//		}
		v = View.inflate(context, R.layout.detail_main_huanjing, null);
		
		initViewTitles(v);
		return v;
	}

	private void initViewTitles(View v){
		((TextView) v.findViewById(R.id.yinhuanxiangqing_title)).setText("详情描述");
		((TextView) v.findViewById(R.id.yinhuanaddress_title)).setText("垃圾所在地点");
//		((TextView) v.findViewById(R.id.yinhuandanwei_title)).setText(R.string.yinhuandanwei);
//		((TextView) v.findViewById(R.id.yinhuanren_title)).setText(R.string.yinhuandanweiren);
//		((TextView) v.findViewById(R.id.yinhuanlianluo_title)).setText(R.string.yinhuandanweitel);
	}

	@Override
	public String getTitle(final Context context) {
		return context.getResources().getString(R.string.huanjing_title);
	}


	@Override
	public void setJsonData(String jsonData) {
		this.jsonData = jsonData;
		if (null == jsonData) {
			content = new t_huanjingEvent();
			return;
		}
		JSONObject js = null;
		try {
			js = new JSONObject(jsonData);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		t_huanjingEvent event = new t_huanjingEvent();//(js);
		try {
			content = (t_huanjingEvent) event.fromJSONObject(js);
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
	public String getSubTitle(final Context context) {
		return context.getResources().getString(R.string.huanjing_sub_title);
		
	}


	@Override 
	public void updateView(View rootView){
		if (null == rootView) return;
		this.rootView = rootView;

		//新建 
		if (null == jsonData) {
			// 位置
//			general.updateLocation(context, (EditText) rootView.findViewById(R.id.et_yinhuanaddress), content);
			
			initSelectChanger();
			initNewEvent();
		} else {
			updateView1(rootView);
			initSelectChanger();
//			setReadOnly();
		}
	}


	
	protected void setReadOnly(){
		int []ids = {R.id.et_yinhuanxiangqing, R.id.et_villagename, R.id.et_yinhuanaddress,
				R.id.et_villagename,
			    R.id.et_netname,
			                                  
                 
			    R.id.et_yinhuanaddress,
			    R.id.et_yinhuandanwei,
			    R.id.et_yinhuanren,
			    R.id.et_yinhuanlianluo,
				                        
//				R.id.et_solvemethod,	    
				R.id.et_solvestatus,    
				R.id.et_solvetime,
				                        	    
				R.id.et_unsolvedreason,
				                        	    
				R.id.et_result,
				                        	    
				                        	    
				R.id.et_remark,
				  
				R.id.et_eventid,
				                         
				R.id.et_discovererlevel,
				R.id.et_discoverername,
				R.id.et_tijiao,
				                         
				R.id.et_updatename,
				R.id.et_updatelevel,
				R.id.et_updatetime,
				                         
				                         
				R.id.et_netleadername,
				R.id.et_netleadertel
			    
			};
			EditText et;
			for (int id : ids){
				et = ((EditText)rootView.findViewById(id));
				if (null != et){
					et.setClickable(false);
					et.setCursorVisible(false);
					et.setFocusable(false);
					et.setFocusableInTouchMode(false); 
				}
			}
	}
	
	private void updateView1(View rootView){
		
		if (null == content) return;
		
//		TextView tvMainTitle = (TextView) rootView.findViewById(R.id.id_main_title);
//		TextView tvSubTitle = (TextView) rootView.findViewById(R.id.id_sub_title);
		
		imageView = (ImageView) rootView.findViewById(R.id.picture);
		
		imc = ImageCacheFactory.getInstance();
		
		if (null != content && null != content.getS_photo() && content.getS_photo().length() > 4){
			Uri uri = Uri.parse(content.getS_photo());
			if (null != uri && uri.getHost() != null)
				
				try {
					Drawable drawable = imc.loadImage(R.id.picture, uri, 320, 240);
					if (null == drawable) {
						imc.registerOnImageLoadListener(this);
					}
					imageView.setImageDrawable(drawable);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} 
		}
		
//		((TextView)rootView.findViewById(R.id.tv_video_file)).setText(content.getS_video());
		String video = content.getS_video();
		if (null != video && video.length() > 4){
			rootView.findViewById(R.id.tv_video_file).setBackgroundResource(R.drawable.ic_media_play);
		}
		((EditText)rootView.findViewById(R.id.et_yinhuanxiangqing)).setText(content.getS_yinhuanxiangqing());
		
		if (null == jsonData) {
//		String strAddress = content.getS_yinhuanaddress();
//		if (null == strAddress || strAddress.length() < 2)
//			general.updateLocation(context, (EditText) rootView.findViewById(R.id.et_yinhuanaddress), content);
		}
		general.updateTitle(context, rootView, this);
		
		
	
		//
		((EditText)rootView.findViewById(R.id.et_villagename)).setText(content.getS_villagename());
		((EditText)rootView.findViewById(R.id.et_netname)).setText(content.getS_netname());
		
		//yinhuan
		((EditText)rootView.findViewById(R.id.et_yinhuanaddress)).setText(content.getS_yinhuanaddress());
		
		((EditText)rootView.findViewById(R.id.et_garbagetype)).setText(content.getS_garbagetype());
		((EditText)rootView.findViewById(R.id.et_garbagequantity)).setText("" + content.getD_garbagequantity());

		
		//solve
		
//		((EditText)rootView.findViewById(R.id.et_solvemethod)).setText(content.getS_solvemethod());
		((EditText)rootView.findViewById(R.id.et_solvestatus)).setText(content.getS_solvestatus());
		((EditText)rootView.findViewById(R.id.et_solvetime)).setText(content.getT_solvetime());

		((EditText)rootView.findViewById(R.id.et_unsolvedreason)).setText(content.getS_unsolvedreason());
		//
		((EditText)rootView.findViewById(R.id.et_result)).setText(content.getS_result());
		((EditText)rootView.findViewById(R.id.et_remark)).setText(content.getS_remark());
		
		
		updateView2(rootView);
//		initModifyTime();
	}
	
	
	protected void updateView2(View rootView){
		if (null == jsonData) return;
		//事件ID更改一下
//		((EditText)rootView.findViewById(R.id.et_eventid)).setText(content.getS_eventid());
		((EditText)rootView.findViewById(R.id.et_eventid)).setText("" + content.getId());
		//discoverer
		((EditText)rootView.findViewById(R.id.et_discovererlevel)).setText(content.getS_discovererlevel());
		((EditText)rootView.findViewById(R.id.et_discoverername)).setText(content.getS_discoverername());
		((EditText)rootView.findViewById(R.id.et_tijiao)).setText(content.getS_tijiao());
		
		//updater
//		((EditText)rootView.findViewById(R.id.et_updateid)).setText(content.getUpdateid());
		((EditText)rootView.findViewById(R.id.et_updatename)).setText(content.getS_updatename());
		((EditText)rootView.findViewById(R.id.et_updatelevel)).setText(content.getS_updatelevel());
		((EditText)rootView.findViewById(R.id.et_updatetime)).setText(content.getT_updatetime());
		
		//netleader
		((EditText)rootView.findViewById(R.id.et_netleadername)).setText(content.getS_netleadername());
		((EditText)rootView.findViewById(R.id.et_netleadertel)).setText(content.getS_netleadertel());

	}
	
	@Override
	public void updateData(View rootView) {
		if (null == rootView) return;
		this.rootView = rootView;
//		TextView tvMainTitle = (TextView) rootView.findViewById(R.id.id_main_title);
//		TextView tvSubTitle = (TextView) rootView.findViewById(R.id.id_sub_title);

		content.setS_yinhuanaddress(((EditText) rootView.findViewById(R.id.et_yinhuanaddress)).getText().toString());
		
		
//		content.setS_video(((TextView)rootView.findViewById(R.id.tv_video_file)).getText().toString());
		
		//
		content.setS_villagename(((EditText)rootView.findViewById(R.id.et_villagename)).getText().toString());
		content.setS_netname(((EditText)rootView.findViewById(R.id.et_netname)).getText().toString());
		

//		((EditText)rootView.findViewById(R.id.et_buildtime)).getText().toString()millisecondToString(content.getBuildtime()));
		
		
		//yinhuan
		content.setS_yinhuanxiangqing(((EditText)rootView.findViewById(R.id.et_yinhuanxiangqing)).getText().toString());
		content.setS_yinhuanaddress(((EditText)rootView.findViewById(R.id.et_yinhuanaddress)).getText().toString());
		
		content.setS_garbagetype(((EditText)rootView.findViewById(R.id.et_garbagetype)).getText().toString());
		content.setD_garbagequantity(string2Double(((EditText)rootView.findViewById(R.id.et_garbagequantity)).getText().toString()));
		
	
		//solve
		
//		content.setS_solvemethod(((EditText)rootView.findViewById(R.id.et_solvemethod)).getText().toString());
		content.setS_solvestatus(((EditText)rootView.findViewById(R.id.et_solvestatus)).getText().toString());
//		((EditText)rootView.findViewById(R.id.et_solvetime)).getText().toString((millisecondToStringcontent.setSolvetime()));

		content.setS_unsolvedreason(((EditText)rootView.findViewById(R.id.et_unsolvedreason)).getText().toString());
		//
		content.setS_result(((EditText)rootView.findViewById(R.id.et_result)).getText().toString());
		
		
		content.setS_remark(((EditText)rootView.findViewById(R.id.et_remark)).getText().toString());
		updateData2(rootView);
	}
	
	private void updateData2(View rootView){
		if (null == jsonData) return;
//		content.setS_eventid(((EditText)rootView.findViewById(R.id.et_eventid)).getText().toString());
		String tmp = ((EditText)rootView.findViewById(R.id.et_eventid)).getText().toString();
		if (null != tmp && tmp.length() > 0){
			try {
				int id = Integer.parseInt(tmp);
				content.setId(id);
			} catch (Exception e ){
				
			}
		}
		
		//discoverer
		content.setS_discovererlevel(((EditText)rootView.findViewById(R.id.et_discovererlevel)).getText().toString());
		content.setS_discoverername(((EditText)rootView.findViewById(R.id.et_discoverername)).getText().toString());
//		((EditText)rootView.findViewById(R.id.et_tijiao)).getText().toString()millisecondToString(content.setTijiao());
		
		//netleader
		content.setS_netleadername(((EditText)rootView.findViewById(R.id.et_netleadername)).getText().toString());
		content.setS_netleadertel(((EditText)rootView.findViewById(R.id.et_netleadertel)).getText().toString());
		
		//updater
//		((EditText)rootView.findViewById(R.id.et_updateid)).setTextcontent.setUpdateid());
		content.setS_updatename(((EditText)rootView.findViewById(R.id.et_updatename)).getText().toString());
		content.setS_updatelevel(((EditText)rootView.findViewById(R.id.et_updatelevel)).getText().toString());
//		((EditText)rootView.findViewById(R.id.et_updatetime)).getText().toString((millisecondToStringcontent.setUpdatetime()));

	}
	
	private void initSelectChanger() {
//		etTime = (EditText) this.findViewById(R.id.examination_date_time);
//		int[] ids = { R.id.examination_date_time };
		int[] ids = {R.id.et_solvetime, R.id.et_solvestatus, R.id.et_villagename, R.id.et_netname, R.id.et_garbagetype};//, R.id.et_solvemethod, R.id.et_buildtime, R.id.et_tijiao, R.id.et_updatetime};

		for (int id : ids) {
//			rootView.findViewById(id).setOnClickListener(onClickListener);
//			rootView.findViewById(id).setOnFocusChangeListener(onFocusChangeListener);
			rootView.findViewById(id).setOnTouchListener(onTouchListener);
		}
	}
	
	private void initNewEvent(){
		((EditText)rootView.findViewById(R.id.et_solvestatus)).setText("未解决");
		String []status = Configuration.getInstance().getVillageNames();
		if (null != status && status.length > 0){
			((EditText)rootView.findViewById(R.id.et_villagename)).setText(status[0]);
		} 
		
		status = Configuration.getInstance().getNetNames();
		if (null != status && status.length > 0){
			((EditText)rootView.findViewById(R.id.et_netname)).setText(status[0]);
		}
//		((EditText)rootView.findViewById(R.id.et_solvemethod)).setText("新发现");
		
		((EditText)rootView.findViewById(R.id.et_garbagetype)).setText("生活垃圾");
		
		rootView.findViewById(R.id.id_threeadress).setVisibility(View.GONE);
		rootView.findViewById(R.id.id_browse_mode).setVisibility(View.GONE);
	}
	
	
	private void onAction(int id){
//		onSelectListener(context, rootView, id);
		switch (id) {
		
		case R.id.btn_cancel:
			break;
		case R.id.btn_commit:
			break;
			

		case R.id.et_solvetime:
			setDateTime(context, 
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
			setDateTime(context,
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
			setDateTime(context,
					new DateTimePickerDialog.OnDateTimeChangedListener() {

						@Override
						public void onDateTimeChanged(long millisecond) {
							// TODO Auto-generated method stub
							content.setT_updatetime(getDateText(millisecond));
							setViewText(R.id.et_updatetime, millisecond);
						}

					}, content.getT_updatetime());

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
		case R.id.et_garbagetype:
		{
			String []status = {"生活垃圾", "建筑垃圾"};
			
				general.setSingleChoiceItems(context,  R.id.et_garbagetype, status, 0, new GeneralInformationFragment.OnChangedListener() {
					@Override
					public void onChanged(int id, int which, String value) {
						// TODO Auto-generated method stub
						((EditText)rootView.findViewById(id)).setText(value);
					}
				});

		}
			break;
		case R.id.tv_video_file:
//			showVideo();
			
			break;
		default:

		}

	}
	
	
	View.OnTouchListener onTouchListener = new View.OnTouchListener() {

		@Override
		public boolean onTouch(View v, MotionEvent event) {
			if (event.getAction() != MotionEvent.ACTION_UP){
				return false;
			}
			onAction(v.getId());
			return true;
		}
		
	};


	
	final protected View.OnClickListener onClickListener = new View.OnClickListener() {
		@Override
		public void onClick(View v) {
			onAction(v.getId());
		}
	};
	
	

	
//	private final SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	private void setViewText(int id, long millisecond) {
		Date date = new Date(millisecond);
		String dateTime = sdf2.format(date);
		((EditText)rootView.findViewById(id)).setText(dateTime);
	}


	@Override
	public void onImageLoaded(int id, Uri imageUri, Drawable image) {
		((ImageView) rootView.findViewById(id)).setImageDrawable(image);
		imc.unregisterOnImageLoadListener(this);
	}


}
