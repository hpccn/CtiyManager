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

        View loginButton = findViewById(R.id.login);
        loginButton.setOnClickListener(onClickListener);
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
			default:
			}
			
		}
	};
    public void onLoginClick() {
        if (password.getText().toString().equals("123456")){
        	
        	if (cbSaveLogin.isChecked()) {
            	configuration.setAutoLogin(cbAutoLogin.isChecked());
            	configuration.setUsername(userName.getText().toString());
            	configuration.setPassword(password.getText().toString());

        		configuration.store();
        	} else {
            	configuration.setAutoLogin(false);
            	configuration.setUsername("");
            	configuration.setPassword("");
            	configuration.store();
        	}
        	
        	startActivity(new Intent(this, EntryActivity.class));
        	finish();
        }
    	
    	password.startAnimation(shake);
    	
    	
    }

}
