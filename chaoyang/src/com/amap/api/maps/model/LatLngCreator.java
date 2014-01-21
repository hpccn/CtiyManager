package com.amap.api.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;

public class LatLngCreator
  implements Parcelable.Creator<LatLng>
{
  public static final int CONTENT_DESCRIPTION;

  public LatLng createFromParcel(Parcel paramParcel)
  {
    double d = paramParcel.readDouble();
    return new LatLng(paramParcel.readDouble(), d);
  }

  public LatLng[] newArray(int paramInt)
  {
    return new LatLng[paramInt];
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.maps.model.LatLngCreator
 * JD-Core Version:    0.6.0
 */