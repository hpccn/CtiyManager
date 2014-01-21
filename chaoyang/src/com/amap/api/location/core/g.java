package com.amap.api.location.core;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class g
  implements Parcelable.Creator<GeoPoint>
{
  public GeoPoint a(Parcel paramParcel)
  {
    return new GeoPoint(paramParcel, null);
  }

  public GeoPoint[] a(int paramInt)
  {
    return new GeoPoint[paramInt];
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.location.core.g
 * JD-Core Version:    0.6.0
 */