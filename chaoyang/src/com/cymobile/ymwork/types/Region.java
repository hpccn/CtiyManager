package com.cymobile.ymwork.types;

import android.os.Parcel;

public class Region
{
  private int firstChar;
  private int id;
  private double lat;
  private double lng;
  private String name;
  private int parentId;

  public Region()
  {
  }

  public Region(int paramInt1, String paramString, int paramInt2)
  {
    this.id = paramInt1;
    this.name = paramString;
    this.parentId = paramInt2;
  }

  public Region(int paramInt1, String paramString, int paramInt2, double paramDouble1, double paramDouble2)
  {
    this.id = paramInt1;
    this.name = paramString;
    this.parentId = paramInt2;
    this.lat = paramDouble1;
    this.lng = paramDouble2;
  }

  public boolean equals(Object paramObject)
  {
    return (paramObject == this) || (((paramObject instanceof Region)) && (((Region)paramObject).id == this.id));
  }

  public String firstChar()
  {
    if (this.firstChar == 0)
      return "";
    return String.valueOf((char)this.firstChar);
  }

  public double getLat()
  {
    return this.lat;
  }

  public double getLng()
  {
    return this.lng;
  }

  public int hashCode()
  {
    return this.id;
  }

  public int id()
  {
    return this.id;
  }

  public String name()
  {
    return this.name;
  }

  public int parentId()
  {
    return this.parentId;
  }

  public void setFirstChar(int paramInt)
  {
    this.firstChar = paramInt;
  }

  public String toString()
  {
    return this.id + " : " + this.name;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.id);
    paramParcel.writeString(this.name);
    paramParcel.writeInt(this.parentId);
    paramParcel.writeDouble(this.lat);
    paramParcel.writeDouble(this.lng);
    paramParcel.writeInt(this.firstChar);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.types.Region
 * JD-Core Version:    0.6.0
 */