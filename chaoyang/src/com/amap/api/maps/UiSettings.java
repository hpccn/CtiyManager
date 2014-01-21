package com.amap.api.maps;

import android.os.RemoteException;
import com.amap.api.a.w;
import com.amap.api.maps.model.RuntimeRemoteException;

public final class UiSettings
{
  private final w a;

  UiSettings(w paramw)
  {
    this.a = paramw;
  }

  public boolean isCompassEnabled()
  {
    try
    {
      boolean bool = this.a.c();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
    }
    throw new RuntimeRemoteException(localRemoteException);
  }

  public boolean isMyLocationButtonEnabled()
  {
    try
    {
      boolean bool = this.a.d();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
    }
    throw new RuntimeRemoteException(localRemoteException);
  }

  public boolean isRotateGesturesEnabled()
  {
    try
    {
      boolean bool = this.a.h();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
    }
    throw new RuntimeRemoteException(localRemoteException);
  }

  public boolean isScaleControlsEnabled()
  {
    try
    {
      boolean bool = this.a.a();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
    }
    throw new RuntimeRemoteException(localRemoteException);
  }

  public boolean isScrollGesturesEnabled()
  {
    try
    {
      boolean bool = this.a.e();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
    }
    throw new RuntimeRemoteException(localRemoteException);
  }

  public boolean isTiltGesturesEnabled()
  {
    try
    {
      boolean bool = this.a.g();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
    }
    throw new RuntimeRemoteException(localRemoteException);
  }

  public boolean isZoomControlsEnabled()
  {
    try
    {
      boolean bool = this.a.b();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
    }
    throw new RuntimeRemoteException(localRemoteException);
  }

  public boolean isZoomGesturesEnabled()
  {
    try
    {
      boolean bool = this.a.f();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
    }
    throw new RuntimeRemoteException(localRemoteException);
  }

  public void setAllGesturesEnabled(boolean paramBoolean)
  {
    try
    {
      this.a.i(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
    }
    throw new RuntimeRemoteException(localRemoteException);
  }

  public void setCompassEnabled(boolean paramBoolean)
  {
    try
    {
      this.a.c(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
    }
    throw new RuntimeRemoteException(localRemoteException);
  }

  public void setMyLocationButtonEnabled(boolean paramBoolean)
  {
    try
    {
      this.a.d(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
    }
    throw new RuntimeRemoteException(localRemoteException);
  }

  public void setRotateGesturesEnabled(boolean paramBoolean)
  {
    try
    {
      this.a.h(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
    }
    throw new RuntimeRemoteException(localRemoteException);
  }

  public void setScaleControlsEnabled(boolean paramBoolean)
  {
    try
    {
      this.a.a(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
    }
    throw new RuntimeRemoteException(localRemoteException);
  }

  public void setScrollGesturesEnabled(boolean paramBoolean)
  {
    try
    {
      this.a.e(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
    }
    throw new RuntimeRemoteException(localRemoteException);
  }

  public void setTiltGesturesEnabled(boolean paramBoolean)
  {
    try
    {
      this.a.g(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
    }
    throw new RuntimeRemoteException(localRemoteException);
  }

  public void setZoomControlsEnabled(boolean paramBoolean)
  {
    try
    {
      this.a.b(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
    }
    throw new RuntimeRemoteException(localRemoteException);
  }

  public void setZoomGesturesEnabled(boolean paramBoolean)
  {
    try
    {
      this.a.f(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
    }
    throw new RuntimeRemoteException(localRemoteException);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.maps.UiSettings
 * JD-Core Version:    0.6.0
 */