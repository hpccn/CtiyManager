package com.amap.api.maps.model;

import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.Parcelable.Creator;

public class BitmapDescriptorCreator
  implements Parcelable.Creator<BitmapDescriptor>
{
  public BitmapDescriptor createFromParcel(Parcel paramParcel)
  {
    BitmapDescriptor localBitmapDescriptor = new BitmapDescriptor(null);
    localBitmapDescriptor.c = ((Bitmap)paramParcel.readParcelable(BitmapDescriptor.class.getClassLoader()));
    localBitmapDescriptor.a = paramParcel.readInt();
    localBitmapDescriptor.b = paramParcel.readInt();
    return localBitmapDescriptor;
  }

  public BitmapDescriptor[] newArray(int paramInt)
  {
    return new BitmapDescriptor[paramInt];
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.maps.model.BitmapDescriptorCreator
 * JD-Core Version:    0.6.0
 */