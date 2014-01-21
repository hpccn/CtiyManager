package com.amap.api.a;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.amap.api.a.b.g;
import com.amap.api.maps.model.BitmapDescriptor;
import com.amap.api.maps.model.BitmapDescriptorFactory;

class am extends LinearLayout
{
  private Bitmap a;
  private Bitmap b;
  private Bitmap c;
  private Bitmap d;
  private Bitmap e;
  private Bitmap f;
  private ImageView g;
  private ImageView h;
  private n i;

  public am(Context paramContext, aa paramaa, n paramn)
  {
    super(paramContext);
    this.i = paramn;
    try
    {
      this.a = BitmapDescriptorFactory.fromAsset("zoomin_selected.png").getBitmap();
      this.a = g.a(this.a, k.a);
      this.b = BitmapDescriptorFactory.fromAsset("zoomin_unselected.png").getBitmap();
      this.b = g.a(this.b, k.a);
      this.c = BitmapDescriptorFactory.fromAsset("zoomout_selected.png").getBitmap();
      this.c = g.a(this.c, k.a);
      this.d = BitmapDescriptorFactory.fromAsset("zoomout_unselected.png").getBitmap();
      this.d = g.a(this.d, k.a);
      this.e = BitmapDescriptorFactory.fromAsset("zoomin_pressed.png").getBitmap();
      this.f = BitmapDescriptorFactory.fromAsset("zoomout_pressed.png").getBitmap();
      this.e = g.a(this.e, k.a);
      this.f = g.a(this.f, k.a);
      this.g = new ImageView(paramContext);
      this.g.setImageBitmap(this.a);
      this.g.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramView)
        {
        }
      });
      this.h = new ImageView(paramContext);
      this.h.setImageBitmap(this.c);
      this.h.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramView)
        {
        }
      });
      this.g.setOnTouchListener(new View.OnTouchListener()
      {
        public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
        {
          if (am.a(am.this).x() >= am.a(am.this).k());
          do
          {
            return false;
            if (paramMotionEvent.getAction() != 0)
              continue;
            am.c(am.this).setImageBitmap(am.b(am.this));
            return false;
          }
          while (paramMotionEvent.getAction() != 1);
          am.c(am.this).setImageBitmap(am.d(am.this));
          try
          {
            am.a(am.this).b(h.b());
            return false;
          }
          catch (RemoteException localRemoteException)
          {
            localRemoteException.printStackTrace();
          }
          return false;
        }
      });
      this.h.setOnTouchListener(new View.OnTouchListener()
      {
        public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
        {
          if (am.a(am.this).x() <= am.a(am.this).l());
          do
          {
            return false;
            if (paramMotionEvent.getAction() != 0)
              continue;
            am.f(am.this).setImageBitmap(am.e(am.this));
            return false;
          }
          while (paramMotionEvent.getAction() != 1);
          am.f(am.this).setImageBitmap(am.g(am.this));
          try
          {
            am.a(am.this).b(h.c());
            return false;
          }
          catch (RemoteException localRemoteException)
          {
            localRemoteException.printStackTrace();
          }
          return false;
        }
      });
      int k = 25;
      int m = 13;
      if (k.a < 0.6D)
      {
        k = 20;
        m = j;
        j = 0;
      }
      this.g.setPadding(0, 0, -j, m + -this.a.getHeight() / 2);
      this.h.setPadding(0, 0, -j, -k);
      setOrientation(1);
      addView(this.g);
      addView(this.h);
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
      this.d.recycle();
      this.e.recycle();
      this.f.recycle();
      this.a = null;
      this.b = null;
      this.c = null;
      this.d = null;
      this.e = null;
      this.f = null;
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public void a(float paramFloat)
  {
    if ((paramFloat < this.i.k()) && (paramFloat > this.i.l()))
    {
      this.g.setImageBitmap(this.a);
      this.h.setImageBitmap(this.c);
    }
    do
    {
      return;
      if (paramFloat != this.i.l())
        continue;
      this.h.setImageBitmap(this.d);
      this.g.setImageBitmap(this.a);
      return;
    }
    while (paramFloat != this.i.k());
    this.g.setImageBitmap(this.b);
    this.h.setImageBitmap(this.c);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.a.am
 * JD-Core Version:    0.6.0
 */