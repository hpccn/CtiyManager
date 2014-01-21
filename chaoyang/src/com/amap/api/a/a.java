package com.amap.api.a;

import android.content.Context;
import android.graphics.Point;
import android.os.Handler;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import com.amap.api.a.b.e;
import com.amap.api.a.b.g;
import com.amap.api.maps.model.CameraPosition;
import com.amap.api.maps.model.LatLng;
import com.amap.api.maps.model.LatLngBounds;
import com.autonavi.amap.mapcore.BaseMapCallImplement;
import com.autonavi.amap.mapcore.DPoint;
import com.autonavi.amap.mapcore.IPoint;
import com.autonavi.amap.mapcore.MapCore;
import com.autonavi.amap.mapcore.MapProjection;
import javax.microedition.khronos.opengles.GL10;

class a extends BaseMapCallImplement
{
  IPoint a = new IPoint();
  float b;
  float c;
  float d;
  IPoint e = new IPoint();
  private b f;
  private final Handler g = new Handler();
  private float h = -1.0F;

  public a(b paramb)
  {
    this.f = paramb;
  }

  private void b(h paramh)
  {
    MapProjection localMapProjection = this.f.b();
    int i;
    if ((localMapProjection.getMapAngle() != 0.0F) || (localMapProjection.getCameraHeaderAngle() != 0.0F))
      i = 1;
    LatLngBounds localLatLngBounds;
    int j;
    int k;
    int m;
    IPoint localIPoint1;
    float f1;
    float f2;
    float f3;
    while (true)
    {
      localLatLngBounds = paramh.i;
      j = paramh.k;
      k = paramh.l;
      m = paramh.j;
      if (i == 0)
      {
        localIPoint1 = new IPoint();
        MapProjection.lonlat2Geo((localLatLngBounds.northeast.longitude + localLatLngBounds.southwest.longitude) / 2.0D, (localLatLngBounds.northeast.latitude + localLatLngBounds.southwest.latitude) / 2.0D, localIPoint1);
        f1 = localMapProjection.getMapZoomer();
        IPoint localIPoint2 = new IPoint();
        IPoint localIPoint3 = new IPoint();
        this.f.b(localLatLngBounds.northeast.latitude, localLatLngBounds.northeast.longitude, localIPoint2);
        this.f.b(localLatLngBounds.southwest.latitude, localLatLngBounds.southwest.longitude, localIPoint3);
        int n = localIPoint2.x - localIPoint3.x;
        int i1 = localIPoint3.y - localIPoint2.y;
        if ((n == 0) && (i1 == 0))
        {
          return;
          i = 0;
          continue;
        }
        f2 = Math.max(n / (j - m * 2), i1 / (k - m * 2));
        if (f2 <= 1.0F)
          break;
        f3 = g.b(f1 - g.c(f2));
      }
    }
    while (true)
    {
      localMapProjection.setGeoCenter(localIPoint1.x, localIPoint1.y);
      localMapProjection.setMapZoomer(f3);
      return;
      if (f2 < 0.5D)
      {
        f3 = g.b(f1 + g.c(1.0F / f2) - 1.0F);
        continue;
        Message localMessage = new Message();
        localMessage.obj = h.a(localLatLngBounds, j, k, m);
        localMessage.what = 12;
        this.f.e.sendMessage(localMessage);
        return;
      }
      f3 = f1;
    }
  }

  public void OnMapDestory(GL10 paramGL10, MapCore paramMapCore)
  {
    super.OnMapDestory(paramMapCore);
  }

  public void OnMapLoaderError(int paramInt)
  {
    Log.d("AMAPAPI", "网络连接异常 OnMapLoaderError code:" + paramInt);
    e.a("MapCore", "OnMapLoaderError=" + paramInt, 112);
  }

  public void OnMapProcessEvent(MapCore paramMapCore)
  {
    float f1 = this.f.x();
    a(paramMapCore);
    while (true)
    {
      z localz = this.f.a.a();
      if (localz == null)
        break;
      if (localz.a == 2)
      {
        if (!localz.a())
          break label85;
        paramMapCore.setParameter(2010, 4, 0, 0, 0);
      }
      while (true)
      {
        if (localz.a != 2011)
          break label97;
        if (!localz.b)
          break label99;
        paramMapCore.setParameter(2011, 3, 0, 0, 0);
        break;
        label85: paramMapCore.setParameter(2010, 0, 0, 0, 0);
      }
      label97: continue;
      try
      {
        label99: int i = this.f.o();
        if (i == -1)
          break label137;
        paramMapCore.setParameter(i, 0, 0, 0, 0);
      }
      catch (RemoteException localRemoteException)
      {
        localRemoteException.printStackTrace();
      }
      continue;
      label137: paramMapCore.setParameter(2011, 0, 0, 0, 0);
    }
    paramMapCore.setMapstate(this.f.b());
    if ((this.b >= this.f.l()) && (this.h != f1))
      this.g.postDelayed(new Runnable()
      {
        public void run()
        {
          a.a(a.this).b.a(a.a(a.this).x());
        }
      }
      , 0L);
    this.h = f1;
  }

  public void OnMapReferencechanged(MapCore paramMapCore, String paramString1, String paramString2)
  {
    try
    {
      if (this.f.s().c())
        this.f.d();
      if (this.f.s().a())
        this.f.e();
      this.f.d.d();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      while (true)
        localRemoteException.printStackTrace();
    }
  }

  public void OnMapSufaceChanged(GL10 paramGL10, MapCore paramMapCore, int paramInt1, int paramInt2)
  {
  }

  public void OnMapSurfaceCreate(GL10 paramGL10, MapCore paramMapCore)
  {
    super.OnMapSurfaceCreate(paramMapCore);
  }

  public void OnMapSurfaceRenderer(GL10 paramGL10, MapCore paramMapCore, int paramInt)
  {
  }

  void a(h paramh)
    throws RemoteException
  {
    MapCore localMapCore = this.f.a();
    MapProjection localMapProjection = this.f.b();
    paramh.d = this.f.a(paramh.d);
    paramh.f = g.a(paramh.f);
    switch (2.a[paramh.a.ordinal()])
    {
    default:
      localMapCore.setMapstate(localMapProjection);
      return;
    case 1:
      localMapProjection.setGeoCenter(paramh.p.x, paramh.p.y);
      localMapCore.setMapstate(localMapProjection);
      return;
    case 2:
      localMapProjection.setMapAngle(paramh.g);
      localMapCore.setMapstate(localMapProjection);
      return;
    case 3:
      localMapProjection.setCameraHeaderAngle(paramh.f);
      localMapCore.setMapstate(localMapProjection);
      return;
    case 4:
      localMapProjection.setGeoCenter(paramh.p.x, paramh.p.y);
      localMapProjection.setMapZoomer(paramh.d);
      localMapCore.setMapstate(localMapProjection);
      return;
    case 5:
      LatLng localLatLng = paramh.h.target;
      IPoint localIPoint4 = new IPoint();
      MapProjection.lonlat2Geo(localLatLng.longitude, localLatLng.latitude, localIPoint4);
      float f9 = paramh.h.zoom;
      float f10 = paramh.h.bearing;
      float f11 = paramh.h.tilt;
      localMapProjection.setGeoCenter(localIPoint4.x, localIPoint4.y);
      localMapProjection.setMapZoomer(f9);
      localMapProjection.setMapAngle(f10);
      localMapProjection.setCameraHeaderAngle(f11);
      localMapCore.setMapstate(localMapProjection);
      return;
    case 6:
      float f8 = 1.0F + localMapProjection.getMapZoomer();
      localMapProjection.setMapZoomer(this.f.a(f8));
      localMapCore.setMapstate(localMapProjection);
      return;
    case 7:
      float f7 = localMapProjection.getMapZoomer() - 1.0F;
      localMapProjection.setMapZoomer(this.f.a(f7));
      localMapCore.setMapstate(localMapProjection);
      return;
    case 8:
      localMapProjection.setMapZoomer(paramh.d);
      localMapCore.setMapstate(localMapProjection);
      return;
    case 9:
      float f5 = paramh.e;
      float f6 = f5 + localMapProjection.getMapZoomer();
      Point localPoint = paramh.m;
      if (localPoint != null)
      {
        IPoint localIPoint2 = new IPoint();
        IPoint localIPoint3 = new IPoint();
        localMapProjection.getGeoCenter(localIPoint3);
        this.f.a(localPoint.x, localPoint.y, localIPoint2);
        int i = localIPoint3.x - localIPoint2.x;
        int j = localIPoint3.y - localIPoint2.y;
        localMapProjection.setGeoCenter((int)(localIPoint2.x + i / Math.pow(2.0D, f5)), (int)(localIPoint2.y + j / Math.pow(2.0D, f5)));
        localMapProjection.setMapZoomer(this.f.a(f6));
      }
      while (true)
      {
        localMapCore.setMapstate(localMapProjection);
        return;
        localMapProjection.setMapZoomer(this.f.a(f6));
      }
    case 10:
      float f1 = paramh.b;
      float f2 = paramh.c;
      float f3 = f1 + this.f.getWidth() / 2;
      float f4 = f2 + this.f.getHeight() / 2;
      IPoint localIPoint1 = new IPoint();
      this.f.a((int)f3, (int)f4, localIPoint1);
      localMapProjection.setGeoCenter(localIPoint1.x, localIPoint1.y);
      localMapCore.setMapstate(localMapProjection);
      return;
    case 11:
      b(h.a(paramh.i, this.f.getWidth(), this.f.getHeight(), paramh.j));
      return;
    case 12:
      b(paramh);
      return;
    case 13:
      localMapProjection.setGeoCenter(paramh.p.x, paramh.p.y);
      localMapProjection.setMapZoomer(paramh.d);
      localMapProjection.setMapAngle(paramh.g);
      localMapProjection.setCameraHeaderAngle(paramh.f);
      localMapCore.setMapstate(localMapProjection);
      return;
    case 14:
    }
    if (paramh.n)
      localMapCore.setParameter(2011, 3, 0, 0, 0);
    while (true)
    {
      localMapCore.setMapstate(localMapProjection);
      return;
      if (this.f.o() != -1)
      {
        localMapCore.setParameter(this.f.o(), 0, 0, 0, 0);
        continue;
      }
      localMapCore.setParameter(2011, 0, 0, 0, 0);
    }
  }

  void a(MapCore paramMapCore)
  {
    MapProjection localMapProjection = this.f.b();
    float f1 = localMapProjection.getMapZoomer();
    float f2 = localMapProjection.getCameraHeaderAngle();
    float f3 = localMapProjection.getMapAngle();
    localMapProjection.getGeoCenter(this.e);
    while (true)
    {
      h localh = this.f.a.c();
      if (localh == null)
        break;
      try
      {
        a(localh);
        boolean bool = localh.o;
        if (bool)
          return;
      }
      catch (RemoteException localRemoteException2)
      {
        localRemoteException2.printStackTrace();
      }
    }
    this.b = localMapProjection.getMapZoomer();
    this.c = localMapProjection.getCameraHeaderAngle();
    this.d = localMapProjection.getMapAngle();
    localMapProjection.getGeoCenter(this.a);
    if ((f1 != this.b) || (this.c != f2) || (this.d != f3) || (this.a.x != this.e.x) || (this.a.y != this.e.y));
    for (int i = 1; ; i = 0)
      while (true)
      {
        if (i != 0);
        try
        {
          if (this.f.u() != null)
          {
            DPoint localDPoint = new DPoint();
            MapProjection.geo2LonLat(this.a.x, this.a.y, localDPoint);
            CameraPosition localCameraPosition = new CameraPosition(new LatLng(localDPoint.y, localDPoint.x), this.b, this.c, this.d);
            this.f.a(localCameraPosition);
          }
          if (((this.c != f2) || (this.d != f3)) && (this.f.s().c()))
            this.f.d();
          if ((f1 == this.b) || (!this.f.s().a()))
            break;
          this.f.e();
          return;
        }
        catch (RemoteException localRemoteException1)
        {
          localRemoteException1.printStackTrace();
          return;
        }
      }
  }

  public Context getContext()
  {
    return this.f.getContext();
  }

  public String getMapSvrAddress()
  {
    return "http://m.amap.com";
  }

  public boolean isMapEngineValid()
  {
    return this.f.a() != null;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.a.a
 * JD-Core Version:    0.6.0
 */