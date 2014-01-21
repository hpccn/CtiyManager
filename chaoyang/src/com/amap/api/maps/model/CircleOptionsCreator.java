package com.amap.api.maps.model;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;

public class CircleOptionsCreator
  implements Parcelable.Creator<CircleOptions>
{
  public CircleOptions createFromParcel(Parcel paramParcel)
  {
    int i = 1;
    CircleOptions localCircleOptions = new CircleOptions();
    Bundle localBundle = paramParcel.readBundle();
    localCircleOptions.center(new LatLng(localBundle.getDouble("lat"), localBundle.getDouble("lng")));
    localCircleOptions.radius(paramParcel.readDouble());
    localCircleOptions.strokeWidth(paramParcel.readFloat());
    localCircleOptions.strokeColor(paramParcel.readInt());
    localCircleOptions.fillColor(paramParcel.readInt());
    localCircleOptions.zIndex(paramParcel.readInt());
    if (paramParcel.readByte() == i);
    while (true)
    {
      localCircleOptions.visible(i);
      localCircleOptions.a = paramParcel.readString();
      return localCircleOptions;
      int j = 0;
    }
  }

  public CircleOptions[] newArray(int paramInt)
  {
    return new CircleOptions[paramInt];
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.maps.model.CircleOptionsCreator
 * JD-Core Version:    0.6.0
 */