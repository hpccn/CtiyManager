package cn.city.manager.activity;


import java.io.File;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.graphics.PixelFormat;
import android.media.MediaRecorder;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.util.Log;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import cn.city.manager.R;

/**
 * class name：TestBasicVideo<BR>
 * class description：一个简单的录制视频例子<BR>
 * PS：实现基本的录制保存文件 <BR>
 * 
 * @version 1.00 
 * @author 
 */
public class BasicVideoCapture extends Activity implements SurfaceHolder.Callback {
//	private Button start;// 开始录制按钮
//	private Button stop;// 停止录制按钮
//	private Button ok, cancel;
	private MediaRecorder mediarecorder;// 录制视频的类
	private SurfaceView surfaceview;// 显示视频的控件
	// 用来显示视频的一个接口，我靠不用还不行，也就是说用mediarecorder录制视频还得给个界面看
	// 想偷偷录视频的同学可以考虑别的办法。。嗯需要实现这个接口的Callback接口
	private SurfaceHolder surfaceHolder;

	private String recoderFile = Environment.getExternalStorageDirectory() + "/tmpRecoder.3gp";
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		requestWindowFeature(Window.FEATURE_NO_TITLE);// 去掉标题栏
		getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,
				WindowManager.LayoutParams.FLAG_FULLSCREEN);// 设置全屏
		// 设置横屏显示
//		setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE);
		// 选择支持半透明模式,在有surfaceview的activity中使用。
		getWindow().setFormat(PixelFormat.TRANSLUCENT);
		setContentView(R.layout.activity_video_capture_main);
		mediarecorder = new MediaRecorder();// 创建mediarecorder对象
		init();
	}

	private void init() {
		File mediaFile = new File(recoderFile);
		mediaFile.delete();
		int ids[] = {R.id.start, R.id.stop, R.id.cancel, R.id.ok};
		for (int id: ids ){
			this.findViewById(id).setOnClickListener(onClickListener);
		}
//		start = (Button) this.findViewById(R.id.start);
//		stop = (Button) this.findViewById(R.id.stop);
//		ok = (Button) this.findViewById(R.id.ok);
//		cancel = (Button) this.findViewById(R.id.cancel);
		
//		start.setOnClickListener(onClickListener);
//		stop.setOnClickListener(onClickListener);
//		ok.setOnClickListener(onClickListener);
//		cancel.setOnClickListener(onClickListener);
		
		
		surfaceview = (SurfaceView) this.findViewById(R.id.surfaceview);
		SurfaceHolder holder = surfaceview.getHolder();// 取得holder
		holder.addCallback(this); // holder加入回调接口
		// setType必须设置，要不出错.
		holder.setType(SurfaceHolder.SURFACE_TYPE_PUSH_BUFFERS);
		
//		stop.setVisibility(View.INVISIBLE);
//		ok.setVisibility(View.INVISIBLE);
	}

	MediaRecorder.OnInfoListener onInfoListener = new MediaRecorder.OnInfoListener(){

		@Override
		public void onInfo(MediaRecorder mr, int what, int extra) {
			// TODO Auto-generated method stub
			Log.e("", "onInfo: what: "+ what + ", extra:" + extra);
		}
		
	};
	MediaRecorder.OnErrorListener onErrorListener = new MediaRecorder.OnErrorListener(){

		@Override
		public void onError(MediaRecorder mr, int what, int extra) {
			// TODO Auto-generated method stub
			Log.e("", "onError: what: "+ what + ", extra:" + extra);
		}


		
	};
	
	private void startRecorder(){

		if (mediarecorder == null) {
			mediarecorder = new MediaRecorder();// 创建mediarecorder对象
		}
//		mediarecorder = new MediaRecorder();// 创建mediarecorder对象
		mediarecorder.setOnInfoListener(onInfoListener);
		mediarecorder.setOnErrorListener(onErrorListener);
		
		mediarecorder.setAudioSource(MediaRecorder.AudioSource.MIC);  
		// 设置录制视频源为Camera(相机)
		mediarecorder.setVideoSource(MediaRecorder.VideoSource.CAMERA);
		
		// 设置录制完成后视频的封装格式THREE_GPP为3gp.MPEG_4为mp4
		mediarecorder.setOutputFormat(MediaRecorder.OutputFormat.THREE_GPP);
		// 设置录制的视频编码h263 h264
//		mediarecorder.setVideoEncoder(MediaRecorder.VideoEncoder.H264);
		 // 这两项需要放在setOutputFormat之后  
		mediarecorder.setAudioEncoder(MediaRecorder.AudioEncoder.AMR_NB);  
		mediarecorder.setVideoEncoder(MediaRecorder.VideoEncoder.H264);  
		mediarecorder.setPreviewDisplay(surfaceview.getHolder().getSurface());
		// 设置视频录制的分辨率。必须放在设置编码和格式的后面，否则报错
		mediarecorder.setVideoSize(640, 480);
		// 设置录制的视频帧率。必须放在设置编码和格式的后面，否则报错
//		mediarecorder.setVideoFrameRate(15);
		mediarecorder.setPreviewDisplay(surfaceHolder.getSurface());
		// 设置视频文件输出的路径
		mediarecorder.setOutputFile(recoderFile);// //("/sdcard/love.3gp");
		mediarecorder.setMaxDuration(60000);
		mediarecorder.setMaxFileSize(2 * 1024 * 1024);
		
		try {
			// 准备录制
			mediarecorder.prepare();
			// 开始录制
			mediarecorder.start();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
//		stop.setVisibility(View.VISIBLE);
//		ok.setVisibility(View.INVISIBLE);
//		cancel.setVisibility(View.INVISIBLE);
//		start.setVisibility(View.INVISIBLE);
	}
	private void stopRecorder(){
		if (mediarecorder != null) {
			// 停止录制
			mediarecorder.stop();
			// 释放资源
			mediarecorder.reset();
//			mediarecorder.release();
//			mediarecorder = null;
		}
//		ok.setVisibility(View.VISIBLE);
//		cancel.setVisibility(View.VISIBLE);
//		start.setVisibility(View.VISIBLE);
	}
	private void cancel(){
		this.setResult(RESULT_CANCELED);
		this.finish();
	}
	private void ok(){
		Intent i = new Intent();
		File mediaFile = new File(recoderFile);
		i.setData(Uri.fromFile(mediaFile));
		this.setResult(RESULT_OK, i);
		this.finish();
	}
	View.OnClickListener onClickListener = new View.OnClickListener() {

		@Override
		public void onClick(View v) {
			switch(v.getId()){
			case R.id.start:
				startRecorder();
				break;
			case R.id.stop:
				stopRecorder();
				break;
			case R.id.ok:
				ok();
				break;
			case R.id.cancel:
				cancel();
				break;
				default:
			}


		}

	};

	@Override
	public void surfaceChanged(SurfaceHolder holder, int format, int width,
			int height) {
		// 将holder，这个holder为开始在oncreat里面取得的holder，将它赋给surfaceHolder
		surfaceHolder = holder;
	}

	@Override
	public void surfaceCreated(SurfaceHolder holder) {
		// 将holder，这个holder为开始在oncreat里面取得的holder，将它赋给surfaceHolder
		surfaceHolder = holder;
	}

	@Override
	public void surfaceDestroyed(SurfaceHolder holder) {
		// surfaceDestroyed的时候同时对象设置为null
		surfaceview = null;
		surfaceHolder = null;
//		mediarecorder = null;
	}

	@Override
	protected void onDestroy() {
		if (mediarecorder != null) {
//			try {
//				mediarecorder.stop();
//			} catch (Exception e){
//				e.printStackTrace();
//			}
			mediarecorder.reset();
			mediarecorder.release();

		}
		super.onDestroy();
	}
}
