package com.amap.api.maps.model;

import android.os.RemoteException;
import com.amap.api.a.t;
import java.util.List;

public class Polyline
{
  private final t a;

  public Polyline(t paramt)
  {
    this.a = paramt;
  }

  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof Polyline))
      return false;
    try
    {
      boolean bool = this.a.a(((Polyline)paramObject).a);
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
    }
    throw new RuntimeRemoteException(localRemoteException);
  }

  public int getColor()
  {
    try
    {
      int i = this.a.h();
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

  public List<LatLng> getPoints()
  {
    try
    {
      List localList = this.a.i();
      return localList;
    }
    catch (RemoteException localRemoteException)
    {
    }
    throw new RuntimeRemoteException(localRemoteException);
  }

  public float getWidth()
  {
    try
    {
      float f = this.a.g();
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

  public void setColor(int paramInt)
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

  public void setPoints(List<LatLng> paramList)
  {
    try
    {
      this.a.a(paramList);
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

  public void setWidth(float paramFloat)
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
 * Qualified Name:     com.amap.api.maps.model.Polyline
 * JD-Core Version:    0.6.0
 */