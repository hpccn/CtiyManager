package com.amap.api.maps.model;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Parcel;
import android.os.Parcelable;
import com.amap.api.a.b.g;

public final class BitmapDescriptor
  implements Parcelable
{
  public static final BitmapDescriptorFactory CREATOR = new BitmapDescriptorFactory();
  int a = 0;
  int b = 0;
  Bitmap c;

  BitmapDescriptor(Bitmap paramBitmap)
  {
    if (paramBitmap != null)
    {
      this.a = paramBitmap.getWidth();
      this.b = paramBitmap.getHeight();
      this.c = a(paramBitmap, g.a(this.a), g.a(this.b));
      paramBitmap.recycle();
    }
  }

  private Bitmap a(Bitmap paramBitmap, int paramInt1, int paramInt2)
  {
    if (paramBitmap.hasAlpha());
    for (Bitmap.Config localConfig = Bitmap.Config.ARGB_8888; ; localConfig = Bitmap.Config.RGB_565)
    {
      Bitmap localBitmap = Bitmap.createBitmap(paramInt1, paramInt2, localConfig);
      Canvas localCanvas = new Canvas(localBitmap);
      Paint localPaint = new Paint();
      localPaint.setAntiAlias(true);
      localPaint.setFilterBitmap(true);
      localCanvas.drawBitmap(paramBitmap, 0.0F, 0.0F, localPaint);
      return localBitmap;
    }
  }

  public int describeContents()
  {
    return 0;
  }

  protected void destory()
  {
    try
    {
      this.c.recycle();
      this.c = null;
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public Bitmap getBitmap()
  {
    return this.c;
  }

  public int getHeight()
  {
    return this.b;
  }

  public int getWidth()
  {
    return this.a;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(this.c, paramInt);
    paramParcel.writeInt(this.a);
    paramParcel.writeInt(this.b);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.maps.model.BitmapDescriptor
 * JD-Core Version:    0.6.0
 */