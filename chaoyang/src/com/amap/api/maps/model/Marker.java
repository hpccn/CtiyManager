package com.amap.api.maps.model;

import android.os.RemoteException;
import com.amap.api.a.q;

public final class Marker
{
  q a;

  public Marker(q paramq)
  {
    this.a = paramq;
  }

  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof Marker))
      return false;
    return this.a.a(((Marker)paramObject).a);
  }

  public String getId()
  {
    return this.a.d();
  }

  public LatLng getPosition()
  {
    return this.a.c();
  }

  public String getSnippet()
  {
    return this.a.g();
  }

  public String getTitle()
  {
    return this.a.f();
  }

  public int hashCode()
  {
    return this.a.o();
  }

  public void hideInfoWindow()
  {
    this.a.k();
  }

  public boolean isDraggable()
  {
    return this.a.i();
  }

  public boolean isInfoWindowShown()
  {
    return this.a.l();
  }

  public boolean isVisible()
  {
    return this.a.m();
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

  public void setDraggable(boolean paramBoolean)
  {
    this.a.a(paramBoolean);
  }

  public void setPosition(LatLng paramLatLng)
  {
    this.a.a(paramLatLng);
  }

  public void setSnippet(String paramString)
  {
    this.a.b(paramString);
  }

  public void setTitle(String paramString)
  {
    this.a.a(paramString);
  }

  public void setVisible(boolean paramBoolean)
  {
    this.a.b(paramBoolean);
  }

  public void showInfoWindow()
  {
    this.a.j();
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.maps.model.Marker
 * JD-Core Version:    0.6.0
 */