package com.amap.api.a.a;

import android.content.Context;
import android.view.MotionEvent;

public abstract class a
{
  protected final Context a;
  protected boolean b;
  protected MotionEvent c;
  protected MotionEvent d;
  protected float e;
  protected float f;
  protected long g;

  public a(Context paramContext)
  {
    this.a = paramContext;
  }

  protected void a()
  {
    if (this.c != null)
    {
      this.c.recycle();
      this.c = null;
    }
    if (this.d != null)
    {
      this.d.recycle();
      this.d = null;
    }
    this.b = false;
  }

  protected abstract void a(int paramInt, MotionEvent paramMotionEvent);

  public boolean a(MotionEvent paramMotionEvent)
  {
    int i = 0xFF & paramMotionEvent.getAction();
    if (!this.b)
      a(i, paramMotionEvent);
    while (true)
    {
      return true;
      b(i, paramMotionEvent);
    }
  }

  protected abstract void b(int paramInt, MotionEvent paramMotionEvent);

  protected void b(MotionEvent paramMotionEvent)
  {
    MotionEvent localMotionEvent = this.c;
    if (this.d != null)
    {
      this.d.recycle();
      this.d = null;
    }
    this.d = MotionEvent.obtain(paramMotionEvent);
    this.g = (paramMotionEvent.getEventTime() - localMotionEvent.getEventTime());
    this.e = paramMotionEvent.getPressure(c(paramMotionEvent));
    this.f = localMotionEvent.getPressure(c(localMotionEvent));
  }

  public final int c(MotionEvent paramMotionEvent)
  {
    return (0xFF00 & paramMotionEvent.getAction()) >> 8;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.a.a.a
 * JD-Core Version:    0.6.0
 */