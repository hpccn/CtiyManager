package com.cymobile.ymwork.types;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;

public class Category
  implements Parcelable, Serializable
{
  private int distance;
  private String favicon;
  private long id;
  private String name;
  private long parentId;
  private String searchPara;

  private Category()
  {
  }

  public Category(long paramLong1, String paramString1, long paramLong2, String paramString2, int paramInt, String paramString3)
  {
    if (paramString1 != null)
      paramString1.length();
    this.id = paramLong1;
    this.name = paramString1;
    this.parentId = paramLong2;
    this.favicon = paramString2;
    this.distance = paramInt;
    this.searchPara = paramString3;
  }

  private Category(Parcel paramParcel)
  {
    this.id = paramParcel.readInt();
    this.name = paramParcel.readString();
    this.parentId = paramParcel.readInt();
    this.favicon = paramParcel.readString();
    this.distance = paramParcel.readInt();
    this.searchPara = paramParcel.readString();
  }

  public int describeContents()
  {
    return 0;
  }

  public int distance()
  {
    if (this.distance > 0)
      return this.distance;
    return 500;
  }

  public boolean equals(Object paramObject)
  {
    return (paramObject == this) || (((paramObject instanceof Category)) && (((Category)paramObject).id == this.id));
  }

  public String favicon()
  {
    return this.favicon;
  }

  public long id()
  {
    return this.id;
  }

  public String name()
  {
    return this.name;
  }

  public long parentId()
  {
    return this.parentId;
  }

  public String searchPara()
  {
    return this.searchPara;
  }

  public String toString()
  {
    return "id:" + this.id + ", name " + this.name + ", parent: " + parentId();
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeLong(this.id);
    paramParcel.writeString(this.name);
    paramParcel.writeLong(this.parentId);
    paramParcel.writeString(this.favicon);
    paramParcel.writeInt(this.distance);
    paramParcel.writeString(this.searchPara);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.types.Category
 * JD-Core Version:    0.6.0
 */