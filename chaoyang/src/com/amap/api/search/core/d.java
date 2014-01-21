package com.amap.api.search.core;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.Signature;
import android.location.Address;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import java.net.InetSocketAddress;
import java.net.Proxy.Type;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

public class d
{
  public static boolean a;
  static float[] b;
  private static String c = null;

  static
  {
    a = true;
    b = new float[9];
  }

  public static double a(int paramInt)
  {
    return paramInt / 111700.0D;
  }

  public static double a(long paramLong)
  {
    return paramLong / 1000000.0D;
  }

  public static int a(double paramDouble)
  {
    return (int)(111700.0D * paramDouble);
  }

  public static Address a()
  {
    Address localAddress = new Address(Locale.CHINA);
    localAddress.setCountryCode("CN");
    localAddress.setCountryName("中国");
    return localAddress;
  }

  public static String a(Context paramContext)
  {
    char[] arrayOfChar;
    if (c == null)
      arrayOfChar = new char[] { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70 };
    try
    {
      Signature[] arrayOfSignature = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 64).signatures;
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.update(arrayOfSignature[0].toByteArray());
      byte[] arrayOfByte = localMessageDigest.digest();
      localObject = "";
      i = 0;
      if (i < arrayOfByte.length)
      {
        if (arrayOfByte[i] < 0);
        for (int j = 256 + arrayOfByte[i]; ; j = arrayOfByte[i])
        {
          String str1 = (String)localObject + arrayOfChar[(j / 16)];
          str2 = str1 + arrayOfChar[(j % 16)];
          if (i == -1 + arrayOfByte.length)
            break;
          str2 = str2 + ":";
          break;
        }
      }
      c = (String)localObject;
      label283: return c;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      break label283;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      while (true)
      {
        int i;
        String str2;
        continue;
        i++;
        Object localObject = str2;
      }
    }
  }

  public static boolean a(String paramString)
  {
    return (paramString == null) || (paramString.trim().length() == 0);
  }

  public static java.net.Proxy b(Context paramContext)
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

  public static void b(String paramString)
    throws AMapException
  {
    String str;
    try
    {
      JSONObject localJSONObject = new JSONObject(paramString);
      if (localJSONObject.has("status"))
      {
        str = localJSONObject.getString("status");
        if (!str.equals("E6008"))
          break label50;
        throw new AMapException("key为空");
      }
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
    }
    label50: 
    do
    {
      return;
      if (!str.equals("E6012"))
        continue;
      throw new AMapException("key不存在");
    }
    while (!str.equals("E6018"));
    throw new AMapException("key被锁定");
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.search.core.d
 * JD-Core Version:    0.6.0
 */