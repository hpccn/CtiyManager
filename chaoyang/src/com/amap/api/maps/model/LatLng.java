package com.amap.api.maps.model;

import android.os.Parcel;
import android.os.Parcelable;

public final class LatLng
  implements Parcelable
{
  public static final LatLngCreator CREATOR = new LatLngCreator();
  public final double latitude;
  public final double longitude;

  public LatLng(double paramDouble1, double paramDouble2)
  {
    if ((-180.0D <= paramDouble2) && (paramDouble2 < 180.0D));
    for (this.longitude = paramDouble2; ; this.longitude = ((360.0D + (paramDouble2 - 180.0D) % 360.0D) % 360.0D - 180.0D))
    {
      this.latitude = Math.max(-90.0D, Math.min(90.0D, paramDouble1));
      return;
    }
  }

  public int describeContents()
  {
    return 0;
  }

  public boolean equals(Object paramObject)
  {
    if (this == paramObject);
    LatLng localLatLng;
    do
    {
      return true;
      if (!(paramObject instanceof LatLng))
        return false;
      localLatLng = (LatLng)paramObject;
    }
    while ((Double.doubleToLongBits(this.latitude) == Double.doubleToLongBits(localLatLng.latitude)) && (Double.doubleToLongBits(this.longitude) == Double.doubleToLongBits(localLatLng.longitude)));
    return false;
  }

  public int hashCode()
  {
    long l1 = Double.doubleToLongBits(this.latitude);
    int i = 31 + (int)(l1 ^ l1 >>> 32);
    long l2 = Double.doubleToLongBits(this.longitude);
    return 31 * i + (int)(l2 ^ l2 >>> 32);
  }

  public String toString()
  {
    return "lat/lng: (" + this.latitude + "," + this.longitude + ")";
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeDouble(this.longitude);
    paramParcel.writeDouble(this.latitude);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.maps.model.LatLng
 * JD-Core Version:    0.6.0
 */