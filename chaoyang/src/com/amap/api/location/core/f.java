package com.amap.api.location.core;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;
import com.amap.api.location.AMapLocation;
import java.net.InetSocketAddress;
import java.net.Proxy.Type;

public class f
{
  public static boolean a;
  static float[] b;
  private static String c = null;

  static
  {
    a = true;
    b = new float[9];
  }

  public static double a(long paramLong)
  {
    return paramLong / 1000000.0D;
  }

  public static long a()
  {
    return 1000L * System.nanoTime() / 1000000000L;
  }

  public static java.net.Proxy a(Context paramContext)
  {
    try
    {
      NetworkInfo localNetworkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
      if (localNetworkInfo != null)
      {
        int k;
        Object localObject;
        if (localNetworkInfo.getType() == 1)
        {
          String str2 = android.net.Proxy.getHost(paramContext);
          k = android.net.Proxy.getPort(paramContext);
          localObject = str2;
        }
        int i;
        for (int j = k; localObject != null; j = i)
        {
          localProxy = new java.net.Proxy(Proxy.Type.HTTP, new InetSocketAddress((String)localObject, j));
          break label114;
          String str1 = android.net.Proxy.getDefaultHost();
          i = android.net.Proxy.getDefaultPort();
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

  public static void a(Context paramContext, AMapLocation paramAMapLocation)
  {
    SharedPreferences.Editor localEditor = paramContext.getSharedPreferences("last_know_location", 0).edit();
    localEditor.putString("last_know_lat", String.valueOf(paramAMapLocation.getLatitude()));
    localEditor.putString("last_know_lng", String.valueOf(paramAMapLocation.getLongitude()));
    localEditor.commit();
  }

  public static boolean a(double paramDouble1, double paramDouble2)
  {
    int i = 1;
    if ((paramDouble1 < a(1000000L)) || (paramDouble1 > a(65000000L)))
      i = 0;
    if ((paramDouble2 < a(50000000L)) || (paramDouble2 > a(145000000L)))
      i = 0;
    return i;
  }

  public static boolean b(Context paramContext)
  {
    if (paramContext == null)
      return false;
    ConnectivityManager localConnectivityManager = (ConnectivityManager)paramContext.getSystemService("connectivity");
    if (localConnectivityManager == null)
      return false;
    NetworkInfo localNetworkInfo = localConnectivityManager.getActiveNetworkInfo();
    if (localNetworkInfo == null)
      return false;
    NetworkInfo.State localState = localNetworkInfo.getState();
    return (localState != null) && (localState != NetworkInfo.State.DISCONNECTED) && (localState != NetworkInfo.State.DISCONNECTING);
  }

  public static AMapLocation c(Context paramContext)
  {
    SharedPreferences localSharedPreferences = paramContext.getSharedPreferences("last_know_location", 0);
    AMapLocation localAMapLocation = new AMapLocation("");
    localAMapLocation.setProvider("lbs");
    double d1 = Double.parseDouble(localSharedPreferences.getString("last_know_lat", "0.0"));
    double d2 = Double.parseDouble(localSharedPreferences.getString("last_know_lng", "0.0"));
    localAMapLocation.setLatitude(d1);
    localAMapLocation.setLongitude(d2);
    return localAMapLocation;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.location.core.f
 * JD-Core Version:    0.6.0
 */