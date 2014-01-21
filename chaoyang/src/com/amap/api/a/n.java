package com.amap.api.a;

import android.location.Location;
import android.os.RemoteException;
import android.view.View;
import com.amap.api.maps.AMap.CancelableCallback;
import com.amap.api.maps.AMap.InfoWindowAdapter;
import com.amap.api.maps.AMap.OnCameraChangeListener;
import com.amap.api.maps.AMap.OnInfoWindowClickListener;
import com.amap.api.maps.AMap.OnMapClickListener;
import com.amap.api.maps.AMap.OnMapLoadedListener;
import com.amap.api.maps.AMap.OnMapLongClickListener;
import com.amap.api.maps.AMap.OnMarkerClickListener;
import com.amap.api.maps.AMap.OnMarkerDragListener;
import com.amap.api.maps.AMap.OnMyLocationChangeListener;
import com.amap.api.maps.LocationSource;
import com.amap.api.maps.model.CameraPosition;
import com.amap.api.maps.model.CircleOptions;
import com.amap.api.maps.model.Marker;
import com.amap.api.maps.model.MarkerOptions;
import com.amap.api.maps.model.PolygonOptions;
import com.amap.api.maps.model.PolylineOptions;
import com.autonavi.amap.mapcore.DPoint;
import com.autonavi.amap.mapcore.FPoint;
import com.autonavi.amap.mapcore.IPoint;
import com.autonavi.amap.mapcore.MapProjection;

public abstract interface n
{
  public abstract o a(CircleOptions paramCircleOptions)
    throws RemoteException;

  public abstract s a(PolygonOptions paramPolygonOptions)
    throws RemoteException;

  public abstract t a(PolylineOptions paramPolylineOptions)
    throws RemoteException;

  public abstract Marker a(MarkerOptions paramMarkerOptions)
    throws RemoteException;

  public abstract void a(double paramDouble1, double paramDouble2, IPoint paramIPoint);

  public abstract void a(int paramInt)
    throws RemoteException;

  public abstract void a(int paramInt1, int paramInt2, DPoint paramDPoint);

  public abstract void a(int paramInt1, int paramInt2, FPoint paramFPoint);

  public abstract void a(Location paramLocation);

  public abstract void a(h paramh)
    throws RemoteException;

  public abstract void a(h paramh, long paramLong, AMap.CancelableCallback paramCancelableCallback)
    throws RemoteException;

  public abstract void a(h paramh, AMap.CancelableCallback paramCancelableCallback)
    throws RemoteException;

  public abstract void a(q paramq)
    throws RemoteException;

  public abstract void a(AMap.InfoWindowAdapter paramInfoWindowAdapter)
    throws RemoteException;

  public abstract void a(AMap.OnCameraChangeListener paramOnCameraChangeListener)
    throws RemoteException;

  public abstract void a(AMap.OnInfoWindowClickListener paramOnInfoWindowClickListener)
    throws RemoteException;

  public abstract void a(AMap.OnMapClickListener paramOnMapClickListener)
    throws RemoteException;

  public abstract void a(AMap.OnMapLoadedListener paramOnMapLoadedListener)
    throws RemoteException;

  public abstract void a(AMap.OnMapLongClickListener paramOnMapLongClickListener)
    throws RemoteException;

  public abstract void a(AMap.OnMarkerClickListener paramOnMarkerClickListener)
    throws RemoteException;

  public abstract void a(AMap.OnMarkerDragListener paramOnMarkerDragListener)
    throws RemoteException;

  public abstract void a(AMap.OnMyLocationChangeListener paramOnMyLocationChangeListener)
    throws RemoteException;

  public abstract void a(LocationSource paramLocationSource)
    throws RemoteException;

  public abstract void a(boolean paramBoolean);

  public abstract boolean a(String paramString)
    throws RemoteException;

  public abstract MapProjection b();

  public abstract void b(double paramDouble1, double paramDouble2, IPoint paramIPoint);

  public abstract void b(int paramInt1, int paramInt2, DPoint paramDPoint);

  public abstract void b(h paramh)
    throws RemoteException;

  public abstract void b(boolean paramBoolean);

  public abstract boolean b(q paramq);

  public abstract boolean b(String paramString);

  public abstract void c();

  public abstract void c(boolean paramBoolean);

  public abstract void d(boolean paramBoolean);

  public abstract void e(boolean paramBoolean)
    throws RemoteException;

  public abstract void f(boolean paramBoolean)
    throws RemoteException;

  public abstract int g();

  public abstract int h();

  public abstract void i();

  public abstract CameraPosition j()
    throws RemoteException;

  public abstract float k();

  public abstract float l();

  public abstract void m()
    throws RemoteException;

  public abstract void n()
    throws RemoteException;

  public abstract int o()
    throws RemoteException;

  public abstract boolean p()
    throws RemoteException;

  public abstract boolean q()
    throws RemoteException;

  public abstract Location r()
    throws RemoteException;

  public abstract w s()
    throws RemoteException;

  public abstract void setZOrderOnTop(boolean paramBoolean)
    throws RemoteException;

  public abstract u t()
    throws RemoteException;

  public abstract View v()
    throws RemoteException;

  public abstract void w();

  public abstract float x();
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.a.n
 * JD-Core Version:    0.6.0
 */