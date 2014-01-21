package com.amap.api.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import java.util.ArrayList;

public class PolylineOptionsCreator
  implements Parcelable.Creator<PolylineOptions>
{
  public PolylineOptions createFromParcel(Parcel paramParcel)
  {
    int i = 1;
    PolylineOptions localPolylineOptions = new PolylineOptions();
    ArrayList localArrayList = new ArrayList();
    paramParcel.readTypedList(localArrayList, LatLng.CREATOR);
    float f1 = paramParcel.readFloat();
    int k = paramParcel.readInt();
    float f2 = paramParcel.readFloat();
    if (paramParcel.readByte() == i);
    while (true)
    {
      localPolylineOptions.addAll(localArrayList);
      localPolylineOptions.width(f1);
      localPolylineOptions.color(k);
      localPolylineOptions.zIndex(f2);
      localPolylineOptions.visible(i);
      localPolylineOptions.a = paramParcel.readString();
      return localPolylineOptions;
      int j = 0;
    }
  }

  public PolylineOptions[] newArray(int paramInt)
  {
    return new PolylineOptions[paramInt];
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.maps.model.PolylineOptionsCreator
 * JD-Core Version:    0.6.0
 */