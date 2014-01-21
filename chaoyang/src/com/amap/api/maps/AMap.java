package com.amap.api.maps;

import android.location.Location;
import android.os.RemoteException;
import android.view.View;
import com.amap.api.a.b.b;
import com.amap.api.a.n;
import com.amap.api.maps.model.CameraPosition;
import com.amap.api.maps.model.Circle;
import com.amap.api.maps.model.CircleOptions;
import com.amap.api.maps.model.LatLng;
import com.amap.api.maps.model.Marker;
import com.amap.api.maps.model.MarkerOptions;
import com.amap.api.maps.model.Polygon;
import com.amap.api.maps.model.PolygonOptions;
import com.amap.api.maps.model.Polyline;
import com.amap.api.maps.model.PolylineOptions;
import com.amap.api.maps.model.RuntimeRemoteException;

public final class AMap
{
  public static final int MAP_TYPE_NORMAL = 1;
  public static final int MAP_TYPE_SATELLITE = 2;
  private final n a;
  private UiSettings b;
  private Projection c;

  protected AMap(n paramn)
  {
    this.a = paramn;
  }

  n a()
  {
    return this.a;
  }

  public final Circle addCircle(CircleOptions paramCircleOptions)
  {
    try
    {
      Circle localCircle = new Circle(a().a(paramCircleOptions));
      return localCircle;
    }
    catch (RemoteException localRemoteException)
    {
    }
    throw new RuntimeRemoteException(localRemoteException);
  }

  public final Marker addMarker(MarkerOptions paramMarkerOptions)
  {
    try
    {
      Marker localMarker = a().a(paramMarkerOptions);
      return localMarker;
    }
    catch (RemoteException localRemoteException)
    {
    }
    throw new RuntimeRemoteException(localRemoteException);
  }

  public final Polygon addPolygon(PolygonOptions paramPolygonOptions)
  {
    try
    {
      Polygon localPolygon = new Polygon(a().a(paramPolygonOptions));
      return localPolygon;
    }
    catch (RemoteException localRemoteException)
    {
    }
    throw new RuntimeRemoteException(localRemoteException);
  }

  public final Polyline addPolyline(PolylineOptions paramPolylineOptions)
  {
    try
    {
      Polyline localPolyline = new Polyline(a().a(paramPolylineOptions));
      return localPolyline;
    }
    catch (RemoteException localRemoteException)
    {
    }
    throw new RuntimeRemoteException(localRemoteException);
  }

  public final void animateCamera(CameraUpdate paramCameraUpdate)
  {
    try
    {
      a().b(paramCameraUpdate.a());
      return;
    }
    catch (RemoteException localRemoteException)
    {
    }
    throw new RuntimeRemoteException(localRemoteException);
  }

  public final void animateCamera(CameraUpdate paramCameraUpdate, long paramLong, CancelableCallback paramCancelableCallback)
  {
    boolean bool;
    if (paramLong > 0L)
      bool = true;
    try
    {
      while (true)
      {
        b.b(bool, "durationMs must be positive");
        a().a(paramCameraUpdate.a(), paramLong, paramCancelableCallback);
        return;
        bool = false;
      }
    }
    catch (RemoteException localRemoteException)
    {
    }
    throw new RuntimeRemoteException(localRemoteException);
  }

  public final void animateCamera(CameraUpdate paramCameraUpdate, CancelableCallback paramCancelableCallback)
  {
    try
    {
      a().a(paramCameraUpdate.a(), paramCancelableCallback);
      return;
    }
    catch (RemoteException localRemoteException)
    {
    }
    throw new RuntimeRemoteException(localRemoteException);
  }

  public final void clear()
  {
    try
    {
      a().n();
      return;
    }
    catch (RemoteException localRemoteException)
    {
    }
    throw new RuntimeRemoteException(localRemoteException);
  }

  public final CameraPosition getCameraPosition()
  {
    try
    {
      CameraPosition localCameraPosition = a().j();
      return localCameraPosition;
    }
    catch (RemoteException localRemoteException)
    {
    }
    throw new RuntimeRemoteException(localRemoteException);
  }

  public final int getMapType()
  {
    try
    {
      int i = a().o();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
    }
    throw new RuntimeRemoteException(localRemoteException);
  }

  public final float getMaxZoomLevel()
  {
    return a().k();
  }

  public final float getMinZoomLevel()
  {
    return a().l();
  }

  public final Location getMyLocation()
  {
    try
    {
      Location localLocation = a().r();
      return localLocation;
    }
    catch (RemoteException localRemoteException)
    {
    }
    throw new RuntimeRemoteException(localRemoteException);
  }

  public final Projection getProjection()
  {
    try
    {
      if (this.c == null)
        this.c = new Projection(a().t());
      Projection localProjection = this.c;
      return localProjection;
    }
    catch (RemoteException localRemoteException)
    {
    }
    throw new RuntimeRemoteException(localRemoteException);
  }

  public final UiSettings getUiSettings()
  {
    try
    {
      if (this.b == null)
        this.b = new UiSettings(a().s());
      UiSettings localUiSettings = this.b;
      return localUiSettings;
    }
    catch (RemoteException localRemoteException)
    {
    }
    throw new RuntimeRemoteException(localRemoteException);
  }

  public final boolean isMyLocationEnabled()
  {
    try
    {
      boolean bool = a().q();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
    }
    throw new RuntimeRemoteException(localRemoteException);
  }

  public final boolean isTrafficEnabled()
  {
    try
    {
      boolean bool = a().p();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
    }
    throw new RuntimeRemoteException(localRemoteException);
  }

  public final void moveCamera(CameraUpdate paramCameraUpdate)
  {
    try
    {
      a().a(paramCameraUpdate.a());
      return;
    }
    catch (RemoteException localRemoteException)
    {
    }
    throw new RuntimeRemoteException(localRemoteException);
  }

  public final void setInfoWindowAdapter(InfoWindowAdapter paramInfoWindowAdapter)
  {
    try
    {
      a().a(paramInfoWindowAdapter);
      return;
    }
    catch (RemoteException localRemoteException)
    {
    }
    throw new RuntimeRemoteException(localRemoteException);
  }

  public final void setLocationSource(LocationSource paramLocationSource)
  {
    try
    {
      a().a(paramLocationSource);
      return;
    }
    catch (RemoteException localRemoteException)
    {
    }
    throw new RuntimeRemoteException(localRemoteException);
  }

  public final void setMapType(int paramInt)
  {
    try
    {
      a().a(paramInt);
      return;
    }
    catch (RemoteException localRemoteException)
    {
    }
    throw new RuntimeRemoteException(localRemoteException);
  }

  public final void setMyLocationEnabled(boolean paramBoolean)
  {
    try
    {
      a().f(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
    }
    throw new RuntimeRemoteException(localRemoteException);
  }

  public final void setOnCameraChangeListener(OnCameraChangeListener paramOnCameraChangeListener)
  {
    try
    {
      a().a(paramOnCameraChangeListener);
      return;
    }
    catch (RemoteException localRemoteException)
    {
    }
    throw new RuntimeRemoteException(localRemoteException);
  }

  public final void setOnInfoWindowClickListener(OnInfoWindowClickListener paramOnInfoWindowClickListener)
  {
    try
    {
      a().a(paramOnInfoWindowClickListener);
      return;
    }
    catch (RemoteException localRemoteException)
    {
    }
    throw new RuntimeRemoteException(localRemoteException);
  }

  public final void setOnMapClickListener(OnMapClickListener paramOnMapClickListener)
  {
    try
    {
      a().a(paramOnMapClickListener);
      return;
    }
    catch (RemoteException localRemoteException)
    {
    }
    throw new RuntimeRemoteException(localRemoteException);
  }

  public final void setOnMapLoadedListener(OnMapLoadedListener paramOnMapLoadedListener)
  {
    try
    {
      a().a(paramOnMapLoadedListener);
      return;
    }
    catch (RemoteException localRemoteException)
    {
    }
    throw new RuntimeRemoteException(localRemoteException);
  }

  public final void setOnMapLongClickListener(OnMapLongClickListener paramOnMapLongClickListener)
  {
    try
    {
      a().a(paramOnMapLongClickListener);
      return;
    }
    catch (RemoteException localRemoteException)
    {
    }
    throw new RuntimeRemoteException(localRemoteException);
  }

  public final void setOnMarkerClickListener(OnMarkerClickListener paramOnMarkerClickListener)
  {
    try
    {
      a().a(paramOnMarkerClickListener);
      return;
    }
    catch (RemoteException localRemoteException)
    {
    }
    throw new RuntimeRemoteException(localRemoteException);
  }

  public final void setOnMarkerDragListener(OnMarkerDragListener paramOnMarkerDragListener)
  {
    try
    {
      a().a(paramOnMarkerDragListener);
      return;
    }
    catch (RemoteException localRemoteException)
    {
    }
    throw new RuntimeRemoteException(localRemoteException);
  }

  public final void setOnMyLocationChangeListener(OnMyLocationChangeListener paramOnMyLocationChangeListener)
  {
    try
    {
      a().a(paramOnMyLocationChangeListener);
      return;
    }
    catch (RemoteException localRemoteException)
    {
    }
    throw new RuntimeRemoteException(localRemoteException);
  }

  public void setTrafficEnabled(boolean paramBoolean)
  {
    try
    {
      a().e(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
    }
    throw new RuntimeRemoteException(localRemoteException);
  }

  public final void stopAnimation()
  {
    try
    {
      a().m();
      return;
    }
    catch (RemoteException localRemoteException)
    {
    }
    throw new RuntimeRemoteException(localRemoteException);
  }

  public static abstract interface CancelableCallback
  {
    public abstract void onCancel();

    public abstract void onFinish();
  }

  public static abstract interface InfoWindowAdapter
  {
    public abstract View getInfoContents(Marker paramMarker);

    public abstract View getInfoWindow(Marker paramMarker);
  }

  public static abstract interface OnCameraChangeListener
  {
    public abstract void onCameraChange(CameraPosition paramCameraPosition);
  }

  public static abstract interface OnInfoWindowClickListener
  {
    public abstract void onInfoWindowClick(Marker paramMarker);
  }

  public static abstract interface OnMapClickListener
  {
    public abstract void onMapClick(LatLng paramLatLng);
  }

  public static abstract interface OnMapLoadedListener
  {
    public abstract void onMapLoaded();
  }

  public static abstract interface OnMapLongClickListener
  {
    public abstract void onMapLongClick(LatLng paramLatLng);
  }

  public static abstract interface OnMarkerClickListener
  {
    public abstract boolean onMarkerClick(Marker paramMarker);
  }

  public static abstract interface OnMarkerDragListener
  {
    public abstract void onMarkerDrag(Marker paramMarker);

    public abstract void onMarkerDragEnd(Marker paramMarker);

    public abstract void onMarkerDragStart(Marker paramMarker);
  }

  public static abstract interface OnMyLocationChangeListener
  {
    public abstract void onMyLocationChange(Location paramLocation);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.maps.AMap
 * JD-Core Version:    0.6.0
 */