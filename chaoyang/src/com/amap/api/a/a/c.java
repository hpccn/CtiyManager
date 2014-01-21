package com.amap.api.a.a;

import android.content.Context;
import android.view.MotionEvent;

public class c extends d
{
  private final a l;
  private boolean m;

  public c(Context paramContext, a parama)
  {
    super(paramContext);
    this.l = parama;
  }

  protected void a()
  {
    super.a();
    this.m = false;
  }

  protected void a(int paramInt, MotionEvent paramMotionEvent)
  {
    switch (paramInt)
    {
    case 3:
    case 4:
    default:
    case 5:
    case 2:
    case 6:
    }
    do
    {
      do
      {
        do
        {
          do
          {
            return;
            a();
            this.c = MotionEvent.obtain(paramMotionEvent);
            this.g = 0L;
            b(paramMotionEvent);
            this.m = d(paramMotionEvent);
          }
          while (this.m);
          this.b = this.l.b(this);
          return;
        }
        while (!this.m);
        this.m = d(paramMotionEvent);
      }
      while (this.m);
      this.b = this.l.b(this);
      return;
    }
    while (this.m);
  }

  public float b()
  {
    return (float)(180.0D * (Math.atan2(this.i, this.h) - Math.atan2(this.k, this.j)) / 3.141592653589793D);
  }

  protected void b(int paramInt, MotionEvent paramMotionEvent)
  {
    switch (paramInt)
    {
    case 4:
    case 5:
    default:
    case 6:
    case 3:
    case 2:
    }
    do
    {
      return;
      b(paramMotionEvent);
      if (!this.m)
        this.l.c(this);
      a();
      return;
      if (!this.m)
        this.l.c(this);
      a();
      return;
      b(paramMotionEvent);
    }
    while ((this.e / this.f <= 0.67F) || (!this.l.a(this)));
    this.c.recycle();
    this.c = MotionEvent.obtain(paramMotionEvent);
  }

  public static abstract interface a
  {
    public abstract boolean a(c paramc);

    public abstract boolean b(c paramc);

    public abstract void c(c paramc);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.a.a.c
 * JD-Core Version:    0.6.0
 */