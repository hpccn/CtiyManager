package com.amap.api.search.core;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class f
  implements Parcelable.Creator<LatLonPoint>
{
  public LatLonPoint a(Parcel paramParcel)
  {
    return new LatLonPoint(paramParcel, null);
  }

  public LatLonPoint[] a(int paramInt)
  {
    return new LatLonPoint[paramInt];
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.search.core.f
 * JD-Core Version:    0.6.0
 */