package cn.city.manager.activity;

import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.widget.EditText;
import android.widget.ImageView;
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

		super.onDestroy();
	}

	private void gotoMain() {
		startActivity(new Intent(this, EntryActivity.class));
//		startActivity(new Intent(this, SummaryActivity.class));
//		startActivity(new Intent(this, MainActivity.class));
		
		finish();
	}
	
	private boolean isUrl(String url){
		Pattern p = Pattern.compile("^(http|www|ftp|)?(://)?(\\w+(-\\w+)*)(\\.(\\w+(-\\w+)*))*((:\\d+)?)(/(\\w+(-\\w+)*))*(\\.?(\\w)*)(\\?)?(((\\w*%)*(\\w*\\?)*(\\w*:)*(\\w*\\+)*(\\w*\\.)*(\\w*&)*(\\w*-)*(\\w*=)*(\\w*%)*(\\w*\\?)*(\\w*:)*(\\w*\\+)*(\\w*\\.)*(\\w*&)*(\\w*-)*(\\w*=)*)*(\\w*)*)$",Pattern.CASE_INSENSITIVE );   
		Matcher m = p.matcher(url);

		return m.find();
		

	}
	
	private Animation mLogoEntry;
	private void showWelcome() {

	
	    // Load the high-resolution "zoomed-in" image.
	    final ImageView welcomeView = (ImageView) View.inflate(this, R.layout.layout_welcome, null); 
	    		//(ImageView) findViewById(R.id.expanded_image);
	    
	
	    mLogoEntry = AnimationUtils.loadAnimation(this, R.anim.zoom_enter);
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

		welcomeView.startAnimation(mLogoEntry);
	
		this.setContentView(welcomeView);
	}

}
