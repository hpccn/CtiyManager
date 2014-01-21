package com.cymobile.ymwork.utils;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Matrix;
import android.os.Build.VERSION;
import java.io.FileOutputStream;

public class ImageUtils
{
  public static BitmapFactory.Options getBitmapDims(String paramString)
    throws Exception
  {
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    localOptions.inJustDecodeBounds = true;
    BitmapFactory.decodeFile(paramString, localOptions);
    return localOptions;
  }

  private static int getClosestResampleSize(int paramInt1, int paramInt2, int paramInt3)
  {
    int i = Math.max(paramInt1, paramInt2);
    for (int j = 1; ; j++)
    {
      if (j >= 2147483647);
      while (true)
      {
        if (j <= 0)
          break label44;
        return j;
        if (j * paramInt3 <= i)
          break;
        j--;
      }
    }
    label44: return 1;
  }

  private static BitmapFactory.Options getResampling(int paramInt1, int paramInt2, int paramInt3)
  {
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    float f;
    if (paramInt1 > paramInt2)
      f = paramInt3 / paramInt1;
    while (true)
    {
      localOptions.outWidth = (int)(0.5F + f * paramInt1);
      localOptions.outHeight = (int)(0.5F + f * paramInt2);
      return localOptions;
      if (paramInt2 > paramInt1)
      {
        f = paramInt3 / paramInt2;
        continue;
      }
      f = paramInt3 / paramInt1;
    }
  }

  public static Bitmap resampleImage(String paramString, int paramInt)
    throws Exception
  {
    BitmapFactory.Options localOptions1 = new BitmapFactory.Options();
    localOptions1.inJustDecodeBounds = true;
    BitmapFactory.decodeFile(paramString, localOptions1);
    BitmapFactory.Options localOptions2 = new BitmapFactory.Options();
    localOptions2.inSampleSize = getClosestResampleSize(localOptions1.outWidth, localOptions1.outHeight, paramInt);
    Bitmap localBitmap = BitmapFactory.decodeFile(paramString, localOptions2);
    Matrix localMatrix = new Matrix();
    if ((localBitmap.getWidth() > paramInt) || (localBitmap.getHeight() > paramInt))
    {
      BitmapFactory.Options localOptions3 = getResampling(localBitmap.getWidth(), localBitmap.getHeight(), paramInt);
      localMatrix.postScale(localOptions3.outWidth / localBitmap.getWidth(), localOptions3.outHeight / localBitmap.getHeight());
    }
    if (new Integer(Build.VERSION.SDK).intValue() > 4)
    {
      int i = ExifUtils.getExifRotation(paramString);
      if (i != 0)
        localMatrix.postRotate(i);
    }
    return Bitmap.createBitmap(localBitmap, 0, 0, localBitmap.getWidth(), localBitmap.getHeight(), localMatrix, true);
  }

  public static void resampleImageAndSaveToNewLocation(String paramString1, String paramString2)
    throws Exception
  {
    Bitmap localBitmap = resampleImage(paramString1, 640);
    FileOutputStream localFileOutputStream = new FileOutputStream(paramString2);
    localBitmap.compress(Bitmap.CompressFormat.JPEG, 90, localFileOutputStream);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.utils.ImageUtils
 * JD-Core Version:    0.6.0
 */