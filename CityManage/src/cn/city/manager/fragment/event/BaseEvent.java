package cn.city.manager.fragment.event;

import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.Map;

import org.json.JSONObject;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

import android.graphics.drawable.Drawable;

public  abstract class BaseEvent {
	public boolean isMe(String category){
		return this.getClass().getSimpleName().equals(category);
	}
	
	public String getCategory(){
		String suffixes = "Event";
		String category = this.getClass().getSimpleName();
		if (category.endsWith(suffixes)){
			category = category.substring(0, category.length() - suffixes.length());
		}
		return category;
	}
	
	
	public String toJSONObject()
	{
		Gson gson = new Gson(); 
		String json = gson.toJson(this);  
		return json;
	}
	public abstract BaseEvent fromJSONObject(JSONObject jObj)throws Exception;
	public abstract String getContent();
	public abstract String getVillage();
	public abstract String getCell();

	public abstract Drawable getIcon(); 
	
	public abstract long getTime();
	public abstract void setTime(long time);
	public abstract void setAddress(String address);
	public abstract void setL_latitude(double latitude);
	public abstract void setD_longitude(double longitude);

	public abstract String getS_photo();
	public abstract void setS_photo(String photo);
	public abstract String getS_video();
	public abstract void setS_video(String video);
	
	public BaseEvent(){
//		init();
	}

//	final private Map <String, Method> methodMap = new HashMap<String, Method>();
//	protected void init(){
//		Class<?> userClass = this.getClass();//Class.forName(this.getClass());// 加载类
//		Method[] methods = userClass.getDeclaredMethods();// 获得类的方法集合
//		for (int i = 0; i < methods.length; i++){
//			if (methods[i].getName().startsWith("set")) {
//				methodMap.put(methods[i].getName().toLowerCase(), methods[i]);
////				Object object = methods[i].invoke(o);
////				System.out.println(" " + methods[i].getName() + "() : " + object);
//			}
//		}
//
//	}
//	protected void setProperty(String property, Object v){
//		Method method = methodMap.get(property.toLowerCase());
////		Log.d("", "try set " + property + " : " + v);
//		try {
////			this.getClass().getDeclaredField(property).set(property, v);
//			method.invoke(this, v);
//			
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//	}

}
