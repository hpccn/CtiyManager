package com.amap.api.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public final class PolygonOptions
  implements Parcelable
{
  public static final PolygonOptionsCreator CREATOR = new PolygonOptionsCreator();
  String a;
  private final List<LatLng> b = new ArrayList();
  private float c = 10.0F;
  private int d = -16777216;
  private int e = -16777216;
  private float f = 0.0F;
  private boolean g = true;

  public PolygonOptions add(LatLng paramLatLng)
  {
    this.b.add(paramLatLng);
    return this;
  }

  public PolygonOptions add(LatLng[] paramArrayOfLatLng)
  {
    this.b.addAll(Arrays.asList(paramArrayOfLatLng));
    return this;
  }

  public PolygonOptions addAll(Iterable<LatLng> paramIterable)
  {
    Iterator localIterator = paramIterable.iterator();
    while (localIterator.hasNext())
    {
      LatLng localLatLng = (LatLng)localIterator.next();
      this.b.add(localLatLng);
    }
    return this;
  }

  public int describeContents()
  {
    return 0;
  }

  public PolygonOptions fillColor(int paramInt)
  {
    this.e = paramInt;
    return this;
  }

  public int getFillColor()
  {
    return this.e;
  }

  public List<LatLng> getPoints()
  {
    return this.b;
  }

  public int getStrokeColor()
  {
    return this.d;
  }

  public float getStrokeWidth()
  {
    return this.c;
  }

  public float getZIndex()
  {
    return this.f;
  }

  public boolean isVisible()
  {
    return this.g;
  }

  public PolygonOptions strokeColor(int paramInt)
  {
    this.d = paramInt;
    return this;
  }

  public PolygonOptions strokeWidth(float paramFloat)
  {
    this.c = paramFloat;
    return this;
  }

  public PolygonOptions visible(boolean paramBoolean)
  {
    this.g = paramBoolean;
    return this;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeTypedList(this.b);
    paramParcel.writeFloat(this.c);
    paramParcel.writeInt(this.d);
    paramParcel.writeInt(this.e);
    paramParcel.writeFloat(this.f);
    if (this.g);
    for (int i = 0; ; i = 1)
    {
      paramParcel.writeByte((byte)i);
      paramParcel.writeString(this.a);
      return;
    }
  }

  public PolygonOptions zIndex(float paramFloat)
  {
    this.f = paramFloat;
    return this;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.maps.model.PolygonOptions
 * JD-Core Version:    0.6.0
 */