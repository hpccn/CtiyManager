package com.amap.api.maps;

import android.content.Context;
import android.os.RemoteException;

public final class MapsInitializer
{
  public static String sdcardDir = "";

  public static void initialize(Context paramContext)
    throws RemoteException
  {
    com.amap.api.a.y.a = paramContext;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.maps.MapsInitializer
 * JD-Core Version:    0.6.0
 */