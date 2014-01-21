package com.cymobile.ymwork.utils;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.telephony.TelephonyManager;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URLEncoder;
import java.util.Properties;

public class DeviceInfoUtils
{
  private static Context mContext;

  public static boolean checkNet(Context paramContext)
  {
    NetworkInfo localNetworkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
    if ((localNetworkInfo != null) && (localNetworkInfo.isAvailable()))
      return (!localNetworkInfo.getTypeName().equals("MOBILE")) || (!localNetworkInfo.getExtraInfo().equals("cmwap"));
    return false;
  }

  public static String getDeviceId(Context paramContext)
  {
    Properties localProperties = new Properties();
    FileInputStream localFileInputStream = null;
    try
    {
      localFileInputStream = paramContext.openFileInput("settings.properties");
      localProperties.load(localFileInputStream);
      String str = localProperties.getProperty("deviceid");
      if (localFileInputStream != null);
      try
      {
        localFileInputStream.close();
        return str;
      }
      catch (IOException localIOException3)
      {
        localIOException3.printStackTrace();
        return str;
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      if (localFileInputStream != null);
      try
      {
        localFileInputStream.close();
        return "";
      }
      catch (IOException localIOException2)
      {
        while (true)
          localIOException2.printStackTrace();
      }
    }
    finally
    {
      if (localFileInputStream == null);
    }
    try
    {
      localFileInputStream.close();
      throw localObject;
    }
    catch (IOException localIOException1)
    {
      while (true)
        localIOException1.printStackTrace();
    }
  }

  public static String getIMEI(Context paramContext)
  {
    try
    {
      String str = URLEncoder.encode(((TelephonyManager)paramContext.getSystemService("phone")).getDeviceId());
      return str;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return "";
  }

  public static String getIMSI(Context paramContext)
  {
    return ((TelephonyManager)paramContext.getSystemService("phone")).getSubscriberId();
  }

  public static String getMobileModel()
  {
    return Build.MODEL;
  }

  public static String getMobilephoto()
  {
    return null;
  }

  public static String getNetTypeName(Context paramContext)
  {
    return ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo().getTypeName();
  }

  public static String getPhoneModel(Context paramContext)
  {
    try
    {
      String str = URLEncoder.encode(Build.MODEL);
      return str;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return "";
  }

  public static String getReleaseVersion(Context paramContext)
  {
    try
    {
      String str = URLEncoder.encode(Build.VERSION.RELEASE);
      return str;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return "";
  }

  public static int getSDKVersionNumber()
  {
    return Build.VERSION.SDK_INT;
  }

  public static int getWifiStatus(Context paramContext)
  {
    return ((WifiManager)paramContext.getSystemService("wifi")).getWifiState();
  }

  public static boolean isAllowDown(Context paramContext)
  {
    Properties localProperties = new Properties();
    FileInputStream localFileInputStream = null;
    try
    {
      localFileInputStream = paramContext.openFileInput("isdownwifi.properties");
      localProperties.load(localFileInputStream);
      if (!localProperties.getProperty("isdownwifi").equals("true"))
      {
        boolean bool = isWifi();
        if (localFileInputStream != null);
        try
        {
          localFileInputStream.close();
          return bool;
        }
        catch (IOException localIOException4)
        {
          localIOException4.printStackTrace();
          return bool;
        }
      }
      if (localFileInputStream != null);
      try
      {
        localFileInputStream.close();
        return true;
      }
      catch (IOException localIOException3)
      {
        while (true)
          localIOException3.printStackTrace();
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      if (localFileInputStream != null);
      try
      {
        localFileInputStream.close();
        return false;
      }
      catch (IOException localIOException2)
      {
        while (true)
          localIOException2.printStackTrace();
      }
    }
    finally
    {
      if (localFileInputStream == null);
    }
    try
    {
      localFileInputStream.close();
      throw localObject;
    }
    catch (IOException localIOException1)
    {
      while (true)
        localIOException1.printStackTrace();
    }
  }

  public static boolean isWifi()
  {
    if (mContext != null)
    {
      NetworkInfo localNetworkInfo = ((ConnectivityManager)mContext.getSystemService("connectivity")).getActiveNetworkInfo();
      if ((localNetworkInfo != null) && (localNetworkInfo.getType() == 1))
        return true;
    }
    return false;
  }

  public static void setContext(Context paramContext)
  {
    mContext = paramContext.getApplicationContext();
  }

  // ERROR //
  public static void setDeviceId(Context paramContext)
  {
    // Byte code:
    //   0: new 57	java/util/Properties
    //   3: dup
    //   4: invokespecial 58	java/util/Properties:<init>	()V
    //   7: astore_1
    //   8: aload_1
    //   9: ldc 70
    //   11: new 161	java/lang/StringBuilder
    //   14: dup
    //   15: aload_0
    //   16: invokestatic 163	com/cymobile/ymwork/utils/DeviceInfoUtils:getIMEI	(Landroid/content/Context;)Ljava/lang/String;
    //   19: invokestatic 167	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   22: invokespecial 170	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   25: invokestatic 176	java/util/Calendar:getInstance	()Ljava/util/Calendar;
    //   28: invokevirtual 180	java/util/Calendar:getTimeInMillis	()J
    //   31: invokevirtual 184	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   34: invokevirtual 187	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   37: invokevirtual 191	java/util/Properties:setProperty	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    //   40: pop
    //   41: aconst_null
    //   42: astore_3
    //   43: aload_0
    //   44: ldc 60
    //   46: iconst_2
    //   47: invokevirtual 195	android/content/Context:openFileOutput	(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    //   50: astore_3
    //   51: aload_1
    //   52: aload_3
    //   53: aconst_null
    //   54: invokevirtual 199	java/util/Properties:store	(Ljava/io/OutputStream;Ljava/lang/String;)V
    //   57: aload_3
    //   58: ifnull +7 -> 65
    //   61: aload_3
    //   62: invokevirtual 202	java/io/FileOutputStream:close	()V
    //   65: return
    //   66: astore 8
    //   68: aload 8
    //   70: invokevirtual 203	java/io/FileNotFoundException:printStackTrace	()V
    //   73: aload_3
    //   74: ifnull -9 -> 65
    //   77: aload_3
    //   78: invokevirtual 202	java/io/FileOutputStream:close	()V
    //   81: return
    //   82: astore 9
    //   84: aload 9
    //   86: invokevirtual 82	java/io/IOException:printStackTrace	()V
    //   89: return
    //   90: astore 6
    //   92: aload 6
    //   94: invokevirtual 82	java/io/IOException:printStackTrace	()V
    //   97: aload_3
    //   98: ifnull -33 -> 65
    //   101: aload_3
    //   102: invokevirtual 202	java/io/FileOutputStream:close	()V
    //   105: return
    //   106: astore 7
    //   108: aload 7
    //   110: invokevirtual 82	java/io/IOException:printStackTrace	()V
    //   113: return
    //   114: astore 4
    //   116: aload_3
    //   117: ifnull +7 -> 124
    //   120: aload_3
    //   121: invokevirtual 202	java/io/FileOutputStream:close	()V
    //   124: aload 4
    //   126: athrow
    //   127: astore 5
    //   129: aload 5
    //   131: invokevirtual 82	java/io/IOException:printStackTrace	()V
    //   134: goto -10 -> 124
    //   137: astore 10
    //   139: aload 10
    //   141: invokevirtual 82	java/io/IOException:printStackTrace	()V
    //   144: return
    //
    // Exception table:
    //   from	to	target	type
    //   43	57	66	java/io/FileNotFoundException
    //   77	81	82	java/io/IOException
    //   43	57	90	java/io/IOException
    //   101	105	106	java/io/IOException
    //   43	57	114	finally
    //   68	73	114	finally
    //   92	97	114	finally
    //   120	124	127	java/io/IOException
    //   61	65	137	java/io/IOException
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.utils.DeviceInfoUtils
 * JD-Core Version:    0.6.0
 */