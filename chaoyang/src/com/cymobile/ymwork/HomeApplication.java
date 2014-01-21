package com.cymobile.ymwork;

import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.cymobile.ymwork.act.LoginActivity;
import com.cymobile.ymwork.preference.PreferencesUtils;
import com.cymobile.ymwork.server.NullDiskCache;
import com.cymobile.ymwork.server.RemoteResourceManager;
import com.cymobile.ymwork.server.Server;
import com.cymobile.ymwork.server.Server.Location;
import com.cymobile.ymwork.server.ServerHttpApiV1;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.Set;
import java.util.TreeMap;

public class HomeApplication extends Application
{
  public static String CAR_DOCK_EXTRA;
  public static final String INTENT_ACTION_LOGGED_IN = "com.cymobile.cy.intent.action.LOGGED_IN";
  public static final String INTENT_ACTION_LOGGED_OUT = "com.cymobile.cy.intent.action.LOGGED_OUT";
  public static final String Intent_stringArrayExtra = "Intent_stringArrayExtra";
  private static String SdcardStorage = "/com.cymobile.ymwork";
  private static final String TAG = "CarHomeApplication";
  public static final long TotalFileSizeLimit = 6000000L;
  boolean DEBUG = true;
  private Server.Location currentLocation = null;
  boolean isLocated;
  private boolean login = false;
  protected Intent mCarAppsIntent;
  private SharedPreferences mPrefs;
  RemoteResourceManager mRemoteResourceManager;
  private Server mServer;
  TaskHandler mTaskHandler;
  String mVersion;
  String photoPath = null;

  private static boolean checkFsWritable()
  {
    File localFile = new File(Environment.getExternalStorageDirectory().toString() + SdcardStorage);
    if ((!localFile.isDirectory()) && (!localFile.mkdirs()))
      return false;
    return localFile.canWrite();
  }

  public static final ServerHttpApiV1 createHttpApi(String paramString1, String paramString2, boolean paramBoolean, int paramInt)
  {
    Log.i("CarHomeApplication", "Using com for requests.");
    return new ServerHttpApiV1(paramString1, paramString2, paramBoolean, paramInt);
  }

  private String createName(long paramLong, String paramString1, String paramString2)
  {
    Date localDate = new Date(paramLong);
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat(getString(2131296277));
    return paramString1 + localSimpleDateFormat.format(localDate) + paramString2;
  }

  public static boolean hasStorage()
  {
    return hasStorage(true);
  }

  public static boolean hasStorage(boolean paramBoolean)
  {
    boolean bool = true;
    String str = Environment.getExternalStorageState();
    if ("mounted".equals(str))
      if (paramBoolean)
        bool = checkFsWritable();
    do
      return bool;
    while ((!paramBoolean) && ("mounted_ro".equals(str)));
    return false;
  }

  private void loadResourceManagers()
  {
    try
    {
      this.mRemoteResourceManager = new RemoteResourceManager("cache");
      return;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      this.mRemoteResourceManager = new RemoteResourceManager(new NullDiskCache());
    }
  }

  private void loadServer()
  {
    this.mServer = new Server(Server.createHttpApi(this.mVersion, false));
  }

  public static void redirectToLoginActivityAndBack(Activity paramActivity, Class paramClass, String[] paramArrayOfString)
  {
    Intent localIntent = new Intent(paramActivity, LoginActivity.class);
    localIntent.putExtra("Intent_backClass", paramClass);
    if ((paramArrayOfString != null) && (paramArrayOfString.length > 0))
      localIntent.putExtra("Intent_stringArrayExtra", paramArrayOfString);
    localIntent.setAction("android.intent.action.MAIN");
    localIntent.setFlags(1149239296);
    paramActivity.startActivity(localIntent);
    paramActivity.finish();
  }

  public static void redirectToLoginActivityAndNoBack(Activity paramActivity)
  {
    Intent localIntent = new Intent(paramActivity, LoginActivity.class);
    localIntent.setAction("android.intent.action.MAIN");
    localIntent.setFlags(1149239296);
    paramActivity.startActivity(localIntent);
    paramActivity.finish();
  }

  public Server.Location getCurrentLocation()
  {
    return this.currentLocation;
  }

  public Server.Location getLastKnownLocation()
  {
    if (this.currentLocation == null)
      this.currentLocation = new Server.Location("116.3974", "39.908716");
    return this.currentLocation;
  }

  public Server.Location getLocation()
  {
    return this.currentLocation;
  }

  public final String getPhotoPath()
  {
    String str;
    if (this.photoPath != null)
      str = this.photoPath;
    File localFile;
    do
    {
      return str;
      str = Environment.getExternalStorageDirectory().toString() + SdcardStorage + "/" + "ymwork" + "/photos";
      localFile = new File(str);
    }
    while ((localFile.isDirectory()) || (localFile.mkdirs()));
    return null;
  }

  public RemoteResourceManager getRemoteResourceManager()
  {
    return this.mRemoteResourceManager;
  }

  public Server getServer()
  {
    return this.mServer;
  }

  public boolean getUseNativeImageViewerForFullScreenImages()
  {
    return PreferencesUtils.getUseNativeImageViewerForFullScreenImages(this.mPrefs);
  }

  public boolean haveId()
  {
    String str1 = this.mPrefs.getString("key_newGlobalUserPhone", null);
    String str2 = this.mPrefs.getString("key_GlobalZoneId", null);
    return (str1 != null) && ("123456" != null) && (str2 != null);
  }

  public boolean isLocated()
  {
    return this.isLocated;
  }

  public boolean isLogined()
  {
    if (this.login)
      return this.login;
    if (this.mPrefs.getString("key_newGlobalUserPhone", null) == null);
    boolean bool;
    for (this.login = false; ; this.login = bool)
    {
      return this.login;
      bool = false;
      if (1 == 0)
        continue;
      bool = true;
    }
  }

  public void logout()
  {
    this.login = false;
    SharedPreferences.Editor localEditor = this.mPrefs.edit();
    localEditor.putBoolean("Pref__new_key_isLogined", false);
    localEditor.putString("key_newGlobalUserPhone", null);
    localEditor.putString("key_GlobalUserPasswd", null);
    localEditor.putString("key_GlobalZoneId", null);
    PreferencesUtils.emptySubZone();
    PreferencesUtils.emptyStreetZone();
    localEditor.commit();
  }

  public void onCreate()
  {
    super.onCreate();
    this.mPrefs = getSharedPreferences(SettingBase.class.getName(), 0);
    File localFile;
    if (hasStorage(true))
    {
      localFile = new File(Environment.getExternalStorageDirectory().toString() + SdcardStorage + "/" + ".nomedia");
      if (localFile.exists());
    }
    try
    {
      localFile.createNewFile();
      this.photoPath = getPhotoPath();
      new Thread(new FileManagerThread(null)).start();
      loadResourceManagers();
      loadServer();
      return;
    }
    catch (IOException localIOException)
    {
      while (true)
        localIOException.printStackTrace();
    }
  }

  public void onTerminate()
  {
    super.onTerminate();
    System.gc();
  }

  public void requestUpdateUser()
  {
    this.mTaskHandler.sendEmptyMessage(1);
  }

  public void setCurrentLocation(Server.Location paramLocation)
  {
    this.currentLocation = paramLocation;
  }

  public void setLocated(boolean paramBoolean)
  {
    this.isLocated = paramBoolean;
  }

  public void setServerCredentials()
  {
    String str1 = this.mPrefs.getString("key_newGlobalUserPhone", null);
    String str2 = this.mPrefs.getString("key_GlobalUserPasswd", null);
    this.mServer.setCredentials(str1, str2);
  }

  private class FileManagerThread
    implements Runnable
  {
    private FileManagerThread()
    {
    }

    public void run()
    {
      while (true)
      {
        long l1;
        TreeMap localTreeMap;
        int i;
        Iterator localIterator;
        long l2;
        try
        {
          String str = HomeApplication.this.getPhotoPath();
          File localFile1 = new File(str);
          File[] arrayOfFile = localFile1.listFiles();
          l1 = 0L;
          localTreeMap = new TreeMap();
          i = 0;
          if ((arrayOfFile != null) && (i < arrayOfFile.length))
            continue;
          if (l1 <= 6000000L)
            break label196;
          localIterator = localTreeMap.keySet().iterator();
          l2 = 0L;
          if (!localIterator.hasNext())
          {
            return;
            if (!arrayOfFile[i].isFile())
              continue;
            File localFile3 = arrayOfFile[i];
            l1 += localFile3.length();
            localTreeMap.put(Long.valueOf(localFile3.lastModified()), localFile3);
            break label197;
            arrayOfFile[i].isDirectory();
          }
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
          return;
        }
        File localFile2 = (File)localTreeMap.get(localIterator.next());
        l2 += localFile2.length();
        localFile2.delete();
        if (l1 - l2 < 6000000L)
        {
          label196: return;
          label197: i++;
        }
      }
    }
  }

  private class TaskHandler extends Handler
  {
    private static final int MESSAGE_START_SERVICE = 2;
    private static final int MESSAGE_UPDATE_USER = 1;

    public TaskHandler(Looper arg2)
    {
      super();
    }

    public void handleMessage(Message paramMessage)
    {
      super.handleMessage(paramMessage);
      if (HomeApplication.this.DEBUG)
        Log.d("CarHomeApplication", "handleMessage: " + paramMessage.what);
      switch (paramMessage.what)
      {
      default:
        return;
      case 2:
      }
      Log.i("CarHomeApplication", "MESSAGE_START_SERVICE 2");
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.HomeApplication
 * JD-Core Version:    0.6.0
 */