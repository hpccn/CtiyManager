package com.amap.api.location;

import android.location.Location;
import android.os.Bundle;
import java.util.Iterator;
import java.util.List;

public class c
  implements AMapLocationListener
{
  private LocationManagerProxy a;
  private AMapLocationListener b = null;

  public c(LocationManagerProxy paramLocationManagerProxy)
  {
    this.a = paramLocationManagerProxy;
  }

  public void a()
  {
    if (this.a != null)
      this.a.removeUpdates(this);
    this.b = null;
  }

  public boolean a(AMapLocationListener paramAMapLocationListener, long paramLong, float paramFloat)
  {
    int i = 0;
    this.b = paramAMapLocationListener;
    Iterator localIterator = this.a.getProviders(true).iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if ((!"gps".equals(str)) && (!"network".equals(str)))
        continue;
      this.a.requestLocationUpdates(str, paramLong, paramFloat, this);
      i = 1;
    }
    return i;
  }

  public boolean a(AMapLocationListener paramAMapLocationListener, long paramLong, float paramFloat, String paramString)
  {
    this.b = paramAMapLocationListener;
    boolean bool = "lbs".equals(paramString);
    int i = 0;
    if (bool)
    {
      this.a.requestLocationUpdates(paramString, paramLong, paramFloat, this);
      i = 1;
    }
    return i;
  }

  public void onLocationChanged(Location paramLocation)
  {
    if (this.b != null)
      this.b.onLocationChanged(paramLocation);
  }

  public void onLocationChanged(AMapLocation paramAMapLocation)
  {
    if (this.b != null)
      this.b.onLocationChanged(paramAMapLocation);
  }

  public void onProviderDisabled(String paramString)
  {
    if (this.b != null)
      this.b.onProviderDisabled(paramString);
  }

  public void onProviderEnabled(String paramString)
  {
    if (this.b != null)
      this.b.onProviderEnabled(paramString);
  }

  public void onStatusChanged(String paramString, int paramInt, Bundle paramBundle)
  {
    if (this.b != null)
      this.b.onStatusChanged(paramString, paramInt, paramBundle);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.location.c
 * JD-Core Version:    0.6.0
 */