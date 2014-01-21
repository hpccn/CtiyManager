package com.cymobile.ymwork.utils;

import android.media.ExifInterface;
import android.text.TextUtils;

public class ExifUtils
{
  public static int getExifRotation(String paramString)
  {
    try
    {
      String str = new ExifInterface(paramString).getAttribute("Orientation");
      int i;
      if (!TextUtils.isEmpty(str))
        i = Integer.parseInt(str);
      switch (i)
      {
      case 1:
      case 2:
      case 4:
      case 5:
      case 7:
      default:
        return 0;
      case 6:
        return 90;
      case 3:
        return 180;
      case 8:
      }
      return 270;
    }
    catch (Exception localException)
    {
    }
    return 0;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.utils.ExifUtils
 * JD-Core Version:    0.6.0
 */