package com.tencent.qc.stat.common;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.os.Environment;
import android.os.StatFs;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Random;
import java.util.zip.GZIPInputStream;
import org.apache.http.HttpHost;
import org.json.JSONObject;

public class StatCommonHelper
{
  private static String a = null;
  private static String b = null;
  private static String c = null;
  private static String d = null;
  private static Random e = null;
  private static StatLogger f = null;

  public static int a()
  {
    return e().nextInt(2147483647);
  }

  public static Long a(String paramString1, String paramString2, int paramInt1, int paramInt2, Long paramLong)
  {
    if ((paramString1 == null) || (paramString2 == null));
    String[] arrayOfString;
    do
    {
      return paramLong;
      if ((paramString2.equalsIgnoreCase(".")) || (paramString2.equalsIgnoreCase("|")))
        paramString2 = "\\" + paramString2;
      arrayOfString = paramString1.split(paramString2);
    }
    while (arrayOfString.length != paramInt2);
    try
    {
      Long localLong1 = Long.valueOf(0L);
      int i = -1 + arrayOfString.length;
      for (int j = 0; j < i; j++)
        localLong1 = Long.valueOf(localLong1.longValue() + paramInt1 * Long.valueOf(arrayOfString[j]).longValue());
      Long localLong2 = Long.valueOf(localLong1.longValue() + Long.valueOf(arrayOfString[i]).longValue());
      return localLong2;
    }
    catch (NumberFormatException localNumberFormatException)
    {
    }
    return paramLong;
  }

  public static String a(long paramLong)
  {
    return new SimpleDateFormat("yyyyMMdd").format(new Date(paramLong));
  }

  public static String a(String paramString)
  {
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.update(paramString.getBytes());
      byte[] arrayOfByte = localMessageDigest.digest();
      StringBuffer localStringBuffer = new StringBuffer();
      for (int i = 0; i < arrayOfByte.length; i++)
      {
        int j = 0xFF & arrayOfByte[i];
        if (j < 16)
          localStringBuffer.append("0");
        localStringBuffer.append(Integer.toHexString(j));
      }
      String str = localStringBuffer.toString();
      return str;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      f.b(localNoSuchAlgorithmException);
    }
    return "0";
  }

  public static HttpHost a(Context paramContext)
  {
    if (paramContext == null)
      return null;
    if (paramContext.getPackageManager().checkPermission("android.permission.ACCESS_NETWORK_STATE", paramContext.getPackageName()) != 0)
      return null;
    String str;
    do
      try
      {
        NetworkInfo localNetworkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
        if (localNetworkInfo == null)
          return null;
        if ((localNetworkInfo.getTypeName() != null) && (localNetworkInfo.getTypeName().equalsIgnoreCase("WIFI")))
          return null;
        str = localNetworkInfo.getExtraInfo();
        if (str == null)
          return null;
        if ((!str.equals("cmwap")) && (!str.equals("3gwap")) && (!str.equals("uniwap")))
          continue;
        HttpHost localHttpHost1 = new HttpHost("10.0.0.172", 80);
        return localHttpHost1;
      }
      catch (Exception localException)
      {
        f.b(localException);
        return null;
      }
    while (!str.equals("ctwap"));
    HttpHost localHttpHost2 = new HttpHost("10.0.0.200", 80);
    return localHttpHost2;
  }

  public static void a(JSONObject paramJSONObject, String paramString1, String paramString2)
  {
    if ((paramString2 != null) && (paramString2.length() > 0))
      paramJSONObject.put(paramString1, paramString2);
  }

  public static boolean a(Context paramContext, String paramString)
  {
    return paramContext.getPackageManager().checkPermission(paramString, paramContext.getPackageName()) == 0;
  }

  public static byte[] a(byte[] paramArrayOfByte)
  {
    GZIPInputStream localGZIPInputStream = new GZIPInputStream(new ByteArrayInputStream(paramArrayOfByte));
    byte[] arrayOfByte = new byte[4096];
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream(2 * paramArrayOfByte.length);
    while (true)
    {
      int i = localGZIPInputStream.read(arrayOfByte);
      if (i == -1)
        break;
      localByteArrayOutputStream.write(arrayOfByte, 0, i);
    }
    return localByteArrayOutputStream.toByteArray();
  }

  public static long b(String paramString)
  {
    return a(paramString, ".", 100, 3, Long.valueOf(0L)).longValue();
  }

  public static StatLogger b()
  {
    if (f == null)
    {
      f = new StatLogger("qc_MtaSDK");
      f.a(false);
    }
    return f;
  }

  public static String b(Context paramContext)
  {
    if (a != null)
      return a;
    a = k(paramContext);
    if (a == null)
      a = Integer.toString(e().nextInt(2147483647));
    return a;
  }

  public static long c()
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.set(11, 0);
    localCalendar.set(12, 0);
    localCalendar.set(13, 0);
    localCalendar.set(14, 0);
    return 86400000L + localCalendar.getTimeInMillis();
  }

  public static String c(Context paramContext)
  {
    if ((c == null) || ("" == c))
      c = f(paramContext);
    return c;
  }

  public static DisplayMetrics d(Context paramContext)
  {
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    ((WindowManager)paramContext.getApplicationContext().getSystemService("window")).getDefaultDisplay().getMetrics(localDisplayMetrics);
    return localDisplayMetrics;
  }

  public static String d()
  {
    String str;
    if (Environment.getExternalStorageState().equals("mounted"))
    {
      str = Environment.getExternalStorageDirectory().getPath();
      if (str != null);
    }
    else
    {
      return null;
    }
    StatFs localStatFs = new StatFs(str);
    long l1 = localStatFs.getBlockCount() * localStatFs.getBlockSize() / 1000000L;
    long l2 = localStatFs.getAvailableBlocks() * localStatFs.getBlockSize() / 1000000L;
    return String.valueOf(l2) + "/" + String.valueOf(l1);
  }

  private static Random e()
  {
    if (e == null)
      e = new Random();
    return e;
  }

  public static boolean e(Context paramContext)
  {
    if (a(paramContext, "android.permission.ACCESS_WIFI_STATE"))
    {
      ConnectivityManager localConnectivityManager = (ConnectivityManager)paramContext.getApplicationContext().getSystemService("connectivity");
      int i = 0;
      NetworkInfo[] arrayOfNetworkInfo;
      if (localConnectivityManager != null)
      {
        arrayOfNetworkInfo = localConnectivityManager.getAllNetworkInfo();
        i = 0;
        if (arrayOfNetworkInfo == null);
      }
      for (int j = 0; ; j++)
      {
        int k = arrayOfNetworkInfo.length;
        i = 0;
        if (j < k)
        {
          if ((!arrayOfNetworkInfo[j].getTypeName().equalsIgnoreCase("WIFI")) || (!arrayOfNetworkInfo[j].isConnected()))
            continue;
          i = 1;
        }
        return i;
      }
    }
    f.c("can not get the permission of android.permission.ACCESS_WIFI_STATE");
    return false;
  }

  public static String f(Context paramContext)
  {
    try
    {
      WifiManager localWifiManager = (WifiManager)paramContext.getSystemService("wifi");
      if (localWifiManager == null)
        return "";
      String str = localWifiManager.getConnectionInfo().getMacAddress();
      return str;
    }
    catch (Exception localException)
    {
      f.b(localException);
    }
    return "";
  }

  public static boolean g(Context paramContext)
  {
    if (a(paramContext, "android.permission.INTERNET"))
    {
      NetworkInfo localNetworkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
      return (localNetworkInfo != null) && (localNetworkInfo.isAvailable()) && (localNetworkInfo.getTypeName().equalsIgnoreCase("WIFI"));
    }
    f.c("can not get the permisson of android.permission.INTERNET");
    return false;
  }

  public static boolean h(Context paramContext)
  {
    if (a(paramContext, "android.permission.INTERNET"))
    {
      NetworkInfo localNetworkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
      if ((localNetworkInfo != null) && (localNetworkInfo.isAvailable()))
        return true;
      f.d("Network error");
      return false;
    }
    f.c("can not get the permisson of android.permission.INTERNET");
    return false;
  }

  public static String i(Context paramContext)
  {
    if (b != null)
      return b;
    try
    {
      ApplicationInfo localApplicationInfo = paramContext.getPackageManager().getApplicationInfo(paramContext.getPackageName(), 128);
      if (localApplicationInfo != null)
      {
        String str = localApplicationInfo.metaData.getString("TA_APPKEY");
        if (str == null)
          break label62;
        b = str;
        return str;
      }
    }
    catch (Exception localException)
    {
      f.f("Could not read APPKEY meta-data from AndroidManifest.xml");
    }
    while (true)
    {
      return null;
      label62: f.f("Could not read APPKEY meta-data from AndroidManifest.xml");
    }
  }

  public static String j(Context paramContext)
  {
    try
    {
      ApplicationInfo localApplicationInfo = paramContext.getPackageManager().getApplicationInfo(paramContext.getPackageName(), 128);
      if (localApplicationInfo != null)
      {
        Object localObject = localApplicationInfo.metaData.get("InstallChannel");
        if (localObject != null)
          return localObject.toString();
        f.f("Could not read InstallChannel meta-data from AndroidManifest.xml");
      }
      return null;
    }
    catch (Exception localException)
    {
      while (true)
        f.f("Could not read InstallChannel meta-data from AndroidManifest.xml");
    }
  }

  public static String k(Context paramContext)
  {
    if (a(paramContext, "android.permission.READ_PHONE_STATE"))
    {
      String str = "";
      if (m(paramContext))
        str = ((TelephonyManager)paramContext.getSystemService("phone")).getDeviceId();
      if (str != null)
        return str;
      f.e("deviceId is null");
      return null;
    }
    f.f("Could not get permission of android.permission.READ_PHONE_STATE");
    return "";
  }

  public static String l(Context paramContext)
  {
    try
    {
      String str = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0).versionName;
      if (str == null)
        str = "";
      return str;
    }
    catch (Exception localException)
    {
      f.b(localException);
    }
    return "";
  }

  public static boolean m(Context paramContext)
  {
    return paramContext.getPackageManager().checkPermission("android.permission.READ_PHONE_STATE", paramContext.getPackageName()) == 0;
  }

  public static String n(Context paramContext)
  {
    NetworkInfo localNetworkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
    if ((localNetworkInfo != null) && (localNetworkInfo.isConnected()))
    {
      String str1 = localNetworkInfo.getTypeName();
      String str2 = localNetworkInfo.getExtraInfo();
      if (str1 != null)
      {
        if (str1.equalsIgnoreCase("WIFI"))
          str2 = "WIFI";
        do
          while (true)
          {
            return str2;
            if (!str1.equalsIgnoreCase("MOBILE"))
              break;
            if (str2 == null)
              return "MOBILE";
          }
        while (str2 != null);
        return str1;
      }
    }
    return null;
  }

  public static Integer o(Context paramContext)
  {
    TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
    if (localTelephonyManager != null)
      return Integer.valueOf(localTelephonyManager.getNetworkType());
    return null;
  }

  // ERROR //
  public static String p(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 152	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   4: aload_0
    //   5: invokevirtual 157	android/content/Context:getPackageName	()Ljava/lang/String;
    //   8: iconst_0
    //   9: invokevirtual 432	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   12: getfield 437	android/content/pm/PackageInfo:versionName	Ljava/lang/String;
    //   15: astore_2
    //   16: aload_2
    //   17: ifnull +10 -> 27
    //   20: aload_2
    //   21: invokevirtual 210	java/lang/String:length	()I
    //   24: ifne +7 -> 31
    //   27: ldc_w 451
    //   30: astore_2
    //   31: aload_2
    //   32: areturn
    //   33: astore_1
    //   34: ldc_w 275
    //   37: astore_2
    //   38: aload_1
    //   39: astore_3
    //   40: getstatic 27	com/tencent/qc/stat/common/StatCommonHelper:f	Lcom/tencent/qc/stat/common/StatLogger;
    //   43: aload_3
    //   44: invokevirtual 143	com/tencent/qc/stat/common/StatLogger:b	(Ljava/lang/Exception;)V
    //   47: aload_2
    //   48: areturn
    //   49: astore_3
    //   50: goto -10 -> 40
    //
    // Exception table:
    //   from	to	target	type
    //   0	16	33	java/lang/Exception
    //   20	27	49	java/lang/Exception
  }

  public static int q(Context paramContext)
  {
    if (a.a())
      return 1;
    return 0;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.tencent.qc.stat.common.StatCommonHelper
 * JD-Core Version:    0.6.0
 */