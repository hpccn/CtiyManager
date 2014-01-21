package com.amap.api.a;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.amap.api.maps.AMapOptions;
import com.amap.api.maps.model.CameraPosition;

public class y
  implements p
{
  public static Context a;
  private n b;
  private AMapOptions c;

  public View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
    throws RemoteException
  {
    int i;
    if (this.b == null)
    {
      if ((a == null) && (paramLayoutInflater != null))
        a = (Activity)paramLayoutInflater.getContext();
      if (a == null)
        throw new NullPointerException("Context 为 null 请在地图调用之前 使用 MapsInitializer.initialize(Context paramContext) 来设置Context");
      i = a.getResources().getDisplayMetrics().densityDpi;
      if (i > 120)
        break label125;
      k.a = 0.5F;
    }
    while (true)
    {
      this.b = new b(a);
      if ((this.c == null) && (paramBundle != null))
        this.c = ((AMapOptions)paramBundle.getParcelable("MapOptions"));
      b(this.c);
      return this.b.v();
      label125: if (i <= 160)
      {
        k.a = 0.8F;
        continue;
      }
      if (i <= 240)
      {
        k.a = 0.87F;
        continue;
      }
      if (i <= 320)
      {
        k.a = 1.0F;
        continue;
      }
      if (i <= 480)
      {
        k.a = 1.5F;
        continue;
      }
      k.a = 0.9F;
    }
  }

  public n a()
    throws RemoteException
  {
    return this.b;
  }

  public void a(Activity paramActivity)
  {
    a = paramActivity;
  }

  public void a(Activity paramActivity, AMapOptions paramAMapOptions, Bundle paramBundle)
    throws RemoteException
  {
    a = paramActivity;
    this.c = paramAMapOptions;
  }

  public void a(Bundle paramBundle)
    throws RemoteException
  {
    a(null, null, paramBundle);
  }

  public void a(AMapOptions paramAMapOptions)
  {
    this.c = paramAMapOptions;
  }

  public void b()
    throws RemoteException
  {
  }

  public void b(Bundle paramBundle)
    throws RemoteException
  {
    if (this.b != null)
    {
      if (this.c == null)
        this.c = new AMapOptions();
      this.c = this.c.camera(a().j());
      paramBundle.putParcelable("MapOptions", this.c);
    }
  }

  void b(AMapOptions paramAMapOptions)
    throws RemoteException
  {
    if ((paramAMapOptions != null) && (this.b != null))
    {
      CameraPosition localCameraPosition = paramAMapOptions.getCamera();
      if (localCameraPosition != null)
        this.b.a(h.a(localCameraPosition.target, localCameraPosition.zoom, localCameraPosition.bearing, localCameraPosition.tilt));
      w localw = this.b.s();
      localw.h(paramAMapOptions.getRotateGesturesEnabled().booleanValue());
      localw.e(paramAMapOptions.getScrollGesturesEnabled().booleanValue());
      localw.g(paramAMapOptions.getTiltGesturesEnabled().booleanValue());
      localw.b(paramAMapOptions.getZoomControlsEnabled().booleanValue());
      localw.f(paramAMapOptions.getZoomGesturesEnabled().booleanValue());
      localw.c(paramAMapOptions.getCompassEnabled().booleanValue());
      localw.a(paramAMapOptions.getScaleControlsEnabled().booleanValue());
      this.b.setZOrderOnTop(paramAMapOptions.getZOrderOnTop().booleanValue());
    }
  }

  public void c()
    throws RemoteException
  {
  }

  public void d()
    throws RemoteException
  {
  }

  public void e()
    throws RemoteException
  {
    a().c();
    a = null;
    this.b = null;
    this.c = null;
    try
    {
      System.gc();
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public void f()
    throws RemoteException
  {
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.a.y
 * JD-Core Version:    0.6.0
 */