package com.amap.api.search.poisearch;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.amap.api.search.core.LatLonPoint;

public class PoiItem
{
  public static final Parcelable.Creator<PoiItem> CREATOR = new a();
  public static final String DesSplit = " - ";
  private String a;
  private String b;
  private String c;
  private String d;
  private String e = "";
  private String f;
  private int g = -1;
  protected final LatLonPoint mPoint;
  protected final String mSnippet;
  protected final String mTitle;

  private PoiItem(Parcel paramParcel)
  {
    this.a = paramParcel.readString();
    this.d = paramParcel.readString();
    this.c = paramParcel.readString();
    this.b = paramParcel.readString();
    this.e = paramParcel.readString();
    this.g = paramParcel.readInt();
    this.mPoint = ((LatLonPoint)paramParcel.readValue(LatLonPoint.class.getClassLoader()));
    this.mTitle = paramParcel.readString();
    this.mSnippet = paramParcel.readString();
  }

  public PoiItem(String paramString1, LatLonPoint paramLatLonPoint, String paramString2, String paramString3)
  {
    this.a = paramString1;
    this.mPoint = paramLatLonPoint;
    this.mTitle = paramString2;
    this.mSnippet = paramString3;
  }

  public int describeContents()
  {
    return 0;
  }

  public boolean equals(Object paramObject)
  {
    if (paramObject == null);
    PoiItem localPoiItem;
    do
    {
      do
        return false;
      while (paramObject.getClass() != getClass());
      localPoiItem = (PoiItem)paramObject;
    }
    while (this.a != localPoiItem.a);
    return true;
  }

  public String getAdCode()
  {
    return this.d;
  }

  public int getDistance()
  {
    return this.g;
  }

  public String getPoiId()
  {
    return this.a;
  }

  public LatLonPoint getPoint()
  {
    return this.mPoint;
  }

  public String getSnippet()
  {
    return this.mSnippet;
  }

  public String getTel()
  {
    return this.c;
  }

  public String getTitle()
  {
    return this.mTitle;
  }

  public String getTypeCode()
  {
    return this.b;
  }

  public String getTypeDes()
  {
    return this.e;
  }

  public String getXmlNode()
  {
    return this.f;
  }

  public int hashCode()
  {
    return this.a.hashCode();
  }

  public void setAdCode(String paramString)
  {
    this.d = paramString;
  }

  public void setDistance(int paramInt)
  {
    this.g = paramInt;
  }

  public void setTel(String paramString)
  {
    this.c = paramString;
  }

  public void setTypeCode(String paramString)
  {
    this.b = paramString;
  }

  public void setTypeDes(String paramString)
  {
    this.e = paramString;
  }

  public void setXmlNode(String paramString)
  {
    this.f = paramString;
  }

  public String toString()
  {
    return this.mTitle;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.a);
    paramParcel.writeString(this.d);
    paramParcel.writeString(this.c);
    paramParcel.writeString(this.b);
    paramParcel.writeString(this.e);
    paramParcel.writeInt(this.g);
    paramParcel.writeValue(this.mPoint);
    paramParcel.writeString(this.mTitle);
    paramParcel.writeString(this.mSnippet);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.search.poisearch.PoiItem
 * JD-Core Version:    0.6.0
 */