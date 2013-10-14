package cn.city.manage.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.http.HttpResponse;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import cn.city.manage.model.food.FoodEvent;

import android.util.Log;

public class EventSingletonFactory {
	private final static String TAG = EventSingletonFactory.class
			.getSimpleName();

	private static class SingletonInstance {
		private static final EventSingletonFactory instance = new EventSingletonFactory();
	}

	public static EventSingletonFactory getInstance() {
		return SingletonInstance.instance;
	}

	private EventSingletonFactory() {
		init();
	}

	public List<BaseContent> events;

	Map<String, Class<?>> strategy;// = new HashMap <String, Class<?> >();

	private void init() {
		if (null == strategy) {
			strategy = new HashMap<String, Class<?>>();
		} else {
			strategy.clear();
		}

		strategy.put(FoodEvent.category, FoodEvent.class);
		// strategy.put(RoutineHelper.GENERAL_MANAGER_POLICY,
		// EbenManager.class);
		//

		// strategy.put(RoutineHelper., .class);
		// strategy.put(RoutineHelper., .class);
		// strategy.put(RoutineHelper., .class);
		// strategy.put(RoutineHelper., .class);
		// strategy.put(RoutineHelper., .class);
		// strategy.put(RoutineHelper., .class);
		// strategy.put(RoutineHelper., .class);
		// strategy.put(RoutineHelper., .class);
		// strategy.put(RoutineHelper., .class);
		// strategy.put(RoutineHelper., .class);
		// strategy.put(RoutineHelper., .class);
		// strategy.put(RoutineHelper., .class);
		// strategy.put(RoutineHelper., .class);

	}

	public Policy getPolicy(String code) throws InstantiationException,
			IllegalAccessException, ClassNotFoundException {

		String policyCode = code;
		if (null == code)
			return null;
		if (code.startsWith(RoutineHelper.GENERAL_CUSTOM_POLICY)) {
			policyCode = RoutineHelper.GENERAL_CUSTOM_POLICY;
		} else if (code.startsWith(RoutineHelper.GENERAL_MANAGER_POLICY)) {
			policyCode = RoutineHelper.GENERAL_MANAGER_POLICY;
		}

		Policy policy = null;
		Class<?> userClass;
		userClass = strategy.get(policyCode);
		// userClass = Class.forName("cls");
		if (null != userClass) {
			Object obj = userClass.newInstance();
			if (obj instanceof Policy) {
				policy = (Policy) obj;
			}
		}
		return policy;
	}

	public void report(int id, boolean isOk) {
		cn.hpc.common.HttpPostMsg postMsg = new cn.hpc.common.HttpPostMsg();
		String report_url = "http://" + id;
		Map<String, String> msgMap = new HashMap<String, String>();
		if (isOk) {
			msgMap.put("message", "{\"success\": true}");
		} else {
			msgMap.put("message", "{\"success\": false}");
		}
		Log.d("report", report_url + ", msg: " + msgMap.get("message"));
		postMsg.report(report_url, msgMap);
	}

	public int sendPolicyStatus(String uriPath, String paramsValue) {
		HttpResponse response = null;
		try {
			HttpPost httpPost = new HttpPost(uriPath);
			List<BasicNameValuePair> qparams = new ArrayList<BasicNameValuePair>();
			qparams.add(new BasicNameValuePair("params", paramsValue));
			UrlEncodedFormEntity params = new UrlEncodedFormEntity(qparams,
					"UTF-8");
			httpPost.setEntity(params);
			BasicHttpParams httpParameters = new BasicHttpParams();
			HttpConnectionParams.setConnectionTimeout(httpParameters,
					RoutineHelper.CONNECTION_TIMEOUT);
			HttpConnectionParams.setSoTimeout(httpParameters,
					RoutineHelper.SOCKET_TIMEOUT);
			DefaultHttpClient client = new DefaultHttpClient(httpParameters);
			response = client.execute(httpPost);
			httpPost.abort();
			return response.getStatusLine().getStatusCode();
		} catch (Exception ex) {
			Log.e(TAG, ex.getMessage() + ", cause by: ");
			ex.printStackTrace();
		}
		return 0;
	}

	public List<BaseContent> create(JSONObject jObj) {
		List<BaseContent> list = null;
		try {
			list = parse(jObj);
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	public List<BaseContent> parse(JSONObject jObj) throws JSONException {
		if (null == jObj)
			return null;
		if (!jObj.has("transport"))
			return null;

		JSONObject jTransport = null;
		jTransport = jObj.getJSONObject("transport");

		if (null == jTransport || !jTransport.has("kind"))
			return null;

		String kind = jTransport.getString("kind");
		Class<?> clz = strategy.get(kind);
		if (null == clz)
			return null;

		BaseContent event = null;
		try {
			event = (BaseContent) clz.newInstance();
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
		
		List<BaseContent> events = new ArrayList<BaseContent>();

		for (int i = 0, count = jContent.length(); i < count; ++i) {
			event = null;
			try {
				event = (BaseContent) clz.newInstance();
			} catch (InstantiationException e) {
				e.printStackTrace();
			} catch (IllegalAccessException e) {
				e.printStackTrace();
			}
			BaseContent ev = event.fromJSONObject(jContent.getJSONObject(i));
			if (null != ev) {
				events.add(ev);
			}
		}
		return events;
	}

}
