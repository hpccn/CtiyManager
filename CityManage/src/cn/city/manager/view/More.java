package cn.city.manager.view;

import com.umeng.fb.FeedbackAgent;
import com.umeng.update.UmengUpdateAgent;
import com.umeng.update.UmengUpdateListener;
import com.umeng.update.UpdateResponse;
import com.umeng.update.UpdateStatus;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;
import cn.city.manager.Configuration;
import cn.city.manager.R;
import cn.city.manager.activity.BaiduNavigation;
import cn.city.manager.activity.EventMapOverlay;
import cn.city.manager.activity.OverlayNavigation;
import cn.city.manager.model.Page;

public class More implements Page{
	private Context context;
	private View view;
	private Button btnUpgrade;
	
	public More(Context context){
		this.context = context;
		init();
	}
	
	public View getView(int scaleInPercent){
		if (null == view)
			view = View.inflate(context, R.layout.more_main_frame, null);
		
		btnUpgrade = (Button) view.findViewById(R.id.btn_upgrade);
//		btnUpgrade.setOnClickListener(onClickListener);
	
		int ids[] = {R.id.btn_cancel_auto_login, R.id.btn_upgrade, R.id.btn_show_event_step, R.id.btn_feedback, R.id.btn_map_navigation, R.id.btn_baidu_navigation};
		for (int id : ids){
			view.findViewById(id).setOnClickListener(onClickListener);
			
		}
		
		// 获取packagemanager的实例
		PackageManager packageManager = context.getPackageManager();
		// getPackageName()是你当前类的包名，0代表是获取版本信息
		PackageInfo packInfo;
		String versionName = "";
		try {
			packInfo = packageManager.getPackageInfo(context.getPackageName(), 0);
			versionName = packInfo.versionName;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		btnUpgrade.setText("检查升级   [当前版本:" + versionName+"]");
		
		return view;
	}
	
	final private String[] stepTitles ={"10条", "20条", "30条", "50条", "全部"};
	
	final private int[] steps = {10, 20, 30, 50, 200};
//	final private int[] steps = {2, 4, 5, 50, 200}; 
	final private View.OnClickListener onClickListener = new View.OnClickListener() {
		
		@Override
		public void onClick(View v) {
			switch (v.getId()){
			case R.id.btn_upgrade:
				showUpgrade();
				break;
			case R.id.btn_cancel_auto_login:
				cancelAutoLogin();
				break;
			case R.id.btn_show_event_step:
				
				int checkItem = 0;
				int step = Configuration.getInstance().getStep();
				for (int i = 0, count = steps.length; i < count; ++i) {
					checkItem = i;
					if (steps[i] == step){
						break;
					}
				}
				ViewSingletonFactory.getInstance().showSingleChoiceItems(context, stepTitles, checkItem, new ViewSingletonFactory.OnChangedListener(){

					@Override
					public void onChanged(int id, String value) {
						Configuration.getInstance().setStep(steps[id]);
			    		SharedPreferences pereference = context.getSharedPreferences(
			    				"configuration", Context.MODE_PRIVATE);
			    		SharedPreferences.Editor editor = pereference.edit();
			    		editor.putInt("step", steps[id]);

			    		editor.commit();
					}
					
				});
				break;
			case R.id.btn_map_navigation:{
				Intent intent = new Intent();
				intent.setClass(context, EventMapOverlay.class);
				context.startActivity(intent);
			}
				break;
				
			case R.id.btn_baidu_navigation:{
				Intent intent = new Intent();
				intent.setClass(context, BaiduNavigation.class);
				context.startActivity(intent);
			}
				break;
			case R.id.btn_feedback:
				FeedbackAgent agent = new FeedbackAgent(context);
				agent.sync();
				agent.startFeedbackActivity();
				break;
			default:
			}
			
		}
	};
	
	private void init(){
		getView(0);
		initData();
	}
	
	private void initData(){
		
	}
	
	private void cancelAutoLogin(){

		
		
	    AlertDialog.Builder builder = new AlertDialog.Builder(context);
	    builder.setIcon(R.drawable.ic_logo);
	    builder.setTitle("取消自动登录");
	    builder.setCancelable(true);
	    builder.setMessage("您确定要清除自动登录信息? \n\t  登录时,需要重新输入密码.");
	    builder.setCancelable(true);
	    builder.setPositiveButton("确定", new DialogInterface.OnClickListener() {
	         
	        @Override
	        public void onClick(DialogInterface dialog, int which) {
	    		SharedPreferences pereference = context.getSharedPreferences(
	    				"configuration", Context.MODE_PRIVATE);
	    		SharedPreferences.Editor editor = pereference.edit();
	    		editor.putBoolean("autoLogin", false);
	    		editor.putString("username", "");
	    		editor.putString("password", "");
	    		editor.putBoolean("saveLogin", false);
	    		editor.putString("user", "");
	    		editor.commit();
	    		dialog.dismiss();
	        }
	    });

	    builder.setNegativeButton("返回", new DialogInterface.OnClickListener() {
	         
	        @Override
	        public void onClick(DialogInterface dialog, int which) {
	        	dialog.dismiss();
	        	
	        }
	    });
	    
	    AlertDialog ad = builder.create();  

		ad.show();
		
	}
	
	private void showUpgrade(){
		UmengUpdateAgent.setUpdateAutoPopup(true);
		UmengUpdateAgent.setUpdateListener(listener);
		UmengUpdateAgent.setUpdateOnlyWifi(false);
		UmengUpdateAgent.update(context);
//		UmengUpdateAgent.forceUpdate(context);

	}
	
	private void showDiaglog(String title, String message){
	    AlertDialog.Builder builder = new AlertDialog.Builder(context);
	    builder.setIcon(R.drawable.ic_logo);
	    builder.setTitle(title);//"检查新版本");
	    builder.setCancelable(true);
	    builder.setMessage(message);//"当前是最新版本");
	    builder.setCancelable(true);
	    

	    
	    AlertDialog ad = builder.create();  
	    
		ad.show();
	}
	
	final UmengUpdateListener listener = new UmengUpdateListener() {

		@Override
		public void onUpdateReturned(int updateStatus,
				UpdateResponse updateInfo) {
			switch (updateStatus) {
			case UpdateStatus.Yes:
				Toast.makeText(context, "发现更新", Toast.LENGTH_SHORT).show();
//				showDiaglog("检查新版本", "发现更新");
				break;
			case UpdateStatus.No:
//				Toast.makeText(context, "没有更新", Toast.LENGTH_SHORT).show();
				showDiaglog("检查新版本", "无需更新, 当前是最新版本");
				break;
			case UpdateStatus.NoneWifi:
				Toast.makeText(context, "没有wifi, 请连接Wifi网络,检查更新", Toast.LENGTH_SHORT).show();
//				showDiaglog("检查新版本", "请连接Wifi网络,检查更新");
				break;
			case UpdateStatus.Timeout:
				Toast.makeText(context, "超时, 网络超时", Toast.LENGTH_SHORT).show();		
//				showDiaglog("检查新版本", "超时, 网络超时");
				break;
			}
		}

	};
}
