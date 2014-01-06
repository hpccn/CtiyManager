package cn.hpc.common;

import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.mime.HttpMultipartMode;
import org.apache.http.entity.mime.MultipartEntity;
import org.apache.http.entity.mime.content.FileBody;
import org.apache.http.entity.mime.content.StringBody;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.CoreConnectionPNames;
import org.apache.http.protocol.BasicHttpContext;
import org.apache.http.protocol.HTTP;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.EntityUtils;
import org.json.JSONException;
import org.json.JSONObject;

import android.util.Log;
import android.webkit.MimeTypeMap;

public class HttpCommunicationHelper {
	// get的参数设置是有长度限制的，在用json传递大数据量时，get方式很可能超过长度。
	// post的参数没有长度限制，可以放心使用。
	// 注意超时的部分，网络不稳定或是其他情况，可是非常有必要的，

	final private int TIMEOUT_MILLISECOND = 5000;
	/**
	 * 处理httpResponse信息,返回String
	 * 
	 * @param httpEntity
	 * @return String
	 */
	protected String retrieveInputStream(HttpEntity httpEntity) {
		// Long l = httpEntity.getContentLength();
		int length = (int) httpEntity.getContentLength();
		// the number of bytes of the content, or a negative number if unknown.
		// If the content length is known but exceeds Long.MAX_VALUE, a negative
		// number is returned.
		// length==-1，下面这句报错，println needs a message
		// System.out.println("length = "+length);
		if (length < 0)
			length = 10000;
		StringBuffer stringBuffer = new StringBuffer(length);
		try {
			InputStreamReader inputStreamReader = new InputStreamReader(
					httpEntity.getContent(), HTTP.UTF_8);
			char buffer[] = new char[length];
			int count;
			while ((count = inputStreamReader.read(buffer, 0, length - 1)) > 0) {
				stringBuffer.append(buffer, 0, count);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		return stringBuffer.toString();
	}

	// 【post方式】
	// List<NameValuePair> nameValuePairs = new
	// ArrayList<NameValuePair>();//构建post给php的参数
	// nameValuePairs.add(new BasicNameValuePair("key","value"));
	// 通过post获得数据
	public String postHttpData(String url, List<NameValuePair> nameValuePairs) {
		String resultStr = null;
		HttpClient httpclient = new DefaultHttpClient();
		// 超时请求
		httpclient.getParams().setParameter(CoreConnectionPNames.CONNECTION_TIMEOUT, TIMEOUT_MILLISECOND);
		// 读取超时
		httpclient.getParams().setParameter(CoreConnectionPNames.SO_TIMEOUT, TIMEOUT_MILLISECOND);

		HttpPost httppost = new HttpPost(url);
		try {
			httppost.setEntity(new UrlEncodedFormEntity(nameValuePairs));
			HttpResponse response;
			response = httpclient.execute(httppost);
			resultStr = retrieveInputStream(response.getEntity());
		} catch (UnsupportedEncodingException e) {
			Log.d(url, "UnsupportedEncodingException");
			e.printStackTrace();
		} catch (ClientProtocolException e) {
			Log.d(url, "ClientProtocolException");
			e.printStackTrace();
		} catch (IOException e) {
			Log.d(url, "IOException");
			e.printStackTrace();
		}
		return resultStr;
	}

	// 【get方式】
	protected String getRequest(String url, DefaultHttpClient client1)
			throws Exception {
		DefaultHttpClient client = new DefaultHttpClient(new BasicHttpParams());
		// 超时请求
		client.getParams().setParameter(CoreConnectionPNames.CONNECTION_TIMEOUT, TIMEOUT_MILLISECOND);
		// 读取超时
		client.getParams().setParameter(CoreConnectionPNames.SO_TIMEOUT, TIMEOUT_MILLISECOND);

		String result = null;
		int statusCode = 0;
		HttpGet getMethod = new HttpGet(url);

		try {
			// 读取超时
			client.getParams().setParameter(CoreConnectionPNames.SO_TIMEOUT, 5000);

			HttpResponse httpResponse = client.execute(getMethod);
			// statusCode == 200 正常
			statusCode = httpResponse.getStatusLine().getStatusCode();

			// 处理返回的httpResponse信息
			result = retrieveInputStream(httpResponse.getEntity());
		} catch (Exception e) {

		} finally {
			getMethod.abort();
		}
		return result;
	}
	
	
	
	//主要是记录用户会话过程中的一些用户的基本信息
	private Map<String, String> session =new HashMap<String, String>();
	/**
	 * 主要是发送用户名和密码到php服务器端验证
	Bundle map = new Bundle();
	map.putSerializable("sessionid", session);
	intent.putExtra("session", map);
	context.startActivity(intent); // 跳转到成功页面
	 * @param username
	 * @param pass
	 * @return
	 */
	private boolean checkUser(String username, String pass) {

		DefaultHttpClient mHttpClient = new DefaultHttpClient();
		HttpPost mPost = new HttpPost("http://10.0.2.2/web/php/login.php");
		// 传递用户名和密码相当于
		// http://10.0.2.2/web/php/login.php?username=''&password=''
		List<BasicNameValuePair> pairs = new ArrayList<BasicNameValuePair>();
		pairs.add(new BasicNameValuePair("username", username));
		pairs.add(new BasicNameValuePair("password", pass));
		try {
			mPost.setEntity(new UrlEncodedFormEntity(pairs, HTTP.UTF_8));
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			HttpResponse response = mHttpClient.execute(mPost);
			int res = response.getStatusLine().getStatusCode();
			if (res == 200) {
				HttpEntity entity = response.getEntity();
				if (entity != null) {
					String info = EntityUtils.toString(entity);
					System.out.println("info-----------" + info);
					// 以下主要是对服务器端返回的数据进行解析
					JSONObject jsonObject = null;
					// flag为登录成功与否的标记,从服务器端返回的数据
					String flag = "";
					String name = "";
					String userid = "";
					String sessionid = "";
					try {
						jsonObject = new JSONObject(info);
						flag = jsonObject.getString("flag");
						name = jsonObject.getString("name");
						userid = jsonObject.getString("userid");
						sessionid = jsonObject.getString("sessionid");
					} catch (JSONException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					// 根据服务器端返回的标记,判断服务端端验证是否成功
					if (flag.equals("success")) {
						// 为session传递相应的值,用于在session过程中记录相关用户信息
						session.put("s_userid", userid);
						session.put("s_username", name);
						session.put("s_sessionid", sessionid);
						return true;
					} else {
						return false;
					}
				} else {
					return false;
				}
			}
		} catch (ClientProtocolException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	
	
	
	/**
	 * 主要获取php的session唯一的标识id以及用户的一些基本信息，session id则作为本次用户登录状态在服务器的唯一标识，即确定用户的唯一状态进行相关操作
	 * @return
	 */
	private boolean getUserInfo() {
		String sess_username = session.get("s_username");
		String sess_userid = session.get("s_userid");
		String sess_id = session.get("s_sessionid");
		DefaultHttpClient mHttpClient = new DefaultHttpClient();
		HttpPost mPost = new HttpPost("http://10.0.2.2/web/php/getinfo.php");
		List<BasicNameValuePair> pairs = new ArrayList<BasicNameValuePair>();
		pairs.add(new BasicNameValuePair("sess_userid", sess_userid));
		pairs.add(new BasicNameValuePair("sess_username", sess_username));
		pairs.add(new BasicNameValuePair("sess_sessionid", sess_id));
		try {
			mPost.setEntity(new UrlEncodedFormEntity(pairs, HTTP.UTF_8));
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			HttpResponse response = mHttpClient.execute(mPost);
			int res = response.getStatusLine().getStatusCode();
			if (res == 200) {
				HttpEntity entity = response.getEntity();
				if (entity != null) {
					String info = EntityUtils.toString(entity);
					System.out.println("info-----------" + info);
					// 以下主要是对服务器端返回的数据进行解析
					JSONObject jsonObject = null;
					// flag为登录成功与否的标记,从服务器端返回的数据
					String flag = "";
					String userinfo = "";
					String level = "";
					String sessionid = "";
					try {
						jsonObject = new JSONObject(info);
						flag = jsonObject.getString("flag");
						userinfo = jsonObject.getString("info");
						level = jsonObject.getString("level");
						sessionid = jsonObject.getString("sessionid");
					} catch (JSONException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					// 根据服务器端返回的标记,判断服务端端验证是否成功
					if (flag.equals("notempty")) {
						// 为session传递相应的值,用于在session过程中记录相关用户信息
						session.put("info_userinfo", userinfo);
						session.put("info_level", level);
						session.put("info_sessionid", sessionid);
						return true;
					} else {
						return false;
					}
				} else {
					return false;
				}
			}
		} catch (ClientProtocolException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	
	public void httpPostStringData(final String url, final List<NameValuePair> pairs) {
		Thread th = new Thread() {

			@Override
			public void run() {
				// TODO Auto-generated method stub
				super.run();
				// "message = {\"success\": true}";
				postStringData(url, pairs);
			}

		};
		th.start();

	}

	private int postStringData(String url, final List<NameValuePair> pairs) {
		if (null == pairs) return 400;

		int status = 0;
		HttpClient client = new DefaultHttpClient();

		HttpContext localContext = new BasicHttpContext();
		HttpPost post = new HttpPost(url);

		

		try {

			UrlEncodedFormEntity entity = new UrlEncodedFormEntity(pairs, HTTP.UTF_8);
			post.setEntity(entity);

			HttpResponse response = client.execute(post, localContext);
			status = response.getStatusLine().getStatusCode();

			Header[] headers = response.getAllHeaders();
			for (Header header : headers) {
				Log.d(header.getName(), header.getValue());
			}

			if (200 == response.getStatusLine().getStatusCode()) {
				Log.d("response ok ", "ok" + status);
			} else {
				Log.d("response error ", "error" + status);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}
	
	
	public void httpPostStringData(final String url, final List<NameValuePair> headerPairs, final List<NameValuePair> bodyPairs, final List<String> files) {
		Thread th = new Thread() {

			@Override
			public void run() {
				// TODO Auto-generated method stub
				super.run();
				// "message = {\"success\": true}";
				postStringData(url, headerPairs, bodyPairs, files);
			}

		};
		th.start();

	}

	private int postStringData(String url, final List<NameValuePair> headerPairs, final List<NameValuePair> bodyPairs, final List<String> files) {
		if (null == headerPairs && null == bodyPairs && null == files) return 400;

		int status = 0;
		HttpClient client = new DefaultHttpClient();

		HttpContext localContext = new BasicHttpContext();
		HttpPost post = new HttpPost(url);

		
		for (NameValuePair header : headerPairs){
			post.addHeader(header.getName(), header.getValue());
		}
		
		MultipartEntity entity = new MultipartEntity(
				HttpMultipartMode.BROWSER_COMPATIBLE);
		

		try {

			if (null != bodyPairs){
				for (NameValuePair body : bodyPairs){
					entity.addPart(body.getName(), new StringBody(body.getValue(), Charset.forName("utf-8")));
				}
			}
			if (null != files){
				for (String file : files){
					File f = new File(file);
					if (null != f && f.isFile() && f.canRead()) {
						MimeTypeMap mimeTypeMap = MimeTypeMap.getSingleton();
						String mimeType = mimeTypeMap.getMimeTypeFromExtension(MimeTypeMap
								.getFileExtensionFromUrl(f.getName()));
						FileBody fileBody = new FileBody(f, f.getName(), mimeType, null);
						entity.addPart(f.getName(), fileBody);
					}
				}
			}



			post.setEntity(entity);

			HttpResponse response = client.execute(post, localContext);
			status = response.getStatusLine().getStatusCode();

			Header[] headers = response.getAllHeaders();
			for (Header header : headers) {
				Log.d(header.getName(), header.getValue());
			}

			if (200 == response.getStatusLine().getStatusCode()) {
				Log.d("response ok ", "ok" + status);
			} else {
				Log.d("response error ", "error" + status);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}
	
}
