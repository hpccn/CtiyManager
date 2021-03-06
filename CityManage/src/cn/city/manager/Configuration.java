package cn.city.manager;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;


import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import android.content.Context;
import android.content.SharedPreferences;
import cn.city.manager.fragment.event.t_registerEvent;

public class Configuration {
	
	
	private static class SingletonInstance {
		private static final Configuration instance = new Configuration();
	}

	public static Configuration getInstance() {
		return SingletonInstance.instance;
	}

	private String kind;
	private String id;
	private String time;
	private int start, step, end, count = 1;
	
	private String username;
	private String password;
	private boolean autoLogin, saveLogin;

	private String userJson;
	
	private t_registerEvent register;
	
	private String []villageNames;
//	private String []netNames;
	
	private String eventTongJiTime;
	
	public Configuration(){
		
	}
	
	public void load(Context context){
		SharedPreferences pereference = context.getSharedPreferences(
				"configuration", Context.MODE_PRIVATE);
		username = pereference.getString("username", null);
		password = pereference.getString("password", null);
		autoLogin = pereference.getBoolean("autoLogin", false);
		saveLogin = pereference.getBoolean("saveLogin", false);
		step = pereference.getInt("step", 10);
		userJson = pereference.getString("user", null);
		
		id = username;
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
		editor.putInt("step", step);
		editor.commit();
	}
	
	private void paserUser(String string){
		if (null == string) return;
//		register = null;
		JSONObject jObj;
		try {
			jObj = new JSONObject(string);
//			List<BaseEvent> events = EventSingletonFactory.getInstance().create(jObj);
//			if (null != events && !events.isEmpty()) {
//				register = (t_registerEvent)events.get(0);
//			}
			
//			JSONObject content = jObj.getJSONObject("content");
//			if (null != content){
//				t_registerEvent re = new t_registerEvent();
//				register = (t_registerEvent) re.fromJSONObject(content);
//			}
			villageNames = parseVillagename(jObj);
//			villageNames = parse(jObj, "villagename");
//			netNames = parse(jObj, "netname");
			
			register = parseRegisterEvent(jObj, "content");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	private t_registerEvent parseRegisterEvent(JSONObject jObj, String key) throws Exception{
		
		if (null == jObj || !jObj.has("event"))
			return null;

		JSONObject event = null;
		event = jObj.getJSONObject("event");

		if (null ==  event || ! event.has(key))
			return null;
		JSONObject content = event.getJSONObject(key);
		if (null != content){
			t_registerEvent re = new t_registerEvent();
			register = (t_registerEvent) re.fromJSONObject(content);
		}
		return register;
		
	}
	Map <String, List<String>> netnameMap = new HashMap <String, List<String>>();
	List<String> villagenameList = new ArrayList<String>();
	
	private String[] parseVillagename(JSONObject jObj) throws JSONException{
		if (null == jObj || !jObj.has("event"))
			return null;
		netnameMap.clear();
		villagenameList.clear();
		String key = "villagename";
		JSONObject event = null;
		event = jObj.getJSONObject("event");

		if (null ==  event || ! event.has(key))
			return null;
		JSONArray ja = event.getJSONArray(key);
		
		if (null == ja) return null;
		
//		List<String> list = new ArrayList<String>();
		
		String s_villagename = null;
		String s_netname = null;
		for (int i = 0, length = ja.length(); i < length; ++i){
			s_villagename = ja.getJSONObject(i).getString("s_villagename");
			s_netname = ja.getJSONObject(i).getString("s_netname");

			if (!villagenameList.contains(s_villagename)){
				villagenameList.add(s_villagename);
			}
			List<String> netnameSet = netnameMap.get(s_villagename);
			if (null == netnameSet){
				netnameSet = new ArrayList<String>();
				netnameMap.put(s_villagename, netnameSet);
			}
			if (!netnameSet.contains(s_netname)){
				netnameSet.add(s_netname);
			}

		}
		//TODO: 所属格增加一项"待定格"
//		if ("netname".equals(key))
//			list.add(0, "待定格");
		if (!netnameMap.isEmpty()){
			Iterator<Entry<String, List<String>>> iterator = netnameMap.entrySet().iterator();
			while(iterator.hasNext()){
				Entry<String, List<String>> entry = iterator.next();
				List<String> list = entry.getValue();
				if (!(null == list || list.isEmpty())){
					if (1 < list.size()){
						list.add(0, "待定格");
					}
				}
			}
		}
		
		
		String[] array = new String[villagenameList.size()];  
		villagenameList.toArray(array);
		villageNames = array;
		return array;
	}
	
	public String[] getNetNames(String villagename) {
		List<String> list = netnameMap.get(villagename);
		if (null == list) return null;
		String[] array = new String[list.size()];  
		list.toArray(array);
		return array;
	}
	
	private String[] parse(JSONObject jObj, String key) throws JSONException{
		if (null == jObj || !jObj.has("event"))
			return null;

		JSONObject event = null;
		event = jObj.getJSONObject("event");

		if (null ==  event || ! event.has(key))
			return null;
		JSONArray ja = event.getJSONArray(key);
		
		if (null == ja) return null;
		
		List<String> list = new ArrayList<String>();
		
		for (int i = 0, length = ja.length(); i < length; ++i){
			list.add(ja.getJSONObject(i).getString("s_" + key));
		}
		//TODO: 所属格增加一项"待定格"
		if ("netname".equals(key))
			list.add(0, "待定格");
		String[] array = new String[list.size()];  
		list.toArray(array);
		return array;
	}
	
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
		setId(username);
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

//	public t_registerEvent getRegister() {
//		return register;
//	}

	public String[] getVillageNames() {
		return villageNames;
	}

	public void setVillageNames(String[] villageNames) {
		this.villageNames = villageNames;
	}

//	public String[] getNetNames() {
//		return netNames;
//	}
//
//	public void setNetNames(String[] netNames) {
//		this.netNames = netNames;
//	}

	public String getKind() {
		return kind;
	}

	public void setKind(String kind) {
		this.kind = kind;
	}

	public String getId() {
		if (null == id || id.length() < 2) {
			return getUsername();
		}
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public int getStart() {
		return start;
	}

	public void setStart(int start) {
		this.start = start;
	}

	public int getStep() {
		return step;
	}

	public void setStep(int step) {
		this.step = step;
	}

	public int getEnd() {
		return end;
	}

	public void setEnd(int end) {
		this.end = end;
	}

	public int getCount() {
		if (1 > count) count = 1;
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public boolean isVillageLevel() {
		if (null == register) return false;
		
		if ("全部".equals(register.getS_villagename())) return true;
		return false;
	}

	public String getEventTongJiTime() {
		return eventTongJiTime;
	}

	public void setEventTongJiTime(String eventTongJiTime) {
		this.eventTongJiTime = eventTongJiTime;
	}




}
