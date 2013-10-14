package cn.city.manage.activity;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.EditText;

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
		
		System.out.println("http://192.168.1.1 isUrl:? " + isUrl("http://192.168.1.1"));
		System.out.println("http://www.eben.cn isUrl: ? " + isUrl("http://www.eben.cn"));
		gotoMain();
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
}
