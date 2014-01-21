package com.cymobile.ymwork.act;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Environment;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.cymobile.ymwork.HomeApplication;
import com.cymobile.ymwork.server.Server;
import com.cymobile.ymwork.server.error.ServerException;
import com.cymobile.ymwork.types.User;
import com.cymobile.ymwork.utils.AsyncTaskUtils;
import com.cymobile.ymwork.utils.ImageUtils;
import com.cymobile.ymwork.utils.NotificationsUtil;

public class FullSizeImageActivity extends Activity
{
  private static final int ACTIVITY_REQUEST_CODE_GALLERY = 500;
  private static final int DIALOG_SET_USER_PHOTO_YES_NO = 500;
  public static final String INTENT_EXTRA_ALLOW_SET_NEW_PHOTO = "com.cymobile.ymwork.act.FullSizeImageActivity.INTENT_EXTRA_ALLOW_SET_NEW_PHOTO";
  public static final String INTENT_EXTRA_IMAGE_PATH = "com.cymobile.ymwork.act.FullSizeImageActivity.INTENT_EXTRA_IMAGE_PATH";
  public static final String INTENT_EXTRA_Photethumb = "com.cymobile.ymwork.FullSizeImageActivity.INTENT_EXTRA_Photethumb";
  public static final String INTENT_EXTRA_Photoowner = "com.cymobile.ymwork.FullSizeImageActivity.INTENT_EXTRA_Photoowner";
  public static final String INTENT_RETURN_NEW_PHOTO_PATH_DISK = "com.cymobile.ymwork.act.FullSizeImageActivity.INTENT_RETURN_NEW_PHOTO_PATH_DISK";
  public static final String INTENT_RETURN_NEW_PHOTO_URL = "com.cymobile.ymwork.act.FullSizeImageActivity.INTENT_RETURN_NEW_PHOTO_URL";
  private static final String TAG = "FullSizeImageActivity";
  private StateHolder mStateHolder;
  private boolean toogleFullScreen = false;

  private void ensureUi()
  {
    ImageView localImageView = (ImageView)findViewById(2131230798);
    TextView localTextView1 = (TextView)findViewById(2131230800);
    TextView localTextView2 = (TextView)findViewById(2131230801);
    ((TextView)findViewById(2131230802));
    Button localButton;
    while (true)
    {
      LinearLayout localLinearLayout;
      try
      {
        Bitmap localBitmap = BitmapFactory.decodeFile(this.mStateHolder.getImagePath());
        String str1 = getPhotethumb();
        String str2 = getPhotoowner();
        localImageView.setImageBitmap(localBitmap);
        localTextView1.setText(str2);
        localTextView2.setText(str1);
        Log.i("owertv1", "");
        localImageView.setOnClickListener(new View.OnClickListener()
        {
          public void onClick(View paramView)
          {
            FullSizeImageActivity localFullSizeImageActivity;
            boolean bool2;
            if (FullSizeImageActivity.this.toogleFullScreen)
            {
              ((LinearLayout)FullSizeImageActivity.this.findViewById(2131230799)).setVisibility(0);
              localFullSizeImageActivity = FullSizeImageActivity.this;
              boolean bool1 = FullSizeImageActivity.this.toogleFullScreen;
              bool2 = false;
              if (!bool1)
                break label73;
            }
            while (true)
            {
              localFullSizeImageActivity.toogleFullScreen = bool2;
              return;
              ((LinearLayout)FullSizeImageActivity.this.findViewById(2131230799)).setVisibility(8);
              break;
              label73: bool2 = true;
            }
          }
        });
        localLinearLayout = (LinearLayout)findViewById(2131230803);
        localButton = (Button)findViewById(2131230804);
        if (this.mStateHolder.getAllowSetPhoto())
        {
          localLinearLayout.setVisibility(0);
          localButton.setOnClickListener(new View.OnClickListener()
          {
            public void onClick(View paramView)
            {
              FullSizeImageActivity.this.startGalleryIntent();
            }
          });
          if (!this.mStateHolder.getIsRunningTaskSetPhoto())
            break;
          setProgressBarIndeterminateVisibility(true);
          localButton.setEnabled(false);
          return;
        }
      }
      catch (Exception localException)
      {
        Log.e("FullSizeImageActivity", "Couldn't load supplied image.", localException);
        finish();
        return;
      }
      localLinearLayout.setVisibility(8);
    }
    setProgressBarIndeterminateVisibility(false);
    localButton.setEnabled(true);
  }

  private String getPhotethumb()
  {
    Bundle localBundle = getIntent().getExtras();
    String str = null;
    if (localBundle != null)
      str = getIntent().getStringExtra("com.cymobile.ymwork.FullSizeImageActivity.INTENT_EXTRA_Photethumb");
    return str;
  }

  private String getPhotoowner()
  {
    Bundle localBundle = getIntent().getExtras();
    String str = null;
    if (localBundle != null)
      str = getIntent().getStringExtra("com.cymobile.ymwork.FullSizeImageActivity.INTENT_EXTRA_Photoowner");
    return str;
  }

  private void onTaskSetPhotoComplete(User paramUser, Exception paramException)
  {
    this.mStateHolder.setIsRunningTaskSetPhoto(false);
    if (paramUser != null)
    {
      Toast.makeText(this, "Photo set ok!", 0).show();
      prepareResultIntent(paramUser.getImage());
    }
    while (true)
    {
      ensureUi();
      return;
      NotificationsUtil.ToastReasonForFailure(this, paramException);
    }
  }

  private void onTaskSetPhotoCompleteStart()
  {
    ensureUi();
  }

  private void prepareResultIntent(String paramString)
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("com.cymobile.ymwork.act.FullSizeImageActivity.INTENT_RETURN_NEW_PHOTO_PATH_DISK", this.mStateHolder.getImagePath());
    localIntent.putExtra("com.cymobile.ymwork.act.FullSizeImageActivity.INTENT_RETURN_NEW_PHOTO_URL", paramString);
    this.mStateHolder.setPreparedResult(localIntent);
    setPreparedResultIntent();
  }

  private void setPreparedResultIntent()
  {
    if (this.mStateHolder.getPreparedResult() != null)
      setResult(-1, this.mStateHolder.getPreparedResult());
  }

  private void startGalleryIntent()
  {
    try
    {
      Intent localIntent = new Intent("android.intent.action.GET_CONTENT");
      localIntent.setType("image/*");
      startActivityForResult(localIntent, 500);
      return;
    }
    catch (Exception localException)
    {
      Toast.makeText(this, getResources().getString(2131296282), 0).show();
    }
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    default:
    case 500:
    }
    do
      return;
    while (paramInt2 != -1);
    try
    {
      String[] arrayOfString = { "_data" };
      Cursor localCursor = managedQuery(paramIntent.getData(), arrayOfString, null, null, null);
      int i = localCursor.getColumnIndexOrThrow("_data");
      localCursor.moveToFirst();
      String str3 = localCursor.getString(i);
      str1 = str3;
      try
      {
        String str2 = Environment.getExternalStorageDirectory() + "/tmp_fsquare.jpg";
        ImageUtils.resampleImageAndSaveToNewLocation(str1, str2);
        this.mStateHolder.setImagePath(str2);
        ensureUi();
        showDialog(500);
        return;
      }
      catch (Exception localException2)
      {
        Toast.makeText(this, getResources().getString(2131296284), 0).show();
        return;
      }
    }
    catch (Exception localException1)
    {
      while (true)
      {
        Toast.makeText(this, getResources().getString(2131296283), 0).show();
        String str1 = null;
      }
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    requestWindowFeature(5);
    setContentView(2130903064);
    Object localObject = getLastNonConfigurationInstance();
    if ((localObject != null) && ((localObject instanceof StateHolder)))
    {
      this.mStateHolder = ((StateHolder)localObject);
      this.mStateHolder.setActivity(this);
      setPreparedResultIntent();
    }
    while (true)
    {
      ensureUi();
      return;
      String str = getIntent().getStringExtra("com.cymobile.ymwork.act.FullSizeImageActivity.INTENT_EXTRA_IMAGE_PATH");
      if (TextUtils.isEmpty(str))
        break;
      this.mStateHolder = new StateHolder();
      this.mStateHolder.setImagePath(str);
      this.mStateHolder.setAllowSetPhoto(getIntent().getBooleanExtra("com.cymobile.ymwork.act.FullSizeImageActivity.INTENT_EXTRA_ALLOW_SET_NEW_PHOTO", false));
    }
    Log.e("FullSizeImageActivity", "FullSizeImageActivity requires input image path as an intent extra.");
    finish();
  }

  protected Dialog onCreateDialog(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return null;
    case 500:
    }
    return new AlertDialog.Builder(this).setTitle(getResources().getString(2131296285)).setMessage(getResources().getString(2131296286)).setPositiveButton(getResources().getString(2131296292), new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramDialogInterface, int paramInt)
      {
        PreferenceManager.getDefaultSharedPreferences(FullSizeImageActivity.this);
        Log.i("FullSizeImageActivity", " TODO: // ddddddddddddddddddd DIALOG_SET_USER_PHOTO_YES_NO");
      }
    }).setNegativeButton(getResources().getString(2131296291), new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramDialogInterface, int paramInt)
      {
      }
    }).create();
  }

  private static class StateHolder
  {
    private boolean mAllowSetPhoto = false;
    private String mImagePath;
    private boolean mIsRunningTaskSetPhoto = false;
    private Intent mPreparedResult;
    private FullSizeImageActivity.TaskSetPhoto mTaskSetPhoto;

    public boolean getAllowSetPhoto()
    {
      return this.mAllowSetPhoto;
    }

    public String getImagePath()
    {
      return this.mImagePath;
    }

    public boolean getIsRunningTaskSetPhoto()
    {
      return this.mIsRunningTaskSetPhoto;
    }

    public Intent getPreparedResult()
    {
      return this.mPreparedResult;
    }

    public void setActivity(FullSizeImageActivity paramFullSizeImageActivity)
    {
      if (this.mTaskSetPhoto != null)
        this.mTaskSetPhoto.setActivity(paramFullSizeImageActivity);
    }

    public void setAllowSetPhoto(boolean paramBoolean)
    {
      this.mAllowSetPhoto = paramBoolean;
    }

    public void setImagePath(String paramString)
    {
      this.mImagePath = paramString;
    }

    public void setIsRunningTaskSetPhoto(boolean paramBoolean)
    {
      this.mIsRunningTaskSetPhoto = paramBoolean;
    }

    public void setPreparedResult(Intent paramIntent)
    {
      this.mPreparedResult = paramIntent;
    }

    public void startTaskSetPhoto(FullSizeImageActivity paramFullSizeImageActivity, String paramString1, String paramString2, String paramString3)
    {
      if (!this.mIsRunningTaskSetPhoto)
      {
        this.mIsRunningTaskSetPhoto = true;
        this.mTaskSetPhoto = new FullSizeImageActivity.TaskSetPhoto(paramFullSizeImageActivity);
        AsyncTaskUtils.execute(this.mTaskSetPhoto, new String[] { paramString1, paramString2, paramString3 });
      }
    }
  }

  private static class TaskSetPhoto extends AsyncTask<String, Void, User>
  {
    private FullSizeImageActivity mActivity;
    private Exception mReason;

    public TaskSetPhoto(FullSizeImageActivity paramFullSizeImageActivity)
    {
      this.mActivity = paramFullSizeImageActivity;
    }

    protected User doInBackground(String[] paramArrayOfString)
    {
      try
      {
        User localUser = ((HomeApplication)this.mActivity.getApplication()).getServer().userUpdate(paramArrayOfString[0], paramArrayOfString[1], paramArrayOfString[2]);
        return localUser;
      }
      catch (Exception localException)
      {
        Log.e("FullSizeImageActivity", "Error submitting new profile photo.", localException);
        this.mReason = localException;
      }
      return null;
    }

    protected void onCancelled()
    {
      if (this.mActivity != null)
        this.mActivity.onTaskSetPhotoComplete(null, new ServerException(this.mActivity.getResources().getString(2131296287)));
    }

    protected void onPostExecute(User paramUser)
    {
      if (this.mActivity != null)
        this.mActivity.onTaskSetPhotoComplete(paramUser, this.mReason);
    }

    protected void onPreExecute()
    {
      this.mActivity.onTaskSetPhotoCompleteStart();
    }

    public void setActivity(FullSizeImageActivity paramFullSizeImageActivity)
    {
      this.mActivity = paramFullSizeImageActivity;
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.act.FullSizeImageActivity
 * JD-Core Version:    0.6.0
 */