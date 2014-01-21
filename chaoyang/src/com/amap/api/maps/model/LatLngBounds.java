package com.amap.api.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.amap.api.a.b.b;
import com.amap.api.a.b.g;

public final class LatLngBounds
  implements Parcelable
{
  public static final LatLngBoundsCreator CREATOR = new LatLngBoundsCreator();
  private final int a;
  public final LatLng northeast;
  public final LatLng southwest;

  LatLngBounds(int paramInt, LatLng paramLatLng1, LatLng paramLatLng2)
  {
    b.a(paramLatLng1, "null southwest");
    b.a(paramLatLng2, "null northeast");
    if (paramLatLng2.latitude >= paramLatLng1.latitude);
    for (boolean bool = true; ; bool = false)
    {
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Double.valueOf(paramLatLng1.latitude);
      arrayOfObject[1] = Double.valueOf(paramLatLng2.latitude);
      b.a(bool, "southern latitude exceeds northern latitude (%s > %s)", arrayOfObject);
      this.a = paramInt;
      this.southwest = paramLatLng1;
      this.northeast = paramLatLng2;
      return;
    }
  }

  public LatLngBounds(LatLng paramLatLng1, LatLng paramLatLng2)
  {
    this(1, paramLatLng1, paramLatLng2);
  }

  private boolean a(double paramDouble)
  {
    return (this.southwest.latitude <= paramDouble) && (paramDouble <= this.northeast.latitude);
  }

  private boolean b(double paramDouble)
  {
    if (this.southwest.longitude <= this.northeast.longitude)
      return (this.southwest.longitude <= paramDouble) && (paramDouble <= this.northeast.longitude);
    int i;
    if (this.southwest.longitude > paramDouble)
    {
      boolean bool = paramDouble < this.northeast.longitude;
      i = 0;
      if (bool);
    }
    else
    {
      i = 1;
    }
    return i;
  }

  public static Builder builder()
  {
    return new Builder();
  }

  private static double c(double paramDouble1, double paramDouble2)
  {
    return (360.0D + (paramDouble1 - paramDouble2)) % 360.0D;
  }

  private static double d(double paramDouble1, double paramDouble2)
  {
    return (360.0D + (paramDouble2 - paramDouble1)) % 360.0D;
  }

  int a()
  {
    return this.a;
  }

  public boolean contains(LatLng paramLatLng)
  {
    return (a(paramLatLng.latitude)) && (b(paramLatLng.longitude));
  }

  public int describeContents()
  {
    return 0;
  }

  public boolean equals(Object paramObject)
  {
    if (this == paramObject);
    LatLngBounds localLatLngBounds;
    do
    {
      return true;
      if (!(paramObject instanceof LatLngBounds))
        return false;
      localLatLngBounds = (LatLngBounds)paramObject;
    }
    while ((this.southwest.equals(localLatLngBounds.southwest)) && (this.northeast.equals(localLatLngBounds.northeast)));
    return false;
  }

  public int hashCode()
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = this.southwest;
    arrayOfObject[1] = this.northeast;
    return g.a(arrayOfObject);
  }

  public LatLngBounds including(LatLng paramLatLng)
  {
    double d1 = Math.min(this.southwest.latitude, paramLatLng.latitude);
    double d2 = Math.max(this.northeast.latitude, paramLatLng.latitude);
    double d3 = this.northeast.longitude;
    double d4 = this.southwest.longitude;
    double d5 = paramLatLng.longitude;
    if ((!b(d5)) && (c(d4, d5) < d(d3, d5)));
    return new LatLngBounds(new LatLng(d1, d5), new LatLng(d2, d5));
  }

  public String toString()
  {
    String[] arrayOfString = new String[2];
    arrayOfString[0] = g.a("southwest", this.southwest);
    arrayOfString[1] = g.a("northeast", this.northeast);
    return g.a(arrayOfString);
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    LatLngBoundsCreator.a(this, paramParcel, paramInt);
  }

  public static final class Builder
  {
    private double a = (1.0D / 0.0D);
    private double b = (-1.0D / 0.0D);
    private double c = (0.0D / 0.0D);
    private double d = (0.0D / 0.0D);

    private boolean a(double paramDouble)
    {
      if (this.c <= this.d)
        return (this.c <= paramDouble) && (paramDouble <= this.d);
      int i;
      if (this.c > paramDouble)
      {
        boolean bool = paramDouble < this.d;
        i = 0;
        if (bool);
      }
      else
      {
        i = 1;
      }
      return i;
    }

    public LatLngBounds build()
    {
      if (!Double.isNaN(this.c));
      for (boolean bool = true; ; bool = false)
      {
        b.a(bool, "no included points");
        return new LatLngBounds(new LatLng(this.a, this.c), new LatLng(this.b, this.d));
      }
    }

    public Builder include(LatLng paramLatLng)
    {
      this.a = Math.min(this.a, paramLatLng.latitude);
      this.b = Math.max(this.b, paramLatLng.latitude);
      double d1 = paramLatLng.longitude;
      if (Double.isNaN(this.c))
      {
        this.c = d1;
        this.d = d1;
      }
      do
        return this;
      while (a(d1));
      if (LatLngBounds.a(this.c, d1) < LatLngBounds.b(this.d, d1))
      {
        this.c = d1;
        return this;
      }
      this.d = d1;
      return this;
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.maps.model.LatLngBounds
 * JD-Core Version:    0.6.0
 */