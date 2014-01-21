package com.amap.api.a;

import android.content.Context;
import android.graphics.Bitmap;
import android.location.Location;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.amap.api.a.b.g;
import com.amap.api.maps.model.BitmapDescriptor;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.amap.api.maps.model.LatLng;

class x extends LinearLayout
{
  Bitmap a;
  Bitmap b;
  Bitmap c;
  ImageView d;
  n e;
  boolean f = false;

  public x(Context paramContext, aa paramaa, n paramn)
  {
    super(paramContext);
    this.e = paramn;
    try
    {
      this.a = BitmapDescriptorFactory.fromAsset("location_selected.png").getBitmap();
      this.b = BitmapDescriptorFactory.fromAsset("location_pressed.png").getBitmap();
      this.a = g.a(this.a, k.a);
      this.b = g.a(this.b, k.a);
      this.c = BitmapDescriptorFactory.fromAsset("location_unselected.png").getBitmap();
      this.c = g.a(this.c, k.a);
      this.d = new ImageView(paramContext);
      this.d.setImageBitmap(this.a);
      this.d.setPadding(0, 0, -10, 0);
      this.d.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramView)
        {
        }
      });
      this.d.setOnTouchListener(new View.OnTouchListener()
      {
        public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
        {
          if (!x.this.f);
          while (true)
          {
            return false;
            if (paramMotionEvent.getAction() == 0)
            {
              x.this.d.setImageBitmap(x.this.b);
              return false;
            }
            if (paramMotionEvent.getAction() != 1)
              continue;
            try
            {
              x.this.d.setImageBitmap(x.this.a);
              x.this.e.f(true);
              Location localLocation = x.this.e.r();
              if (localLocation == null)
                continue;
              LatLng localLatLng = new LatLng(localLocation.getLatitude(), localLocation.getLongitude());
              x.this.e.a(localLocation);
              x.this.e.a(h.a(localLatLng, x.this.e.x()));
              return false;
            }
            catch (Exception localException)
            {
            }
          }
          return false;
        }
      });
      addView(this.d);
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
      this.c.recycle();
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
    this.f = paramBoolean;
    if (paramBoolean)
      this.d.setImageBitmap(this.a);
    while (true)
    {
      this.d.invalidate();
      return;
      this.d.setImageBitmap(this.c);
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.a.x
 * JD-Core Version:    0.6.0
 */