package com.amap.api.a;

import android.graphics.Point;
import android.os.RemoteException;
import com.amap.api.maps.model.LatLng;
import com.amap.api.maps.model.LatLngBounds;
import com.amap.api.maps.model.LatLngBounds.Builder;
import com.amap.api.maps.model.VisibleRegion;
import com.autonavi.amap.mapcore.DPoint;
import com.autonavi.amap.mapcore.IPoint;

class ai
  implements u
{
  private n a;

  public ai(n paramn)
  {
    this.a = paramn;
  }

  public Point a(LatLng paramLatLng)
    throws RemoteException
  {
    IPoint localIPoint = new IPoint();
    this.a.b(paramLatLng.latitude, paramLatLng.longitude, localIPoint);
    return new Point(localIPoint.x, localIPoint.y);
  }

  public LatLng a(Point paramPoint)
    throws RemoteException
  {
    DPoint localDPoint = new DPoint();
    this.a.a(paramPoint.x, paramPoint.y, localDPoint);
    return new LatLng(localDPoint.y, localDPoint.x);
  }

  public VisibleRegion a()
    throws RemoteException
  {
    int i = this.a.g();
    int j = this.a.h();
    LatLng localLatLng1 = a(new Point(0, 0));
    LatLng localLatLng2 = a(new Point(i, 0));
    LatLng localLatLng3 = a(new Point(0, j));
    LatLng localLatLng4 = a(new Point(i, j));
    return new VisibleRegion(localLatLng3, localLatLng4, localLatLng1, localLatLng2, LatLngBounds.builder().include(localLatLng3).include(localLatLng4).include(localLatLng1).include(localLatLng2).build());
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.a.ai
 * JD-Core Version:    0.6.0
 */