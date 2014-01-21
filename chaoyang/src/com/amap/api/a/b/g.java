package com.amap.api.a.b;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;
import android.os.Environment;
import com.amap.api.maps.MapsInitializer;
import com.amap.api.maps.model.LatLng;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.Arrays;

public class g
{
  public static double a(LatLng paramLatLng1, LatLng paramLatLng2)
  {
    double d1 = paramLatLng1.longitude;
    double d2 = paramLatLng1.latitude;
    double d3 = paramLatLng2.longitude;
    double d4 = paramLatLng2.latitude;
    double d5 = d1 * 0.01745329251994329D;
    double d6 = d2 * 0.01745329251994329D;
    double d7 = d3 * 0.01745329251994329D;
    double d8 = d4 * 0.01745329251994329D;
    double d9 = Math.sin(d5);
    double d10 = Math.sin(d6);
    double d11 = Math.cos(d5);
    double d12 = Math.cos(d6);
    double d13 = Math.sin(d7);
    double d14 = Math.sin(d8);
    double d15 = Math.cos(d7);
    double d16 = Math.cos(d8);
    double[] arrayOfDouble1 = new double[3];
    double[] arrayOfDouble2 = new double[3];
    arrayOfDouble1[0] = (d11 * d12);
    arrayOfDouble1[1] = (d12 * d9);
    arrayOfDouble1[2] = d10;
    arrayOfDouble2[0] = (d16 * d15);
    arrayOfDouble2[1] = (d16 * d13);
    arrayOfDouble2[2] = d14;
    return 12742001.579854401D * Math.asin(Math.sqrt((arrayOfDouble1[0] - arrayOfDouble2[0]) * (arrayOfDouble1[0] - arrayOfDouble2[0]) + (arrayOfDouble1[1] - arrayOfDouble2[1]) * (arrayOfDouble1[1] - arrayOfDouble2[1]) + (arrayOfDouble1[2] - arrayOfDouble2[2]) * (arrayOfDouble1[2] - arrayOfDouble2[2])) / 2.0D);
  }

  public static float a(float paramFloat)
  {
    if (paramFloat < 0.0F)
      paramFloat = 0.0F;
    do
      return paramFloat;
    while (paramFloat <= 60.0F);
    return 60.0F;
  }

  public static int a(int paramInt)
  {
    int i = (int)(Math.log(paramInt) / Math.log(2.0D));
    if (1 << i >= paramInt)
      return 1 << i;
    return 1 << i + 1;
  }

  public static int a(Object[] paramArrayOfObject)
  {
    return Arrays.hashCode(paramArrayOfObject);
  }

  public static Bitmap a(Bitmap paramBitmap, float paramFloat)
  {
    if (paramBitmap == null)
      return null;
    return Bitmap.createScaledBitmap(paramBitmap, (int)(paramFloat * paramBitmap.getWidth()), (int)(paramFloat * paramBitmap.getHeight()), false);
  }

  public static String a(Context paramContext)
  {
    if (!Environment.getExternalStorageState().equals("mounted"))
      return paramContext.getCacheDir().toString() + "/";
    if ((MapsInitializer.sdcardDir == null) || (MapsInitializer.sdcardDir.equals("")))
    {
      File localFile1 = new File(Environment.getExternalStorageDirectory(), "amap");
      if (!localFile1.exists())
        localFile1.mkdir();
      File localFile2 = new File(localFile1, "mini_mapv3");
      if (!localFile2.exists())
        localFile2.mkdir();
      return localFile2.toString() + "/";
    }
    File localFile3 = new File(MapsInitializer.sdcardDir);
    if (!localFile3.exists())
      localFile3.mkdirs();
    return MapsInitializer.sdcardDir;
  }

  public static String a(String paramString, Object paramObject)
  {
    return paramString + "=" + String.valueOf(paramObject);
  }

  public static String a(String[] paramArrayOfString)
  {
    int i = 0;
    StringBuilder localStringBuilder = new StringBuilder();
    int j = paramArrayOfString.length;
    int k = 0;
    while (i < j)
    {
      localStringBuilder.append(paramArrayOfString[i]);
      if (k != -1 + paramArrayOfString.length)
        localStringBuilder.append(",");
      k++;
      i++;
    }
    return localStringBuilder.toString();
  }

  public static FloatBuffer a(float[] paramArrayOfFloat)
  {
    ByteBuffer localByteBuffer = ByteBuffer.allocateDirect(4 * paramArrayOfFloat.length);
    localByteBuffer.order(ByteOrder.nativeOrder());
    FloatBuffer localFloatBuffer = localByteBuffer.asFloatBuffer();
    localFloatBuffer.put(paramArrayOfFloat);
    localFloatBuffer.position(0);
    return localFloatBuffer;
  }

  public static FloatBuffer a(float[] paramArrayOfFloat, FloatBuffer paramFloatBuffer)
  {
    paramFloatBuffer.clear();
    paramFloatBuffer.put(paramArrayOfFloat);
    paramFloatBuffer.position(0);
    return paramFloatBuffer;
  }

  public static byte[] a(Context paramContext, String paramString)
  {
    AssetManager localAssetManager = paramContext.getAssets();
    InputStream localInputStream;
    ByteArrayOutputStream localByteArrayOutputStream;
    try
    {
      localInputStream = localAssetManager.open(paramString);
      localByteArrayOutputStream = new ByteArrayOutputStream();
      byte[] arrayOfByte1 = new byte[1024];
      while (true)
      {
        int i = localInputStream.read(arrayOfByte1);
        if (i <= -1)
          break;
        localByteArrayOutputStream.write(arrayOfByte1, 0, i);
      }
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
      return null;
    }
    byte[] arrayOfByte2 = localByteArrayOutputStream.toByteArray();
    localByteArrayOutputStream.close();
    localInputStream.close();
    return arrayOfByte2;
  }

  public static float b(float paramFloat)
  {
    if (paramFloat > 20.0F)
      paramFloat = 20.0F;
    do
      return paramFloat;
    while (paramFloat >= 4.0F);
    return 4.0F;
  }

  public static String b(int paramInt)
  {
    if (paramInt < 1000)
      return paramInt + "m";
    return paramInt / 1000 + "km";
  }

  public static String b(Context paramContext)
  {
    String str;
    if ((MapsInitializer.sdcardDir == null) || (MapsInitializer.sdcardDir.equals("")))
    {
      File localFile1 = new File(Environment.getExternalStorageDirectory(), "amap");
      if (!localFile1.exists())
        localFile1.mkdir();
      File localFile2 = new File(localFile1, "VMAP2");
      if (!localFile2.exists())
        localFile2.mkdir();
      str = localFile2.toString() + "/";
    }
    File localFile3;
    do
    {
      return str;
      str = MapsInitializer.sdcardDir + "VMAP2/";
      localFile3 = new File(str);
    }
    while (localFile3.exists());
    localFile3.mkdirs();
    return str;
  }

  public static int c(float paramFloat)
  {
    int i = 1;
    int j = 0;
    int k = i;
    while (true)
    {
      if (k > paramFloat)
        return j;
      int m = k * 2;
      int n = i + 1;
      k = m;
      j = i;
      i = n;
    }
  }

  public static boolean c(Context paramContext)
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
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.a.b.g
 * JD-Core Version:    0.6.0
 */