package com.cymobile.ymwork;

import android.app.AlertDialog.Builder;
import android.app.Application;
import android.app.Dialog;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import android.support.v4.app.NotificationCompat.BigTextStyle;
import android.support.v4.app.NotificationCompat.Builder;
import android.util.Log;
import android.view.Window;
import android.widget.Toast;
import com.cymobile.ymwork.act.MainActivityGroup;
import com.cymobile.ymwork.server.Server;
import com.cymobile.ymwork.server.Server.Location;
import com.cymobile.ymwork.types.CaseNumber;
import com.cymobile.ymwork.types.ServerSettings;
import com.cymobile.ymwork.utils.AsyncTaskUtils;
import java.io.FileWriter;
import java.lang.ref.WeakReference;
import java.util.Date;

public class SystemService extends Service
  implements LocationListener
{
  public static final String TAG = "SystemService";
  static boolean settingParsed = false;
  boolean batteryInfoAvailable = false;
  String cachedFileName = null;
  FileWriter cachedFileWriter = null;
  private Context contexts;
  ServerSettings currentServerSettings;
  boolean gpslocated = false;
  private Handler handler = new Handler();
  long lastRequestTime = -1L;
  LocationManager lm;
  private final IBinder mBinder = new ServiceStub(this);
  private HomeApplication mHomeApplication;
  private BroadcastReceiver mLoggedOutReceiver = new BroadcastReceiver()
  {
    public void onReceive(Context paramContext, Intent paramIntent)
    {
      try
      {
        SystemService.this.clearNumbers();
        SystemService.this.stopSelf();
        return;
      }
      catch (Throwable localThrowable)
      {
        localThrowable.printStackTrace();
      }
    }
  };
  SharedPreferences mPrefs = null;
  private BroadcastReceiver mRequestReceiver = new BroadcastReceiver()
  {
    public void onReceive(Context paramContext, Intent paramIntent)
    {
      SystemService.this.handleRequestIntent(paramIntent);
    }
  };
  boolean numberChanged = false;
  CaseNumber numbers;
  private Runnable runnableRef = new Runnable()
  {
    public void run()
    {
      Log.v("SystemService", "checkServerInfo");
      try
      {
        AsyncTaskUtils.execute(new SystemService.GetCaseNumberTask(SystemService.this, null));
        SystemService.this.handler.postDelayed(SystemService.this.runnableRef, 180000L);
        return;
      }
      catch (Exception localException)
      {
        while (true)
          localException.printStackTrace();
      }
    }
  };
  public boolean temporaryRecordTrack = false;

  private void handleRequestIntent(Intent paramIntent)
  {
    long l = System.currentTimeMillis();
    if (l - this.lastRequestTime < 3000L);
    do
    {
      return;
      this.lastRequestTime = l;
    }
    while ((paramIntent != null) && (paramIntent.getAction() != null));
    Log.i("SystemService", "null Intent");
  }

  public void cancelNotification()
  {
    try
    {
      ((NotificationManager)getSystemService("notification")).cancel(19172439);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public void checkNewVersion()
  {
    settingParsed = false;
    this.currentServerSettings = null;
    try
    {
      AsyncTaskUtils.execute(new RetreiveServerSettingTask(true));
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public void clearNumbers()
  {
    this.numbers = null;
    this.numberChanged = false;
  }

  Dialog createVersionDialog()
  {
    if (this.currentServerSettings != null)
    {
      AlertDialog.Builder localBuilder = new AlertDialog.Builder(this).setTitle(getResources().getString(2131296392));
      StringBuilder localStringBuilder = new StringBuilder(String.valueOf(getResources().getString(2131296393)));
      if (this.currentServerSettings.getVersionName() == null);
      for (String str = ""; ; str = this.currentServerSettings.getVersionName())
        return localBuilder.setMessage(str + getResources().getString(2131296394) + this.currentServerSettings.getVersiondesc() + getResources().getString(2131296395)).setPositiveButton(getResources().getString(2131296396), new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramDialogInterface, int paramInt)
          {
            if (SystemService.this.currentServerSettings != null)
            {
              Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(SystemService.this.currentServerSettings.getDownloadaddress()));
              localIntent.addFlags(268435456);
              SystemService.this.getApplication().startActivity(localIntent);
            }
            paramDialogInterface.dismiss();
          }
        }).setNegativeButton(getResources().getString(2131296397), new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramDialogInterface, int paramInt)
          {
            paramDialogInterface.dismiss();
          }
        }).create();
    }
    return null;
  }

  public int[] getCurrentCaseNumber()
  {
    if (this.numbers != null)
    {
      int[] arrayOfInt = new int[17];
      arrayOfInt[0] = this.numbers.getClassNumber(0);
      arrayOfInt[1] = this.numbers.getClassNumber(1);
      arrayOfInt[2] = this.numbers.getClassNumber(2);
      arrayOfInt[3] = this.numbers.getClassNumber(3);
      arrayOfInt[4] = this.numbers.getClassNumber(4);
      arrayOfInt[5] = this.numbers.getClassNumber(5);
      arrayOfInt[6] = this.numbers.getClassNumber(6);
      arrayOfInt[7] = this.numbers.getClassNumber(7);
      arrayOfInt[8] = this.numbers.getClassNumber(8);
      arrayOfInt[9] = this.numbers.getClassNumber(9);
      arrayOfInt[10] = this.numbers.getClassNumber(10);
      arrayOfInt[11] = this.numbers.getClassNumber(11);
      arrayOfInt[12] = this.numbers.getClassNumber(12);
      arrayOfInt[13] = this.numbers.getClassNumber(13);
      arrayOfInt[14] = this.numbers.getClassNumber(14);
      arrayOfInt[15] = this.numbers.getClassNumber(15);
      arrayOfInt[16] = this.numbers.getClassNumber(16);
      return arrayOfInt;
    }
    return null;
  }

  public void hushReadNumber()
  {
    try
    {
      this.handler.removeCallbacks(this.runnableRef);
      this.handler.postDelayed(this.runnableRef, 0L);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  boolean isTemporaryRecordTrack()
  {
    return this.temporaryRecordTrack;
  }

  public IBinder onBind(Intent paramIntent)
  {
    return this.mBinder;
  }

  public void onCreate()
  {
    super.onCreate();
    this.mPrefs = getSharedPreferences(SettingBase.class.getName(), 0);
    this.mHomeApplication = ((HomeApplication)getApplication());
    subscribeToLocationUpdates();
    this.contexts = this;
    this.handler.postDelayed(this.runnableRef, 0L);
    registerReceiver(this.mLoggedOutReceiver, new IntentFilter("com.cymobile.ymwork.intent.action.LOGGED_OUT"));
  }

  public void onDestroy()
  {
    super.onDestroy();
    try
    {
      super.unregisterReceiver(this.mRequestReceiver);
      this.lm.removeUpdates(this);
    }
    catch (Exception localException1)
    {
      try
      {
        while (true)
        {
          unregisterReceiver(this.mLoggedOutReceiver);
          this.lm = null;
          return;
          localException1 = localException1;
          localException1.printStackTrace();
        }
      }
      catch (Exception localException2)
      {
        while (true)
          localException2.printStackTrace();
      }
    }
  }

  public void onLocationChanged(Location paramLocation)
  {
    monitorenter;
    monitorexit;
  }

  public void onProviderDisabled(String paramString)
  {
  }

  public void onProviderEnabled(String paramString)
  {
  }

  public void onStatusChanged(String paramString, int paramInt, Bundle paramBundle)
  {
    if ((paramInt != 0) && (paramInt == 2));
  }

  public boolean onUnbind(Intent paramIntent)
  {
    return true;
  }

  public void readServerInfo()
  {
    try
    {
      AsyncTaskUtils.execute(new RetreiveServerSettingTask(false));
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  void setTemporaryRecordTrack(boolean paramBoolean)
  {
    this.temporaryRecordTrack = paramBoolean;
  }

  public void showNotification(int paramInt, String paramString1, String paramString2, String paramString3)
  {
    cancelNotification();
    Notification localNotification = new NotificationCompat.Builder(getApplicationContext()).setContentTitle(paramString2).setContentText(paramString3).setSmallIcon(paramInt).setStyle(new NotificationCompat.BigTextStyle().bigText(paramString3)).setWhen(5000L + System.currentTimeMillis()).build();
    String str = this.mPrefs.getString("pref_notif", "3");
    if (str.equals("0"))
      localNotification.defaults = -1;
    while (true)
    {
      localNotification.setLatestEventInfo(this, paramString2, paramString3, PendingIntent.getActivity(this, 0, new Intent(this, MainActivityGroup.class), 0));
      NotificationManager localNotificationManager = (NotificationManager)getSystemService("notification");
      localNotification.flags = (0x10 | localNotification.flags);
      localNotificationManager.notify(19172439, localNotification);
      return;
      if (str.equals("1"))
      {
        localNotification.defaults = 1;
        continue;
      }
      if (str.equals("2"))
      {
        localNotification.defaults = 2;
        continue;
      }
      localNotification.defaults = 4;
    }
  }

  public void subscribeToLocationUpdates()
  {
    this.lm = ((LocationManager)getSystemService("location"));
    this.lm.requestLocationUpdates("gps", 0L, 0.0F, this);
  }

  private class GetCaseNumberTask extends AsyncTask<Void, Void, Boolean>
  {
    private Exception mReason;

    private GetCaseNumberTask()
    {
    }

    protected Boolean doInBackground(Void[] paramArrayOfVoid)
    {
      Server localServer = ((HomeApplication)SystemService.this.getApplication()).getServer();
      try
      {
        String str = SystemService.this.mPrefs.getString("key_GlobalZoneId", null);
        if ((str == null) || (str.length() <= 0))
          return Boolean.valueOf(false);
        CaseNumber localCaseNumber = localServer.userCaseNumber(SystemService.this.contexts, str);
        if ((SystemService.this.numbers == null) && (localCaseNumber != null) && ((localCaseNumber.getClassNumber(0) > 0) || (localCaseNumber.getClassNumber(1) > 0) || (localCaseNumber.getClassNumber(2) > 0) || (localCaseNumber.getClassNumber(3) > 0) || (localCaseNumber.getClassNumber(4) > 0) || (localCaseNumber.getClassNumber(5) > 0) || (localCaseNumber.getClassNumber(6) > 0) || (localCaseNumber.getClassNumber(7) > 0) || (localCaseNumber.getClassNumber(8) > 0) || (localCaseNumber.getClassNumber(9) > 0) || (localCaseNumber.getClassNumber(10) > 0) || (localCaseNumber.getClassNumber(11) > 0) || (localCaseNumber.getClassNumber(12) > 0) || (localCaseNumber.getClassNumber(13) > 0) || (localCaseNumber.getClassNumber(14) > 0) || (localCaseNumber.getClassNumber(15) > 0) || (localCaseNumber.getClassNumber(16) > 0)));
        for (SystemService.this.numberChanged = true; ; SystemService.this.numberChanged = true)
          do
          {
            SystemService.this.numbers = localCaseNumber;
            if (SystemService.this.numbers != null)
              break;
            return Boolean.valueOf(false);
          }
          while ((localCaseNumber == null) || (SystemService.this.numbers == null) || ((localCaseNumber.getClassNumber(0) <= 0) && (localCaseNumber.getClassNumber(1) <= 0) && (localCaseNumber.getClassNumber(2) <= 0) && (localCaseNumber.getClassNumber(3) <= 0) && (localCaseNumber.getClassNumber(4) <= 0) && (localCaseNumber.getClassNumber(5) <= 0) && (localCaseNumber.getClassNumber(6) <= 0) && (localCaseNumber.getClassNumber(7) <= 0) && (localCaseNumber.getClassNumber(8) <= 0) && (localCaseNumber.getClassNumber(9) <= 0) && (localCaseNumber.getClassNumber(10) <= 0) && (localCaseNumber.getClassNumber(11) <= 0) && (localCaseNumber.getClassNumber(12) <= 0) && (localCaseNumber.getClassNumber(13) <= 0) && (localCaseNumber.getClassNumber(14) <= 0) && (localCaseNumber.getClassNumber(15) <= 0) && (localCaseNumber.getClassNumber(16) <= 0)) || ((SystemService.this.numbers.getClassNumber(0) == localCaseNumber.getClassNumber(0)) && (SystemService.this.numbers.getClassNumber(1) == localCaseNumber.getClassNumber(1)) && (SystemService.this.numbers.getClassNumber(2) == localCaseNumber.getClassNumber(2)) && (SystemService.this.numbers.getClassNumber(3) == localCaseNumber.getClassNumber(3)) && (SystemService.this.numbers.getClassNumber(4) == localCaseNumber.getClassNumber(4)) && (SystemService.this.numbers.getClassNumber(5) == localCaseNumber.getClassNumber(5)) && (SystemService.this.numbers.getClassNumber(6) == localCaseNumber.getClassNumber(6)) && (SystemService.this.numbers.getClassNumber(7) == localCaseNumber.getClassNumber(7)) && (SystemService.this.numbers.getClassNumber(8) == localCaseNumber.getClassNumber(8)) && (SystemService.this.numbers.getClassNumber(9) == localCaseNumber.getClassNumber(9)) && (SystemService.this.numbers.getClassNumber(10) == localCaseNumber.getClassNumber(10)) && (SystemService.this.numbers.getClassNumber(11) == localCaseNumber.getClassNumber(11)) && (SystemService.this.numbers.getClassNumber(12) == localCaseNumber.getClassNumber(12)) && (SystemService.this.numbers.getClassNumber(13) == localCaseNumber.getClassNumber(13)) && (SystemService.this.numbers.getClassNumber(14) == localCaseNumber.getClassNumber(14)) && (SystemService.this.numbers.getClassNumber(15) == localCaseNumber.getClassNumber(15)) && (SystemService.this.numbers.getClassNumber(16) == localCaseNumber.getClassNumber(16))));
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        this.mReason = localException;
        return Boolean.valueOf(false);
      }
      return Boolean.valueOf(true);
    }

    protected void onCancelled()
    {
    }

    protected void onPostExecute(Boolean paramBoolean)
    {
      if ((this.mReason != null) || (paramBoolean == null) || (!paramBoolean.booleanValue()))
      {
        Log.i("SystemService", "fail to get case number");
        return;
      }
      while (true)
      {
        try
        {
          if ((SystemService.this.numbers == null) || ((SystemService.this.numbers.getClassNumber(0) == 0) && (SystemService.this.numbers.getClassNumber(1) == 0) && (SystemService.this.numbers.getClassNumber(2) == 0) && (SystemService.this.numbers.getClassNumber(3) == 0) && (SystemService.this.numbers.getClassNumber(4) == 0) && (SystemService.this.numbers.getClassNumber(5) == 0)))
            break;
          SystemService.this.sendBroadcast(new Intent("com.cymobile.ymwork.intent.action.CASE_NUMBER_UPDATED"));
          if ((MainActivityGroup.isInFront) || (!SystemService.this.numberChanged))
            break;
          int i = new Date().getHours();
          if ((i < 9) || (i >= 18) || ((SystemService.this.numbers.getClassNumber(0) <= 0) && (SystemService.this.numbers.getClassNumber(1) <= 0) && (SystemService.this.numbers.getClassNumber(2) <= 0) && (SystemService.this.numbers.getClassNumber(3) <= 0) && (SystemService.this.numbers.getClassNumber(4) <= 0) && (SystemService.this.numbers.getClassNumber(5) <= 0)))
            break;
          if (SystemService.this.numbers.getClassNumber(0) > 0)
          {
            str1 = "新增建筑" + SystemService.this.numbers.getClassNumber(0) + "件 ;";
            if (SystemService.this.numbers.getClassNumber(1) <= 0)
              break label627;
            str2 = "疑似新增建筑" + SystemService.this.numbers.getClassNumber(1) + "件;";
            if (SystemService.this.numbers.getClassNumber(2) <= 0)
              break label634;
            str3 = "公众举报违建" + SystemService.this.numbers.getClassNumber(2) + "件 ;";
            if (SystemService.this.numbers.getClassNumber(3) <= 0)
              break label641;
            str4 = "土方工地" + SystemService.this.numbers.getClassNumber(3) + "件 ;";
            if (SystemService.this.numbers.getClassNumber(4) <= 0)
              break label648;
            str5 = "重点单位消防隐患" + SystemService.this.numbers.getClassNumber(4) + "件;";
            if (SystemService.this.numbers.getClassNumber(5) <= 0)
              break label620;
            str6 = "公众举报投诉" + SystemService.this.numbers.getClassNumber(5) + "件 ;";
            SystemService.this.showNotification(2130837566, "掌上朝阳实时提醒", "掌上朝阳实时提醒", str1 + str2 + str3 + str4 + str5 + str6);
            SystemService.this.numberChanged = false;
            return;
          }
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
          return;
        }
        String str1 = "";
        continue;
        label620: String str6 = "";
        continue;
        label627: String str2 = "";
        continue;
        label634: String str3 = "";
        continue;
        label641: String str4 = "";
        continue;
        label648: String str5 = "";
      }
    }

    protected void onPreExecute()
    {
    }
  }

  class RetreiveServerSettingTask extends AsyncTask<Void, Void, ServerSettings>
  {
    private Exception exception;
    boolean showResultAlways = false;

    RetreiveServerSettingTask(boolean arg2)
    {
      boolean bool;
      this.showResultAlways = bool;
    }

    protected ServerSettings doInBackground(Void[] paramArrayOfVoid)
    {
      try
      {
        Server.Location localLocation = SystemService.this.mHomeApplication.getLastKnownLocation();
        ServerSettings localServerSettings = SystemService.this.mHomeApplication.getServer().serverSettings(SystemService.this.contexts, localLocation);
        Log.i("SystemService", localServerSettings);
        return localServerSettings;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        this.exception = localException;
      }
      return null;
    }

    protected void onPostExecute(ServerSettings paramServerSettings)
    {
      SystemService.this.sendBroadcast(new Intent("com.cymobile.ymwork.intent.action.versionfetchdone"));
      if (paramServerSettings != null)
      {
        SystemService.this.currentServerSettings = paramServerSettings;
        if (!SystemService.settingParsed)
        {
          SystemService.settingParsed = true;
          try
          {
            PackageInfo localPackageInfo = SystemService.this.getPackageManager().getPackageInfo(SystemService.this.getPackageName(), 0);
            int i = localPackageInfo.versionCode;
            if (Float.parseFloat(paramServerSettings.getVersion()) > i)
            {
              Dialog localDialog = SystemService.this.createVersionDialog();
              localDialog.getWindow().setType(2003);
              localDialog.show();
              return;
            }
            if (!this.showResultAlways)
              return;
            Toast.makeText(SystemService.this, 2131296398, 0).show();
            return;
          }
          catch (Exception localException)
          {
            localException.printStackTrace();
            return;
          }
        }
      }
      else
      {
        Log.i("SystemService", "serverSettings " + paramServerSettings);
      }
    }
  }

  static class ServiceStub extends ISystemService.Stub
  {
    WeakReference<SystemService> mService;

    ServiceStub(SystemService paramSystemService)
    {
      this.mService = new WeakReference(paramSystemService);
    }

    public void cancelNotification()
    {
      ((SystemService)this.mService.get()).cancelNotification();
    }

    public void checkNewVersion()
      throws RemoteException
    {
      ((SystemService)this.mService.get()).checkNewVersion();
    }

    public void clearNumbers()
    {
      ((SystemService)this.mService.get()).clearNumbers();
    }

    public int[] getCurrentCaseNumber()
      throws RemoteException
    {
      return ((SystemService)this.mService.get()).getCurrentCaseNumber();
    }

    public void hushReadNumber()
      throws RemoteException
    {
      ((SystemService)this.mService.get()).hushReadNumber();
    }

    public void readServerInfo()
      throws RemoteException
    {
      ((SystemService)this.mService.get()).readServerInfo();
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.SystemService
 * JD-Core Version:    0.6.0
 */