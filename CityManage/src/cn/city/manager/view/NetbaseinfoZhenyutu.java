package cn.city.manager.view;

import cn.city.manager.R;
import android.content.Context;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;

public class NetbaseinfoZhenyutu extends Statistics {

	public NetbaseinfoZhenyutu(Context context, String url) {
		super(context, url);
		// TODO Auto-generated constructor stub
	}
	public View getView(int scaleInPercent){
		if (null == view)
			view = View.inflate(context, R.layout.statistics_main_frame, null);
		
		webView = (WebView) view.findViewById(R.id.main_webview);
		
		webView.setInitialScale(scaleInPercent);
        WebSettings webSettings = webView.getSettings();       
        webSettings.setJavaScriptEnabled(true);       
        webSettings.setDefaultZoom(WebSettings.ZoomDensity.CLOSE);
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
		loadUrl(url);
		return view;
	}
}
