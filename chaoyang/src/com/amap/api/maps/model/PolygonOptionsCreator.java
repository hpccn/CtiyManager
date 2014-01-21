package com.amap.api.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import java.util.ArrayList;
import java.util.List;

public class PolygonOptionsCreator
  implements Parcelable.Creator<PolygonOptions>
{
  public static final int CONTENT_DESCRIPTION;

  public PolygonOptions createFromParcel(Parcel paramParcel)
  {
    PolygonOptions localPolygonOptions = new PolygonOptions();
    ArrayList localArrayList = new ArrayList();
    paramParcel.readTypedList(localArrayList, LatLng.CREATOR);
    float f1 = paramParcel.readFloat();
    int i = paramParcel.readInt();
    int j = paramParcel.readInt();
    float f2 = paramParcel.readFloat();
    if (paramParcel.readByte() == 1);
    for (boolean bool = true; ; bool = false)
    {
      localPolygonOptions.add((LatLng[])(LatLng[])localArrayList.toArray());
      localPolygonOptions.strokeWidth(f1);
      localPolygonOptions.strokeColor(i);
      localPolygonOptions.fillColor(j);
      localPolygonOptions.zIndex(f2);
      localPolygonOptions.visible(bool);
      localPolygonOptions.a = paramParcel.readString();
      return localPolygonOptions;
    }
  }

  public PolygonOptions[] newArray(int paramInt)
  {
    return new PolygonOptions[paramInt];
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.maps.model.PolygonOptionsCreator
 * JD-Core Version:    0.6.0
 */