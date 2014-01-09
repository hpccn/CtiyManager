package cn.city.manager.activity;

import java.util.List;

import org.apache.http.HttpStatus;
import org.json.JSONException;
import org.json.JSONObject;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.CheckBox;
import android.widget.EditText;
import cn.city.manager.Configuration;
import cn.city.manager.Constants;
import cn.city.manager.R;
import cn.city.manager.fragment.event.BaseEvent;
import cn.city.manager.fragment.event.t_registerEvent;
import cn.city.manager.model.EventHttpStreamThread;
import cn.city.manager.model.EventSingletonFactory;
import cn.city.manager.view.ViewSingletonFactory;
import cn.hpc.common.HttpStreamThread;

public class LoginActivity extends Activity {

	private EditText userName, password;

	private Animation shake;
	private Configuration configuration;
	private CheckBox cbAutoLogin, cbSaveLogin;
	
	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.login_main);

		configuration = Configuration.getInstance();

		shake = AnimationUtils.loadAnimation(this, R.anim.shake);

		findViewById(R.id.login).setOnClickListener(onClickListener);
		findViewById(R.id.login_reset).setOnClickListener(onClickListener);
		init();
	}

	private void init() {
		password = (EditText) findViewById(R.id.et_password);
		userName = (EditText) findViewById(R.id.et_user_name);
		cbAutoLogin = (CheckBox) findViewById(R.id.chk_auto_login);
		cbSaveLogin = (CheckBox) findViewById(R.id.chk_save_login);

		configuration.load(this);
		userName.setText(configuration.getUsername());
		password.setText(configuration.getPassword());
		cbSaveLogin.setChecked(configuration.isSaveLogin());
	}

	@Override
	protected void onDestroy() {
		overridePendingTransition(R.anim.zoom_enter, R.anim.zoom_exit);
		ViewSingletonFactory.getInstance().hideProcessDialog();
		super.onDestroy();
	}

	private View.OnClickListener onClickListener = new View.OnClickListener() {

		@Override
		public void onClick(View v) {
			switch (v.getId()) {
			case R.id.btn_home:
				finish();
				break;
			case R.id.login:
				// onLoginClick();
				ViewSingletonFactory.getInstance().showProcessDialog(LoginActivity.this, "登录", "与服务器通讯,校验用户帐号");
				HttpStreamThread hst = new EventHttpStreamThread(
						LoginActivity.this, Constants.obtainRegisterUrl(userName.getText().toString(), password.getText().toString()),
						onStringLoadListener);
				hst.start();
				break;
			case R.id.login_reset:
				loginReset();

				break;
			default:
			}

		}
	};

	EventHttpStreamThread.OnStringLoadListener onStringLoadListener = new EventHttpStreamThread.OnStringLoadListener() {

		@Override
		public void onStringLoaded(String uri, String string) {

			configuration.setUserJson(string);
			ViewSingletonFactory.getInstance().hideProcessDialog();
//			JSONObject jObj;
//			try {
//				jObj = new JSONObject(string);
//				List<BaseEvent> events = EventSingletonFactory.getInstance().create(jObj);
//				if (null != events && !events.isEmpty()) {
//					register = (t_registerEvent)events.get(0);
//				}
//				
//			} catch (JSONException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
			if (null == string || string.length() < 10 || null == configuration.getRegister()) {
				configuration.setUserJson(string);
//				if (userName.getText().toString().equals("010101") &&  password.getText().toString().equals("123456")){
//					handler.sendEmptyMessage(100);
//				} else {
					handler.sendEmptyMessage(200);
//				}
//			} else if (null == register){
//				handler.sendEmptyMessage(200);
//				if (userName.getText().toString().equals("010101") &&  password.getText().toString().equals("123456")){
//					handler.sendEmptyMessage(100);
//				} else {
//					handler.sendEmptyMessage(200);
//				}
//				handler.sendEmptyMessage(100);
			} else {
				handler.sendEmptyMessage(100);
			}
		}

		@Override
		public void onMoved(String url) {
			// TODO Auto-generated method stub
			HttpStreamThread hst = new EventHttpStreamThread(
					LoginActivity.this, url, onStringLoadListener);
			hst.start();

		}

		@Override
		public void onResponse(int code) {
			// TODO Auto-generated method stub
			if (code != HttpStatus.SC_OK) {
				handler.sendEmptyMessage(200);
			}
		}

	};

	Handler handler = new Handler() {
		public void handleMessage(Message msg) {
			switch (msg.what) {
			case 100:
				login();
				break;
			case 200:
				passwordError();
				break;
			default:
			}
		}

	};

	private void loginReset() {
		userName.setText("");
		password.setText("");
		cbSaveLogin.setChecked(false);
		cbAutoLogin.setChecked(false);
	}

	private void onLoginClick() {
		if (password.getText().toString().equals("123456")) {

			if (cbAutoLogin.isChecked()) {
				configuration.setUsername(userName.getText().toString());
				configuration.setPassword(password.getText().toString());

				configuration.setAutoLogin(cbAutoLogin.isChecked());
				configuration.setSaveLogin(cbSaveLogin.isChecked());

			} else if (cbSaveLogin.isChecked()) {

				configuration.setUsername(userName.getText().toString());
				configuration.setPassword("");// password.getText().toString());

				configuration.setAutoLogin(cbAutoLogin.isChecked());
				configuration.setSaveLogin(cbSaveLogin.isChecked());

			} else {
				configuration.setAutoLogin(false);
				configuration.setSaveLogin(false);

				configuration.setUsername("");
				configuration.setPassword("");

			}
			configuration.store(this);

			startActivity(new Intent(this, EntryActivity.class));
			finish();
		}

		password.startAnimation(shake);

	}

	private void passwordError() {
		ViewSingletonFactory.getInstance().hideProcessDialog();
		password.startAnimation(shake);
	}

	private void login() {

		if (cbAutoLogin.isChecked()) {
			configuration.setUsername(userName.getText().toString());
			configuration.setPassword(password.getText().toString());
			
			configuration.setAutoLogin(cbAutoLogin.isChecked());
			configuration.setSaveLogin(cbSaveLogin.isChecked());

		} else if (cbSaveLogin.isChecked()) {

			configuration.setUsername(userName.getText().toString());
			configuration.setPassword("");// password.getText().toString());

			configuration.setAutoLogin(cbAutoLogin.isChecked());
			configuration.setSaveLogin(cbSaveLogin.isChecked());

		} else {
			configuration.setAutoLogin(false);
			configuration.setSaveLogin(false);

			configuration.setUsername("");
			configuration.setPassword("");

		}
		configuration.store(this);

		startActivity(new Intent(this, EntryActivity.class));
		finish();

	}
	

}
