package com.amap.api.a;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.view.View;
import com.amap.api.a.b.g;
import java.io.IOException;
import java.io.InputStream;

class al extends View
{
  private Bitmap a;
  private Bitmap b;
  private Paint c = new Paint();
  private boolean d = false;
  private int e = 0;

  public al(Context paramContext)
  {
    super(paramContext);
    AssetManager localAssetManager = paramContext.getResources().getAssets();
    try
    {
      InputStream localInputStream1 = localAssetManager.open("ap.data");
      this.a = BitmapFactory.decodeStream(localInputStream1);
      this.a = g.a(this.a, k.a);
      localInputStream1.close();
      InputStream localInputStream2 = localAssetManager.open("ap1.data");
      this.b = BitmapFactory.decodeStream(localInputStream2);
      this.b = g.a(this.b, k.a);
      localInputStream2.close();
      this.e = this.b.getHeight();
      this.c.setAntiAlias(true);
      this.c.setColor(-16777216);
      this.c.setStyle(Paint.Style.STROKE);
      return;
    }
    catch (IOException localIOException)
    {
      while (true)
        localIOException.printStackTrace();
    }
  }

  public void a()
  {
    try
    {
      this.a.recycle();
      this.b.recycle();
      this.a = null;
      this.b = null;
      this.c = null;
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public void a(boolean paramBoolean)
  {
    this.d = paramBoolean;
    invalidate();
  }

  public Bitmap b()
  {
    if (this.d)
      return this.b;
    return this.a;
  }

  public int c()
  {
    return -10 + (getHeight() - this.e);
  }

  public void onDraw(Canvas paramCanvas)
  {
    paramCanvas.drawBitmap(b(), 10.0F, -10 + (getHeight() - this.e), this.c);
    paramCanvas.drawText("V2.0.1", 3 + (10 + this.b.getWidth()), -10 + getHeight(), this.c);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.a.al
 * JD-Core Version:    0.6.0
 */