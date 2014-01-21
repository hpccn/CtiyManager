package com.amap.api.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;

public class MarkerOptionsCreator
  implements Parcelable.Creator<MarkerOptions>
{
  public MarkerOptions createFromParcel(Parcel paramParcel)
  {
    MarkerOptions localMarkerOptions = new MarkerOptions();
    localMarkerOptions.position((LatLng)paramParcel.readParcelable(LatLng.class.getClassLoader()));
    localMarkerOptions.icon((BitmapDescriptor)paramParcel.readParcelable(BitmapDescriptor.class.getClassLoader()));
    localMarkerOptions.title(paramParcel.readString());
    localMarkerOptions.snippet(paramParcel.readString());
    localMarkerOptions.anchor(paramParcel.readFloat(), paramParcel.readFloat());
    boolean[] arrayOfBoolean = new boolean[1];
    paramParcel.readBooleanArray(arrayOfBoolean);
    localMarkerOptions.visible(arrayOfBoolean[0]);
    localMarkerOptions.a = paramParcel.readString();
    return localMarkerOptions;
  }

  public MarkerOptions[] newArray(int paramInt)
  {
    return new MarkerOptions[paramInt];
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.maps.model.MarkerOptionsCreator
 * JD-Core Version:    0.6.0
 */