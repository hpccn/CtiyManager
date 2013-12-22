package cn.city.manager;

import android.content.Context;
import android.content.SharedPreferences;

public class Configuration {
	final private Context context; 
	private String username;
	private String password;
	private boolean autoLogin, saveLogin;

	public Configuration(Context context){
		this.context = context;
	}
	
	public void load(){
		SharedPreferences pereference = context.getSharedPreferences(
				"configuration", Context.MODE_PRIVATE);
		username = pereference.getString("username", null);
		password = pereference.getString("password", null);
		autoLogin = pereference.getBoolean("autoLogin", false);
		saveLogin = pereference.getBoolean("saveLogin", false);

	}
	
	public void store(){
		SharedPreferences pereference = context.getSharedPreferences(
				"configuration", Context.MODE_PRIVATE);
		SharedPreferences.Editor editor = pereference.edit();
		editor.putBoolean("autoLogin", autoLogin);
		editor.putString("username", username);
		editor.putString("password", password);
		editor.putBoolean("saveLogin", saveLogin);
		
		editor.commit();
	}
	
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public boolean isAutoLogin() {
		return autoLogin;
	}

	public void setAutoLogin(boolean autoLogin) {
		this.autoLogin = autoLogin;
	}

	public boolean isSaveLogin() {
		return saveLogin;
	}

	public void setSaveLogin(boolean saveLogin) {
		this.saveLogin = saveLogin;
	}
}
