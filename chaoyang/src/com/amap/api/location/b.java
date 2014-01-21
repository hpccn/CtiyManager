package com.amap.api.location;

import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;

class b
  implements LocationListener
{
  b(a parama)
  {
  }

  public void onLocationChanged(Location paramLocation)
  {
    a.a(this.a, paramLocation);
    a.a(System.currentTimeMillis());
  }

  public void onProviderDisabled(String paramString)
  {
  }

  public void onProviderEnabled(String paramString)
  {
  }

  public void onStatusChanged(String paramString, int paramInt, Bundle paramBundle)
  {
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.location.b
 * JD-Core Version:    0.6.0
 */