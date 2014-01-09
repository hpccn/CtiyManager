package cn.city.manager.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.JSONArray;
import org.json.JSONObject;

import cn.city.manager.fragment.event.BaseEvent;

public class EventSingletonFactory {
//	private final static String TAG = EventSingletonFactory.class
//			.getSimpleName();

	private static class SingletonInstance {
		private static final EventSingletonFactory instance = new EventSingletonFactory();
	}

	public static EventSingletonFactory getInstance() {
		return SingletonInstance.instance;
	}

	private EventSingletonFactory() {
		init();
	}

	public List<BaseEvent> events;

	private Map<String, String> eventClzMap = new HashMap<String, String>();
	
	private void init(){
		eventClzMap.put("s_netid", "t_netbaseinfo");
		eventClzMap.put("s_villageid", "t_netbaseinfo");
	}
	

	private Class<?> createClzFromKind(String kind){
		
		if (null == kind || kind.length() < 1) return null;

		
		String clsName = eventClzMap.get(kind);
		if (null == clsName) {
			clsName = kind;
		}
		
		String pkg = BaseEvent.class.getPackage().getName();
		Class<?> clz = null;
		try {
			clz = Class.forName(pkg + "." + clsName + "Event");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return clz;
		
	}
	public List<BaseEvent> create(JSONObject jObj) {
		List<BaseEvent> list = null;
		try {
			list = parse(jObj);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	public List<BaseEvent> parse(JSONObject jObj) throws Exception {
		if (null == jObj || !jObj.has("event"))
			return null;

		JSONObject jTransport = null;
		jTransport = jObj.getJSONObject("event");

		if (null == jTransport || !jTransport.has("kind"))
			return null;

		String kind = jTransport.getString("kind");
//		if ("s_netid".equals(kind) || "s_villageid".equals(kind)) {
//			kind = "t_netbaseinfo";
//		} 
//		String pkg = BaseEvent.class.getPackage().getName();
//		Class<?> clz = Class.forName(pkg + "." + kind + "Event");
		Class<?> clz = createClzFromKind(kind);
//		Class<?> clz = strategy.get(kind);
		if (null == clz)
			return null;

		BaseEvent event = null;
		try {
			event = (BaseEvent) clz.newInstance();
		} catch (InstantiationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (null == event)
			return null;

		if (null == jTransport || !jTransport.has("content"))
			return null;
		
		JSONArray jContent = jTransport.getJSONArray("content");
		
		if (null == jContent)
			return null;
		
		List<BaseEvent> events = new ArrayList<BaseEvent>();

		for (int i = 0, count = jContent.length(); i < count; ++i) {
			event = null;
			try {
				event = (BaseEvent) clz.newInstance();
			} catch (InstantiationException e) {
				e.printStackTrace();
			} catch (IllegalAccessException e) {
				e.printStackTrace();
			}
			BaseEvent ev = event.fromJSONObject(jContent.getJSONObject(i));
			if (null != ev) {
				events.add(ev);
			}
		}
		return events;
	}

}
