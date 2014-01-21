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

public class Main1Activity extends Activity
{
  public static final boolean DEBUG = true;
  private static final int Msg_intent_resetCaseNumber = 17;
  public static final String TAG = "Main1Activity";
  static CaseNumber numbers;
  Handler handler = new UIHandler();
  HomeApplication homeApplication;
  public ISystemService iSystemService;
  private BroadcastReceiver mNumberReceiver = new BroadcastReceiver()
  {
    public void onReceive(Context paramContext, Intent paramIntent)
    {
      Main1Activity.this.readNumberFromService();
    }
  };
  private SharedPreferences mPrefs;
  private final ServiceConnection serviceConnection = new ServiceConnection()
  {
    public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
    {
      Main1Activity.this.iSystemService = ISystemService.Stub.asInterface(paramIBinder);
      try
      {
        Main1Activity.this.readNumberFromService();
        Main1Activity.this.iSystemService.readServerInfo();
        Main1Activity.this.iSystemService.cancelNotification();
        return;
      }
      catch (RemoteException localRemoteException)
      {
        localRemoteException.printStackTrace();
      }
    }

    public void onServiceDisconnected(ComponentName paramComponentName)
    {
      Main1Activity.this.iSystemService = null;
    }
  };
  Button shopClass1;
  Button shopClass2;

  private void ensureUi()
  {
    ((ImageButton)findViewById(2131230765)).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        Main1Activity.this.onBackPressed();
      }
    });
    ((Button)findViewById(2131230768)).setVisibility(4);
    ((TextView)findViewById(2131230767)).setText(2131296462);
    this.shopClass1 = ((Button)findViewById(2131230747));
    this.shopClass2 = ((Button)findViewById(2131230748));
    this.shopClass1.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        Main1Activity.this.gotomain11(paramView);
      }
    });
    this.shopClass2.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
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

  public void gotomain11(View paramView)
  {
    startActivity(new Intent(this, Main11Activity.class));
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903072);
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
    Button localButton1;
    Button localButton2;
    if (numbers != null)
    {
      int i = numbers.getClassNumber(4) - PreferencesUtils.getReadNumber(this.mPrefs, 4);
      int j = numbers.getClassNumber(6) - PreferencesUtils.getReadNumber(this.mPrefs, 6);
      int k = numbers.getClassNumber(7) - PreferencesUtils.getReadNumber(this.mPrefs, 7);
      localButton1 = (Button)findViewById(2131230818);
      localButton2 = (Button)findViewById(2131230819);
      if ((numbers.getClassNumber(4) <= 0) && (numbers.getClassNumber(6) <= 0) && (numbers.getClassNumber(7) <= 0))
        break label228;
      localButton1.setText(numbers.getClassNumber(4) + numbers.getClassNumber(6) + numbers.getClassNumber(7));
      localButton1.setBackgroundResource(2130837858);
      localButton1.setVisibility(0);
      if ((i > 0) || (j > 0) || (k > 0))
      {
        localButton2.setText(k + (i + j));
        localButton2.setBackgroundResource(2130837857);
        localButton2.setVisibility(0);
      }
    }
    else
    {
      return;
    }
    localButton2.setVisibility(8);
    return;
    label228: localButton1.setVisibility(8);
    localButton2.setVisibility(8);
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
        Main1Activity.this.handler.removeMessages(17);
        Main1Activity.this.resetCaseNumber();
      }
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.act.Main1Activity
 * JD-Core Version:    0.6.0
 */