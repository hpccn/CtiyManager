package com.amap.api.maps;

import android.location.Location;

public abstract interface LocationSource
{
  public abstract void activate(OnLocationChangedListener paramOnLocationChangedListener);

  public abstract void deactivate();

  public static abstract interface OnLocationChangedListener
  {
    public abstract void onLocationChanged(Location paramLocation);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.maps.LocationSource
 * JD-Core Version:    0.6.0
 */