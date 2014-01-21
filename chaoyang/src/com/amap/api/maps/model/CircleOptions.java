package com.amap.api.maps.model;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

public final class CircleOptions
  implements Parcelable
{
  public static final CircleOptionsCreator CREATOR = new CircleOptionsCreator();
  String a;
  private LatLng b = null;
  private double c = 0.0D;
  private float d = 10.0F;
  private int e = -16777216;
  private int f = 0;
  private float g = 0.0F;
  private boolean h = true;

  public CircleOptions center(LatLng paramLatLng)
  {
    this.b = paramLatLng;
    return this;
  }

  public int describeContents()
  {
    return 0;
  }

  public CircleOptions fillColor(int paramInt)
  {
    this.f = paramInt;
    return this;
  }

  public LatLng getCenter()
  {
    return this.b;
  }

  public int getFillColor()
  {
    return this.f;
  }

  public double getRadius()
  {
    return this.c;
  }

  public int getStrokeColor()
  {
    return this.e;
  }

  public float getStrokeWidth()
  {
    return this.d;
  }

  public float getZIndex()
  {
    return this.g;
  }

  public boolean isVisible()
  {
    return this.h;
  }

  public CircleOptions radius(double paramDouble)
  {
    this.c = paramDouble;
    return this;
  }

  public CircleOptions strokeColor(int paramInt)
  {
    this.e = paramInt;
    return this;
  }

  public CircleOptions strokeWidth(float paramFloat)
  {
    this.d = paramFloat;
    return this;
  }

  public CircleOptions visible(boolean paramBoolean)
  {
    this.h = paramBoolean;
    return this;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    Bundle localBundle = new Bundle();
    if (this.b != null)
    {
      localBundle.putDouble("lat", this.b.latitude);
      localBundle.putDouble("lng", this.b.longitude);
    }
    paramParcel.writeBundle(localBundle);
    paramParcel.writeDouble(this.c);
    paramParcel.writeFloat(this.d);
    paramParcel.writeInt(this.e);
    paramParcel.writeInt(this.f);
    paramParcel.writeFloat(this.g);
    if (this.h);
    for (int i = 1; ; i = 0)
    {
      paramParcel.writeByte((byte)i);
      paramParcel.writeString(this.a);
      return;
    }
  }

  public CircleOptions zIndex(float paramFloat)
  {
    this.g = paramFloat;
    return this;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.maps.model.CircleOptions
 * JD-Core Version:    0.6.0
 */