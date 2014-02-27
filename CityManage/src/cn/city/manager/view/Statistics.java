package cn.city.manager.view;

import java.lang.reflect.Field;
import java.util.List;

import org.apache.http.HttpResponse;
import org.apache.http.HttpStatus;
import org.apache.http.client.CookieStore;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.protocol.ClientContext;
import org.apache.http.cookie.Cookie;
import org.apache.http.impl.client.BasicCookieStore;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.protocol.BasicHttpContext;
import org.apache.http.protocol.HttpContext;

import android.content.Context;
import android.view.View;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ZoomButtonsController;
import cn.city.manager.Configuration;
import cn.city.manager.Constants;
import cn.city.manager.R;
import cn.city.manager.fragment.GeneralInformationFragment;
import cn.city.manager.model.Page;
import cn.hpc.common.HttpStreamThread;

public class Statistics implements Page{
	protected Context context;
	protected View view;
//	private Button btnCategory;
	protected WebView webView;
	protected String url;
	
//	private String selectBrowseCategoryItems[] = {"常驻人口", "常驻户数", "流动人口总数", "出租屋总户数"};
//	private int selectBrowseCategory;
	protected int scaleInPercent;
	
	public Statistics(Context context, String url){
		this.context = context;
		this.url = url;
//		init(url);
	}
	
	protected String []selectItems;
	protected String selectUrl;
	protected String kind;
	public void setSelect(String []selectItems, String selectUrl, String kind){
		this.selectItems = selectItems;
		this.selectUrl = selectUrl;
		this.kind = kind;
	}
	
	private final String btnSuffixTxt = "各村事件合计";
	
	protected Button selectButton;
	
	public View getView(int scaleInPercent){
		if (null == view)
			view = View.inflate(context, R.layout.statistics_main_frame, null);
		
		if (null != selectItems){
			selectButton = (Button) view.findViewById(R.id.statistics_category);
			selectButton.setVisibility(View.VISIBLE);
			if (selectItems.length > 0){
				selectButton.setText(selectItems[0]);
			}
			if (selectItems.length < 2){
				selectButton.setCompoundDrawables(null, null, null, null);
			}
			if (selectItems.length > 1 && null != selectUrl) {
				selectButton.setOnClickListener(new View.OnClickListener() {
					
					@Override
					public void onClick(View v) {
						GeneralInformationFragment general = new GeneralInformationFragment();
	//					String []status = {"未解决","已解决"};
						general.setSingleChoiceItems(context, R.id.et_solvestatus, selectItems, 0, new GeneralInformationFragment.OnChangedListener() {
							@Override
							public void onChanged(int id, int which, String value) {
								// TODO Auto-generated method stub
	//							((EditText)view.findViewById(id)).setText(value);
	//							 Constants.obtainNetbaseinfoZhenyuUrl(value);
								if ("t_netbaseinfo".equalsIgnoreCase(kind)){
									url = String.format(selectUrl, kind, Configuration.getInstance().getUsername(), value);
									selectButton.setText(value);
								} else {
									Configuration.getInstance().setEventTongJiTime(value);
									String time = Constants.eventTongjiMap.get(value);
									if (null == time) time = Constants.event_tongji_time[0];
									url = String.format(selectUrl, kind, Configuration.getInstance().getUsername(), time);
									selectButton.setText(value + btnSuffixTxt);
								}
								loadUrl(url);
//								selectButton.setText(value);
							}
						});
	
					}
				});
			}
		}
		
		webView = (WebView) view.findViewById(R.id.main_webview);
		
		webView.setInitialScale(scaleInPercent);
        WebSettings webSettings = webView.getSettings();       
        webSettings.setJavaScriptEnabled(true);       
        webSettings.setDefaultZoom(WebSettings.ZoomDensity.FAR);
        webSettings.setUseWideViewPort(false);
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

			@Override
			public void onPageFinished(WebView view, String url) {
				
				super.onPageFinished(view, url);
				ViewSingletonFactory.getInstance().hideProcessDialog();
			}
		});
        
		
//		btnCategory = (Button) view.findViewById(R.id.statistics_category);
//		btnCategory.setOnClickListener(onClickListener);
		
		
		if ("t_netbaseinfo".equalsIgnoreCase(kind)){
			
			url = String.format(selectUrl, kind, Configuration.getInstance().getUsername(), selectItems[0]);
		} else {
			
			String value = Configuration.getInstance().getEventTongJiTime();
			if (null == value) value = Constants.event_tongji_time_title[0];
			String time = Constants.eventTongjiMap.get(value);
			
			selectButton.setText(value + btnSuffixTxt);
			if (null == time) time = Constants.event_tongji_time[0];
			url = String.format(selectUrl, kind, Configuration.getInstance().getUsername(), time);
		}
		loadUrl(url);
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
//		Cookie sessionCookie = HttpStreamThread.sessionCookie;//this.sessionCookie;
//		if (sessionCookie != null) {
//			String cookieString = sessionCookie.getName() + "=" + sessionCookie.getValue() + "; domain=" + sessionCookie.getDomain();
//			cookieManager.setCookie(url4load, cookieString);
//			CookieSyncManager.getInstance().sync();
//		}

		CookieStore cookieStore = HttpStreamThread.cookieStore;
		if (null != cookieStore){
			List<Cookie> cookies = cookieStore.getCookies();
			StringBuilder sb = new StringBuilder();
			if (null  != cookies){
				for (int i = 0; i < cookies.size(); i++) {
                //这里是读取Cookie['PHPSESSID']的值存在静态变量中，保证每次都是同一个值
//                if (cookie_key.equals(cookies.get(i).getName())) {
//                	cookie_value = cookies.get(i).getValue();
//                	sessionCookie = cookies.get(i);
//                }
                sb.append(cookies.get(i).getName() + "=" + cookies.get(i).getValue() + "; domain=" + cookies.get(i).getDomain() + " ");
				}
			}
			
			cookieManager.setCookie(url4load, sb.toString());
			CookieSyncManager.getInstance().sync();

		}
		
	}
	private void init(String url){

		
//		getView(100);
		loadUrl(url);
	}
//	final private Handler mHandler = new Handler(); 
	
	protected void loadUrl(String url){
        session(url);

        webView.loadUrl(url);     
		
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
