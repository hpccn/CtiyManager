package com.cymobile.ymwork.act;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import android.support.v4.app.FragmentActivity;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.SimpleAdapter;
import android.widget.SimpleAdapter.ViewBinder;
import android.widget.Toast;
import com.cymobile.ymwork.HomeApplication;
import com.cymobile.ymwork.ISystemService;
import com.cymobile.ymwork.ISystemService.Stub;
import com.cymobile.ymwork.SettingBase;
import com.cymobile.ymwork.SystemService;
import com.cymobile.ymwork.preference.PreferencesUtils;
import com.cymobile.ymwork.types.CaseNumber;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class MainActivity extends FragmentActivity
{
  public static final String Intent_ClassId = "Intent_ClassId";
  public static final String Intent_Days = "Intent_Days";
  public static final String Intent_ZoneId = "Intent_ZoneId";
  private static final int Msg_intent_resetCaseNumber = 17;
  private static final String TAG = "MainActivity";
  static CaseNumber numbers;
  ListView footerList;
  ArrayList<HashMap<String, Object>> footerListItem = new ArrayList();
  SimpleAdapter footerListItemAdapter;
  Handler handler = new UIHandler();
  HomeApplication homeApplication;
  public ISystemService iSystemService;
  private BroadcastReceiver mLoggedOutReceiver = new BroadcastReceiver()
  {
    public void onReceive(Context paramContext, Intent paramIntent)
    {
      try
      {
        MainActivity.this.finish();
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
      MainActivity.this.readNumberFromService();
    }
  };
  private SharedPreferences mPrefs;
  boolean makeServiceReadNumberOnce = true;
  private final ServiceConnection serviceConnection = new ServiceConnection()
  {
    public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
    {
      MainActivity.this.iSystemService = ISystemService.Stub.asInterface(paramIBinder);
      try
      {
        if (MainActivity.this.makeServiceReadNumberOnce)
        {
          MainActivity.this.makeServiceReadNumberOnce = false;
          MainActivity.this.iSystemService.hushReadNumber();
        }
        MainActivity.this.readNumberFromService();
        MainActivity.this.iSystemService.readServerInfo();
        MainActivity.this.iSystemService.cancelNotification();
        return;
      }
      catch (RemoteException localRemoteException)
      {
        localRemoteException.printStackTrace();
      }
    }

    public void onServiceDisconnected(ComponentName paramComponentName)
    {
      MainActivity.this.iSystemService = null;
    }
  };
  Button shopClass1;
  Button shopClass10;
  Button shopClass2;
  Button shopClass3;
  Button shopClass4;
  Button shopClass5;
  Button shopClass6;
  Button shopClass7;
  Button shopClass8;
  Button shopClass9;
  Button shopClassextra18;

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

  public void gotoLife(View paramView)
  {
    try
    {
      if (isPackageExists("com.cymobile.ym"))
      {
        Intent localIntent = new Intent();
        localIntent.setComponent(new ComponentName("com.cymobile.ym", "com.cymobile.ym.act.MainActivityGroup"));
        localIntent.addFlags(335544320);
        startActivity(localIntent);
        finish();
        return;
      }
      Toast.makeText(this, 2131296388, 0).show();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public void gotomain1(View paramView)
  {
    startActivity(new Intent(this, Main1Activity.class));
  }

  public void gotomain11(View paramView)
  {
    startActivity(new Intent(this, Main11Activity.class));
  }

  public void gotomain12(View paramView)
  {
    startActivity(new Intent(this, Main12Activity.class));
  }

  public void gotomainextra18(View paramView)
  {
    startActivity(new Intent(this, MainExtra18Activity.class));
  }

  public boolean isPackageExists(String paramString)
  {
    Iterator localIterator = getPackageManager().getInstalledApplications(0).iterator();
    do
      if (!localIterator.hasNext())
        return false;
    while (!((ApplicationInfo)localIterator.next()).packageName.equals(paramString));
    return true;
  }

  public void onBackPressed()
  {
    getParent().onBackPressed();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.makeServiceReadNumberOnce = true;
    requestWindowFeature(1);
    setContentView(2130903075);
    this.homeApplication = ((HomeApplication)getApplication());
    this.mPrefs = getSharedPreferences(SettingBase.class.getName(), 2);
    this.footerList = ((ListView)findViewById(2131230863));
    this.footerListItem.clear();
    HashMap localHashMap1 = new HashMap();
    localHashMap1.put("ItemImage", Integer.valueOf(2130837680));
    localHashMap1.put("ItemImage2", Integer.valueOf(2130837676));
    localHashMap1.put("ItemTitle", getString(2131296261));
    this.footerListItem.add(localHashMap1);
    HashMap localHashMap2 = new HashMap();
    localHashMap2.put("ItemImage", Integer.valueOf(2130837680));
    localHashMap2.put("ItemImage2", Integer.valueOf(2130837677));
    localHashMap2.put("ItemTitle", getString(2131296264));
    this.footerListItem.add(localHashMap2);
    HashMap localHashMap3 = new HashMap();
    localHashMap3.put("ItemImage", Integer.valueOf(2130837680));
    localHashMap3.put("ItemImage2", Integer.valueOf(2130837678));
    localHashMap3.put("ItemTitle", getString(2131296267));
    this.footerListItem.add(localHashMap3);
    this.footerListItemAdapter = new SimpleAdapter(this, this.footerListItem, 2130903074, new String[] { "ItemImage", "ItemImage2", "ItemTitle", "ItemText", "ItemImage3" }, new int[] { 2131230825, 2131230824, 2131230827, 2131230828, 2131230826 });
    this.footerListItemAdapter.setViewBinder(new SimpleAdapter.ViewBinder()
    {
      public boolean setViewValue(View paramView, Object paramObject, String paramString)
      {
        if (paramView.getId() == 2131230826)
        {
          if (paramObject != null);
          try
          {
            if (((paramObject instanceof Integer)) && (((Integer)paramObject).intValue() > 0))
            {
              Button localButton = (Button)paramView;
              localButton.setBackgroundResource(2130837747);
              localButton.setText(((Integer)paramObject).intValue());
            }
            return true;
          }
          catch (Exception localException)
          {
            while (true)
              localException.printStackTrace();
          }
        }
        return false;
      }
    });
    this.footerList.setAdapter(this.footerListItemAdapter);
    this.footerList.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
      {
        if (MainActivity.numbers != null)
        {
          Intent localIntent = new Intent(MainActivity.this, MapFragmentActivity.class);
          if (paramInt == 0)
            if (MainActivity.numbers.getClassNumber(0) > 0)
            {
              localIntent.putExtra("Intent_ClassId", paramInt);
              MainActivity.this.startActivity(localIntent);
            }
          do
          {
            return;
            Toast.makeText(MainActivity.this, 2131296390, 0).show();
            return;
            if (paramInt != 1)
              continue;
            if (MainActivity.numbers.getClassNumber(1) > 0)
            {
              localIntent.putExtra("Intent_ClassId", paramInt);
              MainActivity.this.startActivity(localIntent);
              return;
            }
            Toast.makeText(MainActivity.this, 2131296390, 0).show();
            return;
          }
          while (paramInt != 2);
          if (MainActivity.numbers.getClassNumber(2) > 0)
          {
            localIntent.putExtra("Intent_ClassId", paramInt);
            MainActivity.this.startActivity(localIntent);
            return;
          }
          Toast.makeText(MainActivity.this, 2131296390, 0).show();
          return;
        }
        Toast.makeText(MainActivity.this, 2131296389, 0).show();
      }
    });
    setListViewHeightBasedOnChildren(this.footerList);
    this.footerListItemAdapter.notifyDataSetChanged();
    this.footerList.invalidate();
    this.shopClass1 = ((Button)findViewById(2131230747));
    this.shopClass2 = ((Button)findViewById(2131230748));
    this.shopClass3 = ((Button)findViewById(2131230749));
    this.shopClass4 = ((Button)findViewById(2131230750));
    this.shopClass5 = ((Button)findViewById(2131230751));
    this.shopClass6 = ((Button)findViewById(2131230752));
    this.shopClass7 = ((Button)findViewById(2131230753));
    this.shopClass8 = ((Button)findViewById(2131230754));
    this.shopClass9 = ((Button)findViewById(2131230755));
    this.shopClass10 = ((Button)findViewById(2131230852));
    this.shopClassextra18 = ((Button)findViewById(2131230841));
    Intent localIntent = new Intent(this, NearbySearchActivity.class);
    this.shopClass1.setOnClickListener(new View.OnClickListener(localIntent)
    {
      public void onClick(View paramView)
      {
        this.val$shopListIntent.putExtra("Intent_ClassId", 0);
        MainActivity.this.startActivity(this.val$shopListIntent);
      }
    });
    this.shopClass2.setOnClickListener(new View.OnClickListener(localIntent)
    {
      public void onClick(View paramView)
      {
        this.val$shopListIntent.putExtra("Intent_ClassId", 1);
        MainActivity.this.startActivity(this.val$shopListIntent);
      }
    });
    this.shopClass3.setOnClickListener(new View.OnClickListener(localIntent)
    {
      public void onClick(View paramView)
      {
        this.val$shopListIntent.putExtra("Intent_ClassId", 2);
        MainActivity.this.startActivity(this.val$shopListIntent);
      }
    });
    this.shopClass4.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        Intent localIntent = new Intent(MainActivity.this, MainClassConstrustionFieldAct.class);
        localIntent.putExtra("Intent_ClassId", 3);
        MainActivity.this.startActivity(localIntent);
      }
    });
    this.shopClass5.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        MainActivity.this.gotomain11(paramView);
      }
    });
    this.shopClass6.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        Intent localIntent = new Intent(MainActivity.this, MainClassPublicReportAct.class);
        localIntent.putExtra("Intent_ClassId", 5);
        MainActivity.this.startActivity(localIntent);
      }
    });
    this.shopClass7.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
      }
    });
    this.shopClass8.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        MainActivity.this.gotomain12(paramView);
      }
    });
    this.shopClass9.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
      }
    });
    this.shopClass10.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        MainActivity.this.gotomain1(paramView);
      }
    });
    this.shopClassextra18.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        MainActivity.this.gotomainextra18(paramView);
      }
    });
    if (!isPackageExists("com.cymobile.ym"))
      ((LinearLayout)findViewById(2131230832)).setVisibility(8);
    LinearLayout localLinearLayout1 = (LinearLayout)findViewById(2131230839);
    LinearLayout localLinearLayout2 = (LinearLayout)findViewById(2131230840);
    String str = this.mPrefs.getString("key_GlobalZoneId", null);
    if ((str == null) || (!str.equals("110105202")))
    {
      localLinearLayout1.setVisibility(8);
      localLinearLayout2.setVisibility(8);
    }
    registerReceiver(this.mLoggedOutReceiver, new IntentFilter("com.cymobile.ymwork.intent.action.LOGGED_OUT"));
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
      this.shopClass10.setOnClickListener(null);
      this.shopClassextra18.setOnClickListener(null);
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
    if (numbers != null)
    {
      this.footerListItem.clear();
      HashMap localHashMap1 = new HashMap();
      localHashMap1.put("ItemImage", Integer.valueOf(2130837680));
      localHashMap1.put("ItemImage2", Integer.valueOf(2130837676));
      if (numbers.getClassNumber(0) > 0)
        localHashMap1.put("ItemImage3", Integer.valueOf(numbers.getClassNumber(0)));
      localHashMap1.put("ItemTitle", getString(2131296261));
      localHashMap1.put("ItemText", getString(2131296262));
      this.footerListItem.add(localHashMap1);
      HashMap localHashMap2 = new HashMap();
      localHashMap2.put("ItemImage", Integer.valueOf(2130837680));
      localHashMap2.put("ItemImage2", Integer.valueOf(2130837677));
      if (numbers.getClassNumber(1) > 0)
        localHashMap2.put("ItemImage3", Integer.valueOf(numbers.getClassNumber(1)));
      localHashMap2.put("ItemTitle", getString(2131296264));
      localHashMap2.put("ItemText", getString(2131296266));
      this.footerListItem.add(localHashMap2);
      HashMap localHashMap3 = new HashMap();
      localHashMap3.put("ItemImage", Integer.valueOf(2130837680));
      localHashMap3.put("ItemImage2", Integer.valueOf(2130837678));
      Log.i("MainActivity", "numbers.getClass2Number() " + numbers.getClassNumber(2));
      if (numbers.getClassNumber(2) > 0)
        localHashMap3.put("ItemImage3", Integer.valueOf(numbers.getClassNumber(2)));
      localHashMap3.put("ItemTitle", getString(2131296267));
      localHashMap3.put("ItemText", getString(2131296268));
      this.footerListItem.add(localHashMap3);
      this.footerListItemAdapter.notifyDataSetChanged();
      this.footerList.invalidate();
    }
    int i4;
    int i5;
    int i6;
    int i7;
    int i8;
    int i9;
    int i10;
    int i11;
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
    Button localButton17;
    Button localButton18;
    if (numbers != null)
    {
      int i = numbers.getClassNumber(0) - PreferencesUtils.getReadNumber(this.mPrefs, 0);
      int j = numbers.getClassNumber(1) - PreferencesUtils.getReadNumber(this.mPrefs, 1);
      int k = numbers.getClassNumber(2) - PreferencesUtils.getReadNumber(this.mPrefs, 2);
      int m = numbers.getClassNumber(3) - PreferencesUtils.getReadNumber(this.mPrefs, 3);
      int n = numbers.getClassNumber(4) - PreferencesUtils.getReadNumber(this.mPrefs, 4);
      int i1 = numbers.getClassNumber(5) - PreferencesUtils.getReadNumber(this.mPrefs, 5);
      int i2 = numbers.getClassNumber(6) - PreferencesUtils.getReadNumber(this.mPrefs, 6);
      int i3 = numbers.getClassNumber(7) - PreferencesUtils.getReadNumber(this.mPrefs, 7);
      i4 = numbers.getClassNumber(8) - PreferencesUtils.getReadNumber(this.mPrefs, 8);
      i5 = numbers.getClassNumber(9) - PreferencesUtils.getReadNumber(this.mPrefs, 9);
      i6 = numbers.getClassNumber(10) - PreferencesUtils.getReadNumber(this.mPrefs, 10);
      i7 = numbers.getClassNumber(11) - PreferencesUtils.getReadNumber(this.mPrefs, 11);
      i8 = numbers.getClassNumber(12) - PreferencesUtils.getReadNumber(this.mPrefs, 12);
      i9 = numbers.getClassNumber(13) - PreferencesUtils.getReadNumber(this.mPrefs, 13);
      i10 = numbers.getClassNumber(14) - PreferencesUtils.getReadNumber(this.mPrefs, 14);
      i11 = numbers.getClassNumber(15) - PreferencesUtils.getReadNumber(this.mPrefs, 15);
      (numbers.getClassNumber(16) - PreferencesUtils.getReadNumber(this.mPrefs, 16));
      localButton1 = (Button)findViewById(2131230818);
      localButton2 = (Button)findViewById(2131230820);
      localButton3 = (Button)findViewById(2131230822);
      localButton4 = (Button)findViewById(2131230833);
      localButton5 = (Button)findViewById(2131230835);
      localButton6 = (Button)findViewById(2131230837);
      localButton7 = (Button)findViewById(2131230850);
      localButton8 = (Button)findViewById(2131230853);
      localButton9 = (Button)findViewById(2131230842);
      localButton10 = (Button)findViewById(2131230819);
      localButton11 = (Button)findViewById(2131230821);
      localButton12 = (Button)findViewById(2131230823);
      localButton13 = (Button)findViewById(2131230834);
      localButton14 = (Button)findViewById(2131230836);
      localButton15 = (Button)findViewById(2131230838);
      localButton16 = (Button)findViewById(2131230851);
      localButton17 = (Button)findViewById(2131230854);
      localButton18 = (Button)findViewById(2131230843);
      if (numbers.getClassNumber(0) <= 0)
        break label2087;
      localButton1.setText(numbers.getClassNumber(0));
      localButton1.setBackgroundResource(2130837858);
      localButton1.setVisibility(0);
      if (i <= 0)
        break label2077;
      localButton10.setText(i);
      localButton10.setBackgroundResource(2130837857);
      localButton10.setVisibility(0);
      if (numbers.getClassNumber(1) <= 0)
        break label2114;
      localButton2.setText(numbers.getClassNumber(1));
      localButton2.setBackgroundResource(2130837858);
      localButton2.setVisibility(0);
      if (j <= 0)
        break label2104;
      localButton11.setText(j);
      localButton11.setBackgroundResource(2130837857);
      localButton11.setVisibility(0);
      label1104: if (numbers.getClassNumber(2) <= 0)
        break label2141;
      localButton3.setText(numbers.getClassNumber(2));
      localButton3.setBackgroundResource(2130837858);
      localButton3.setVisibility(0);
      if (k <= 0)
        break label2131;
      localButton12.setText(k);
      localButton12.setBackgroundResource(2130837857);
      localButton12.setVisibility(0);
      label1190: if (numbers.getClassNumber(3) <= 0)
        break label2168;
      localButton4.setText(numbers.getClassNumber(3));
      localButton4.setBackgroundResource(2130837858);
      localButton4.setVisibility(0);
      if (m <= 0)
        break label2158;
      localButton13.setText(m);
      localButton13.setBackgroundResource(2130837857);
      localButton13.setVisibility(0);
      label1278: if ((numbers.getClassNumber(4) <= 0) && (numbers.getClassNumber(6) <= 0) && (numbers.getClassNumber(7) <= 0))
        break label2195;
      localButton5.setText(numbers.getClassNumber(4) + numbers.getClassNumber(6) + numbers.getClassNumber(7));
      localButton5.setBackgroundResource(2130837858);
      localButton5.setVisibility(0);
      if ((n <= 0) && (i2 <= 0) && (i3 <= 0))
        break label2185;
      localButton14.setText(i3 + (n + i2));
      localButton14.setBackgroundResource(2130837857);
      localButton14.setVisibility(0);
      label1422: if (numbers.getClassNumber(5) <= 0)
        break label2222;
      localButton6.setText(numbers.getClassNumber(5));
      localButton6.setBackgroundResource(2130837858);
      localButton6.setVisibility(0);
      if (i1 <= 0)
        break label2212;
      localButton15.setText(i1);
      localButton15.setBackgroundResource(2130837857);
      localButton15.setVisibility(0);
      label1510: if ((numbers.getClassNumber(0) <= 0) && (numbers.getClassNumber(1) <= 0) && (numbers.getClassNumber(3) <= 0))
        break label2249;
      localButton7.setText(numbers.getClassNumber(0) + numbers.getClassNumber(1) + numbers.getClassNumber(3));
      localButton7.setBackgroundResource(2130837858);
      localButton7.setVisibility(0);
      if ((i <= 0) && (j <= 0) && (m <= 0))
        break label2239;
      localButton16.setText(m + (i + j));
      localButton16.setBackgroundResource(2130837857);
      localButton16.setVisibility(0);
      label1646: if ((numbers.getClassNumber(4) <= 0) && (numbers.getClassNumber(6) <= 0) && (numbers.getClassNumber(7) <= 0))
        break label2276;
      localButton8.setText(numbers.getClassNumber(4) + numbers.getClassNumber(6) + numbers.getClassNumber(7));
      localButton8.setBackgroundResource(2130837858);
      localButton8.setVisibility(0);
      if ((n <= 0) && (i2 <= 0) && (i3 <= 0))
        break label2266;
      localButton17.setText(i3 + (n + i2));
      localButton17.setBackgroundResource(2130837857);
      localButton17.setVisibility(0);
    }
    while (true)
    {
      if ((numbers.getClassNumber(8) <= 0) && (numbers.getClassNumber(9) <= 0) && (numbers.getClassNumber(10) <= 0) && (numbers.getClassNumber(11) <= 0) && (numbers.getClassNumber(12) <= 0) && (numbers.getClassNumber(13) <= 0) && (numbers.getClassNumber(14) <= 0) && (numbers.getClassNumber(15) <= 0))
        break label2301;
      localButton9.setText(numbers.getClassNumber(8) + numbers.getClassNumber(9) + numbers.getClassNumber(10) + numbers.getClassNumber(11) + numbers.getClassNumber(12) + numbers.getClassNumber(13) + numbers.getClassNumber(14) + numbers.getClassNumber(15));
      localButton9.setBackgroundResource(2130837858);
      localButton9.setVisibility(0);
      if ((i4 <= 0) && (i5 <= 0) && (i6 <= 0) && (i7 <= 0) && (i8 <= 0) && (i9 <= 0) && (i10 <= 0) && (i11 <= 0))
        break label2293;
      localButton18.setText(i11 + (i10 + (i9 + (i8 + (i7 + (i6 + (i4 + i5)))))));
      localButton18.setBackgroundResource(2130837857);
      localButton18.setVisibility(0);
      return;
      label2077: localButton10.setVisibility(8);
      break;
      label2087: localButton1.setVisibility(8);
      localButton10.setVisibility(8);
      break;
      label2104: localButton11.setVisibility(8);
      break label1104;
      label2114: localButton2.setVisibility(8);
      localButton11.setVisibility(8);
      break label1104;
      label2131: localButton12.setVisibility(8);
      break label1190;
      label2141: localButton3.setVisibility(8);
      localButton12.setVisibility(8);
      break label1190;
      label2158: localButton13.setVisibility(8);
      break label1278;
      label2168: localButton4.setVisibility(8);
      localButton13.setVisibility(8);
      break label1278;
      label2185: localButton14.setVisibility(8);
      break label1422;
      label2195: localButton5.setVisibility(8);
      localButton14.setVisibility(8);
      break label1422;
      label2212: localButton15.setVisibility(8);
      break label1510;
      label2222: localButton6.setVisibility(8);
      localButton15.setVisibility(8);
      break label1510;
      label2239: localButton16.setVisibility(8);
      break label1646;
      label2249: localButton7.setVisibility(8);
      localButton16.setVisibility(8);
      break label1646;
      label2266: localButton17.setVisibility(8);
      continue;
      label2276: localButton8.setVisibility(8);
      localButton17.setVisibility(8);
    }
    label2293: localButton18.setVisibility(8);
    return;
    label2301: localButton9.setVisibility(8);
    localButton18.setVisibility(8);
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
        MainActivity.this.handler.removeMessages(17);
        MainActivity.this.resetCaseNumber();
      }
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.act.MainActivity
 * JD-Core Version:    0.6.0
 */