package com.amap.api.a;

import android.graphics.Color;
import android.os.RemoteException;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.amap.api.maps.model.CircleOptions;
import com.amap.api.maps.model.LatLng;
import com.amap.api.maps.model.Marker;
import com.amap.api.maps.model.MarkerOptions;

class ae
{
  private n a;
  private Marker b;
  private o c;

  ae(n paramn)
  {
    this.a = paramn;
    try
    {
      this.b = this.a.a(new MarkerOptions().anchor(0.5F, 0.5F).icon(BitmapDescriptorFactory.fromAsset(v.a.c.name() + ".png")));
      this.c = this.a.a(new CircleOptions().strokeWidth(1.0F).fillColor(Color.argb(100, 0, 0, 180)).strokeColor(Color.argb(255, 0, 0, 220)));
      this.c.a(200.0D);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
    }
  }

  public void a()
    throws RemoteException
  {
    if (this.c != null)
      this.a.a(this.c.b());
    if (this.b != null)
      this.a.b(this.b.getId());
  }

  public void a(LatLng paramLatLng, double paramDouble)
  {
    this.b.setPosition(paramLatLng);
    try
    {
      this.c.a(paramLatLng);
      if (paramDouble != -1.0D)
        this.c.a(paramDouble);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.a.ae
 * JD-Core Version:    0.6.0
 */