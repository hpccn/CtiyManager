package com.amap.api.a;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.NinePatch;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.NinePatchDrawable;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.Field;

class af
{
  private static int a(byte[] paramArrayOfByte, int paramInt)
  {
    int i = paramArrayOfByte[(paramInt + 0)];
    int j = paramArrayOfByte[(paramInt + 1)];
    int k = paramArrayOfByte[(paramInt + 2)];
    int m = paramArrayOfByte[(paramInt + 3)];
    return i | j << 8 | k << 16 | m << 24;
  }

  private static Bitmap a(InputStream paramInputStream)
    throws Exception
  {
    Bitmap localBitmap1 = BitmapFactory.decodeStream(paramInputStream);
    byte[] arrayOfByte = a(localBitmap1);
    if (NinePatch.isNinePatchChunk(arrayOfByte))
    {
      Bitmap localBitmap2 = Bitmap.createBitmap(localBitmap1, 1, 1, -2 + localBitmap1.getWidth(), -2 + localBitmap1.getHeight());
      localBitmap1.recycle();
      Field localField = localBitmap2.getClass().getDeclaredField("mNinePatchChunk");
      localField.setAccessible(true);
      localField.set(localBitmap2, arrayOfByte);
      return localBitmap2;
    }
    return localBitmap1;
  }

  public static Drawable a(Context paramContext, String paramString)
    throws Exception
  {
    Bitmap localBitmap = b(paramContext, paramString);
    if (localBitmap.getNinePatchChunk() == null)
      return new BitmapDrawable(localBitmap);
    Rect localRect = new Rect();
    a(localBitmap.getNinePatchChunk(), localRect);
    return new NinePatchDrawable(paramContext.getResources(), localBitmap, localBitmap.getNinePatchChunk(), localRect, null);
  }

  private static void a(Bitmap paramBitmap, byte[] paramArrayOfByte)
  {
    int i = 0;
    int[] arrayOfInt1 = new int[-2 + paramBitmap.getWidth()];
    paramBitmap.getPixels(arrayOfInt1, 0, arrayOfInt1.length, 1, -1 + paramBitmap.getHeight(), arrayOfInt1.length, 1);
    int j = 0;
    int k;
    label63: int[] arrayOfInt2;
    if (j < arrayOfInt1.length)
    {
      if (-16777216 == arrayOfInt1[j])
        a(paramArrayOfByte, 12, j);
    }
    else
    {
      k = -1 + arrayOfInt1.length;
      if (k >= 0)
      {
        if (-16777216 != arrayOfInt1[k])
          break label188;
        a(paramArrayOfByte, 16, -2 + (arrayOfInt1.length - k));
      }
      arrayOfInt2 = new int[-2 + paramBitmap.getHeight()];
      paramBitmap.getPixels(arrayOfInt2, 0, 1, -1 + paramBitmap.getWidth(), 0, 1, arrayOfInt2.length);
      label121: if (i < arrayOfInt2.length)
      {
        if (-16777216 != arrayOfInt2[i])
          break label194;
        a(paramArrayOfByte, 20, i);
      }
    }
    for (int m = -1 + arrayOfInt2.length; ; m--)
    {
      if (m >= 0)
      {
        if (-16777216 != arrayOfInt2[m])
          continue;
        a(paramArrayOfByte, 24, -2 + (arrayOfInt2.length - m));
      }
      return;
      j++;
      break;
      label188: k--;
      break label63;
      label194: i++;
      break label121;
    }
  }

  private static void a(OutputStream paramOutputStream, int paramInt)
    throws IOException
  {
    paramOutputStream.write(0xFF & paramInt >> 0);
    paramOutputStream.write(0xFF & paramInt >> 8);
    paramOutputStream.write(0xFF & paramInt >> 16);
    paramOutputStream.write(0xFF & paramInt >> 24);
  }

  private static void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    paramArrayOfByte[(paramInt1 + 0)] = (byte)(paramInt2 >> 0);
    paramArrayOfByte[(paramInt1 + 1)] = (byte)(paramInt2 >> 8);
    paramArrayOfByte[(paramInt1 + 2)] = (byte)(paramInt2 >> 16);
    paramArrayOfByte[(paramInt1 + 3)] = (byte)(paramInt2 >> 24);
  }

  private static void a(byte[] paramArrayOfByte, Rect paramRect)
  {
    paramRect.left = a(paramArrayOfByte, 12);
    paramRect.right = a(paramArrayOfByte, 16);
    paramRect.top = a(paramArrayOfByte, 20);
    paramRect.bottom = a(paramArrayOfByte, 24);
  }

  private static byte[] a(Bitmap paramBitmap)
    throws IOException
  {
    int i = paramBitmap.getWidth();
    int j = paramBitmap.getHeight();
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    for (int k = 0; k < 32; k++)
      localByteArrayOutputStream.write(0);
    int[] arrayOfInt1 = new int[i - 2];
    paramBitmap.getPixels(arrayOfInt1, 0, i, 1, 0, i - 2, 1);
    int m;
    if (arrayOfInt1[0] == -16777216)
    {
      m = 1;
      if (arrayOfInt1[(-1 + arrayOfInt1.length)] != -16777216)
        break label147;
    }
    int i4;
    label147: for (int n = 1; ; n = 0)
    {
      int i1 = arrayOfInt1.length;
      int i2 = 0;
      int i3 = 0;
      i4 = 0;
      while (i2 < i1)
      {
        if (i3 != arrayOfInt1[i2])
        {
          i4++;
          a(localByteArrayOutputStream, i2);
          i3 = arrayOfInt1[i2];
        }
        i2++;
      }
      m = 0;
      break;
    }
    if (n != 0)
    {
      i4++;
      a(localByteArrayOutputStream, arrayOfInt1.length);
    }
    int i5 = i4;
    int i6 = i5 + 1;
    if (m != 0);
    for (int i7 = i6 - 1; ; i7 = i6)
    {
      if (n != 0);
      for (int i8 = i7 - 1; ; i8 = i7)
      {
        int[] arrayOfInt2 = new int[j - 2];
        paramBitmap.getPixels(arrayOfInt2, 0, 1, 0, 1, 1, j - 2);
        int i9;
        if (arrayOfInt2[0] == -16777216)
        {
          i9 = 1;
          if (arrayOfInt2[(-1 + arrayOfInt2.length)] != -16777216)
            break label308;
        }
        int i14;
        label308: for (int i10 = 1; ; i10 = 0)
        {
          int i11 = arrayOfInt2.length;
          int i12 = 0;
          int i13 = 0;
          i14 = 0;
          while (i12 < i11)
          {
            if (i13 != arrayOfInt2[i12])
            {
              i14++;
              a(localByteArrayOutputStream, i12);
              i13 = arrayOfInt2[i12];
            }
            i12++;
          }
          i9 = 0;
          break;
        }
        if (i10 != 0)
        {
          i14++;
          a(localByteArrayOutputStream, arrayOfInt2.length);
        }
        int i15 = i14 + 1;
        if (i9 != 0);
        for (int i16 = i15 - 1; ; i16 = i15)
        {
          if (i10 != 0)
            i16--;
          for (int i17 = 0; i17 < i8 * i16; i17++)
            a(localByteArrayOutputStream, 1);
          byte[] arrayOfByte = localByteArrayOutputStream.toByteArray();
          arrayOfByte[0] = 1;
          arrayOfByte[1] = (byte)i5;
          arrayOfByte[2] = (byte)i14;
          arrayOfByte[3] = (byte)(i16 * i8);
          a(paramBitmap, arrayOfByte);
          return arrayOfByte;
        }
      }
    }
  }

  private static Bitmap b(Context paramContext, String paramString)
    throws Exception
  {
    InputStream localInputStream = paramContext.getAssets().open(paramString);
    Bitmap localBitmap = a(localInputStream);
    localInputStream.close();
    return localBitmap;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.a.af
 * JD-Core Version:    0.6.0
 */