package cn.city.manager;


import java.util.List;

import org.json.JSONException;
import org.json.JSONObject;

import cn.city.manager.fragment.event.BaseEvent;
import cn.city.manager.fragment.event.t_registerEvent;
import cn.city.manager.model.EventSingletonFactory;
import android.content.Context;
import android.content.SharedPreferences;

public class Configuration {
	
	
	private static class SingletonInstance {
		private static final Configuration instance = new Configuration();
	}

	public static Configuration getInstance() {
		return SingletonInstance.instance;
	}
	

	private String username;
	private String password;
	private boolean autoLogin, saveLogin;

	private String userJson;
	
	private t_registerEvent register;
	
	public Configuration(){
		
	}
	
	public void load(Context context){
		SharedPreferences pereference = context.getSharedPreferences(
				"configuration", Context.MODE_PRIVATE);
		username = pereference.getString("username", null);
		password = pereference.getString("password", null);
		autoLogin = pereference.getBoolean("autoLogin", false);
		saveLogin = pereference.getBoolean("saveLogin", false);
		
		userJson = pereference.getString("user", null);
		paserUser(userJson);
	}
	
	
	public void store(Context context){
		SharedPreferences pereference = context.getSharedPreferences(
				"configuration", Context.MODE_PRIVATE);
		SharedPreferences.Editor editor = pereference.edit();
		editor.putBoolean("autoLogin", autoLogin);
		editor.putString("username", username);
		editor.putString("password", password);
		editor.putBoolean("saveLogin", saveLogin);
		editor.putString("user", userJson);
		editor.commit();
	}
	
	private void paserUser(String string){
		if (null == string) return;
		register = null;
		JSONObject jObj;
		try {
			jObj = new JSONObject(string);
			List<BaseEvent> events = EventSingletonFactory.getInstance().create(jObj);
			if (null != events && !events.isEmpty()) {
				register = (t_registerEvent)events.get(0);
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
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

	public String getUserJson() {
		return userJson;
	}

	public void setUserJson(String user) {
		this.userJson = user;
		paserUser(userJson);
	}

	public t_registerEvent getRegister() {
		return register;
	}


}
