package cn.city.manager.fragment;

import java.util.Calendar;
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
import cn.city.manager.fragment.event.t_gonggongchangsuoweishengEvent;
import cn.city.manager.view.DateTimePickerDialog;
import cn.hpc.common.cache.ImageCacheFactory;

/**
 * 事件管理-公共场所卫生监督（新）
 * @author hpc
 *
 */
public class t_gonggongchangsuoweisheng extends BaseFragment implements ImageCacheFactory.OnImageLoadListener{
	public static final String ARG_SECTION_NUMBER = "section_number";
	
	protected ViewGroup parent;
	protected Context context;
	protected t_gonggongchangsuoweishengEvent content;

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
		v = View.inflate(context, R.layout.detail_main_gonggongchangsuoweisheng, null);
		
		initViewTitles(v);
		return v;
	}






	@Override
	public void setJsonData(String jsonData) {
		this.jsonData = jsonData;
		if (null == jsonData) {
			content = new t_gonggongchangsuoweishengEvent();
			return;
		}
		JSONObject js = null;
		try {
			js = new JSONObject(jsonData);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		t_gonggongchangsuoweishengEvent event = new t_gonggongchangsuoweishengEvent();//(js);
		try {
			content = (t_gonggongchangsuoweishengEvent) event.fromJSONObject(js);
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
				R.id.et_duedate, 
				R.id.et_solvedate,
				                        	    
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
					imageView.setImageDrawable(drawable);
					if (null == drawable) {
						imc.registerOnImageLoadListener(this);
					}
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
//		((EditText)rootView.findViewById(R.id.et_yinhuanxiangqing)).setText(content.getS_yinhuanxiangqing());
		
		((EditText)rootView.findViewById(R.id.et_jianchadate)).setText(content.getT_jianchadate());
//		((EditText)rootView.findViewById(R.id.et_healthcertificate)).setText(content.getS_healthcertificate());
//		((EditText)rootView.findViewById(R.id.et_outofbusiness)).setText(content.getS_outofbusiness());
//		((EditText)rootView.findViewById(R.id.et_handlingroomclean)).setText(content.getS_handlingroomclean());
//		((EditText)rootView.findViewById(R.id.et_weishengxuke)).setText(content.getS_weishengxuke());

		
		//  私有属性处理
		updatePrivatelyView();
//		((EditText)rootView.findViewById(R.id.et_shipinliutongxukezheng)).setText(content.getS_shipinliutongxukezheng());
//		((EditText)rootView.findViewById(R.id.et_youxiaoqi)).setText(content.getS_youxiaoqi());
//		((EditText)rootView.findViewById(R.id.et_shipinjingyingtaizhang)).setText(content.getS_shipinjingyingtaizhang());
//		((EditText)rootView.findViewById(R.id.et_chaofanweijingying)).setText(content.getS_chaofanweijingying());
//		((EditText)rootView.findViewById(R.id.et_sanzhuangshushi)).setText(content.getS_sanzhuangshushi());
//		((EditText)rootView.findViewById(R.id.et_guoqishipin)).setText(content.getS_guoqishipin());
//		((EditText)rootView.findViewById(R.id.et_memberjiankangzheng)).setText(content.getS_memberjiankangzheng());
////		((EditText)rootView.findViewById(R.id.et_)).setText(content.getS_());
		

		
		
		
		
		
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
		((EditText)rootView.findViewById(R.id.et_yinhuandanwei)).setText(content.getS_yinhuandanwei());
		((EditText)rootView.findViewById(R.id.et_yinhuanren)).setText(content.getS_yinhuanren());
		((EditText)rootView.findViewById(R.id.et_yinhuanlianluo)).setText(content.getS_yinhuanlianluo());
		
		//solve
		
//		((EditText)rootView.findViewById(R.id.et_solvemethod)).setText(content.getS_solvemethod());
		((EditText)rootView.findViewById(R.id.et_solvestatus)).setText(content.getS_solvestatus());
		((EditText)rootView.findViewById(R.id.et_solvedate)).setText(content.getT_solvedate());
		((EditText)rootView.findViewById(R.id.et_duedate)).setText(content.getT_duedate());

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
		
//		content.setS_yinhuanxiangqing(((EditText)rootView.findViewById(R.id.et_yinhuanxiangqing)).getText().toString());
		content.setS_yinhuanaddress(((EditText)rootView.findViewById(R.id.et_yinhuanaddress)).getText().toString());
		content.setS_yinhuandanwei(((EditText)rootView.findViewById(R.id.et_yinhuandanwei)).getText().toString());
		content.setS_yinhuanren(((EditText)rootView.findViewById(R.id.et_yinhuanren)).getText().toString());
		content.setS_yinhuanlianluo(((EditText)rootView.findViewById(R.id.et_yinhuanlianluo)).getText().toString());
		
		content.setT_jianchadate(((EditText)rootView.findViewById(R.id.et_jianchadate)).getText().toString());

//		content.setS_weishengxuke(((EditText)rootView.findViewById(R.id.et_weishengxuke)).getText().toString());
//		content.setS_healthcertificate(((EditText)rootView.findViewById(R.id.et_healthcertificate)).getText().toString());
//		content.setS_outofbusiness(((EditText)rootView.findViewById(R.id.et_outofbusiness)).getText().toString());
//		content.setS_handlingroomclean(((EditText)rootView.findViewById(R.id.et_handlingroomclean)).getText().toString());
		
		

		
		
	
		//solve
		
//		content.setS_solvemethod(((EditText)rootView.findViewById(R.id.et_solvemethod)).getText().toString());
		content.setS_solvestatus(((EditText)rootView.findViewById(R.id.et_solvestatus)).getText().toString());
//		((EditText)rootView.findViewById(R.id.et_solvetime)).getText().toString((millisecondToStringcontent.setSolvetime()));

		content.setS_unsolvedreason(((EditText)rootView.findViewById(R.id.et_unsolvedreason)).getText().toString());
		//
		content.setS_result(((EditText)rootView.findViewById(R.id.et_result)).getText().toString());
		
		
		content.setS_remark(((EditText)rootView.findViewById(R.id.et_remark)).getText().toString());
		updateData2(rootView);
		updatePrivatelyData();
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
//	weishengxukezheng
//	youxiaoqi
//	memberjiankangzheng
//	weishengzhidu
//	enviornmentclean
//	baojiegui

	
	@Override
	public String getTitle(final Context context) {
		return "公共场所卫生监督";//context.getResources().getString(R.string.weishengsuo_title);
	}
	@Override
	public String getSubTitle(final Context context) {
		return "公共场所卫生监督";//context.getResources().getString(R.string.weishengsuo_sub_title);
		
	}
	// 监督监管个性化处理:
	private void initViewTitles(View v){
//		((TextView) v.findViewById(R.id.yinhuanxiangqing_title)).setText(R.string.yinhuanxiangqing);

		((TextView) v.findViewById(R.id.yinhuanaddress_title)).setText("被监督单位地址");
		((TextView) v.findViewById(R.id.yinhuandanwei_title)).setText("被监督单位名称");
		((TextView) v.findViewById(R.id.yinhuanren_title)).setText("被监督单位负责人");
		((TextView) v.findViewById(R.id.yinhuanlianluo_title)).setText("被监督单位电话");
	}
	// 监督监管个性化处理:
	private void updatePrivatelyView(){
		((EditText)rootView.findViewById(R.id.et_weishengxukezheng  )).setText(content.getS_weishengxukezheng  ());
		((EditText)rootView.findViewById(R.id.et_youxiaoqi          )).setText(content.getS_youxiaoqi          ());
		((EditText)rootView.findViewById(R.id.et_memberjiankangzheng)).setText(content.getS_memberjiankangzheng());
		((EditText)rootView.findViewById(R.id.et_weishengzhidu      )).setText(content.getS_weishengzhidu      ());
		((EditText)rootView.findViewById(R.id.et_enviornmentclean   )).setText(content.getS_enviornmentclean   ());
		((EditText)rootView.findViewById(R.id.et_baojiegui          )).setText(content.getS_baojiegui          ());
		
		((EditText)rootView.findViewById(R.id.et_eventtype          )).setText(content.getS_eventtype          ());

//		((EditText)rootView.findViewById(R.id.et_)).setText(content.getS_());
	}
	// 监督监管个性化处理:
	private void updatePrivatelyData(){
		content.setS_weishengxukezheng  (((EditText)rootView.findViewById(R.id.et_weishengxukezheng  )).getText().toString());
		content.setS_youxiaoqi          (((EditText)rootView.findViewById(R.id.et_youxiaoqi          )).getText().toString());
		content.setS_memberjiankangzheng(((EditText)rootView.findViewById(R.id.et_memberjiankangzheng)).getText().toString());
		content.setS_weishengzhidu      (((EditText)rootView.findViewById(R.id.et_weishengzhidu      )).getText().toString());
		content.setS_enviornmentclean   (((EditText)rootView.findViewById(R.id.et_enviornmentclean   )).getText().toString());
		content.setS_baojiegui          (((EditText)rootView.findViewById(R.id.et_baojiegui          )).getText().toString());
		
		content.setS_eventtype          (((EditText)rootView.findViewById(R.id.et_eventtype          )).getText().toString());

		
//		content.setS_(((EditText)rootView.findViewById(R.id.et_)).getText().toString());

	}
	
	// 监督监管个性化处理:
	private void initSelectChanger() {
//		etTime = (EditText) this.findViewById(R.id.examination_date_time);
//		int[] ids = { R.id.examination_date_time };
		int[] ids = {R.id.et_duedate, R.id.et_solvedate
				, R.id.et_solvestatus
				, R.id.et_villagename
				, R.id.et_netname
				, R.id.et_weishengxuke
				, R.id.et_jianchadate
//				, R.id.et_weishengxuke
//				, R.id.et_healthcertificate
//				, R.id.et_outofbusiness
//				, R.id.et_handlingroomclean

				
				, R.id.et_weishengxukezheng  
				, R.id.et_youxiaoqi          
				, R.id.et_memberjiankangzheng
				, R.id.et_weishengzhidu      
				, R.id.et_enviornmentclean   
				, R.id.et_baojiegui         
				, R.id.et_eventtype
				

				
		};//, R.id.et_solvemethod, R.id.et_buildtime, R.id.et_tijiao, R.id.et_updatetime};

		for (int id : ids) {
//			rootView.findViewById(id).setOnClickListener(onClickListener);
//			rootView.findViewById(id).setOnFocusChangeListener(onFocusChangeListener);
			View v = rootView.findViewById(id);
			if (null != v) v.setOnTouchListener(onTouchListener);
		}
	}
	// 监督监管个性化处理:
	private void initNewEvent(){
		initNewEvent(rootView);
		((EditText)rootView.findViewById(R.id.et_solvestatus)).setText("未解决");
//		String []status = Configuration.getInstance().getVillageNames();
//		if (null != status && status.length > 0){
//			((EditText)rootView.findViewById(R.id.et_villagename)).setText(status[0]);
//		} 
		
//		status = Configuration.getInstance().getNetNames();
//		if (null != status && status.length > 0){
//			((EditText)rootView.findViewById(R.id.et_netname)).setText(status[0]);
//		}
//		((EditText)rootView.findViewById(R.id.et_solvemethod)).setText("新发现");
		
		int ids[] ={
				
//				R.id.et_weishengxuke, R.id.et_outofbusiness, R.id.et_handlingroomclean, R.id.et_healthcertificate
				R.id.et_shipinliutongxukezheng
				, R.id.et_weishengxukezheng  
				, R.id.et_youxiaoqi          
				, R.id.et_memberjiankangzheng
				, R.id.et_weishengzhidu      
				, R.id.et_enviornmentclean   
				, R.id.et_baojiegui          
				


	
	
		};
		EditText et = null;
		for (int id : ids ){
			et = ((EditText) rootView.findViewById(id));
			if (null != et) et.setText("是");
		}
		et = ((EditText) rootView.findViewById(R.id.et_eventtype));
		if (null != et) et.setText("理发");

		
		rootView.findViewById(R.id.id_threeadress).setVisibility(View.GONE);
		rootView.findViewById(R.id.id_browse_mode).setVisibility(View.GONE);
	}
	
	// 监督监管个性化处理:
	private void onAction(int id){
		switch (id) {
		
		case R.id.btn_cancel:
			break;
		case R.id.btn_commit:
			break;
			
		case R.id.et_duedate:
			setDateTime(context,
					new DateTimePickerDialog.OnDateTimeChangedListener() {

						@Override
						public void onDateTimeChanged(long millisecond) {
							// TODO Auto-generated method stub
							content.setT_duedate(getDateText(millisecond));
							setViewText(R.id.et_duedate, millisecond);
						}

					}, content.getT_duedate());
			break;
		case R.id.et_solvedate:
			setDateTime(context,
					new DateTimePickerDialog.OnDateTimeChangedListener() {

						@Override
						public void onDateTimeChanged(long millisecond) {
							// TODO Auto-generated method stub
							content.setT_solvedate(getDateText(millisecond));
							setViewText(R.id.et_solvedate, millisecond);
						}

					}, content.getT_solvedate());
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
		case R.id.et_jianchadate:
			setDateTime(context,
					new DateTimePickerDialog.OnDateTimeChangedListener() {

						@Override
						public void onDateTimeChanged(long millisecond) {
							// TODO Auto-generated method stub
							content.setT_jianchadate(getDateText(millisecond));
							setViewText(R.id.et_jianchadate, millisecond);
						}

					}, content.getT_updatetime());

			break;
		case R.id.et_solvestatus:
		{
			// 解决状态
			String []status = {"未解决","已解决"};
			general.setSingleChoiceItems(context, R.id.et_solvestatus, status, 0, new GeneralInformationFragment.OnChangedListener() {
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
			villagenameSingleChoice(context, rootView);
//			// 村
//			String []status = Configuration.getInstance().getVillageNames();
//			if (null == status || status.length == 0){
////				((EditText)rootView.findViewById(R.id.et_villagename)).setText(Configuration.getInstance().getRegister().getS_villagename());
//			} else if (status.length == 1){
//				((EditText)rootView.findViewById(R.id.et_villagename)).setText(status[0]);
//				netnameSingleChoice(context, rootView, status[0]);
//			} else {
////				{Configuration.getInstance().getRegister().getS_villagename() , "other"};
//				general.setSingleChoiceItems(context, R.id.et_villagename, status, 0, new GeneralInformationFragment.OnChangedListener() {
//					@Override
//					public void onChanged(int id, int which, String value) {
//						// TODO Auto-generated method stub
//						((EditText)rootView.findViewById(id)).setText(value);
//						netnameSingleChoice(context, rootView, value);
//					}
//				});
//			}
		}

			break;
		case R.id.et_netname:
		{
			netnameSingleChoice(context, rootView, villagename);
//			//格
//			String []status = Configuration.getInstance().getNetNames();
////			String []status = {Configuration.getInstance().getRegister().getS_netname() , "other"};
//			if (null == status || status.length == 0){
////				((EditText)rootView.findViewById(R.id.et_netname)).setText(Configuration.getInstance().getRegister().getS_netname());
//			} else if (status.length == 1){
//				((EditText)rootView.findViewById(R.id.et_netname)).setText(status[0]);
//			} else {
//				general.setSingleChoiceItems(context, R.id.et_netname, status, 0, new GeneralInformationFragment.OnChangedListener() {
//					@Override
//					public void onChanged(int id, int which, String value) {
//						// TODO Auto-generated method stub
//						((EditText)rootView.findViewById(id)).setText(value);
//					}
//				});
//			}
		}

		break;
		case R.id.et_license: {
			String[] status = { "是", "否" };
			
			general.setSingleChoiceItems(context, R.id.et_license, status, 0,
					new GeneralInformationFragment.OnChangedListener() {
						@Override
						public void onChanged(int id, int which, String value) {
							// TODO Auto-generated method stub
							((EditText) rootView.findViewById(id))
									.setText(value);
						}
					});

		}
			break;
//		case R.id.et_weishengxuke:
//		case R.id.et_outofbusiness:
//		case R.id.et_handlingroomclean:
//		case R.id.et_healthcertificate: 
			// 监督监管个性化处理:			
		case R.id.et_eventtype:
		{
			String[] status = { "理发", "美容", "洗浴", "住宿", "游泳馆", "歌厅" };

			general.setSingleChoiceItems(context, id, status, 0,
					new GeneralInformationFragment.OnChangedListener() {
						@Override
						public void onChanged(int id, int which, String value) {
							// TODO Auto-generated method stub
							((EditText) rootView.findViewById(id))
									.setText(value);
						}
					});

			
		}
		break;
		case R.id.et_weishengxukezheng  :
		case R.id.et_youxiaoqi          :
		case R.id.et_memberjiankangzheng:
		case R.id.et_weishengzhidu      :
		case R.id.et_enviornmentclean   :
		case R.id.et_baojiegui          :

		{
			String[] status = { "是", "否" };

			general.setSingleChoiceItems(context, id, status, 0,
					new GeneralInformationFragment.OnChangedListener() {
						@Override
						public void onChanged(int id, int which, String value) {
							// TODO Auto-generated method stub
							((EditText) rootView.findViewById(id))
									.setText(value);
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
