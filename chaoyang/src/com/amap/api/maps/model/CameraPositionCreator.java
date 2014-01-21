package com.amap.api.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;

public class CameraPositionCreator
  implements Parcelable.Creator<CameraPosition>
{
  public CameraPosition createFromParcel(Parcel paramParcel)
  {
    float f1 = paramParcel.readFloat();
    float f2 = paramParcel.readFloat();
    float f3 = paramParcel.readFloat();
    float f4 = paramParcel.readFloat();
    float f5 = paramParcel.readFloat();
    return new CameraPosition(new LatLng(f3, f2), f5, f4, f1);
  }

  public CameraPosition[] newArray(int paramInt)
  {
    return new CameraPosition[paramInt];
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.maps.model.CameraPositionCreator
 * JD-Core Version:    0.6.0
 */