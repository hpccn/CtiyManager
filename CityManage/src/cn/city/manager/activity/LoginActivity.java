package cn.city.manager.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.CheckBox;
import android.widget.EditText;
import cn.city.manager.Configuration;
import cn.city.manager.R;



public class LoginActivity  extends Activity{
	
	private EditText userName, password;
	
	private Animation shake;
	private Configuration configuration;
	private CheckBox cbAutoLogin, cbSaveLogin;
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.login_main);

        configuration = new Configuration(this);
        
        
        shake = AnimationUtils.loadAnimation(this, R.anim.shake);

        findViewById(R.id.login).setOnClickListener(onClickListener);
        findViewById(R.id.login_reset).setOnClickListener(onClickListener);
        init();
    }
    
    private void init(){
        password = (EditText) findViewById(R.id.et_password);
        userName = (EditText) findViewById(R.id.et_user_name);
        cbAutoLogin = (CheckBox) findViewById(R.id.chk_auto_login);
        cbSaveLogin = (CheckBox) findViewById(R.id.chk_save_login);
        
        configuration.load();
        userName.setText(configuration.getUsername());
        password.setText(configuration.getPassword());
        cbSaveLogin.setChecked(configuration.isSaveLogin());
    }
	@Override
	protected void onDestroy() {
		overridePendingTransition(R.anim.zoom_enter, R.anim.zoom_exit);
		super.onDestroy();
	}    
	private View.OnClickListener onClickListener = new View.OnClickListener() {
		
		@Override
		public void onClick(View v) {
			switch (v.getId()){
			case R.id.btn_home:
				finish();
				break;
			case R.id.login:
				onLoginClick();
				
				break;
			case R.id.login_reset:
				loginReset();
				
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
        if (password.getText().toString().equals("123456")){
        	
        	if (cbAutoLogin.isChecked()) {
            	configuration.setUsername(userName.getText().toString());
            	configuration.setPassword(password.getText().toString());
            	
            	configuration.setAutoLogin(cbAutoLogin.isChecked());
            	configuration.setSaveLogin(cbSaveLogin.isChecked());
        		
        	} else if (cbSaveLogin.isChecked()) {
            	
            	configuration.setUsername(userName.getText().toString());
            	configuration.setPassword("");//password.getText().toString());
            	
            	configuration.setAutoLogin(cbAutoLogin.isChecked());
            	configuration.setSaveLogin(cbSaveLogin.isChecked());
        		
        	} else {
            	configuration.setAutoLogin(false);
            	configuration.setSaveLogin(false);
            	
            	configuration.setUsername("");
            	configuration.setPassword("");
            	
        	}
        	configuration.store();
        	
        	startActivity(new Intent(this, EntryActivity.class));
        	finish();
        }
    	
    	password.startAnimation(shake);
    	
    	
    }

}
