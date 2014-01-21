package com.amap.api.a;

import android.location.Location;
import android.os.RemoteException;
import com.amap.api.maps.LocationSource.OnLocationChangedListener;

class e
  implements LocationSource.OnLocationChangedListener
{
  Location a;
  private n b;

  e(n paramn)
  {
    this.b = paramn;
  }

  public void onLocationChanged(Location paramLocation)
  {
    this.a = paramLocation;
    try
    {
      if (this.b.q())
        this.b.a(paramLocation);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.a.e
 * JD-Core Version:    0.6.0
 */