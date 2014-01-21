package com.amap.api.location.core;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class GeoPoint
  implements Parcelable
{
  public static final Parcelable.Creator<GeoPoint> CREATOR = new g();
  private long a = -9223372036854775808L;
  private long b = -9223372036854775808L;
  private double c = 4.9E-324D;
  private double d = 4.9E-324D;

  public GeoPoint()
  {
    this.a = 0L;
    this.b = 0L;
  }

  public GeoPoint(int paramInt1, int paramInt2)
  {
    this.a = paramInt1;
    this.b = paramInt2;
  }

  public GeoPoint(long paramLong1, long paramLong2)
  {
    this.a = paramLong1;
    this.b = paramLong2;
  }

  private GeoPoint(Parcel paramParcel)
  {
    this.a = paramParcel.readLong();
    this.b = paramParcel.readLong();
  }

  public int describeContents()
  {
    return 0;
  }

  public boolean equals(Object paramObject)
  {
    if (paramObject == null);
    GeoPoint localGeoPoint;
    do
    {
      do
        return false;
      while (paramObject.getClass() != getClass());
      localGeoPoint = (GeoPoint)paramObject;
    }
    while ((this.c != localGeoPoint.c) || (this.d != localGeoPoint.d) || (this.a != localGeoPoint.a) || (this.b != localGeoPoint.b));
    return true;
  }

  public int getLatitudeE6()
  {
    return (int)this.a;
  }

  public int getLongitudeE6()
  {
    return (int)this.b;
  }

  public int hashCode()
  {
    return (int)(7.0D * this.d + 11.0D * this.c);
  }

  public String toString()
  {
    return "" + this.a + "," + this.b;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeLong(this.a);
    paramParcel.writeLong(this.b);
  }

  public static enum a
  {
    static
    {
      a[] arrayOfa = new a[2];
      arrayOfa[0] = a;
      arrayOfa[1] = b;
      c = arrayOfa;
    }
  }

  public static class b
  {
    public double a;
    public double b;

    public b(double paramDouble1, double paramDouble2)
    {
      this.a = paramDouble1;
      this.b = paramDouble2;
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.location.core.GeoPoint
 * JD-Core Version:    0.6.0
 */