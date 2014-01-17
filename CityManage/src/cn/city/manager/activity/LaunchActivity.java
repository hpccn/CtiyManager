package cn.city.manager.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.EditText;
import android.widget.ImageView;
import cn.city.manager.Configuration;
import cn.city.manager.R;

public class LaunchActivity extends Activity {
	public static final String TAG = "LaunchActivity";
	EditText editText_user;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		// SharedPreferences sPreferences = getSharedPreferences("config", 0);
		//
		// if(null != sPreferences.getString("myname", null)) {
		// // String sn = DeviceProperties.getSn();
		// // if(controller.setMyown(sn)) {
		// // sPreferences.edit().putString("myname", sn).commit();
		// // }
		// gotoMain();
		// } else {
		//
		//
		// }
//		Bitmap bitmap = BitmapFactory.decodeResource(this.getResources(), R.color.welcome_background);
//		this.setContentView(R.layout.layout_welcome);
		showWelcome();
//		System.out.println("http://192.168.1.1 isUrl:? " + isUrl("http://192.168.1.1"));
//		System.out.println("http://www.eben.cn isUrl: ? " + isUrl("http://www.eben.cn"));
//		gotoMain();
	}

	public void onClick(View v) {

	}

	@Override
	public boolean onKeyDown(int keyCode, KeyEvent event) {
		// TODO Auto-generated method stub
		if (keyCode == KeyEvent.KEYCODE_BACK) {
			return true;
		}
		return super.onKeyDown(keyCode, event);
		// return true;
	}

	@Override
	protected void onDestroy() {
//		overridePendingTransition(R.anim.zoom_enter, R.anim.zoom_exit);
		super.onDestroy();
	}

	private void gotoMain() {
		
		Configuration configuration = Configuration.getInstance();
		
		configuration.load(this);
		if (configuration.isAutoLogin()) {
			startActivity(new Intent(this, EntryActivity.class));
		} else {
			startActivity(new Intent(this, LoginActivity.class));
	//		startActivity(new Intent(this, EntryActivity.class));
	//		startActivity(new Intent(this, SummaryActivity.class));
	//		startActivity(new Intent(this, MainActivity.class));
		}
		finish();
	    overridePendingTransition(R.anim.zoom_in, R.anim.zoom_in);    
	}
	
//	private boolean isUrl(String url){
//		Pattern p = Pattern.compile("^(http|www|ftp|)?(://)?(\\w+(-\\w+)*)(\\.(\\w+(-\\w+)*))*((:\\d+)?)(/(\\w+(-\\w+)*))*(\\.?(\\w)*)(\\?)?(((\\w*%)*(\\w*\\?)*(\\w*:)*(\\w*\\+)*(\\w*\\.)*(\\w*&)*(\\w*-)*(\\w*=)*(\\w*%)*(\\w*\\?)*(\\w*:)*(\\w*\\+)*(\\w*\\.)*(\\w*&)*(\\w*-)*(\\w*=)*)*(\\w*)*)$",Pattern.CASE_INSENSITIVE );   
//		Matcher m = p.matcher(url);
//
//		return m.find();
//		
//
//	}
	
	private Animation mLogoEntry;
	private void showWelcome() {

	
	    // Load the high-resolution "zoomed-in" image.
	    final View welcomeView =  View.inflate(this, R.layout.layout_welcome, null); 
	    		//(ImageView) findViewById(R.id.expanded_image);
	    
		this.setContentView(welcomeView);
	
	    mLogoEntry = AnimationUtils.loadAnimation(this, R.anim.zoom_in);//android.R.anim.fade_in);//
		// mLogoEntry = AnimUtil.createOpenbookAnimation(this);
		mLogoEntry.setAnimationListener(new Animation.AnimationListener() {

			@Override
			public void onAnimationEnd(Animation animation) {
//				bAnimationCoverEnd = true;
				gotoMain();
			}

			@Override
			public void onAnimationRepeat(Animation animation) {

			}

			@Override
			public void onAnimationStart(Animation animation) {

			}

		});

		this.findViewById(R.id.iv_welcome).startAnimation(mLogoEntry);
	
	}

}
