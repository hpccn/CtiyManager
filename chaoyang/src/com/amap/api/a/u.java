package com.amap.api.a;

import android.graphics.Point;
import android.os.RemoteException;
import com.amap.api.maps.model.LatLng;
import com.amap.api.maps.model.VisibleRegion;

public abstract interface u
{
  public abstract Point a(LatLng paramLatLng)
    throws RemoteException;

  public abstract LatLng a(Point paramPoint)
    throws RemoteException;

  public abstract VisibleRegion a()
    throws RemoteException;
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.a.u
 * JD-Core Version:    0.6.0
 */