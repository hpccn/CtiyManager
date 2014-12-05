package cn.city.manager;


import java.io.File;

import com.baidu.mapapi.BMapManager;
import com.baidu.mapapi.MKGeneralListener;
import com.baidu.mapapi.map.MKEvent;

import android.app.Application;
import android.content.Context;
import android.os.Environment;
import android.widget.Toast;

public class MainApplication  extends Application {

    private static MainApplication mInstance = null;
    public boolean m_bKeyRight = true;
    public BMapManager mBMapManager = null;

    public static final String BAIDU_AK = "IZDtEYVhOW7GC6hjWxO8Yd8r";// baidukey 
  
    public static final String dataPath = Environment.getExternalStorageDirectory() + File.separator + "Download";
	@Override
    public void onCreate() {
	    super.onCreate();
		mInstance = this;
		initEngineManager(this);
		File cacheFile = new File(dataPath);
		cacheFile.mkdirs();
	}
	
	public void initEngineManager(Context context) {
        if (mBMapManager == null) {
            mBMapManager = new BMapManager(context);
        }

        if (!mBMapManager.init(BAIDU_AK,new MyGeneralListener())) {
            Toast.makeText(MainApplication.getInstance().getApplicationContext(), 
                    "BMapManager  初始化错误!", Toast.LENGTH_LONG).show();
        }
	}
	
	public static MainApplication getInstance() {
		return mInstance;
	}
	
	
	// 常用事件监听，用来处理通常的网络错误，授权验证错误等
    public static class MyGeneralListener implements MKGeneralListener {
        
        @Override
        public void onGetNetworkState(int iError) {
            if (iError == MKEvent.ERROR_NETWORK_CONNECT) {
                Toast.makeText(MainApplication.getInstance().getApplicationContext(), "您的网络出错啦！",
                    Toast.LENGTH_LONG).show();
            }
            else if (iError == MKEvent.ERROR_NETWORK_DATA) {
                Toast.makeText(MainApplication.getInstance().getApplicationContext(), "输入正确的检索条件！",
                        Toast.LENGTH_LONG).show();
            }
            // ...
        }

        @Override
        public void onGetPermissionState(int iError) {
        	//非零值表示key验证未通过
            if (iError != 0) {
                //授权Key错误：
//                Toast.makeText(MainApplication.getInstance().getApplicationContext(), 
//                        "请在 MainApplication.java文件输入正确的授权Key,并检查您的网络连接是否正常！error: "+iError, Toast.LENGTH_LONG).show();
                MainApplication.getInstance().m_bKeyRight = false;
            }
            else{
            	MainApplication.getInstance().m_bKeyRight = true;
//            	Toast.makeText(MainApplication.getInstance().getApplicationContext(), 
//                        "key认证成功", Toast.LENGTH_LONG).show();
            }
        }
    }


}
