package com.cymobile.ymwork.act;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.util.Log;
import android.view.Display;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import com.cymobile.ymwork.ISystemService;
import com.cymobile.ymwork.ISystemService.Stub;
import com.cymobile.ymwork.SettingBase;
import com.cymobile.ymwork.SystemService;

public class SplashScreenActivity extends Activity
{
  private static final String TAG = "SplashScreenActivity";
  public ISystemService iSystemService;
  SharedPreferences mPrefs = null;
  private final ServiceConnection serviceConnection = new ServiceConnection()
  {
    public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
    {
      SplashScreenActivity.this.iSystemService = ISystemService.Stub.asInterface(paramIBinder);
    }

    public void onServiceDisconnected(ComponentName paramComponentName)
    {
      SplashScreenActivity.this.iSystemService = null;
    }
  };

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    getWindow().setFlags(1024, 1024);
    Intent localIntent = new Intent(this, SystemService.class);
    startService(localIntent);
    bindService(localIntent, this.serviceConnection, 0);
    setContentView(2130903104);
    ((ImageView)findViewById(2131230996));
    ImageView localImageView1 = (ImageView)findViewById(2131230997);
    ImageView localImageView2 = (ImageView)findViewById(2131230998);
    ScaleAnimation localScaleAnimation = new ScaleAnimation(0.1F, 1.0F, 0.1F, 1.0F, 1, 0.5F, 1, 0.5F);
    localScaleAnimation.setDuration(1400L);
    localScaleAnimation.setAnimationListener(new Animation.AnimationListener(localImageView2)
    {
      public void onAnimationEnd(Animation paramAnimation)
      {
        Display localDisplay = SplashScreenActivity.this.getWindowManager().getDefaultDisplay();
        int i = localDisplay.getWidth();
        int j = localDisplay.getHeight();
        int k = this.val$logo.getTop();
        int m = this.val$logo.getLeft();
        this.val$logo.getWidth();
        this.val$logo.getHeight();
        Log.i("SplashScreenActivity", "logo.getWidth()" + this.val$logo.getWidth() + " logoOrigLeft " + m);
        this.val$logo.layout(i - this.val$logo.getWidth(), j - 25 - this.val$logo.getHeight(), i, j - 25);
        this.val$logo.setVisibility(0);
        ScaleAnimation localScaleAnimation = new ScaleAnimation(0.5F, 1.0F, 0.5F, 1.0F, 1, 0.5F, 1, 0.5F);
        localScaleAnimation.setDuration(1200L);
        localScaleAnimation.setAnimationListener(new Animation.AnimationListener(this.val$logo, m, k)
        {
          public void onAnimationEnd(Animation paramAnimation)
          {
            TranslateAnimation localTranslateAnimation = new TranslateAnimation(0.0F, -this.val$logo.getLeft() + this.val$logoOrigLeft, 0.0F, -this.val$logo.getTop() + this.val$logoOrigTop);
            localTranslateAnimation.setDuration(1200L);
            localTranslateAnimation.setAnimationListener(new Animation.AnimationListener()
            {
              public void onAnimationEnd(Animation paramAnimation)
              {
              }

              public void onAnimationRepeat(Animation paramAnimation)
              {
              }

              public void onAnimationStart(Animation paramAnimation)
              {
              }
            });
            localTranslateAnimation.setFillAfter(true);
            this.val$logo.startAnimation(localTranslateAnimation);
          }

          public void onAnimationRepeat(Animation paramAnimation)
          {
          }

          public void onAnimationStart(Animation paramAnimation)
          {
          }
        });
        this.val$logo.startAnimation(localScaleAnimation);
      }

      public void onAnimationRepeat(Animation paramAnimation)
      {
      }

      public void onAnimationStart(Animation paramAnimation)
      {
      }
    });
    localImageView1.startAnimation(localScaleAnimation);
    new Handler().postDelayed(new Runnable()
    {
      public void run()
      {
        try
        {
          int i = SplashScreenActivity.this.getPackageManager().getPackageInfo(SplashScreenActivity.this.getPackageName(), 0).versionCode;
          SharedPreferences localSharedPreferences = SplashScreenActivity.this.getSharedPreferences(SettingBase.class.getName(), 0);
          if (i > localSharedPreferences.getInt("key_help_Showed_version", -1))
          {
            SharedPreferences.Editor localEditor = localSharedPreferences.edit();
            localEditor.putInt("key_help_Showed_version", i);
            localEditor.commit();
            Intent localIntent2 = new Intent(SplashScreenActivity.this, MainActivityGroup.class);
            SplashScreenActivity.this.startActivity(localIntent2);
            SplashScreenActivity.this.finish();
            SplashScreenActivity.this.overridePendingTransition(2130968576, 2130968577);
          }
          while (true)
          {
            SplashScreenActivity.this.overridePendingTransition(2130968576, 2130968577);
            return;
            Intent localIntent1 = new Intent(SplashScreenActivity.this, MainActivityGroup.class);
            SplashScreenActivity.this.startActivity(localIntent1);
            SplashScreenActivity.this.finish();
            SplashScreenActivity.this.overridePendingTransition(2130968576, 2130968577);
          }
        }
        catch (PackageManager.NameNotFoundException localNameNotFoundException)
        {
          while (true)
            localNameNotFoundException.printStackTrace();
        }
      }
    }
    , 5000L);
  }

  public void onResume()
  {
    super.onResume();
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.act.SplashScreenActivity
 * JD-Core Version:    0.6.0
 */