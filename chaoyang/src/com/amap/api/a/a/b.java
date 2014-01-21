package com.amap.api.a.a;

import android.content.Context;
import android.util.FloatMath;
import android.view.MotionEvent;
import java.lang.reflect.Method;

public class b
{
  protected final Context a;
  protected Method b;
  protected Method c;
  protected Method d;
  protected Method e;
  private boolean f = false;
  private final a g;
  private long h = 0L;
  private boolean i = false;

  public b(Context paramContext, a parama)
  {
    this.a = paramContext;
    this.g = parama;
    d();
  }

  private void d()
  {
    try
    {
      this.b = MotionEvent.class.getMethod("getPointerCount", new Class[0]);
      Class[] arrayOfClass1 = new Class[1];
      arrayOfClass1[0] = Integer.TYPE;
      this.e = MotionEvent.class.getMethod("getPointerId", arrayOfClass1);
      Class[] arrayOfClass2 = new Class[1];
      arrayOfClass2[0] = Integer.TYPE;
      this.c = MotionEvent.class.getMethod("getX", arrayOfClass2);
      Class[] arrayOfClass3 = new Class[1];
      arrayOfClass3[0] = Integer.TYPE;
      this.d = MotionEvent.class.getMethod("getY", arrayOfClass3);
      this.f = true;
      return;
    }
    catch (Exception localException)
    {
      this.f = false;
    }
  }

  public boolean a()
  {
    return this.f;
  }

  public boolean a(MotionEvent paramMotionEvent)
  {
    if (!a())
      return false;
    int j = 0xFF & paramMotionEvent.getAction();
    try
    {
      if (((Integer)this.b.invoke(paramMotionEvent, new Object[0])).intValue() < 2)
        return false;
      Method localMethod1 = this.c;
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Integer.valueOf(0);
      Float localFloat1 = (Float)localMethod1.invoke(paramMotionEvent, arrayOfObject1);
      Method localMethod2 = this.c;
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(1);
      Float localFloat2 = (Float)localMethod2.invoke(paramMotionEvent, arrayOfObject2);
      Method localMethod3 = this.d;
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = Integer.valueOf(0);
      Float localFloat3 = (Float)localMethod3.invoke(paramMotionEvent, arrayOfObject3);
      Method localMethod4 = this.d;
      Object[] arrayOfObject4 = new Object[1];
      arrayOfObject4[0] = Integer.valueOf(1);
      Float localFloat4 = (Float)localMethod4.invoke(paramMotionEvent, arrayOfObject4);
      float f1 = FloatMath.sqrt((localFloat2.floatValue() - localFloat1.floatValue()) * (localFloat2.floatValue() - localFloat1.floatValue()) + (localFloat4.floatValue() - localFloat3.floatValue()) * (localFloat4.floatValue() - localFloat3.floatValue()));
      if (j == 5)
      {
        this.g.a(f1, localFloat1.floatValue(), localFloat3.floatValue(), localFloat2.floatValue(), localFloat4.floatValue());
        this.i = true;
        return true;
      }
      if (j == 6)
      {
        this.h = paramMotionEvent.getEventTime();
        if (!this.i)
          break label348;
        this.i = false;
        break label348;
      }
      if ((this.i) && (j == 2))
      {
        boolean bool = this.g.a(paramMotionEvent, localFloat1.floatValue(), localFloat3.floatValue(), localFloat2.floatValue(), localFloat4.floatValue());
        return bool;
      }
    }
    catch (Exception localException)
    {
    }
    return false;
    label348: return false;
  }

  public boolean b()
  {
    return this.i;
  }

  public long c()
  {
    return this.h;
  }

  public static abstract interface a
  {
    public abstract void a(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5);

    public abstract boolean a(MotionEvent paramMotionEvent, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.a.a.b
 * JD-Core Version:    0.6.0
 */