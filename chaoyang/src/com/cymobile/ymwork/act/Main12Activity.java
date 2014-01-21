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

public class Main12Activity extends Activity
{
  public static final boolean DEBUG = true;
  private static final int Msg_intent_resetCaseNumber = 17;
  public static final String TAG = "Main12Activity";
  static CaseNumber numbers;
  Handler handler = new UIHandler();
  HomeApplication homeApplication;
  public ISystemService iSystemService;
  private BroadcastReceiver mNumberReceiver = new BroadcastReceiver()
  {
    public void onReceive(Context paramContext, Intent paramIntent)
    {
      Main12Activity.this.readNumberFromService();
    }
  };
  private SharedPreferences mPrefs;
  private final ServiceConnection serviceConnection = new ServiceConnection()
  {
    public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
    {
      Main12Activity.this.iSystemService = ISystemService.Stub.asInterface(paramIBinder);
      try
      {
        Main12Activity.this.readNumberFromService();
        Main12Activity.this.iSystemService.readServerInfo();
        Main12Activity.this.iSystemService.cancelNotification();
        return;
      }
      catch (RemoteException localRemoteException)
      {
        localRemoteException.printStackTrace();
      }
    }

    public void onServiceDisconnected(ComponentName paramComponentName)
    {
      Main12Activity.this.iSystemService = null;
    }
  };
  Button shopClass1;
  Button shopClass2;
  Button shopClass3;

  private void ensureUi()
  {
    ((ImageButton)findViewById(2131230765)).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        Main12Activity.this.onBackPressed();
      }
    });
    ((Button)findViewById(2131230768)).setVisibility(4);
    ((TextView)findViewById(2131230767)).setText(2131296463);
    this.shopClass1 = ((Button)findViewById(2131230747));
    this.shopClass2 = ((Button)findViewById(2131230748));
    this.shopClass3 = ((Button)findViewById(2131230749));
    Intent localIntent = new Intent(this, NearbySearchActivity.class);
    this.shopClass1.setOnClickListener(new View.OnClickListener(localIntent)
    {
      public void onClick(View paramView)
      {
        this.val$shopListIntent.putExtra("Intent_ClassId", 0);
        Main12Activity.this.startActivity(this.val$shopListIntent);
      }
    });
    this.shopClass2.setOnClickListener(new View.OnClickListener(localIntent)
    {
      public void onClick(View paramView)
      {
        this.val$shopListIntent.putExtra("Intent_ClassId", 1);
        Main12Activity.this.startActivity(this.val$shopListIntent);
      }
    });
    this.shopClass3.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        Intent localIntent = new Intent(Main12Activity.this, MainClassConstrustionFieldAct.class);
        localIntent.putExtra("Intent_ClassId", 3);
        Main12Activity.this.startActivity(localIntent);
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
    setContentView(2130903071);
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
    int k;
    Button localButton1;
    Button localButton2;
    Button localButton3;
    Button localButton4;
    if (numbers != null)
    {
      int i = numbers.getClassNumber(0) - PreferencesUtils.getReadNumber(this.mPrefs, 0);
      int j = numbers.getClassNumber(1) - PreferencesUtils.getReadNumber(this.mPrefs, 1);
      k = numbers.getClassNumber(3) - PreferencesUtils.getReadNumber(this.mPrefs, 3);
      localButton1 = (Button)findViewById(2131230818);
      localButton2 = (Button)findViewById(2131230819);
      if (numbers.getClassNumber(0) <= 0)
        break label386;
      localButton1.setText(numbers.getClassNumber(0));
      localButton1.setBackgroundResource(2130837858);
      localButton1.setVisibility(0);
      if (i <= 0)
        break label376;
      localButton2.setText(i);
      localButton2.setBackgroundResource(2130837857);
      localButton2.setVisibility(0);
      localButton3 = (Button)findViewById(2131230820);
      localButton4 = (Button)findViewById(2131230821);
      if (numbers.getClassNumber(1) <= 0)
        break label413;
      localButton3.setText(numbers.getClassNumber(1));
      localButton3.setBackgroundResource(2130837858);
      localButton3.setVisibility(0);
      if (j <= 0)
        break label403;
      localButton4.setText(j);
      localButton4.setBackgroundResource(2130837857);
      localButton4.setVisibility(0);
    }
    Button localButton5;
    Button localButton6;
    while (true)
    {
      localButton5 = (Button)findViewById(2131230822);
      localButton6 = (Button)findViewById(2131230823);
      if (numbers.getClassNumber(3) <= 0)
        break label438;
      localButton5.setText(numbers.getClassNumber(3));
      localButton5.setBackgroundResource(2130837858);
      localButton5.setVisibility(0);
      if (k <= 0)
        break label430;
      localButton6.setText(k);
      localButton6.setBackgroundResource(2130837857);
      localButton6.setVisibility(0);
      return;
      label376: localButton2.setVisibility(8);
      break;
      label386: localButton1.setVisibility(8);
      localButton2.setVisibility(8);
      break;
      label403: localButton4.setVisibility(8);
      continue;
      label413: localButton3.setVisibility(8);
      localButton4.setVisibility(8);
    }
    label430: localButton6.setVisibility(8);
    return;
    label438: localButton5.setVisibility(8);
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
        Main12Activity.this.handler.removeMessages(17);
        Main12Activity.this.resetCaseNumber();
      }
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.act.Main12Activity
 * JD-Core Version:    0.6.0
 */