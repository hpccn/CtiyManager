package com.amap.api.maps.model;

import android.os.RemoteException;
import com.amap.api.a.o;

public final class Circle
{
  private final o a;

  public Circle(o paramo)
  {
    this.a = paramo;
  }

  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof Circle))
      return false;
    try
    {
      boolean bool = this.a.a(((Circle)paramObject).a);
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
    }
    throw new RuntimeRemoteException(localRemoteException);
  }

  public LatLng getCenter()
  {
    try
    {
      LatLng localLatLng = this.a.h();
      return localLatLng;
    }
    catch (RemoteException localRemoteException)
    {
    }
    throw new RuntimeRemoteException(localRemoteException);
  }

  public int getFillColor()
  {
    try
    {
      int i = this.a.l();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
    }
    throw new RuntimeRemoteException(localRemoteException);
  }

  public String getId()
  {
    try
    {
      String str = this.a.b();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
    }
    throw new RuntimeRemoteException(localRemoteException);
  }

  public double getRadius()
  {
    try
    {
      double d = this.a.i();
      return d;
    }
    catch (RemoteException localRemoteException)
    {
    }
    throw new RuntimeRemoteException(localRemoteException);
  }

  public int getStrokeColor()
  {
    try
    {
      int i = this.a.k();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
    }
    throw new RuntimeRemoteException(localRemoteException);
  }

  public float getStrokeWidth()
  {
    try
    {
      float f = this.a.j();
      return f;
    }
    catch (RemoteException localRemoteException)
    {
    }
    throw new RuntimeRemoteException(localRemoteException);
  }

  public float getZIndex()
  {
    try
    {
      float f = this.a.c();
      return f;
    }
    catch (RemoteException localRemoteException)
    {
    }
    throw new RuntimeRemoteException(localRemoteException);
  }

  public int hashCode()
  {
    try
    {
      int i = this.a.e();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
    }
    throw new RuntimeRemoteException(localRemoteException);
  }

  public boolean isVisible()
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

  public void remove()
  {
    try
    {
      this.a.a();
      return;
    }
    catch (RemoteException localRemoteException)
    {
    }
    throw new RuntimeRemoteException(localRemoteException);
  }

  public void setCenter(LatLng paramLatLng)
  {
    try
    {
      this.a.a(paramLatLng);
      return;
    }
    catch (RemoteException localRemoteException)
    {
    }
    throw new RuntimeRemoteException(localRemoteException);
  }

  public void setFillColor(int paramInt)
  {
    try
    {
      this.a.b(paramInt);
      return;
    }
    catch (RemoteException localRemoteException)
    {
    }
    throw new RuntimeRemoteException(localRemoteException);
  }

  public void setRadius(double paramDouble)
  {
    try
    {
      this.a.a(paramDouble);
      return;
    }
    catch (RemoteException localRemoteException)
    {
    }
    throw new RuntimeRemoteException(localRemoteException);
  }

  public void setStrokeColor(int paramInt)
  {
    try
    {
      this.a.a(paramInt);
      return;
    }
    catch (RemoteException localRemoteException)
    {
    }
    throw new RuntimeRemoteException(localRemoteException);
  }

  public void setStrokeWidth(float paramFloat)
  {
    try
    {
      this.a.b(paramFloat);
      return;
    }
    catch (RemoteException localRemoteException)
    {
    }
    throw new RuntimeRemoteException(localRemoteException);
  }

  public void setVisible(boolean paramBoolean)
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

  public void setZIndex(float paramFloat)
  {
    try
    {
      this.a.a(paramFloat);
      return;
    }
    catch (RemoteException localRemoteException)
    {
    }
    throw new RuntimeRemoteException(localRemoteException);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.maps.model.Circle
 * JD-Core Version:    0.6.0
 */