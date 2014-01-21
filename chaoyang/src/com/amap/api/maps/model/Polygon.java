package com.amap.api.maps.model;

import android.os.RemoteException;
import com.amap.api.a.s;
import java.util.List;

public final class Polygon
{
  private s a;

  public Polygon(s params)
  {
    this.a = params;
  }

  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof Polygon))
      return false;
    try
    {
      boolean bool = this.a.a(((Polygon)paramObject).a);
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
    }
    return false;
  }

  public int getFillColor()
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

  public int getStrokeColor()
  {
    try
    {
      int i = this.a.j();
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
    return super.hashCode();
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

  public void setFillColor(int paramInt)
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

  public void setStrokeColor(int paramInt)
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
 * Qualified Name:     com.amap.api.maps.model.Polygon
 * JD-Core Version:    0.6.0
 */