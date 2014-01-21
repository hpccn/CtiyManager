package com.amap.api.maps;

import android.graphics.Point;
import android.os.RemoteException;
import com.amap.api.a.u;
import com.amap.api.maps.model.LatLng;
import com.amap.api.maps.model.RuntimeRemoteException;
import com.amap.api.maps.model.VisibleRegion;

public class Projection
{
  private final u a;

  Projection(u paramu)
  {
    this.a = paramu;
  }

  public LatLng fromScreenLocation(Point paramPoint)
  {
    try
    {
      LatLng localLatLng = this.a.a(paramPoint);
      return localLatLng;
    }
    catch (RemoteException localRemoteException)
    {
    }
    throw new RuntimeRemoteException(localRemoteException);
  }

  public VisibleRegion getVisibleRegion()
  {
    try
    {
      VisibleRegion localVisibleRegion = this.a.a();
      return localVisibleRegion;
    }
    catch (RemoteException localRemoteException)
    {
    }
    throw new RuntimeRemoteException(localRemoteException);
  }

  public Point toScreenLocation(LatLng paramLatLng)
  {
    try
    {
      Point localPoint = this.a.a(paramLatLng);
      return localPoint;
    }
    catch (RemoteException localRemoteException)
    {
    }
    throw new RuntimeRemoteException(localRemoteException);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.maps.Projection
 * JD-Core Version:    0.6.0
 */