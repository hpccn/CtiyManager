package com.cymobile.ymwork.types;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class Pair
  implements Parcelable
{
  public static final Parcelable.Creator<Pair> CREATOR = new Parcelable.Creator()
  {
    public Pair createFromParcel(Parcel paramParcel)
    {
      return new Pair(paramParcel, null);
    }

    public Pair[] newArray(int paramInt)
    {
      return new Pair[paramInt];
    }
  };
  private String id;
  private String name;
  private int type;

  public Pair()
  {
  }

  public Pair(int paramInt, String paramString)
  {
    this(paramInt, paramString, 0);
  }

  public Pair(int paramInt1, String paramString, int paramInt2)
  {
    this(String.valueOf(paramInt1), paramString, paramInt2);
  }

  private Pair(Parcel paramParcel)
  {
    this.id = paramParcel.readString();
    this.name = paramParcel.readString();
    this.type = paramParcel.readInt();
  }

  public Pair(String paramString1, String paramString2)
  {
    this(paramString1, paramString2, 0);
  }

  public Pair(String paramString1, String paramString2, int paramInt)
  {
    this.id = paramString1;
    this.name = paramString2;
    this.type = paramInt;
  }

  public int describeContents()
  {
    return 0;
  }

  public String id()
  {
    return this.id;
  }

  public int intId()
  {
    try
    {
      int i = Integer.parseInt(this.id);
      return i;
    }
    catch (Exception localException)
    {
    }
    return 0;
  }

  public String name()
  {
    return this.name;
  }

  public String toString()
  {
    return this.id + " : " + this.name;
  }

  public int type()
  {
    return this.type;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.id);
    paramParcel.writeString(this.name);
    paramParcel.writeInt(this.type);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.types.Pair
 * JD-Core Version:    0.6.0
 */