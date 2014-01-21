package com.amap.api.maps;

import android.graphics.Point;
import com.amap.api.a.h;
import com.amap.api.maps.model.CameraPosition;
import com.amap.api.maps.model.LatLng;
import com.amap.api.maps.model.LatLngBounds;

public final class CameraUpdateFactory
{
  public static CameraUpdate newCameraPosition(CameraPosition paramCameraPosition)
  {
    return new CameraUpdate(h.a(paramCameraPosition));
  }

  public static CameraUpdate newLatLng(LatLng paramLatLng)
  {
    return new CameraUpdate(h.a(paramLatLng));
  }

  public static CameraUpdate newLatLngBounds(LatLngBounds paramLatLngBounds, int paramInt)
  {
    return new CameraUpdate(h.a(paramLatLngBounds, paramInt));
  }

  public static CameraUpdate newLatLngBounds(LatLngBounds paramLatLngBounds, int paramInt1, int paramInt2, int paramInt3)
  {
    return new CameraUpdate(h.a(paramLatLngBounds, paramInt1, paramInt2, paramInt3));
  }

  public static CameraUpdate newLatLngZoom(LatLng paramLatLng, float paramFloat)
  {
    return new CameraUpdate(h.a(paramLatLng, paramFloat));
  }

  public static CameraUpdate scrollBy(float paramFloat1, float paramFloat2)
  {
    return new CameraUpdate(h.a(paramFloat1, paramFloat2));
  }

  public static CameraUpdate zoomBy(float paramFloat)
  {
    return new CameraUpdate(h.b(paramFloat));
  }

  public static CameraUpdate zoomBy(float paramFloat, Point paramPoint)
  {
    return new CameraUpdate(h.a(paramFloat, paramPoint));
  }

  public static CameraUpdate zoomIn()
  {
    return new CameraUpdate(h.b());
  }

  public static CameraUpdate zoomOut()
  {
    return new CameraUpdate(h.c());
  }

  public static CameraUpdate zoomTo(float paramFloat)
  {
    return new CameraUpdate(h.a(paramFloat));
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.maps.CameraUpdateFactory
 * JD-Core Version:    0.6.0
 */