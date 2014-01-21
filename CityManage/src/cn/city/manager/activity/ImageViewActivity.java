package cn.city.manager.activity;

import android.app.Activity;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.widget.ImageView;
import cn.city.manager.R;
import cn.hpc.common.DrawableUtils;
import cn.hpc.common.cache.ImageCacheFactory;

public class ImageViewActivity extends Activity {
	public static final String TAG = "ImageViewActivity";

	private Uri uri;
	private ImageView imageView;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_imageview_main);
		imageView = (ImageView) this.findViewById(R.id.id_imgageview);
		uri = this.getIntent().getData();
		handler.sendEmptyMessageDelayed(100, 200);
		imc  = ImageCacheFactory.getInstance(this);
	}


	Handler handler = new Handler(){
		public void handleMessage(Message msg) {
			switch (msg.what) {
			case 100:
				showImage();
				break;
			default:	
			}
		}
	};

	private ImageCacheFactory imc;
	private void showImage(){
		int w = imageView.getWidth();
		int h = imageView.getHeight();
		try {
			imageView.setImageDrawable(imc.getImage(uri, w, h));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
//		Bitmap bmp = DrawableUtils.decodeBitmapWithSize(imgPath, 100, 100);
//		imageView.setImageBitmap(bmp);

	}
	@Override
	protected void onDestroy() {
//		overridePendingTransition(R.anim.zoom_enter, R.anim.zoom_exit);
		super.onDestroy();
	}



}
