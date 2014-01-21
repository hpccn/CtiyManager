package com.cymobile.ymwork.act;

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
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.ListView;
import android.widget.SimpleAdapter;
import android.widget.TextView;
import com.cymobile.ymwork.HomeApplication;
import com.cymobile.ymwork.ISystemService;
import com.cymobile.ymwork.ISystemService.Stub;
import com.cymobile.ymwork.SettingBase;
import com.cymobile.ymwork.SystemService;
import com.cymobile.ymwork.preference.PreferencesUtils;
import com.cymobile.ymwork.types.CaseNumber;

public class MainExtra18Activity extends FragmentActivity
{
  private static final int Msg_intent_resetCaseNumber = 17;
  private static final String TAG = "MainExtra18Activity";
  static CaseNumber numbers;
  Handler handler = new UIHandler();
  HomeApplication homeApplication;
  public ISystemService iSystemService;
  private BroadcastReceiver mLoggedOutReceiver = new BroadcastReceiver()
  {
    public void onReceive(Context paramContext, Intent paramIntent)
    {
      try
      {
        MainExtra18Activity.this.finish();
        return;
      }
      catch (Throwable localThrowable)
      {
        localThrowable.printStackTrace();
      }
    }
  };
  private BroadcastReceiver mNumberReceiver = new BroadcastReceiver()
  {
    public void onReceive(Context paramContext, Intent paramIntent)
    {
      MainExtra18Activity.this.readNumberFromService();
    }
  };
  private SharedPreferences mPrefs;
  boolean makeServiceReadNumberOnce = true;
  private final ServiceConnection serviceConnection = new ServiceConnection()
  {
    public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
    {
      MainExtra18Activity.this.iSystemService = ISystemService.Stub.asInterface(paramIBinder);
      try
      {
        if (MainExtra18Activity.this.makeServiceReadNumberOnce)
        {
          MainExtra18Activity.this.makeServiceReadNumberOnce = false;
          MainExtra18Activity.this.iSystemService.hushReadNumber();
        }
        MainExtra18Activity.this.readNumberFromService();
        MainExtra18Activity.this.iSystemService.readServerInfo();
        MainExtra18Activity.this.iSystemService.cancelNotification();
        return;
      }
      catch (RemoteException localRemoteException)
      {
        localRemoteException.printStackTrace();
      }
    }

    public void onServiceDisconnected(ComponentName paramComponentName)
    {
      MainExtra18Activity.this.iSystemService = null;
    }
  };
  Button shopClass1;
  Button shopClass2;
  Button shopClass3;
  Button shopClass4;
  Button shopClass5;
  Button shopClass6;
  Button shopClass7;
  Button shopClass8;
  Button shopClass9;

  private void ensureUi()
  {
    ((ImageButton)findViewById(2131230765)).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        MainExtra18Activity.this.onBackPressed();
      }
    });
    ((Button)findViewById(2131230768)).setVisibility(4);
    ((TextView)findViewById(2131230767)).setText("文明行政村（十八里店）");
    this.shopClass1 = ((Button)findViewById(2131230747));
    this.shopClass2 = ((Button)findViewById(2131230748));
    this.shopClass3 = ((Button)findViewById(2131230749));
    this.shopClass4 = ((Button)findViewById(2131230750));
    this.shopClass5 = ((Button)findViewById(2131230751));
    this.shopClass6 = ((Button)findViewById(2131230752));
    this.shopClass7 = ((Button)findViewById(2131230753));
    this.shopClass8 = ((Button)findViewById(2131230754));
    this.shopClass9 = ((Button)findViewById(2131230755));
    Intent localIntent = new Intent(this, MainClassFireServiceAct.class);
    this.shopClass1.setOnClickListener(new View.OnClickListener(localIntent)
    {
      public void onClick(View paramView)
      {
        this.val$shopListIntent.putExtra("userZoneId", "110105202");
        this.val$shopListIntent.putExtra("userZoneName", "十八里店地区");
        this.val$shopListIntent.putExtra("Intent_ClassId", 4);
        MainExtra18Activity.this.startActivity(this.val$shopListIntent);
      }
    });
    this.shopClass2.setOnClickListener(new View.OnClickListener(localIntent)
    {
      public void onClick(View paramView)
      {
        this.val$shopListIntent.putExtra("userZoneId", "110105202");
        this.val$shopListIntent.putExtra("userZoneName", "十八里店地区");
        this.val$shopListIntent.putExtra("Intent_ClassId", 8);
        MainExtra18Activity.this.startActivity(this.val$shopListIntent);
      }
    });
    this.shopClass3.setOnClickListener(new View.OnClickListener(localIntent)
    {
      public void onClick(View paramView)
      {
        this.val$shopListIntent.putExtra("userZoneId", "110105202");
        this.val$shopListIntent.putExtra("userZoneName", "十八里店地区");
        this.val$shopListIntent.putExtra("Intent_ClassId", 9);
        MainExtra18Activity.this.startActivity(this.val$shopListIntent);
      }
    });
    this.shopClass4.setOnClickListener(new View.OnClickListener(localIntent)
    {
      public void onClick(View paramView)
      {
        this.val$shopListIntent.putExtra("userZoneId", "110105202");
        this.val$shopListIntent.putExtra("userZoneName", "十八里店地区");
        this.val$shopListIntent.putExtra("Intent_ClassId", 10);
        MainExtra18Activity.this.startActivity(this.val$shopListIntent);
      }
    });
    this.shopClass5.setOnClickListener(new View.OnClickListener(localIntent)
    {
      public void onClick(View paramView)
      {
        this.val$shopListIntent.putExtra("userZoneId", "110105202");
        this.val$shopListIntent.putExtra("userZoneName", "十八里店地区");
        this.val$shopListIntent.putExtra("Intent_ClassId", 11);
        MainExtra18Activity.this.startActivity(this.val$shopListIntent);
      }
    });
    this.shopClass6.setOnClickListener(new View.OnClickListener(localIntent)
    {
      public void onClick(View paramView)
      {
        this.val$shopListIntent.putExtra("userZoneId", "110105202");
        this.val$shopListIntent.putExtra("userZoneName", "十八里店地区");
        this.val$shopListIntent.putExtra("Intent_ClassId", 12);
        MainExtra18Activity.this.startActivity(this.val$shopListIntent);
      }
    });
    this.shopClass7.setOnClickListener(new View.OnClickListener(localIntent)
    {
      public void onClick(View paramView)
      {
        this.val$shopListIntent.putExtra("userZoneId", "110105202");
        this.val$shopListIntent.putExtra("userZoneName", "十八里店地区");
        this.val$shopListIntent.putExtra("Intent_ClassId", 13);
        MainExtra18Activity.this.startActivity(this.val$shopListIntent);
      }
    });
    this.shopClass8.setOnClickListener(new View.OnClickListener(localIntent)
    {
      public void onClick(View paramView)
      {
        this.val$shopListIntent.putExtra("userZoneId", "110105202");
        this.val$shopListIntent.putExtra("userZoneName", "十八里店地区");
        this.val$shopListIntent.putExtra("Intent_ClassId", 14);
        MainExtra18Activity.this.startActivity(this.val$shopListIntent);
      }
    });
    this.shopClass9.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
      }
    });
    registerReceiver(this.mLoggedOutReceiver, new IntentFilter("com.cymobile.ymwork.intent.action.LOGGED_OUT"));
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

  public static void setListViewHeightBasedOnChildren(ListView paramListView)
  {
    SimpleAdapter localSimpleAdapter = (SimpleAdapter)paramListView.getAdapter();
    if (localSimpleAdapter == null)
      return;
    int i = 0;
    for (int j = 0; ; j++)
    {
      if (j >= localSimpleAdapter.getCount())
      {
        ViewGroup.LayoutParams localLayoutParams = paramListView.getLayoutParams();
        localLayoutParams.height = (i + paramListView.getDividerHeight() * (-1 + localSimpleAdapter.getCount()));
        paramListView.setLayoutParams(localLayoutParams);
        return;
      }
      View localView = localSimpleAdapter.getView(j, null, paramListView);
      localView.measure(0, 0);
      i += localView.getMeasuredHeight();
    }
  }

  public void onBackPressed()
  {
    super.onBackPressed();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.makeServiceReadNumberOnce = true;
    requestWindowFeature(1);
    setContentView(2130903076);
    this.homeApplication = ((HomeApplication)getApplication());
    this.mPrefs = getSharedPreferences(SettingBase.class.getName(), 2);
    ensureUi();
  }

  public void onDestroy()
  {
    super.onDestroy();
    try
    {
      numbers = null;
      this.shopClass4.setOnClickListener(null);
      this.shopClass5.setOnClickListener(null);
      this.shopClass6.setOnClickListener(null);
      this.shopClass7.setOnClickListener(null);
      this.shopClass8.setOnClickListener(null);
      this.shopClass9.setOnClickListener(null);
      getApplicationContext().unbindService(this.serviceConnection);
      unregisterReceiver(this.mNumberReceiver);
    }
    catch (Exception localException1)
    {
      try
      {
        while (true)
        {
          unregisterReceiver(this.mLoggedOutReceiver);
          return;
          localException1 = localException1;
          localException1.printStackTrace();
        }
      }
      catch (Exception localException2)
      {
        localException2.printStackTrace();
      }
    }
  }

  public void onResume()
  {
    super.onResume();
    if (!this.homeApplication.haveId())
    {
      HomeApplication.redirectToLoginActivityAndNoBack(getParent());
      finish();
    }
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
    int i2;
    Button localButton1;
    Button localButton2;
    Button localButton3;
    Button localButton4;
    Button localButton5;
    Button localButton6;
    Button localButton7;
    Button localButton8;
    Button localButton9;
    Button localButton10;
    Button localButton11;
    Button localButton12;
    Button localButton13;
    Button localButton14;
    Button localButton15;
    Button localButton16;
    if (numbers != null)
    {
      (numbers.getClassNumber(0) - PreferencesUtils.getReadNumber(this.mPrefs, 0));
      (numbers.getClassNumber(1) - PreferencesUtils.getReadNumber(this.mPrefs, 1));
      (numbers.getClassNumber(2) - PreferencesUtils.getReadNumber(this.mPrefs, 2));
      (numbers.getClassNumber(3) - PreferencesUtils.getReadNumber(this.mPrefs, 3));
      (numbers.getClassNumber(4) - PreferencesUtils.getReadNumber(this.mPrefs, 4));
      (numbers.getClassNumber(5) - PreferencesUtils.getReadNumber(this.mPrefs, 5));
      (numbers.getClassNumber(6) - PreferencesUtils.getReadNumber(this.mPrefs, 6));
      (numbers.getClassNumber(7) - PreferencesUtils.getReadNumber(this.mPrefs, 7));
      int i = numbers.getClassNumber(8) - PreferencesUtils.getReadNumber(this.mPrefs, 8);
      int j = numbers.getClassNumber(9) - PreferencesUtils.getReadNumber(this.mPrefs, 9);
      int k = numbers.getClassNumber(10) - PreferencesUtils.getReadNumber(this.mPrefs, 10);
      int m = numbers.getClassNumber(11) - PreferencesUtils.getReadNumber(this.mPrefs, 11);
      int n = numbers.getClassNumber(12) - PreferencesUtils.getReadNumber(this.mPrefs, 12);
      int i1 = numbers.getClassNumber(13) - PreferencesUtils.getReadNumber(this.mPrefs, 13);
      i2 = numbers.getClassNumber(14) - PreferencesUtils.getReadNumber(this.mPrefs, 14);
      int i3 = numbers.getClassNumber(15) - PreferencesUtils.getReadNumber(this.mPrefs, 15);
      (numbers.getClassNumber(16) - PreferencesUtils.getReadNumber(this.mPrefs, 16));
      localButton1 = (Button)findViewById(2131230818);
      localButton2 = (Button)findViewById(2131230820);
      localButton3 = (Button)findViewById(2131230822);
      localButton4 = (Button)findViewById(2131230833);
      localButton5 = (Button)findViewById(2131230835);
      localButton6 = (Button)findViewById(2131230837);
      localButton7 = (Button)findViewById(2131230864);
      localButton8 = (Button)findViewById(2131230850);
      localButton9 = (Button)findViewById(2131230819);
      localButton10 = (Button)findViewById(2131230821);
      localButton11 = (Button)findViewById(2131230823);
      localButton12 = (Button)findViewById(2131230834);
      localButton13 = (Button)findViewById(2131230836);
      localButton14 = (Button)findViewById(2131230838);
      localButton15 = (Button)findViewById(2131230865);
      localButton16 = (Button)findViewById(2131230851);
      if (numbers.getClassNumber(15) <= 0)
        break label1248;
      localButton1.setText(numbers.getClassNumber(15));
      localButton1.setBackgroundResource(2130837858);
      localButton1.setVisibility(0);
      if (i3 <= 0)
        break label1238;
      localButton9.setText(i3);
      localButton9.setBackgroundResource(2130837857);
      localButton9.setVisibility(0);
      if (numbers.getClassNumber(8) <= 0)
        break label1275;
      localButton2.setText(numbers.getClassNumber(8));
      localButton2.setBackgroundResource(2130837858);
      localButton2.setVisibility(0);
      if (i <= 0)
        break label1265;
      localButton10.setText(i);
      localButton10.setBackgroundResource(2130837857);
      localButton10.setVisibility(0);
      label697: if (numbers.getClassNumber(9) <= 0)
        break label1302;
      localButton3.setText(numbers.getClassNumber(9));
      localButton3.setBackgroundResource(2130837858);
      localButton3.setVisibility(0);
      if (j <= 0)
        break label1292;
      localButton11.setText(j);
      localButton11.setBackgroundResource(2130837857);
      localButton11.setVisibility(0);
      label787: if (numbers.getClassNumber(10) <= 0)
        break label1329;
      localButton4.setText(numbers.getClassNumber(10));
      localButton4.setBackgroundResource(2130837858);
      localButton4.setVisibility(0);
      if (k <= 0)
        break label1319;
      localButton12.setText(k);
      localButton12.setBackgroundResource(2130837857);
      localButton12.setVisibility(0);
      label877: if (numbers.getClassNumber(11) <= 0)
        break label1356;
      localButton5.setText(numbers.getClassNumber(11));
      localButton5.setBackgroundResource(2130837858);
      localButton5.setVisibility(0);
      if (m <= 0)
        break label1346;
      localButton13.setText(m);
      localButton13.setBackgroundResource(2130837857);
      localButton13.setVisibility(0);
      label967: if (numbers.getClassNumber(12) <= 0)
        break label1383;
      localButton6.setText(numbers.getClassNumber(12));
      localButton6.setBackgroundResource(2130837858);
      localButton6.setVisibility(0);
      if (n <= 0)
        break label1373;
      localButton14.setText(n);
      localButton14.setBackgroundResource(2130837857);
      localButton14.setVisibility(0);
      label1057: if (numbers.getClassNumber(13) <= 0)
        break label1410;
      localButton7.setText(numbers.getClassNumber(13));
      localButton7.setBackgroundResource(2130837858);
      localButton7.setVisibility(0);
      if (i1 <= 0)
        break label1400;
      localButton15.setText(i1);
      localButton15.setBackgroundResource(2130837857);
      localButton15.setVisibility(0);
    }
    while (true)
    {
      if (numbers.getClassNumber(14) <= 0)
        break label1435;
      localButton8.setText(numbers.getClassNumber(14));
      localButton8.setBackgroundResource(2130837858);
      localButton8.setVisibility(0);
      if (i2 <= 0)
        break label1427;
      localButton16.setText(i2);
      localButton16.setBackgroundResource(2130837857);
      localButton16.setVisibility(0);
      return;
      label1238: localButton9.setVisibility(8);
      break;
      label1248: localButton1.setVisibility(8);
      localButton9.setVisibility(8);
      break;
      label1265: localButton10.setVisibility(8);
      break label697;
      label1275: localButton2.setVisibility(8);
      localButton10.setVisibility(8);
      break label697;
      label1292: localButton11.setVisibility(8);
      break label787;
      label1302: localButton3.setVisibility(8);
      localButton11.setVisibility(8);
      break label787;
      label1319: localButton12.setVisibility(8);
      break label877;
      label1329: localButton4.setVisibility(8);
      localButton12.setVisibility(8);
      break label877;
      label1346: localButton13.setVisibility(8);
      break label967;
      label1356: localButton5.setVisibility(8);
      localButton13.setVisibility(8);
      break label967;
      label1373: localButton14.setVisibility(8);
      break label1057;
      label1383: localButton6.setVisibility(8);
      localButton14.setVisibility(8);
      break label1057;
      label1400: localButton15.setVisibility(8);
      continue;
      label1410: localButton7.setVisibility(8);
      localButton15.setVisibility(8);
    }
    label1427: localButton16.setVisibility(8);
    return;
    label1435: localButton8.setVisibility(8);
    localButton16.setVisibility(8);
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
        MainExtra18Activity.this.handler.removeMessages(17);
        MainExtra18Activity.this.resetCaseNumber();
      }
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.act.MainExtra18Activity
 * JD-Core Version:    0.6.0
 */