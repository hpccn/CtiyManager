package com.amap.api.a;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import com.amap.api.a.b.g;
import com.amap.api.maps.model.BitmapDescriptor;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.amap.api.maps.model.CameraPosition;
import com.autonavi.amap.mapcore.MapProjection;

class j extends LinearLayout
{
  Bitmap a;
  Bitmap b;
  ImageView c;
  aa d;
  n e;

  public j(Context paramContext, aa paramaa, n paramn)
  {
    super(paramContext);
    this.d = paramaa;
    this.e = paramn;
    try
    {
      Bitmap localBitmap1 = BitmapDescriptorFactory.fromAsset("maps_dav_compass_needle_large.png").getBitmap();
      this.b = g.a(localBitmap1, 0.8F * k.a);
      Bitmap localBitmap2 = g.a(localBitmap1, 0.7F * k.a);
      this.a = Bitmap.createBitmap(this.b.getWidth(), this.b.getHeight(), Bitmap.Config.ARGB_8888);
      Canvas localCanvas = new Canvas(this.a);
      Paint localPaint = new Paint();
      localPaint.setAntiAlias(true);
      localPaint.setFilterBitmap(true);
      localCanvas.drawBitmap(localBitmap2, (this.b.getWidth() - localBitmap2.getWidth()) / 2, (this.b.getHeight() - localBitmap2.getHeight()) / 2, localPaint);
      this.c = new ImageView(paramContext);
      this.c.setScaleType(ImageView.ScaleType.MATRIX);
      this.c.setImageBitmap(this.a);
      b();
      this.c.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramView)
        {
        }
      });
      this.c.setOnTouchListener(new View.OnTouchListener()
      {
        public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
        {
          if (paramMotionEvent.getAction() == 0)
            j.this.c.setImageBitmap(j.this.b);
          while (true)
          {
            return false;
            if (paramMotionEvent.getAction() != 1)
              continue;
            try
            {
              j.this.c.setImageBitmap(j.this.a);
              CameraPosition localCameraPosition = j.this.e.j();
              j.this.e.b(h.a(new CameraPosition(localCameraPosition.target, localCameraPosition.zoom, 0.0F, 0.0F)));
            }
            catch (Exception localException)
            {
              localException.printStackTrace();
            }
          }
        }
      });
      addView(this.c);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
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
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public void b()
  {
    MapProjection localMapProjection = this.e.b();
    float f1 = localMapProjection.getMapAngle();
    float f2 = localMapProjection.getCameraHeaderAngle();
    Matrix localMatrix = new Matrix();
    localMatrix.postRotate(-f1, this.c.getDrawable().getBounds().width() / 2, this.c.getDrawable().getBounds().height() / 2);
    localMatrix.postScale(1.0F, (float)Math.cos(3.141592653589793D * f2 / 180.0D), this.c.getDrawable().getBounds().width() / 2, this.c.getDrawable().getBounds().height() / 2);
    this.c.setImageMatrix(localMatrix);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.a.j
 * JD-Core Version:    0.6.0
 */