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
import android.view.Display;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import com.cymobile.ymwork.HomeApplication;
import com.cymobile.ymwork.ISystemService;
import com.cymobile.ymwork.ISystemService.Stub;
import com.cymobile.ymwork.SettingBase;
import com.cymobile.ymwork.SystemService;

public class SplashScreenActivity2 extends Activity
{
  private static final String TAG = "SplashScreenActivity";
  HomeApplication homeApplication;
  public ISystemService iSystemService;
  ImageView logo;
  SharedPreferences mPrefs = null;
  ImageView photo;
  private final ServiceConnection serviceConnection = new ServiceConnection()
  {
    public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
    {
      SplashScreenActivity2.this.iSystemService = ISystemService.Stub.asInterface(paramIBinder);
    }

    public void onServiceDisconnected(ComponentName paramComponentName)
    {
      SplashScreenActivity2.this.iSystemService = null;
    }
  };
  ImageView word;

  private void gotoNext()
  {
    if (this.homeApplication.isLogined())
      startActivity(new Intent(this, MainActivityGroup.class));
    while (true)
    {
      finish();
      return;
      startActivity(new Intent(this, SetZoneActivity.class));
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    getWindow().setFlags(1024, 1024);
    new Intent(this, SystemService.class);
    setContentView(2130903106);
    this.homeApplication = ((HomeApplication)getApplication());
    this.photo = ((ImageView)findViewById(2131230996));
    this.word = ((ImageView)findViewById(2131230997));
    this.logo = ((ImageView)findViewById(2131230998));
    this.word.setVisibility(4);
    this.logo.setVisibility(4);
  }

  public void onResume()
  {
    super.onResume();
    this.logo.setVisibility(0);
    Display localDisplay = getWindowManager().getDefaultDisplay();
    int i = localDisplay.getWidth();
    int j = localDisplay.getHeight();
    this.logo.getTop();
    this.logo.getLeft();
    int k = this.logo.getWidth();
    int m = this.logo.getHeight();
    this.logo.layout(i - k, j - 25 - m, i, j - 25);
    this.logo.invalidate();
    this.logo.refreshDrawableState();
    this.logo.setVisibility(0);
    ScaleAnimation localScaleAnimation = new ScaleAnimation(0.5F, 1.0F, 0.5F, 1.0F, 1, 0.5F, 1, 0.5F);
    localScaleAnimation.setDuration(1200L);
    localScaleAnimation.setAnimationListener(new Animation.AnimationListener(j)
    {
      public void onAnimationEnd(Animation paramAnimation)
      {
        TranslateAnimation localTranslateAnimation = new TranslateAnimation(0.0F, -SplashScreenActivity2.this.logo.getLeft(), 0.0F, -SplashScreenActivity2.this.logo.getHeight() - this.val$height / 2);
        localTranslateAnimation.setDuration(1200L);
        localTranslateAnimation.setAnimationListener(new Animation.AnimationListener(this.val$height)
        {
          public void onAnimationEnd(Animation paramAnimation)
          {
            SplashScreenActivity2.this.word.layout(0, this.val$height / 2 - SplashScreenActivity2.this.logo.getHeight(), 0 + SplashScreenActivity2.this.word.getWidth(), this.val$height / 2 - SplashScreenActivity2.this.logo.getHeight() + SplashScreenActivity2.this.word.getHeight());
            SplashScreenActivity2.this.word.setVisibility(0);
            ScaleAnimation localScaleAnimation = new ScaleAnimation(0.5F, 1.0F, 0.5F, 1.0F, 1, 0.5F, 1, 0.5F);
            localScaleAnimation.setDuration(1200L);
            localScaleAnimation.setFillAfter(true);
            SplashScreenActivity2.this.word.setVisibility(0);
            SplashScreenActivity2.this.word.startAnimation(localScaleAnimation);
          }

          public void onAnimationRepeat(Animation paramAnimation)
          {
          }

          public void onAnimationStart(Animation paramAnimation)
          {
          }
        });
        SplashScreenActivity2.this.logo.startAnimation(localTranslateAnimation);
        localTranslateAnimation.setFillAfter(true);
      }

      public void onAnimationRepeat(Animation paramAnimation)
      {
      }

      public void onAnimationStart(Animation paramAnimation)
      {
      }
    });
    this.logo.startAnimation(localScaleAnimation);
    new Handler().postDelayed(new Runnable()
    {
      public void run()
      {
        try
        {
          int i = SplashScreenActivity2.this.getPackageManager().getPackageInfo(SplashScreenActivity2.this.getPackageName(), 0).versionCode;
          SharedPreferences localSharedPreferences = SplashScreenActivity2.this.getSharedPreferences(SettingBase.class.getName(), 0);
          if (i > localSharedPreferences.getInt("key_help_Showed_version", -1))
          {
            SharedPreferences.Editor localEditor = localSharedPreferences.edit();
            localEditor.putInt("key_help_Showed_version", i);
            localEditor.commit();
          }
          SplashScreenActivity2.this.gotoNext();
          SplashScreenActivity2.this.overridePendingTransition(2130968576, 2130968577);
          SplashScreenActivity2.this.overridePendingTransition(2130968576, 2130968577);
          return;
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
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.act.SplashScreenActivity2
 * JD-Core Version:    0.6.0
 */