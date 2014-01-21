package com.amap.api.a.b;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.InetSocketAddress;
import java.net.Proxy.Type;

public class c
{
  public static String a;
  public static int b;
  private static c c = null;
  private static String d = null;
  private static Context e = null;
  private static TelephonyManager f;
  private static ConnectivityManager g;
  private static String h;
  private static String i;

  static
  {
    a = "";
    b = 2048;
  }

  public static c a(Context paramContext)
  {
    if (c == null)
    {
      c = new c();
      e = paramContext;
      f = (TelephonyManager)e.getSystemService("phone");
      g = (ConnectivityManager)e.getSystemService("connectivity");
      h = e.getApplicationContext().getPackageName();
      i = e();
      a = b(e);
    }
    return c;
  }

  public static byte[] a(InputStream paramInputStream)
    throws IOException
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    byte[] arrayOfByte = new byte[b];
    while (true)
    {
      int j = paramInputStream.read(arrayOfByte, 0, b);
      if (j == -1)
        break;
      localByteArrayOutputStream.write(arrayOfByte, 0, j);
    }
    return localByteArrayOutputStream.toByteArray();
  }

  public static String b(Context paramContext)
  {
    if ((a == null) || (a.equals("")));
    try
    {
      a = paramContext.getPackageManager().getApplicationInfo(paramContext.getPackageName(), 128).metaData.getString("com.amap.api.v2.apikey");
      return a;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  public static java.net.Proxy c(Context paramContext)
  {
    try
    {
      NetworkInfo localNetworkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
      if (localNetworkInfo != null)
      {
        int m;
        Object localObject;
        if (localNetworkInfo.getType() == 1)
        {
          String str2 = android.net.Proxy.getHost(paramContext);
          m = android.net.Proxy.getPort(paramContext);
          localObject = str2;
        }
        int j;
        for (int k = m; localObject != null; k = j)
        {
          localProxy = new java.net.Proxy(Proxy.Type.HTTP, new InetSocketAddress((String)localObject, k));
          break label114;
          String str1 = android.net.Proxy.getDefaultHost();
          j = android.net.Proxy.getDefaultPort();
          localObject = str1;
        }
      }
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      localIllegalArgumentException.printStackTrace();
      return null;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      return null;
    }
    java.net.Proxy localProxy = null;
    label114: return (java.net.Proxy)localProxy;
  }

  private static String e()
  {
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    ((WindowManager)e.getSystemService("window")).getDefaultDisplay().getMetrics(localDisplayMetrics);
    int j = localDisplayMetrics.widthPixels;
    int k = localDisplayMetrics.heightPixels;
    if (k > j);
    for (String str = j + "*" + k; ; str = k + "*" + j)
    {
      i = str;
      return i;
    }
  }

  public String a()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("ia=1&");
    if ((a != null) && (a.length() > 0))
    {
      localStringBuilder.append("key=");
      localStringBuilder.append(a);
      localStringBuilder.append("&");
    }
    localStringBuilder.append("ct=android");
    String str1 = f.getDeviceId();
    String str2 = f.getSubscriberId();
    localStringBuilder.append("&ime=" + str1);
    localStringBuilder.append("&sim=" + str2);
    localStringBuilder.append("&pkg=" + h);
    localStringBuilder.append("&mod=");
    localStringBuilder.append(c());
    localStringBuilder.append("&sv=");
    localStringBuilder.append(b());
    localStringBuilder.append("&nt=");
    localStringBuilder.append(d());
    String str3 = f.getNetworkOperatorName();
    localStringBuilder.append("&np=");
    localStringBuilder.append(str3);
    localStringBuilder.append("&ctm=" + System.currentTimeMillis());
    localStringBuilder.append("&re=" + i);
    localStringBuilder.append("&av=V2.0.1");
    localStringBuilder.append("&pro=map");
    return localStringBuilder.toString();
  }

  public String b()
  {
    return Build.VERSION.RELEASE;
  }

  public String c()
  {
    return Build.MODEL;
  }

  public String d()
  {
    if (e.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") != 0)
      return "";
    if (g == null)
      return "";
    NetworkInfo localNetworkInfo = g.getActiveNetworkInfo();
    if (localNetworkInfo == null)
      return "";
    return localNetworkInfo.getTypeName();
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.a.b.c
 * JD-Core Version:    0.6.0
 */