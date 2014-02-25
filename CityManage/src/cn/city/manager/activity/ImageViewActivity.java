package cn.city.manager.activity;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Toast;
import cn.city.manager.R;
import cn.city.manager.view.ViewSingletonFactory;
import cn.hpc.common.DrawableUtils;
import cn.hpc.common.cache.ImageCacheFactory;
import cn.hpc.common.view.PinchableImageView;

import com.umeng.analytics.MobclickAgent;

public class ImageViewActivity extends Activity {
	public static final String TAG = "ImageViewActivity";

	private Uri uri;
	private ImageView imageView;
	
	private Drawable drawable;
	private LinearLayout mainLayout;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		mainLayout = (LinearLayout) View.inflate(this, R.layout.activity_imageview_main, null);
		setContentView(mainLayout);
//		setContentView(R.layout.activity_imageview_main);
		com.umeng.common.Log.LOG = true;
//		MobclickAgent.setDebugMode(true);
		MobclickAgent.onError(this);
		this.
		imageView = (ImageView) this.findViewById(R.id.id_imgageview);
		ViewSingletonFactory.getInstance().showProcessDialog(this, null, "正在下载图片,请稍候...\n 较长时间无反应,请按返回键退出");
		uri = this.getIntent().getData();
		Log.d("", "photo : " + uri);
		imc  = ImageCacheFactory.getInstance();
		handler.sendEmptyMessageDelayed(101, 200);

	}
	@Override
	protected void onResume() {
		super.onResume();
		MobclickAgent.onResume(this);
	}

	@Override
	protected void onPause() {
		super.onPause();
		MobclickAgent.onPause(this);
	}
	private void loadImage(){
		new Thread(){

			@Override
			public void run() {
				// TODO Auto-generated method stub
				super.run();
				
				int w = imageView.getWidth();
				int h = imageView.getHeight();
				
				try {
					Log.d("", "photo : " + w + ", " + h);
					drawable = imc.getImage(uri, w, h);
					handler.sendEmptyMessage(100);
//					imageView.setImageDrawable(imc.getImage(uri, w, h));
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					handler.sendEmptyMessage(102);
				}
			}
			
		}.start();
	}

	Handler handler = new Handler(){
		public void handleMessage(Message msg) {
			switch (msg.what) {
			case 100:
				showImage();
				break;
			case 101:
				
				loadImage();
			break;
			case 102:
				ViewSingletonFactory.getInstance().hideProcessDialog();
//				ViewSingletonFactory.getInstance().showProcessDialog(ImageViewActivity.this, null, "图片错误...\n 按返回键退出");
				Toast.makeText(ImageViewActivity.this,  "图片错误...\n 按返回键退出", Toast.LENGTH_LONG).show();
			break;
			default:	
			}
		}
	};

	PinchableImageView piv;
	private ImageCacheFactory imc;
	private void showImage(){
		ViewSingletonFactory.getInstance().hideProcessDialog();
		imageView.setImageDrawable(drawable);
		int w = imageView.getWidth();
		int h = imageView.getHeight();
//		try {
//			imageView.setImageDrawable(imc.getImage(uri, w, h));
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		Bitmap bmp = DrawableUtils.decodeBitmapWithSize(imgPath, 100, 100);
//		imageView.setImageBitmap(bmp);

		piv = new PinchableImageView(this, w, h); 
//		piv.setImageDrawable(drawable);
		Bitmap bmp = DrawableUtils.drawableToBitmap(drawable);
		piv.setImageBitmap(bmp);
		mainLayout.removeAllViews();
		mainLayout.addView(piv);
		
	}
	@Override
	protected void onDestroy() {
//		overridePendingTransition(R.anim.zoom_enter, R.anim.zoom_exit);
		if (null != piv) piv.recycle();
		super.onDestroy();
	}



}
