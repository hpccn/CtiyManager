package com.amap.api.offlinemap;

import android.util.Log;

public class h
{
  public static void a(int paramInt)
  {
    long l = paramInt;
    try
    {
      Thread.sleep(l);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public static void a(String paramString)
  {
    Log.e(paramString, paramString);
  }

  public static void b(int paramInt)
  {
    Log.e("status:" + paramInt, "complete:" + paramInt);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.offlinemap.h
 * JD-Core Version:    0.6.0
 */