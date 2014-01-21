package com.amap.api.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public final class PolylineOptions
  implements Parcelable
{
  public static final PolylineOptionsCreator CREATOR = new PolylineOptionsCreator();
  String a;
  private final List<LatLng> b = new ArrayList();
  private float c = 10.0F;
  private int d = -16777216;
  private float e = 0.0F;
  private boolean f = true;

  public PolylineOptions add(LatLng paramLatLng)
  {
    this.b.add(paramLatLng);
    return this;
  }

  public PolylineOptions add(LatLng[] paramArrayOfLatLng)
  {
    this.b.addAll(Arrays.asList(paramArrayOfLatLng));
    return this;
  }

  public PolylineOptions addAll(Iterable<LatLng> paramIterable)
  {
    Iterator localIterator = paramIterable.iterator();
    while (localIterator.hasNext())
    {
      LatLng localLatLng = (LatLng)localIterator.next();
      this.b.add(localLatLng);
    }
    return this;
  }

  public PolylineOptions color(int paramInt)
  {
    this.d = paramInt;
    return this;
  }

  public int describeContents()
  {
    return 0;
  }

  public int getColor()
  {
    return this.d;
  }

  public List<LatLng> getPoints()
  {
    return this.b;
  }

  public float getWidth()
  {
    return this.c;
  }

  public float getZIndex()
  {
    return this.e;
  }

  public boolean isVisible()
  {
    return this.f;
  }

  public PolylineOptions visible(boolean paramBoolean)
  {
    this.f = paramBoolean;
    return this;
  }

  public PolylineOptions width(float paramFloat)
  {
    this.c = paramFloat;
    return this;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeTypedList(getPoints());
    paramParcel.writeFloat(getWidth());
    paramParcel.writeInt(getColor());
    paramParcel.writeFloat(getZIndex());
    if (isVisible());
    for (int i = 1; ; i = 0)
    {
      paramParcel.writeByte((byte)i);
      paramParcel.writeString(this.a);
      return;
    }
  }

  public PolylineOptions zIndex(float paramFloat)
  {
    this.e = paramFloat;
    return this;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.maps.model.PolylineOptions
 * JD-Core Version:    0.6.0
 */