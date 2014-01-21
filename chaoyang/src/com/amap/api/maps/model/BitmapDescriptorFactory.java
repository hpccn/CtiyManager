package com.amap.api.maps.model;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.amap.api.a.v.a;
import com.amap.api.a.y;
import java.io.FileInputStream;
import java.io.InputStream;

public final class BitmapDescriptorFactory
{
  public static final float HUE_AZURE = 210.0F;
  public static final float HUE_BLUE = 240.0F;
  public static final float HUE_CYAN = 180.0F;
  public static final float HUE_GREEN = 120.0F;
  public static final float HUE_MAGENTA = 300.0F;
  public static final float HUE_ORANGE = 30.0F;
  public static final float HUE_RED = 0.0F;
  public static final float HUE_ROSE = 330.0F;
  public static final float HUE_VIOLET = 270.0F;
  public static final float HUE_YELLOW = 60.0F;

  public static BitmapDescriptor defaultMarker()
  {
    try
    {
      BitmapDescriptor localBitmapDescriptor = fromAsset(v.a.b.name() + ".png");
      return localBitmapDescriptor;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public static BitmapDescriptor defaultMarker(float paramFloat)
  {
    int i = (int)(15.0F + paramFloat);
    while (true)
    {
      float f1;
      try
      {
        f1 = 30 * (i / 30);
        if (f1 <= 330.0F)
          break label92;
        f2 = 330.0F;
        break label74;
        return fromAsset(str + ".png");
        if (f2 != 330.0F)
          continue;
        str = "ROSE";
        continue;
      }
      catch (Exception localException)
      {
        return null;
      }
      label71: float f2 = f1;
      while (true)
      {
        label74: str = "";
        if (f2 != 0.0F)
          break label104;
        str = "RED";
        break;
        label92: if (f1 >= 0.0F)
          break label71;
        f2 = 0.0F;
      }
      label104: if (f2 == 30.0F)
      {
        str = "ORANGE";
        continue;
      }
      if (f2 == 60.0F)
      {
        str = "YELLOW";
        continue;
      }
      if (f2 == 120.0F)
      {
        str = "GREEN";
        continue;
      }
      if (f2 == 180.0F)
      {
        str = "CYAN";
        continue;
      }
      if (f2 == 210.0F)
      {
        str = "AZURE";
        continue;
      }
      if (f2 == 240.0F)
      {
        str = "BLUE";
        continue;
      }
      if (f2 == 270.0F)
      {
        str = "VIOLET";
        continue;
      }
      if (f2 != 300.0F)
        continue;
      String str = "MAGENTA";
    }
  }

  public static BitmapDescriptor fromAsset(String paramString)
  {
    try
    {
      InputStream localInputStream = BitmapDescriptorFactory.class.getResourceAsStream("/assets/" + paramString);
      Bitmap localBitmap = BitmapFactory.decodeStream(localInputStream);
      localInputStream.close();
      BitmapDescriptor localBitmapDescriptor = fromBitmap(localBitmap);
      return localBitmapDescriptor;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public static BitmapDescriptor fromBitmap(Bitmap paramBitmap)
  {
    if (paramBitmap == null)
      return null;
    return new BitmapDescriptor(paramBitmap);
  }

  public static BitmapDescriptor fromFile(String paramString)
  {
    try
    {
      Context localContext = y.a;
      Object localObject = null;
      if (localContext != null)
      {
        FileInputStream localFileInputStream = localContext.openFileInput(paramString);
        Bitmap localBitmap = BitmapFactory.decodeStream(localFileInputStream);
        localFileInputStream.close();
        BitmapDescriptor localBitmapDescriptor = fromBitmap(localBitmap);
        localObject = localBitmapDescriptor;
      }
      return localObject;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public static BitmapDescriptor fromPath(String paramString)
  {
    try
    {
      BitmapDescriptor localBitmapDescriptor = fromBitmap(BitmapFactory.decodeFile(paramString));
      return localBitmapDescriptor;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public static BitmapDescriptor fromResource(int paramInt)
  {
    try
    {
      Context localContext = y.a;
      Object localObject = null;
      if (localContext != null)
      {
        BitmapDescriptor localBitmapDescriptor = fromBitmap(BitmapFactory.decodeStream(localContext.getResources().openRawResource(paramInt)));
        localObject = localBitmapDescriptor;
      }
      return localObject;
    }
    catch (Exception localException)
    {
    }
    return null;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.maps.model.BitmapDescriptorFactory
 * JD-Core Version:    0.6.0
 */