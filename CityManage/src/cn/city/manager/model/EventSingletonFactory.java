package cn.city.manager.model;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import android.content.Context;
import android.net.Uri;
import android.os.Looper;

import cn.city.manager.Constants;
import cn.city.manager.activity.SummaryActivity;
import cn.city.manager.fragment.event.BaseEvent;
import cn.city.manager.view.ViewSingletonFactory;
import cn.hpc.common.HttpStreamThread;
import cn.hpc.common.cache.ImageCacheFactory;

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

	
	final private Map <String, List<BaseEvent>> eventMap = new HashMap<String, List<BaseEvent>>();
	public interface OnLoadListener {
		public void onLoaded(String url, List<BaseEvent> events);
		public void onError(String url);

	}
	
	final public void reloadEvents(final Context context, final String url, final OnLoadListener listener){
		ViewSingletonFactory.getInstance().showProcessDialog(context, null, "正在下载数据,请稍候...");
		HttpStreamThread hst = new EventHttpStreamThread(context, url, new EventHttpStreamThread.OnStringLoadListener(){

			@Override
			public void onStringLoaded(String uri, String string) {
				

				JSONObject jObj;
				try {
					jObj = new JSONObject(string);
					List<BaseEvent> events = create(jObj);
					
					updateMedia(events);
//					cachePhoto(context, events);
					eventMap.put(url, events);
					if (null != listener) {
						listener.onLoaded(url, events);
					}
				} catch (JSONException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}

			@Override
			public void onMoved(String url) {
//				// TODO Auto-generated method stub
//				HttpStreamThread hst = new EventHttpStreamThread(context, url, onStringLoadListener);
//				hst.start();
				listener.onError(url);
				ViewSingletonFactory.getInstance().hideProcessDialog();
			}

			@Override
			public void onResponse(int code) {
				// TODO Auto-generated method stub
				ViewSingletonFactory.getInstance().hideProcessDialog();
			}
			
		});
		
		hst.start();
	}
	
	
	
	
	final public void loadEvents(final Context context, final String url, final OnLoadListener listener){
		List<BaseEvent> events = eventMap.get(url);
		if (null == events){
			reloadEvents(context, url, listener);
		} else {
			listener.onLoaded(url, events);
		}
	}
	
	final public void invalidateEvents(final Context context, final String url, final OnLoadListener listener){
		reloadEvents(context, url, listener);

	}
	private ImageCacheFactory imc;
	public void cachePhoto(final Context context, List<BaseEvent> events){
		if (null  == imc)
			imc  = ImageCacheFactory.getInstance(context);
		
		
		for (BaseEvent ev : events){
			String photo = ev.getS_photo();
			if (photo != null && photo.length() > 2 && photo.startsWith("http")){
				try {
					imc.loadImage(0, Uri.parse(photo), -1, -1);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}

		}
		
	}
	
	/**
	 * 补丁,修正服务器不能生成 图片,视频完整url
	 * 
	 * @param events
	 */
	private void updateMedia( List <BaseEvent> events){
		if (null == events || events.isEmpty()) return;
		
		for (BaseEvent ev : events){
			String photo = ev.getS_photo();
			if (photo!= null && photo.length() > 2 && !photo.startsWith("http")){
				ev.setS_photo(Constants.obtainImageUrl(photo));
				ev.setIcon(Constants.obtainIconImageUrl(photo));
			}
			
			String video = ev.getS_video();
			if (video != null && video.length() > 2 && !video.startsWith("http")){
				ev.setS_video(Constants.obtainVideoUrl(video));
			}
		}
	}
	
}
