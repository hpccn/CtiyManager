package cn.city.manager.view;

import java.io.IOException;
import java.lang.reflect.Field;
import java.util.List;

import org.apache.http.HttpResponse;
import org.apache.http.HttpStatus;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.CookieStore;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.protocol.ClientContext;
import org.apache.http.cookie.Cookie;
import org.apache.http.impl.client.BasicCookieStore;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.protocol.BasicHttpContext;
import org.apache.http.protocol.HttpContext;

import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ZoomButtonsController;
import cn.city.manager.Constants;
import cn.city.manager.R;
import cn.city.manager.model.Page;
import cn.hpc.common.HttpStreamThread;

public class Statistics implements Page{
	private Context context;
	private View view;
//	private Button btnCategory;
	protected WebView webView;
	protected String url;
	
//	private String selectBrowseCategoryItems[] = {"常驻人口", "常驻户数", "流动人口总数", "出租屋总户数"};
//	private int selectBrowseCategory;
	public Statistics(Context context, String url){
		this.context = context;
		this.url = url;
		init(url);
	}
	
	public View getView(){
		if (null == view)
			view = View.inflate(context, R.layout.statistics_main_frame, null);
		
		webView = (WebView) view.findViewById(R.id.main_webview);
        WebSettings webSettings = webView.getSettings();       
        webSettings.setJavaScriptEnabled(true);       
        webSettings.setBuiltInZoomControls(true);
        webSettings.setSupportZoom(true);  
//        setZoomControlGone(webView);
//        webView.addJavascriptInterface(new Object() {       
//            public void clickOnAndroid() {       
//                mHandler.post(new Runnable() {       
//                    public void run() {       
//                        webView.loadUrl("javascript:wave()");       
//                    }       
//                });       
//            }       
//        }, "demo");      
        
        
        // 如果页面中链接，如果希望点击链接继续在当前browser中响应，
        // 而不是新开Android的系统browser中响应该链接，必须覆盖webview的WebViewClient对象
		webView.setWebViewClient(new WebViewClient() {
			public boolean shouldOverrideUrlLoading(WebView view, String url) {
				// 重写此方法表明点击网页里面的链接还是在当前的webview里跳转，不跳到浏览器那边
				view.loadUrl(url);
				return true;
			}
		});
        
		
//		btnCategory = (Button) view.findViewById(R.id.statistics_category);
//		btnCategory.setOnClickListener(onClickListener);
		return view;
	}
	
//	final private View.OnClickListener onClickListener = new View.OnClickListener() {
//		
//		@Override
//		public void onClick(View v) {
//			switch (v.getId()){
//			case R.id.statistics_category:
//				showSelectBrowse();
//				break;
//			default:
//			}
//			
//		}
//	};
	final String PHPSESSID = "PHPSESSID";
	final String JSESSIONID = "JSESSIONID";
	Cookie sessionCookie;
	/**
	 * HttpClient 登录代码如下
	 * @param url
	 * @throws Exception
	 */
	private void login(String url) throws Exception{
//		HttpClient 登录代码如下
	    DefaultHttpClient client = new DefaultHttpClient();
	    HttpGet get = new HttpGet(url);
	    HttpContext context = new BasicHttpContext();
	    CookieStore cookieStore = new BasicCookieStore();
	    context.setAttribute(ClientContext.COOKIE_STORE, cookieStore);
	    HttpResponse response = client.execute(get, context);
		if (response.getStatusLine().getStatusCode() == HttpStatus.SC_OK) {
			// 根据你的逻辑，判断返回的值是不是表示已经登录成功
//			if (isLoginSuccess()) {
				List<Cookie> cookies = cookieStore.getCookies();
				if (!cookies.isEmpty()) {
					for (int i = cookies.size(); i > 0; i--) {
						Cookie cookie = cookies.get(i - 1);
						if (cookie.getName().equalsIgnoreCase(PHPSESSID)) {//"jsessionid"
							// 使用一个常量来保存这个cookie，用于做session共享之用
							sessionCookie = cookie;
						}
					}
				}
//			}
		}
	}
	/**
	 * 
		android中HttpClient和WebView共享session的解决办法
		
		android开始项目中，通常会遇到既使用HttpClient，又使用WebView的情况。一个典型的例子是，使用HttpClient登录，WebView展示登录后的某些页面，这个时候，如果直接不加任何处理的话会发现在使用WebView展示的时候，会提示没有登录你的应用系统，造成这种结果的原因就是使用HttpClient登录的session和WebView访问服务器的session并不是同一个，解决办法如下。
WebView代码

	 * @param url4load
	 */
	protected void session(String url4load){
		//String url4load = "登录域名下你要访问的地址";
		CookieSyncManager.createInstance(context);
		CookieManager cookieManager = CookieManager.getInstance();
		Cookie sessionCookie = HttpStreamThread.sessionCookie;//this.sessionCookie;
		if (sessionCookie != null) {
			String cookieString = sessionCookie.getName() + "=" + sessionCookie.getValue() + "; domain=" + sessionCookie.getDomain();
			cookieManager.setCookie(url4load, cookieString);
			CookieSyncManager.getInstance().sync();
		}

	}
	private void init(String url){

		
		getView();
		initData(url);
	}
	final private Handler mHandler = new Handler(); 
	
	protected void initData(String url){
        webView.loadUrl(url);     
        session(url);
		
//        webView.loadUrl(Constants.weijian_tongji);     
//        session(Constants.weijian_tongji);
	}
	
//	private void showSelectBrowse(){
//
//		
//	    AlertDialog.Builder builder = new AlertDialog.Builder(context);
//	    builder.setIcon(R.drawable.ic_logo);
//	    builder.setTitle("请选择查看时间段");
//	    builder.setCancelable(true);
//	    
//	    builder.setSingleChoiceItems(selectBrowseCategoryItems, selectBrowseCategory, new DialogInterface.OnClickListener(){
//
//			@Override
//			public void onClick(DialogInterface dialog, int which) {
//				// TODO Auto-generated method stub
//				Toast.makeText(context, "选择 : " + selectBrowseCategoryItems[which], Toast.LENGTH_SHORT).show();
//				selectBrowseCategory = which;
//				btnCategory.setText(selectBrowseCategoryItems[which]);
//				
//				dialog.dismiss();
//	    }});
//	    
//	    AlertDialog ad = builder.create();  
//		ad.show();
//	}
	
	
	public void setZoomControlGone(View view) {  
	    Class classType;  
	    Field field;  
	    try {  
	        classType = WebView.class;  
	        field = classType.getDeclaredField("mZoomButtonsController");  
	        field.setAccessible(true);  
	        ZoomButtonsController mZoomButtonsController = new ZoomButtonsController(view);  
	        mZoomButtonsController.getZoomControls().setVisibility(View.GONE);  
	        try {  
	            field.set(view, mZoomButtonsController);  
	        } catch (IllegalArgumentException e) {  
	            e.printStackTrace();  
	        } catch (IllegalAccessException e) {  
	            e.printStackTrace();  
	        }  
	    } catch (SecurityException e) {  
	        e.printStackTrace();  
	    } catch (NoSuchFieldException e) {  
	        e.printStackTrace();  
	    }  
	}  
}
