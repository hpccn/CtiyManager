package com.amap.api.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.amap.api.a.b.g;

public final class VisibleRegion
  implements Parcelable
{
  public static final VisibleRegionCreator CREATOR = new VisibleRegionCreator();
  private final int a;
  public final LatLng farLeft;
  public final LatLng farRight;
  public final LatLngBounds latLngBounds;
  public final LatLng nearLeft;
  public final LatLng nearRight;

  VisibleRegion(int paramInt, LatLng paramLatLng1, LatLng paramLatLng2, LatLng paramLatLng3, LatLng paramLatLng4, LatLngBounds paramLatLngBounds)
  {
    this.a = paramInt;
    this.nearLeft = paramLatLng1;
    this.nearRight = paramLatLng2;
    this.farLeft = paramLatLng3;
    this.farRight = paramLatLng4;
    this.latLngBounds = paramLatLngBounds;
  }

  public VisibleRegion(LatLng paramLatLng1, LatLng paramLatLng2, LatLng paramLatLng3, LatLng paramLatLng4, LatLngBounds paramLatLngBounds)
  {
    this(1, paramLatLng1, paramLatLng2, paramLatLng3, paramLatLng4, paramLatLngBounds);
  }

  int a()
  {
    return this.a;
  }

  public int describeContents()
  {
    return 0;
  }

  public boolean equals(Object paramObject)
  {
    if (this == paramObject);
    VisibleRegion localVisibleRegion;
    do
    {
      return true;
      if (!(paramObject instanceof VisibleRegion))
        return false;
      localVisibleRegion = (VisibleRegion)paramObject;
    }
    while ((this.nearLeft.equals(localVisibleRegion.nearLeft)) && (this.nearRight.equals(localVisibleRegion.nearRight)) && (this.farLeft.equals(localVisibleRegion.farLeft)) && (this.farRight.equals(localVisibleRegion.farRight)) && (this.latLngBounds.equals(localVisibleRegion.latLngBounds)));
    return false;
  }

  public int hashCode()
  {
    Object[] arrayOfObject = new Object[5];
    arrayOfObject[0] = this.nearLeft;
    arrayOfObject[1] = this.nearRight;
    arrayOfObject[2] = this.farLeft;
    arrayOfObject[3] = this.farRight;
    arrayOfObject[4] = this.latLngBounds;
    return g.a(arrayOfObject);
  }

  public String toString()
  {
    String[] arrayOfString = new String[5];
    arrayOfString[0] = g.a("nearLeft", this.nearLeft);
    arrayOfString[1] = g.a("nearRight", this.nearRight);
    arrayOfString[2] = g.a("farLeft", this.farLeft);
    arrayOfString[3] = g.a("farRight", this.farRight);
    arrayOfString[4] = g.a("latLngBounds", this.latLngBounds);
    return g.a(arrayOfString);
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    VisibleRegionCreator.a(this, paramParcel, paramInt);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.maps.model.VisibleRegion
 * JD-Core Version:    0.6.0
 */