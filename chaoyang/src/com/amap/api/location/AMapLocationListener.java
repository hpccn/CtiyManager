package com.amap.api.location;

import android.location.LocationListener;

public abstract interface AMapLocationListener extends LocationListener
{
  public abstract void onLocationChanged(AMapLocation paramAMapLocation);
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.location.AMapLocationListener
 * JD-Core Version:    0.6.0
 */