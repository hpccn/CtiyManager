package com.cymobile.ymwork.act;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.app.TabActivity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.View;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TabHost;
import android.widget.TabHost.OnTabChangeListener;
import android.widget.TabHost.TabSpec;
import android.widget.TabWidget;
import android.widget.TextView;
import com.cymobile.ymwork.HomeApplication;
import com.cymobile.ymwork.SettingBase;
import java.util.ArrayList;
import java.util.List;

public class MainActivityGroup extends TabActivity
  implements TabHost.OnTabChangeListener
{
  private static final int Dialog_confirm_quit = 10;
  public static final String Intent_init_TAB = "Intent_init_TAB";
  public static final String Intent_init_TAB_Class = "Intent_init_TAB_CLASS";
  static final String TAG = "MainActivityGroup";
  public static boolean isInFront = false;
  private final int DELAY_TIME = 500;
  private final int INIT_SELECT = 0;
  private int count = 0;
  HomeApplication homeApplication;
  public List<ImageView> imageList = new ArrayList();
  private Handler initSelectTabHandle = new Handler()
  {
    public void handleMessage(Message paramMessage)
    {
      switch (paramMessage.what)
      {
      default:
      case 0:
      }
      while (true)
      {
        super.handleMessage(paramMessage);
        return;
        MainActivityGroup.this.findViewById(2131230867).setBackgroundResource(2130837798);
      }
    }
  };
  private int mCurSelectTabIndex = 0;
  private TabHost mTabHost;

  private void initTabHost()
  {
    if (this.mTabHost != null)
      throw new IllegalStateException("Trying to intialize already initializd TabHost");
    this.mTabHost = getTabHost();
    new Intent(this, TabFourActivityGroup.class).addFlags(1075838976);
    this.mTabHost.addTab(this.mTabHost.newTabSpec("tab_1").setIndicator(composeLayout(getResources().getString(2131296271), 2130837813)).setContent(new Intent(this, NearbyActivityGroup.class)));
    this.mTabHost.addTab(this.mTabHost.newTabSpec("tab_3").setIndicator(composeLayout(getResources().getString(2131296273), 2130837815)).setContent(new Intent(this, TabThreeActivityGroup.class)));
    this.mTabHost.addTab(this.mTabHost.newTabSpec("tab_2").setIndicator(composeLayout(getResources().getString(2131296272), 2130837814)).setContent(new Intent(this, TabTwoActivityGroup.class)));
    this.mTabHost.addTab(this.mTabHost.newTabSpec("tab_4").setIndicator(composeLayout(getResources().getString(2131296274), 2130837816)).setContent(new Intent(this, TabFourActivityGroup.class)));
    this.mTabHost.setCurrentTab(0);
    this.mTabHost.setOnTabChangedListener(this);
    this.mTabHost.setBackgroundResource(2130837508);
    Message localMessage = new Message();
    localMessage.what = 0;
    this.initSelectTabHandle.sendMessageDelayed(localMessage, 500L);
    if (getIntent() != null)
    {
      Intent localIntent = getIntent();
      if ((localIntent.getExtras() != null) && (localIntent.getExtras().containsKey("Intent_init_TAB")))
      {
        int i = localIntent.getExtras().getInt("Intent_init_TAB");
        this.mTabHost.setCurrentTab(i);
        if (i == 3)
          localIntent.getExtras().containsKey("Intent_init_TAB_CLASS");
      }
    }
  }

  public View composeLayout(String paramString, int paramInt)
  {
    LinearLayout localLinearLayout = new LinearLayout(this);
    localLinearLayout.setOrientation(1);
    ImageView localImageView = new ImageView(this);
    this.imageList.add(localImageView);
    localImageView.setImageResource(paramInt);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -2);
    localLayoutParams.setMargins(0, 5, 0, 0);
    localLinearLayout.addView(localImageView, localLayoutParams);
    TextView localTextView = new TextView(this);
    localTextView.setGravity(17);
    localTextView.setSingleLine(true);
    localTextView.setText(paramString);
    localTextView.setTextColor(-1);
    localTextView.setTextSize(14.0F);
    localLinearLayout.addView(localTextView, new LinearLayout.LayoutParams(-1, -2));
    return localLinearLayout;
  }

  public void moveTopSelect(int paramInt)
  {
    View localView = findViewById(2131230867);
    switch (paramInt)
    {
    default:
    case 0:
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      int i = getTabWidget().getChildAt(this.mCurSelectTabIndex).getWidth();
      localView.getLayoutParams().width = i;
      int j = getTabWidget().getChildAt(this.mCurSelectTabIndex).getLeft() + getTabWidget().getChildAt(this.mCurSelectTabIndex).getWidth() / 2 - localView.getWidth() / 2;
      int k = getTabWidget().getChildAt(paramInt).getLeft() + getTabWidget().getChildAt(paramInt).getWidth() / 2;
      int m = k - localView.getWidth() / 2;
      TranslateAnimation localTranslateAnimation = new TranslateAnimation(j, m - localView.getLeft(), 0.0F, 0.0F);
      localTranslateAnimation.setDuration(200L);
      localTranslateAnimation.setFillAfter(true);
      localView.bringToFront();
      localView.startAnimation(localTranslateAnimation);
      this.mCurSelectTabIndex = paramInt;
      Log.i("liwj", "组件距离左边距" + localView.getLeft());
      Log.i("fs", "endMid  " + k + "  startLeft  " + j + "  endLeft" + (m - localView.getLeft()));
      return;
      localView.setBackgroundResource(2130837797);
      continue;
      localView.setBackgroundResource(2130837800);
      continue;
      localView.setBackgroundResource(2130837801);
      continue;
      localView.setBackgroundResource(2130837799);
    }
  }

  public void onBackPressed()
  {
    try
    {
      showDialog(10);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      super.onBackPressed();
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    this.homeApplication = ((HomeApplication)getApplication());
    if (!this.homeApplication.haveId())
    {
      getSharedPreferences(SettingBase.class.getName(), 2);
      this.homeApplication.setServerCredentials();
    }
    while (true)
    {
      setContentView(2130903077);
      initTabHost();
      return;
      this.homeApplication.setServerCredentials();
    }
  }

  protected Dialog onCreateDialog(int paramInt)
  {
    if (paramInt == 10)
    {
      AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
      localBuilder.setMessage("确认退出吗？");
      localBuilder.setTitle("提示");
      localBuilder.setPositiveButton("确认", new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramDialogInterface, int paramInt)
        {
          paramDialogInterface.dismiss();
          MainActivityGroup.this.getSharedPreferences(SettingBase.class.getName(), 2).edit().commit();
          MainActivityGroup.this.onBackPressed();
          MainActivityGroup.this.finish();
        }
      });
      localBuilder.setNegativeButton("取消", new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramDialogInterface, int paramInt)
        {
          paramDialogInterface.dismiss();
        }
      });
      return localBuilder.create();
    }
    return super.onCreateDialog(paramInt);
  }

  public void onDestroy()
  {
    super.onDestroy();
  }

  public void onResume()
  {
    super.onResume();
    if (!this.homeApplication.haveId())
    {
      HomeApplication.redirectToLoginActivityAndNoBack(this);
      return;
    }
    isInFront = true;
  }

  public void onStop()
  {
    super.onStop();
    isInFront = false;
  }

  public void onTabChanged(String paramString)
  {
    this.count = (1 + this.count);
    if (paramString.equalsIgnoreCase("tab_1"))
      moveTopSelect(0);
    do
    {
      return;
      if (paramString.equalsIgnoreCase("tab_2"))
      {
        moveTopSelect(2);
        return;
      }
      if (!paramString.equalsIgnoreCase("tab_3"))
        continue;
      moveTopSelect(1);
      return;
    }
    while (!paramString.equalsIgnoreCase("tab_4"));
    moveTopSelect(3);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.act.MainActivityGroup
 * JD-Core Version:    0.6.0
 */