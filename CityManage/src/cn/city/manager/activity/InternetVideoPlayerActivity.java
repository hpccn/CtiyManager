package cn.city.manager.activity;

import android.app.Activity;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.graphics.PixelFormat;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import cn.city.manager.R;

public class InternetVideoPlayerActivity extends Activity {
	public static final String TAG = "InternetVideoPlayerActivity";

	private Uri uri;
	MediaPlayer mediaPlayer; // 播放器的内部实现是通过MediaPlayer
	SurfaceView surfaceView;// 装在视频的容器
	SurfaceHolder surfaceHolder;// 控制surfaceView的属性（尺寸、格式等）对象
	boolean isPause; // 是否已经暂停了
	private Context context;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		requestWindowFeature(Window.FEATURE_NO_TITLE);// 去掉标题栏
		getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,
				WindowManager.LayoutParams.FLAG_FULLSCREEN);// 设置全屏
		// 设置横屏显示
		setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE);
		// 选择支持半透明模式,在有surfaceview的activity中使用。
		getWindow().setFormat(PixelFormat.TRANSLUCENT);

		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_video_player_main);

		context = this;
		uri = this.getIntent().getData();
		surfaceView = (SurfaceView) findViewById(R.id.id_surfaceview1);
		/**
		 * 获取与当前surfaceView相关联的那个的surefaceHolder
		 */
		surfaceHolder = surfaceView.getHolder();
		/**
		 * 注册当surfaceView创建、改变和销毁时应该执行的方法
		 */
		surfaceHolder.addCallback(new SurfaceHolder.Callback() {

			@Override
			public void surfaceDestroyed(SurfaceHolder holder) {
				Log.i("通知", "surfaceHolder被销毁了");
				if (mediaPlayer != null)
					mediaPlayer.release();
			}

			@Override
			public void surfaceCreated(SurfaceHolder holder) {
				Log.i("通知", "surfaceHolder被create了");
			}

			@Override
			public void surfaceChanged(SurfaceHolder holder, int format,
					int width, int height) {
				Log.i("通知", "surfaceHolder被改变了");
			}
		});

		/**
		 * 这里必须设置为SurfaceHolder.SURFACE_TYPE_PUSH_BUFFERS哦，意思
		 * 是创建一个push的'surface'，主要的特点就是不进行缓冲
		 */
		surfaceHolder.setType(SurfaceHolder.SURFACE_TYPE_PUSH_BUFFERS);
//		play();
		this.findViewById(R.id.button_play).setOnClickListener(onClickListener);
		this.findViewById(R.id.button_stop).setOnClickListener(onClickListener);
	}
	
	final protected View.OnClickListener onClickListener = new View.OnClickListener() {
		@Override
		public void onClick(View v) {
			buttonClick(v);
		}
	};

	/***
	 * @param targetButton
	 *            被用户点击的按钮
	 */
	public void buttonClick(View targetButton) {
		int buttonId = targetButton.getId();
		switch (buttonId) {
		case R.id.button_play:
			play();
			break;
		// case R.id.button_pause:
		// pause();
		// break;
		// case R.id.button_reset:
		// reset();
		// break;
		case R.id.button_stop:
			stop();
			break;
		default:
			break;
		}

	}

	/**
	 * 播放
	 */
	private void play() {
		if (null != mediaPlayer){
			mediaPlayer.reset();
			mediaPlayer = null;
		}
		mediaPlayer = new MediaPlayer();
		// 设置多媒体流类型
//		mediaPlayer.setAudioStreamType(AudioManager.STREAM_MUSIC);

		// 设置用于展示mediaPlayer的容器
		mediaPlayer.setDisplay(surfaceHolder);
		try {
			// mediaPlayer.setDataSource("/sdcard/001.mp4");
			mediaPlayer.setDataSource(context, uri);
//					.setDataSource("http://192.168.1.114:8080/webdav/china.3gp");
//			mediaPlayer.prepareAsync();
			mediaPlayer.prepare();
			mediaPlayer.start();
			isPause = false;
			mediaPlayer.setOnCompletionListener(new MediaPlayer.OnCompletionListener(){

                @Override

                public void onCompletion(MediaPlayer mp) {
                	
                	mp.release();
                	mediaPlayer = null;
                }

             });
		} catch (Exception e) {
			// Log.i("通知", "播放过程中出现了错误哦");
			e.printStackTrace();
		}
	}

	/**
	 * 暂停
	 */
	private void pause() {
		Log.i("通知", "点击了暂停按钮");
		if (isPause == false) {
			mediaPlayer.pause();
			isPause = true;
		} else {
			mediaPlayer.start();
			isPause = false;
		}
	}

	/**
	 * 重置
	 */
	private void reset() {
		Log.i("通知", "点击了reset按钮");
		// 跳转到视频的最开始
		mediaPlayer.seekTo(0);
		mediaPlayer.start();
	}

	/**
	 * 停止
	 */
	private void stop() {
		Log.i("通知", "点击了stop按钮");
		if (null != mediaPlayer){
			mediaPlayer.stop();
			mediaPlayer.release();
		}
		this.finish();
	}

	@Override
	protected void onDestroy() {
		if (null != mediaPlayer){
			mediaPlayer.release();
		}
		super.onDestroy();
	}

}
