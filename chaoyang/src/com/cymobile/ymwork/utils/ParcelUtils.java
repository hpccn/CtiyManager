package com.cymobile.ymwork.utils;

import android.os.Parcel;

public class ParcelUtils
{
  public static String readStringFromParcel(Parcel paramParcel)
  {
    if (paramParcel.readInt() == 1)
      return paramParcel.readString();
    return null;
  }

  public static void writeStringToParcel(Parcel paramParcel, String paramString)
  {
    if (paramString != null)
    {
      paramParcel.writeInt(1);
      paramParcel.writeString(paramString);
      return;
    }
    paramParcel.writeInt(0);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.utils.ParcelUtils
 * JD-Core Version:    0.6.0
 */