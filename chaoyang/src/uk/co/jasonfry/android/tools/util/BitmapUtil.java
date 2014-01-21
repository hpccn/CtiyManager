package uk.co.jasonfry.android.tools.util;

import android.content.ContentResolver;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Matrix;
import android.media.ExifInterface;
import android.net.Uri;
import android.provider.MediaStore.Images.Media;
import android.provider.MediaStore.Images.Thumbnails;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

public final class BitmapUtil
{
  public static void createScaledImage(String paramString1, String paramString2, int paramInt1, int paramInt2)
  {
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    localOptions.inJustDecodeBounds = true;
    BitmapFactory.decodeFile(paramString1, localOptions);
    int i = localOptions.outWidth;
    int j = localOptions.outHeight;
    if (paramInt1 > i)
      paramInt1 = i;
    int k = 1;
    while (true)
    {
      Bitmap localBitmap2;
      if (i / 2 <= paramInt1)
      {
        float f = paramInt1 / i;
        localOptions.inJustDecodeBounds = false;
        localOptions.inDither = false;
        localOptions.inSampleSize = k;
        localOptions.inScaled = false;
        localOptions.inPreferredConfig = Bitmap.Config.ARGB_8888;
        Bitmap localBitmap1 = BitmapFactory.decodeFile(paramString1, localOptions);
        Matrix localMatrix = new Matrix();
        localMatrix.postScale(f, f);
        localBitmap2 = Bitmap.createBitmap(localBitmap1, 0, 0, localBitmap1.getWidth(), localBitmap1.getHeight(), localMatrix, true);
      }
      try
      {
        FileOutputStream localFileOutputStream = new FileOutputStream(paramString2);
        localBitmap2.compress(Bitmap.CompressFormat.JPEG, 85, localFileOutputStream);
        return;
        i /= 2;
        j /= 2;
        k *= 2;
      }
      catch (IOException localIOException)
      {
        localIOException.printStackTrace();
      }
    }
  }

  public static Bitmap cropToSquare(Bitmap paramBitmap)
  {
    if (paramBitmap != null)
    {
      if (paramBitmap.getWidth() <= paramBitmap.getHeight())
        break label42;
      paramBitmap = Bitmap.createBitmap(paramBitmap, (paramBitmap.getWidth() - paramBitmap.getHeight()) / 2, 0, paramBitmap.getHeight(), paramBitmap.getHeight());
    }
    label42: 
    do
      return paramBitmap;
    while (paramBitmap.getWidth() >= paramBitmap.getHeight());
    return Bitmap.createBitmap(paramBitmap, 0, (paramBitmap.getHeight() - paramBitmap.getWidth()) / 2, paramBitmap.getWidth(), paramBitmap.getWidth());
  }

  public static Bitmap decodeFile(File paramFile, int paramInt, boolean paramBoolean)
  {
    try
    {
      BitmapFactory.Options localOptions1 = new BitmapFactory.Options();
      localOptions1.inJustDecodeBounds = true;
      BitmapFactory.decodeStream(new FileInputStream(paramFile), null, localOptions1);
      if (paramInt > 0)
      {
        int i = localOptions1.outWidth;
        int j = localOptions1.outHeight;
        BitmapFactory.Options localOptions2;
        for (int k = 1; ; k++)
        {
          if ((i / 2 < paramInt) || (j / 2 < paramInt))
          {
            localOptions2 = new BitmapFactory.Options();
            localOptions2.inSampleSize = k;
            localOptions2.inScaled = true;
            if (!paramBoolean)
              break;
            return cropToSquare(BitmapFactory.decodeFile(paramFile.getAbsolutePath(), localOptions2));
          }
          i /= 2;
          j /= 2;
        }
        Bitmap localBitmap = BitmapFactory.decodeFile(paramFile.getAbsolutePath(), localOptions2);
        return localBitmap;
      }
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      localFileNotFoundException.printStackTrace();
    }
    return null;
  }

  public static Bitmap decodeFile(String paramString, int paramInt, boolean paramBoolean)
  {
    return decodeFile(new File(paramString), paramInt, paramBoolean);
  }

  public static Bitmap getThumbnail(ContentResolver paramContentResolver, long paramLong)
  {
    Uri localUri = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
    String[] arrayOfString1 = { "_data" };
    String[] arrayOfString2 = new String[1];
    arrayOfString2[0] = String.valueOf(paramLong);
    Cursor localCursor = paramContentResolver.query(localUri, arrayOfString1, "_id=?", arrayOfString2, null);
    String str;
    if ((localCursor != null) && (localCursor.getCount() > 0))
    {
      localCursor.moveToFirst();
      str = localCursor.getString(0);
      localCursor.close();
    }
    try
    {
      int k = new ExifInterface(str).getAttributeInt("Orientation", 0);
      int i = 0;
      if (k != 0)
      {
        i = 0;
        switch (k)
        {
        case 4:
        case 5:
        case 7:
        default:
        case 3:
        case 8:
        case 6:
        }
      }
      while (true)
      {
        Bitmap localBitmap = MediaStore.Images.Thumbnails.getThumbnail(paramContentResolver, paramLong, 1, null);
        if (i != 0)
        {
          Matrix localMatrix = new Matrix();
          localMatrix.setRotate(i);
          localBitmap = Bitmap.createBitmap(localBitmap, 0, 0, localBitmap.getWidth(), localBitmap.getHeight(), localMatrix, true);
        }
        return localBitmap;
        j = 180;
        continue;
        j = 270;
        continue;
        j = 90;
      }
      return null;
    }
    catch (IOException localIOException)
    {
      while (true)
        int j = 0;
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     uk.co.jasonfry.android.tools.util.BitmapUtil
 * JD-Core Version:    0.6.0
 */