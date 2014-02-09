package cn.city.manager.activity;


import java.io.File;
import java.io.IOException;

import android.app.Activity;
import android.content.Intent;
import android.graphics.PixelFormat;
import android.hardware.Camera;
import android.hardware.Camera.CameraInfo;
import android.media.CamcorderProfile;
import android.media.MediaRecorder;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.util.Log;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import cn.city.manager.R;

/**
 * class name：TestBasicVideo<BR>
 * class description：一个简单的录制视频例子<BR>
 * PS：实现基本的录制保存文件 <BR>
 * 
 * @version 1.00 
 * @author 
 */
public class BasicVideoCapture extends Activity  {
	private Button start;// 开始录制按钮
	private Button stop;// 停止录制按钮
	private Button ok, cancel;
	private MediaRecorder mediarecorder;// 录制视频的类
	private SurfaceView surfaceview;// 显示视频的控件
	// 用来显示视频的一个接口，我靠不用还不行，也就是说用mediarecorder录制视频还得给个界面看
	// 想偷偷录视频的同学可以考虑别的办法。。嗯需要实现这个接口的Callback接口
	private SurfaceHolder surfaceHolder;

	private boolean isRecording;
	private String recoderFile = Environment.getExternalStorageDirectory() + "/tmpRecoder.3gp";
	
	private Camera mCamera;
	private CameraInfo[] mCameraInfo;
	
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
		isRecording = false;
	}

	private void init() {
		File mediaFile = new File(recoderFile);
		mediaFile.delete();
		int ids[] = {R.id.start, R.id.cancel, R.id.ok};//, R.id.stop
		for (int id: ids ){
			this.findViewById(id).setOnClickListener(onClickListener);
		}
		start = (Button) this.findViewById(R.id.start);
//		stop = (Button) this.findViewById(R.id.stop);
		ok = (Button) this.findViewById(R.id.ok);
		cancel = (Button) this.findViewById(R.id.cancel);
		
//		start.setOnClickListener(onClickListener);
//		stop.setOnClickListener(onClickListener);
//		ok.setOnClickListener(onClickListener);
//		cancel.setOnClickListener(onClickListener);
		
		
		surfaceview = (SurfaceView) this.findViewById(R.id.surfaceview);
		
		surfaceHolder = surfaceview.getHolder();// 取得holder
		
		surfaceHolder.addCallback(surfaceHolderCallback); // holder加入回调接口
		// setType必须设置，要不出错.
		surfaceHolder.setType(SurfaceHolder.SURFACE_TYPE_PUSH_BUFFERS);
		
//		stop.setVisibility(View.INVISIBLE);
//		ok.setVisibility(View.INVISIBLE);
		
//		mediarecorder.setPreviewDisplay(surfaceview.getHolder().getSurface());
	}

	
	final private SurfaceHolder.Callback surfaceHolderCallback = new SurfaceHolder.Callback(){

		@Override
		public void surfaceDestroyed(SurfaceHolder holder) {
			releaseCamera();
			surfaceview = null;
			surfaceHolder = null;
		}
		
		@Override
		public void surfaceCreated(SurfaceHolder holder) {
			initpreview();
			surfaceHolder = holder;
		}
		
		@Override
		public void surfaceChanged(SurfaceHolder holder, int format, int width,
				int height) {
			surfaceHolder = holder;
		}
	
	};

	
	private void startRecorder(){
		mCamera.stopPreview();
		mCamera.unlock();
		
		isRecording = true;
		if (mediarecorder == null) {
			mediarecorder = new MediaRecorder();// 创建mediarecorder对象
		}
//		mediarecorder = new MediaRecorder();// 创建mediarecorder对象
//		mediarecorder.setOnInfoListener(onInfoListener);
//		mediarecorder.setOnErrorListener(onErrorListener);
		mediarecorder.reset();
		
		mediarecorder.setCamera(mCamera);
		mediarecorder.setAudioSource(MediaRecorder.AudioSource.MIC);  
		// 设置录制视频源为Camera(相机)
		mediarecorder.setVideoSource(MediaRecorder.VideoSource.CAMERA);
		
		// 设置录制完成后视频的封装格式THREE_GPP为3gp.MPEG_4为mp4
		mediarecorder.setOutputFormat(MediaRecorder.OutputFormat.THREE_GPP);
		// 设置录制的视频编码h263 h264
		//mediarecorder.setVideoEncoder(MediaRecorder.VideoEncoder.H264);
		 // 这两项需要放在setOutputFormat之后  
//		mediarecorder.setAudioEncoder(MediaRecorder.AudioEncoder.AMR_NB);  
//		mediarecorder.setVideoEncoder(MediaRecorder.VideoEncoder.MPEG_4_SP);  
		
		//replacement
//		CamcorderProfile cpLow = CamcorderProfile.get(CamcorderProfile.QUALITY_480P);
//		mediarecorder.setProfile(cpLow);
//		mediarecorder.setVideoSize(cpLow.videoFrameWidth, cpLow.videoFrameHeight);
//		mediarecorder.setVideoFrameRate(4);//设置视频帧率
		mediarecorder.setAudioEncoder(MediaRecorder.AudioEncoder.AMR_NB);//设置音频编码
		mediarecorder.setVideoEncoder(MediaRecorder.VideoEncoder.H264);//设置视频编码
		
		mediarecorder.setPreviewDisplay(surfaceview.getHolder().getSurface());
		// 设置视频录制的分辨率。必须放在设置编码和格式的后面，否则报错
//		mediarecorder.setVideoSize(640, 480);
		// 设置录制的视频帧率。必须放在设置编码和格式的后面，否则报错
//		mediarecorder.setVideoFrameRate(15);
		mediarecorder.setPreviewDisplay(surfaceHolder.getSurface());
		// 设置视频文件输出的路径
		mediarecorder.setOutputFile(recoderFile);// //("/sdcard/love.3gp");
		mediarecorder.setMaxDuration(60000);
		mediarecorder.setMaxFileSize(4 * 1024 * 1024);
		
		try {
			// 准备录制
			mediarecorder.prepare();
			// 开始录制
			mediarecorder.start();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			mCamera.lock();
		}
		start.setBackgroundResource(R.drawable.btn_shutter_video_recording);
//		stop.setVisibility(View.VISIBLE);
		ok.setVisibility(View.INVISIBLE);
		cancel.setVisibility(View.INVISIBLE);
//		start.setVisibility(View.INVISIBLE);
	}
	private void stopRecorder(){
		if (!isRecording) return;
		if (mediarecorder != null) {
			// 停止录制
			try {
				mediarecorder.stop();
				mCamera.reconnect();
				mCamera.startPreview();
			} catch (Exception e){
				e.printStackTrace();
			}
			// 释放资源
			mediarecorder.reset();
//			mediarecorder.release();
//			mediarecorder = null;
		}
		isRecording = false;

		start.setBackgroundResource(R.drawable.btn_new_shutter_video);
		ok.setVisibility(View.VISIBLE);
		cancel.setVisibility(View.VISIBLE);
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
				if (isRecording){
					stopRecorder();
				}else {
					startRecorder();
				}
				break;
//			case R.id.stop:
//				stopRecorder();
//				break;
			case R.id.ok:
				if (isRecording){
					stopRecorder();
				}
				ok();
				break;
			case R.id.cancel:
				if (isRecording){
					stopRecorder();
				}
				cancel();
				break;
				default:
			}


		}

	};

//	@Override
//	public void surfaceChanged(SurfaceHolder holder, int format, int width,
//			int height) {
//		// 将holder，这个holder为开始在oncreat里面取得的holder，将它赋给surfaceHolder
//		surfaceHolder = holder;
//	}
//
//	@Override
//	public void surfaceCreated(SurfaceHolder holder) {
//		// 将holder，这个holder为开始在oncreat里面取得的holder，将它赋给surfaceHolder
//		surfaceHolder = holder;
//	}
//
//	@Override
//	public void surfaceDestroyed(SurfaceHolder holder) {
//		// surfaceDestroyed的时候同时对象设置为null
//		releaseCamera();
//		surfaceview = null;
//		surfaceHolder = null;
////		mediarecorder = null;
//	}
	
	 public  void setCameraDisplayOrientation(Activity activity,
	         int cameraId, android.hardware.Camera camera) {
//	     android.hardware.Camera.CameraInfo info =
//	             new android.hardware.Camera.CameraInfo();
//	     android.hardware.Camera.getCameraInfo(cameraId, info);
	     int rotation = activity.getWindowManager().getDefaultDisplay()
	             .getRotation();
	     int degrees = 0;
	     switch (rotation) {
	         case Surface.ROTATION_0: degrees = 0; break;
	         case Surface.ROTATION_90: degrees = 90; break;
	         case Surface.ROTATION_180: degrees = 180; break;
	         case Surface.ROTATION_270: degrees = 270; break;
	     }

	     int result = degrees;
//	     if (info.facing == 1){//Camera.CameraInfo.CAMERA_FACING_FRONT) {
//	         result = (info.orientation + degrees) % 360;
//	         result = (360 - result) % 360;  // compensate the mirror
//	     } else {  // back-facing
//	         result = (info.orientation - degrees + 360) % 360;
//	     }
	     camera.setDisplayOrientation(result);
	 }
	
	protected void initpreview() {
		mCamera = Camera.open();//(CameraInfo.CAMERA_FACING_BACK);
		try {
			mCamera.setPreviewDisplay(surfaceHolder);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
//		setCameraDisplayOrientation(this,0,mCamera);//CameraInfo.CAMERA_FACING_BACK
		mCamera.startPreview();
	}
	protected void releaseCamera() {
		if(mCamera!=null){
			mCamera.stopPreview();
			mCamera.release();
			mCamera = null;
		}
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
