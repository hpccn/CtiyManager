package com.amap.api.a;

import android.graphics.Point;
import com.amap.api.maps.model.CameraPosition;
import com.amap.api.maps.model.CameraPosition.Builder;
import com.amap.api.maps.model.LatLng;
import com.amap.api.maps.model.LatLngBounds;
import com.autonavi.amap.mapcore.IPoint;

public class h
{
  a a = a.a;
  float b;
  float c;
  float d;
  float e;
  float f;
  float g;
  CameraPosition h;
  LatLngBounds i;
  int j;
  int k;
  int l;
  Point m = null;
  boolean n = false;
  boolean o = false;
  IPoint p;

  public static h a()
  {
    return new h();
  }

  public static h a(float paramFloat)
  {
    h localh = a();
    localh.a = a.j;
    localh.d = paramFloat;
    return localh;
  }

  public static h a(float paramFloat1, float paramFloat2)
  {
    h localh = a();
    localh.a = a.l;
    localh.b = paramFloat1;
    localh.c = paramFloat2;
    return localh;
  }

  public static h a(float paramFloat, Point paramPoint)
  {
    h localh = a();
    localh.a = a.k;
    localh.e = paramFloat;
    localh.m = paramPoint;
    return localh;
  }

  public static h a(CameraPosition paramCameraPosition)
  {
    h localh = a();
    localh.a = a.m;
    localh.h = paramCameraPosition;
    return localh;
  }

  public static h a(LatLng paramLatLng)
  {
    return a(CameraPosition.builder().target(paramLatLng).build());
  }

  public static h a(LatLng paramLatLng, float paramFloat)
  {
    return a(CameraPosition.builder().target(paramLatLng).zoom(paramFloat).build());
  }

  public static h a(LatLng paramLatLng, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    return a(CameraPosition.builder().target(paramLatLng).zoom(paramFloat1).bearing(paramFloat2).tilt(paramFloat3).build());
  }

  public static h a(LatLngBounds paramLatLngBounds, int paramInt)
  {
    h localh = a();
    localh.a = a.n;
    localh.i = paramLatLngBounds;
    localh.j = paramInt;
    return localh;
  }

  public static h a(LatLngBounds paramLatLngBounds, int paramInt1, int paramInt2, int paramInt3)
  {
    h localh = a();
    localh.a = a.o;
    localh.i = paramLatLngBounds;
    localh.j = paramInt3;
    localh.k = paramInt1;
    localh.l = paramInt2;
    return localh;
  }

  public static h a(IPoint paramIPoint)
  {
    h localh = a();
    localh.a = a.c;
    localh.p = paramIPoint;
    return localh;
  }

  static h a(IPoint paramIPoint, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    h localh = a();
    localh.a = a.p;
    localh.p = paramIPoint;
    localh.d = paramFloat1;
    localh.g = paramFloat2;
    localh.f = paramFloat3;
    return localh;
  }

  public static h b()
  {
    h localh = a();
    localh.a = a.b;
    return localh;
  }

  public static h b(float paramFloat)
  {
    return a(paramFloat, null);
  }

  public static h c()
  {
    h localh = a();
    localh.a = a.i;
    return localh;
  }

  public static h c(float paramFloat)
  {
    h localh = a();
    localh.a = a.d;
    localh.f = paramFloat;
    return localh;
  }

  public static h d(float paramFloat)
  {
    h localh = a();
    localh.a = a.e;
    localh.g = paramFloat;
    return localh;
  }

  static enum a
  {
    static
    {
      a[] arrayOfa = new a[16];
      arrayOfa[0] = a;
      arrayOfa[1] = b;
      arrayOfa[2] = c;
      arrayOfa[3] = d;
      arrayOfa[4] = e;
      arrayOfa[5] = f;
      arrayOfa[6] = g;
      arrayOfa[7] = h;
      arrayOfa[8] = i;
      arrayOfa[9] = j;
      arrayOfa[10] = k;
      arrayOfa[11] = l;
      arrayOfa[12] = m;
      arrayOfa[13] = n;
      arrayOfa[14] = o;
      arrayOfa[15] = p;
      q = arrayOfa;
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.a.h
 * JD-Core Version:    0.6.0
 */