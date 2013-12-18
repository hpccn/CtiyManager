package cn.city.manager.model;

import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

import org.json.JSONObject;

import android.graphics.drawable.Drawable;
import android.util.Log;

public  abstract class BaseContent {
	public abstract  boolean isMe(String category);
	public abstract  String getCategory();
	public abstract JSONObject toJSONObject();
	public abstract BaseContent fromJSONObject(JSONObject jObj)throws Exception;
	public abstract String getContent();
	public abstract String getVillage();
	public abstract String getCell();

	public abstract Drawable getIcon(); 
	
	public abstract long getTime();
	public abstract void setTime(long time);
	public abstract void setAddress(String address);
	public abstract void setLatitude(double latitude);
	public abstract void setLongitude(double longitude);
	
	
	public BaseContent(){
		init();
	}

	final private Map <String, Method> methodMap = new HashMap<String, Method>();
	protected void init(){
		Class<?> userClass = this.getClass();//Class.forName(this.getClass());// 加载类
		Method[] methods = userClass.getDeclaredMethods();// 获得类的方法集合
		for (int i = 0; i < methods.length; i++){
			if (methods[i].getName().startsWith("set")) {
				methodMap.put(methods[i].getName().toLowerCase(), methods[i]);
//				Object object = methods[i].invoke(o);
//				System.out.println(" " + methods[i].getName() + "() : " + object);
			}
		}

	}
	protected void setProperty(String property, Object v){
		Method method = methodMap.get(property.toLowerCase());
//		Log.d("", "try set " + property + " : " + v);
		try {
//			this.getClass().getDeclaredField(property).set(property, v);
			method.invoke(this, v);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
