package com.cymobile.ymwork.act;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Environment;
import android.util.Log;
import android.widget.Toast;
import com.cymobile.ymwork.server.error.ServerException;
import com.cymobile.ymwork.utils.AsyncTaskUtils;
import com.cymobile.ymwork.utils.NotificationsUtil;
import java.io.BufferedInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;

public class FetchImageForViewIntent extends Activity
{
  public static final String CONNECTION_TIMEOUT_IN_SECONDS = "com.cymobile.ymwork.act.FetchImageForViewIntent.CONNECTION_TIMEOUT_IN_SECONDS";
  private static final boolean DEBUG = true;
  public static final String EXTRA_SAVED_IMAGE_PATH_RETURNED = "com.cymobile.ymwork.act.FetchImageForViewIntent.EXTRA_SAVED_IMAGE_PATH_RETURNED";
  public static final String IMAGE_URL = "com.cymobile.ymwork.act.FetchImageForViewIntent.IMAGE_URL";
  public static final String LAUNCH_VIEW_INTENT_ON_COMPLETION = "com.cymobile.ymwork.act.FetchImageForViewIntent.LAUNCH_VIEW_INTENT_ON_COMPLETION";
  public static final String PROGRESS_BAR_MESSAGE = "com.cymobile.ymwork.act.FetchImageForViewIntent.PROGRESS_BAR_MESSAGE";
  public static final String PROGRESS_BAR_TITLE = "com.cymobile.ymwork.act.FetchImageForViewIntent.PROGRESS_BAR_TITLE";
  public static final String READ_TIMEOUT_IN_SECONDS = "com.cymobile.ymwork.act.FetchImageForViewIntent.READ_TIMEOUT_IN_SECONDS";
  private static final String TAG = "FetchImageForViewIntent";
  private static final String TEMP_FILE_NAME = "tmp_fsq";
  private ProgressDialog mDlgProgress;
  private BroadcastReceiver mLoggedOutReceiver = new BroadcastReceiver()
  {
    public void onReceive(Context paramContext, Intent paramIntent)
    {
      Log.d("FetchImageForViewIntent", "onReceive: " + paramIntent);
      FetchImageForViewIntent.this.finish();
    }
  };
  private StateHolder mStateHolder;
  String owner = null;
  String thumb = null;
  long time = 0L;

  // ERROR //
  private boolean launchViewIntent(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 80	com/cymobile/ymwork/act/FetchImageForViewIntent:getApplication	()Landroid/app/Application;
    //   4: checkcast 82	com/cymobile/ymwork/HomeApplication
    //   7: invokevirtual 86	com/cymobile/ymwork/HomeApplication:getUseNativeImageViewerForFullScreenImages	()Z
    //   10: ifeq +107 -> 117
    //   13: new 88	java/io/File
    //   16: dup
    //   17: aload_1
    //   18: invokespecial 91	java/io/File:<init>	(Ljava/lang/String;)V
    //   21: invokestatic 97	android/net/Uri:fromFile	(Ljava/io/File;)Landroid/net/Uri;
    //   24: astore 9
    //   26: new 99	android/content/Intent
    //   29: dup
    //   30: ldc 101
    //   32: invokespecial 102	android/content/Intent:<init>	(Ljava/lang/String;)V
    //   35: astore 10
    //   37: aload 10
    //   39: aload 9
    //   41: new 104	java/lang/StringBuilder
    //   44: dup
    //   45: ldc 106
    //   47: invokespecial 107	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   50: aload_2
    //   51: invokevirtual 111	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   54: invokevirtual 115	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   57: invokevirtual 119	android/content/Intent:setDataAndType	(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    //   60: pop
    //   61: aload_0
    //   62: aload 10
    //   64: invokevirtual 123	com/cymobile/ymwork/act/FetchImageForViewIntent:startActivity	(Landroid/content/Intent;)V
    //   67: iconst_1
    //   68: ireturn
    //   69: astore 7
    //   71: ldc 32
    //   73: ldc 125
    //   75: aload 7
    //   77: invokestatic 131	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   80: pop
    //   81: aload_0
    //   82: ldc 132
    //   84: iconst_0
    //   85: invokestatic 138	android/widget/Toast:makeText	(Landroid/content/Context;II)Landroid/widget/Toast;
    //   88: invokevirtual 141	android/widget/Toast:show	()V
    //   91: iconst_0
    //   92: ireturn
    //   93: astore 11
    //   95: ldc 32
    //   97: ldc 143
    //   99: aload 11
    //   101: invokestatic 131	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   104: pop
    //   105: aload_0
    //   106: ldc 132
    //   108: iconst_0
    //   109: invokestatic 138	android/widget/Toast:makeText	(Landroid/content/Context;II)Landroid/widget/Toast;
    //   112: invokevirtual 141	android/widget/Toast:show	()V
    //   115: iconst_0
    //   116: ireturn
    //   117: new 99	android/content/Intent
    //   120: dup
    //   121: aload_0
    //   122: ldc 145
    //   124: invokespecial 148	android/content/Intent:<init>	(Landroid/content/Context;Ljava/lang/Class;)V
    //   127: astore_3
    //   128: aload_3
    //   129: ldc 150
    //   131: aload_1
    //   132: invokevirtual 154	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   135: pop
    //   136: aload_3
    //   137: ldc 156
    //   139: aload_0
    //   140: getfield 51	com/cymobile/ymwork/act/FetchImageForViewIntent:owner	Ljava/lang/String;
    //   143: invokevirtual 154	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   146: pop
    //   147: aload_3
    //   148: ldc 158
    //   150: aload_0
    //   151: getfield 53	com/cymobile/ymwork/act/FetchImageForViewIntent:thumb	Ljava/lang/String;
    //   154: invokevirtual 154	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   157: pop
    //   158: aload_0
    //   159: aload_3
    //   160: invokevirtual 123	com/cymobile/ymwork/act/FetchImageForViewIntent:startActivity	(Landroid/content/Intent;)V
    //   163: goto -96 -> 67
    //
    // Exception table:
    //   from	to	target	type
    //   13	26	69	java/lang/Exception
    //   26	67	93	java/lang/Exception
  }

  private void onFetchImageTaskComplete(Boolean paramBoolean, String paramString1, String paramString2, Exception paramException)
  {
    if (paramBoolean != null);
    while (true)
    {
      try
      {
        if (paramBoolean.equals(Boolean.TRUE))
        {
          if (!this.mStateHolder.getLaunchViewIntentOnCompletion())
            continue;
          launchViewIntent(paramString1, paramString2);
          return;
          Intent localIntent = new Intent();
          localIntent.putExtra("com.cymobile.ymwork.act.FetchImageForViewIntent.EXTRA_SAVED_IMAGE_PATH_RETURNED", paramString1);
          setResult(-1, localIntent);
          continue;
        }
      }
      finally
      {
        this.mStateHolder.setIsRunning(false);
        stopProgressBar();
        finish();
      }
      if ((paramException != null) && ((paramException instanceof IOException)))
      {
        Toast.makeText(this, 2131296403, 0).show();
        continue;
      }
      NotificationsUtil.ToastReasonForFailure(this, paramException);
    }
  }

  public static void saveImage(String paramString1, String paramString2, int paramInt1, int paramInt2)
    throws Exception
  {
    URLConnection localURLConnection = new URL(paramString1).openConnection();
    localURLConnection.setConnectTimeout(paramInt1 * 1000);
    localURLConnection.setReadTimeout(paramInt2 * 1000);
    int i = localURLConnection.getContentLength();
    BufferedInputStream localBufferedInputStream = new BufferedInputStream(localURLConnection.getInputStream());
    byte[] arrayOfByte = new byte[i];
    int j = 0;
    while (true)
    {
      if (j >= i);
      int k;
      do
      {
        localBufferedInputStream.close();
        if (j == i)
          break;
        Log.e("FetchImageForViewIntent", "Error fetching image, only read " + j + " bytes of " + i + " total.");
        throw new ServerException("Error fetching full image, please try again.");
        k = localBufferedInputStream.read(arrayOfByte, j, arrayOfByte.length - j);
      }
      while (k == -1);
      j += k;
    }
    try
    {
      FileOutputStream localFileOutputStream = new FileOutputStream(paramString2);
      localFileOutputStream.write(arrayOfByte);
      localFileOutputStream.flush();
      localFileOutputStream.close();
      return;
    }
    catch (Exception localException)
    {
      Log.e("FetchImageForViewIntent", "Error saving fetched image to disk.", localException);
    }
    throw new ServerException("Error opening fetched image, make sure an sdcard is present.");
  }

  private void startProgressBar(String paramString1, String paramString2)
  {
    if (this.mDlgProgress == null)
    {
      this.mDlgProgress = ProgressDialog.show(this, paramString1, paramString2);
      this.mDlgProgress.setOnCancelListener(new DialogInterface.OnCancelListener()
      {
        public void onCancel(DialogInterface paramDialogInterface)
        {
          FetchImageForViewIntent.this.mStateHolder.cancel();
          FetchImageForViewIntent.this.finish();
        }
      });
      this.mDlgProgress.setCancelable(true);
    }
    this.mDlgProgress.setTitle(paramString1);
    this.mDlgProgress.setMessage(paramString2);
  }

  private void stopProgressBar()
  {
    if ((this.mDlgProgress != null) && (this.mDlgProgress.isShowing()))
      this.mDlgProgress.dismiss();
    this.mDlgProgress = null;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Log.d("FetchImageForViewIntent", "onCreate()");
    setContentView(2130903060);
    Object localObject = getLastNonConfigurationInstance();
    if ((localObject != null) && ((localObject instanceof StateHolder)))
    {
      this.mStateHolder = ((StateHolder)localObject);
      this.mStateHolder.setActivity(this);
      registerReceiver(this.mLoggedOutReceiver, new IntentFilter("com.cymobile.ymwork.intent.action.LOGGED_OUT"));
      return;
    }
    String str1;
    int i;
    if (getIntent().getExtras().containsKey("com.cymobile.ymwork.act.FetchImageForViewIntent.IMAGE_URL"))
    {
      str1 = getIntent().getExtras().getString("com.cymobile.ymwork.act.FetchImageForViewIntent.IMAGE_URL");
      Log.d("FetchImageForViewIntent", "Fetching image: " + str1);
      i = str1.lastIndexOf(".");
      if (i < 0)
      {
        Log.e("FetchImageForViewIntent", "FetchImageForViewIntent requires a url to an image resource with a file extension in its name.");
        finish();
        return;
      }
    }
    else
    {
      Log.e("FetchImageForViewIntent", "FetchImageForViewIntent requires intent extras parameter 'IMAGE_URL'.");
      finish();
      return;
    }
    String str2 = getIntent().getStringExtra("com.cymobile.ymwork.act.FetchImageForViewIntent.PROGRESS_BAR_TITLE");
    String str3 = getIntent().getStringExtra("com.cymobile.ymwork.act.FetchImageForViewIntent.PROGRESS_BAR_MESSAGE");
    if (str3 == null)
      str3 = "Fetching image...";
    this.mStateHolder = new StateHolder();
    this.mStateHolder.setLaunchViewIntentOnCompletion(getIntent().getBooleanExtra("com.cymobile.ymwork.act.FetchImageForViewIntent.LAUNCH_VIEW_INTENT_ON_COMPLETION", true));
    if ((str1.substring(i + 1) != null) && (str1.substring(i + 1).toLowerCase().equals("jpg")));
    for (String str4 = "jpeg"; ; str4 = str1.substring(i + 1))
    {
      this.mStateHolder.startTask(this, str1, str4, str2, str3, getIntent().getIntExtra("com.cymobile.ymwork.act.FetchImageForViewIntent.CONNECTION_TIMEOUT_IN_SECONDS", 20), getIntent().getIntExtra("com.cymobile.ymwork.act.FetchImageForViewIntent.READ_TIMEOUT_IN_SECONDS", 20));
      break;
    }
  }

  public void onDestroy()
  {
    super.onDestroy();
    try
    {
      unregisterReceiver(this.mLoggedOutReceiver);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public void onPause()
  {
    super.onPause();
    stopProgressBar();
  }

  public void onResume()
  {
    super.onResume();
    if (this.mStateHolder.getIsRunning())
      startProgressBar(this.mStateHolder.getProgressTitle(), this.mStateHolder.getProgressMessage());
  }

  public Object onRetainNonConfigurationInstance()
  {
    this.mStateHolder.setActivity(null);
    return this.mStateHolder;
  }

  private static class FetchImageTask extends AsyncTask<Void, Void, Boolean>
  {
    private FetchImageForViewIntent mActivity;
    private final int mConnectionTimeoutInSeconds;
    private String mExtension;
    private final String mOutputPath;
    private final int mReadTimeoutInSeconds;
    private Exception mReason;
    private final String mUrl;

    public FetchImageTask(FetchImageForViewIntent paramFetchImageForViewIntent, String paramString1, String paramString2, int paramInt1, int paramInt2)
    {
      this.mActivity = paramFetchImageForViewIntent;
      this.mUrl = paramString1;
      this.mExtension = paramString2;
      this.mOutputPath = (Environment.getExternalStorageDirectory() + "/" + "tmp_fsq");
      this.mConnectionTimeoutInSeconds = paramInt1;
      this.mReadTimeoutInSeconds = paramInt2;
    }

    protected Boolean doInBackground(Void[] paramArrayOfVoid)
    {
      try
      {
        FetchImageForViewIntent.saveImage(this.mUrl, this.mOutputPath, this.mConnectionTimeoutInSeconds, this.mReadTimeoutInSeconds);
        Boolean localBoolean = Boolean.TRUE;
        return localBoolean;
      }
      catch (Exception localException)
      {
        Log.d("FetchImageForViewIntent", "FetchImageTask: Exception while fetching image.", localException);
        this.mReason = localException;
      }
      return Boolean.FALSE;
    }

    protected void onCancelled()
    {
      if (this.mActivity != null)
        this.mActivity.onFetchImageTaskComplete(null, null, null, new ServerException("Image download cancelled."));
    }

    protected void onPostExecute(Boolean paramBoolean)
    {
      Log.d("FetchImageForViewIntent", "FetchImageTask: onPostExecute()");
      if (this.mActivity != null)
        this.mActivity.onFetchImageTaskComplete(paramBoolean, this.mOutputPath, this.mExtension, this.mReason);
    }

    public void setActivity(FetchImageForViewIntent paramFetchImageForViewIntent)
    {
      this.mActivity = paramFetchImageForViewIntent;
    }
  }

  private static class StateHolder
  {
    boolean mIsRunning = false;
    boolean mLaunchViewIntentOnCompletion = true;
    String mProgressMessage;
    String mProgressTitle;
    FetchImageForViewIntent.FetchImageTask mTaskFetchImage;

    public void cancel()
    {
      if (this.mTaskFetchImage != null)
      {
        this.mTaskFetchImage.cancel(true);
        this.mIsRunning = false;
      }
    }

    public boolean getIsRunning()
    {
      return this.mIsRunning;
    }

    public boolean getLaunchViewIntentOnCompletion()
    {
      return this.mLaunchViewIntentOnCompletion;
    }

    public String getProgressMessage()
    {
      return this.mProgressMessage;
    }

    public String getProgressTitle()
    {
      return this.mProgressTitle;
    }

    public void setActivity(FetchImageForViewIntent paramFetchImageForViewIntent)
    {
      if (this.mTaskFetchImage != null)
        this.mTaskFetchImage.setActivity(paramFetchImageForViewIntent);
    }

    public void setIsRunning(boolean paramBoolean)
    {
      this.mIsRunning = paramBoolean;
    }

    public void setLaunchViewIntentOnCompletion(boolean paramBoolean)
    {
      this.mLaunchViewIntentOnCompletion = paramBoolean;
    }

    public void startTask(FetchImageForViewIntent paramFetchImageForViewIntent, String paramString1, String paramString2, String paramString3, String paramString4, int paramInt1, int paramInt2)
    {
      this.mIsRunning = true;
      this.mProgressTitle = paramString3;
      this.mProgressMessage = paramString4;
      this.mTaskFetchImage = new FetchImageForViewIntent.FetchImageTask(paramFetchImageForViewIntent, paramString1, paramString2, paramInt1, paramInt2);
      AsyncTaskUtils.execute(this.mTaskFetchImage);
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.act.FetchImageForViewIntent
 * JD-Core Version:    0.6.0
 */