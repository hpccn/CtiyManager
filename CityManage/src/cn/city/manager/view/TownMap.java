package cn.city.manager.view;

import android.content.Context;
import cn.city.manager.Constants;

public class TownMap extends Statistics{

	public TownMap(Context context) {
		super(context);
		// TODO Auto-generated constructor stub
	}

	protected void initData(){
		 webView.loadUrl(Constants.weijian_zhenyutu); 
		 session(Constants.weijian_zhenyutu);
	}

}
