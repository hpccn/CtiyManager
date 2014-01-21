package com.cymobile.ymwork.act;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.TextView;
import com.cymobile.ymwork.HomeApplication;
import com.cymobile.ymwork.ISystemService;
import com.cymobile.ymwork.ISystemService.Stub;
import com.cymobile.ymwork.SettingBase;
import com.cymobile.ymwork.SystemService;
import com.cymobile.ymwork.preference.PreferencesUtils;
import com.cymobile.ymwork.types.CaseNumber;

public class Main11Activity extends Activity
{
  public static final boolean DEBUG = true;
  private static final int Msg_intent_resetCaseNumber = 17;
  public static final String TAG = "Main11Activity";
  static CaseNumber numbers;
  private boolean forceExtra18 = false;
  Handler handler = new UIHandler();
  HomeApplication homeApplication;
  public ISystemService iSystemService;
  private BroadcastReceiver mNumberReceiver = new BroadcastReceiver()
  {
    public void onReceive(Context paramContext, Intent paramIntent)
    {
      Main11Activity.this.readNumberFromService();
    }
  };
  private SharedPreferences mPrefs;
  private final ServiceConnection serviceConnection = new ServiceConnection()
  {
    public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
    {
      Main11Activity.this.iSystemService = ISystemService.Stub.asInterface(paramIBinder);
      try
      {
        Main11Activity.this.readNumberFromService();
        Main11Activity.this.iSystemService.readServerInfo();
        Main11Activity.this.iSystemService.cancelNotification();
        return;
      }
      catch (RemoteException localRemoteException)
      {
        localRemoteException.printStackTrace();
      }
    }

    public void onServiceDisconnected(ComponentName paramComponentName)
    {
      Main11Activity.this.iSystemService = null;
    }
  };
  Button shopClass1;
  Button shopClass2;
  Button shopClass3;
  private String userZoneId;
  private String userZoneName;

  private void ensureUi()
  {
    ((ImageButton)findViewById(2131230765)).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        Main11Activity.this.onBackPressed();
      }
    });
    ((Button)findViewById(2131230768)).setVisibility(4);
    ((TextView)findViewById(2131230767)).setText(2131296463);
    this.shopClass1 = ((Button)findViewById(2131230747));
    this.shopClass2 = ((Button)findViewById(2131230748));
    this.shopClass3 = ((Button)findViewById(2131230749));
    if ((getIntent() != null) && (getIntent().getExtras() != null) && (getIntent().getExtras().getString("userZoneId") != null) && (getIntent().getExtras().getString("userZoneName") != null))
    {
      this.forceExtra18 = true;
      this.userZoneId = getIntent().getExtras().getString("userZoneId");
      this.userZoneName = getIntent().getExtras().getString("userZoneName");
    }
    this.shopClass1.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        Intent localIntent = new Intent(Main11Activity.this, MainClassFireServiceAct.class);
        localIntent.putExtra("Intent_ClassId", 4);
        localIntent.putExtra("EM", "1");
        localIntent.putExtra("userZoneId", Main11Activity.this.userZoneId);
        localIntent.putExtra("userZoneName", Main11Activity.this.userZoneName);
        Main11Activity.this.startActivity(localIntent);
      }
    });
    this.shopClass2.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        Intent localIntent = new Intent(Main11Activity.this, MainClassFireServiceAct.class);
        localIntent.putExtra("Intent_ClassId", 4);
        localIntent.putExtra("EM", "2");
        localIntent.putExtra("userZoneId", Main11Activity.this.userZoneId);
        localIntent.putExtra("userZoneName", Main11Activity.this.userZoneName);
        Main11Activity.this.startActivity(localIntent);
      }
    });
    this.shopClass3.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        Intent localIntent = new Intent(Main11Activity.this, MainClassFireServiceAct.class);
        localIntent.putExtra("Intent_ClassId", 4);
        localIntent.putExtra("EM", "3");
        localIntent.putExtra("userZoneId", Main11Activity.this.userZoneId);
        localIntent.putExtra("userZoneName", Main11Activity.this.userZoneName);
        Main11Activity.this.startActivity(localIntent);
      }
    });
  }

  private void readNumberFromService()
  {
    if (this.iSystemService != null);
    try
    {
      int[] arrayOfInt = this.iSystemService.getCurrentCaseNumber();
      if (arrayOfInt != null)
      {
        CaseNumber localCaseNumber = new CaseNumber();
        localCaseNumber.setClassNumber(0, arrayOfInt[0]);
        localCaseNumber.setClassNumber(1, arrayOfInt[1]);
        localCaseNumber.setClassNumber(2, arrayOfInt[2]);
        localCaseNumber.setClassNumber(3, arrayOfInt[3]);
        localCaseNumber.setClassNumber(4, arrayOfInt[4]);
        localCaseNumber.setClassNumber(5, arrayOfInt[5]);
        localCaseNumber.setClassNumber(6, arrayOfInt[6]);
        localCaseNumber.setClassNumber(7, arrayOfInt[7]);
        localCaseNumber.setClassNumber(8, arrayOfInt[8]);
        localCaseNumber.setClassNumber(9, arrayOfInt[9]);
        localCaseNumber.setClassNumber(10, arrayOfInt[10]);
        localCaseNumber.setClassNumber(11, arrayOfInt[11]);
        localCaseNumber.setClassNumber(12, arrayOfInt[12]);
        localCaseNumber.setClassNumber(13, arrayOfInt[13]);
        localCaseNumber.setClassNumber(14, arrayOfInt[14]);
        localCaseNumber.setClassNumber(15, arrayOfInt[15]);
        localCaseNumber.setClassNumber(16, arrayOfInt[16]);
        numbers = localCaseNumber;
        this.handler.sendEmptyMessageDelayed(17, 10L);
      }
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903070);
    this.mPrefs = getSharedPreferences(SettingBase.class.getName(), 2);
    ensureUi();
  }

  public void onDestroy()
  {
    super.onDestroy();
    try
    {
      numbers = null;
      getApplicationContext().unbindService(this.serviceConnection);
      unregisterReceiver(this.mNumberReceiver);
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
  }

  public void onResume()
  {
    super.onResume();
    registerReceiver(this.mNumberReceiver, new IntentFilter("com.cymobile.ymwork.intent.action.CASE_NUMBER_UPDATED"));
    Intent localIntent = new Intent(this, SystemService.class);
    startService(localIntent);
    getApplicationContext().bindService(localIntent, this.serviceConnection, 1);
    if ((numbers != null) && (this.handler != null))
      this.handler.sendEmptyMessageDelayed(17, 10L);
    readNumberFromService();
  }

  public void resetCaseNumber()
  {
    if (this.forceExtra18);
    do
      return;
    while (numbers == null);
    int i = numbers.getClassNumber(4) - PreferencesUtils.getReadNumber(this.mPrefs, 4);
    int j = numbers.getClassNumber(6) - PreferencesUtils.getReadNumber(this.mPrefs, 6);
    int k = numbers.getClassNumber(7) - PreferencesUtils.getReadNumber(this.mPrefs, 7);
    Button localButton1 = (Button)findViewById(2131230818);
    Button localButton2 = (Button)findViewById(2131230819);
    Button localButton3 = (Button)findViewById(2131230820);
    Button localButton4 = (Button)findViewById(2131230821);
    Button localButton5 = (Button)findViewById(2131230822);
    Button localButton6 = (Button)findViewById(2131230823);
    if (numbers.getClassNumber(4) > 0)
    {
      localButton1.setText(numbers.getClassNumber(4));
      localButton1.setBackgroundResource(2130837858);
      localButton1.setVisibility(0);
      if (i > 0)
      {
        localButton2.setText(i);
        localButton2.setBackgroundResource(2130837857);
        localButton2.setVisibility(0);
        if (numbers.getClassNumber(6) <= 0)
          break label437;
        localButton3.setText(numbers.getClassNumber(6));
        localButton3.setBackgroundResource(2130837858);
        localButton3.setVisibility(0);
        if (j <= 0)
          break label427;
        localButton4.setText(j);
        localButton4.setBackgroundResource(2130837857);
        localButton4.setVisibility(0);
      }
    }
    while (true)
    {
      if (numbers.getClassNumber(7) <= 0)
        break label462;
      localButton5.setText(numbers.getClassNumber(7));
      localButton5.setBackgroundResource(2130837858);
      localButton5.setVisibility(0);
      if (k <= 0)
        break label454;
      localButton6.setText(k);
      localButton6.setBackgroundResource(2130837857);
      localButton6.setVisibility(0);
      return;
      localButton2.setVisibility(8);
      break;
      localButton1.setVisibility(8);
      localButton2.setVisibility(8);
      break;
      label427: localButton4.setVisibility(8);
      continue;
      label437: localButton3.setVisibility(8);
      localButton4.setVisibility(8);
    }
    label454: localButton6.setVisibility(8);
    return;
    label462: localButton5.setVisibility(8);
    localButton6.setVisibility(8);
  }

  class UIHandler extends Handler
  {
    UIHandler()
    {
    }

    public void handleMessage(Message paramMessage)
    {
      if (paramMessage.what == 17)
      {
        Main11Activity.this.handler.removeMessages(17);
        Main11Activity.this.resetCaseNumber();
      }
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.act.Main11Activity
 * JD-Core Version:    0.6.0
 */