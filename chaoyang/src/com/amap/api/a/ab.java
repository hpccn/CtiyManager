package com.amap.api.a;

import android.content.Context;
import android.graphics.Rect;
import android.os.Handler;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import com.amap.api.maps.model.BitmapDescriptor;
import com.autonavi.amap.mapcore.IPoint;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import javax.microedition.khronos.opengles.GL10;

class ab extends View
{
  private n a;
  private CopyOnWriteArrayList<q> b = new CopyOnWriteArrayList();
  private IPoint c;
  private q d;
  private final Handler e = new Handler();

  public ab(Context paramContext, AttributeSet paramAttributeSet, n paramn)
  {
    super(paramContext, paramAttributeSet);
    this.a = paramn;
  }

  private void e()
  {
    Iterator localIterator = this.b.iterator();
    while (localIterator.hasNext())
    {
      q localq = (q)localIterator.next();
      if ((this.d == null) || (!this.d.d().equals(localq.d())))
        continue;
      Rect localRect = localq.b();
      this.c = new IPoint(localRect.left + localq.h().getWidth() / 2, localRect.top);
      this.a.i();
    }
  }

  public n a()
  {
    return this.a;
  }

  public q a(MotionEvent paramMotionEvent)
  {
    for (int i = -1 + this.b.size(); i >= 0; i--)
    {
      q localq = (q)this.b.get(i);
      if (a(localq.b(), (int)paramMotionEvent.getX(), (int)paramMotionEvent.getY()))
        return localq;
    }
    return null;
  }

  public q a(String paramString)
    throws RemoteException
  {
    Iterator localIterator = this.b.iterator();
    while (localIterator.hasNext())
    {
      q localq = (q)localIterator.next();
      if ((localq != null) && (localq.d().equals(paramString)))
        return localq;
    }
    return null;
  }

  public void a(q paramq)
  {
    e(paramq);
    b(paramq);
    this.b.add(paramq);
  }

  public void a(GL10 paramGL10)
  {
    this.e.postDelayed(new Runnable()
    {
      public void run()
      {
        ab.a(ab.this);
      }
    }
    , 0L);
    Iterator localIterator = this.b.iterator();
    while (localIterator.hasNext())
      ((q)localIterator.next()).a(paramGL10, this.a);
  }

  public boolean a(Rect paramRect, int paramInt1, int paramInt2)
  {
    return paramRect.contains(paramInt1, paramInt2);
  }

  public void b()
  {
    this.b.clear();
  }

  public boolean b(MotionEvent paramMotionEvent)
  {
    for (int i = -1 + this.b.size(); i >= 0; i--)
    {
      q localq = (q)this.b.get(i);
      Rect localRect = localq.b();
      boolean bool = a(localRect, (int)paramMotionEvent.getX(), (int)paramMotionEvent.getY());
      if (!bool)
        continue;
      this.c = new IPoint(localRect.left + localq.h().getWidth() / 2, localRect.top);
      this.d = localq;
      return bool;
    }
    return false;
  }

  public boolean b(q paramq)
  {
    return this.b.remove(paramq);
  }

  public q c()
  {
    return this.d;
  }

  public void c(q paramq)
  {
    int i = this.b.indexOf(paramq);
    int j = -1 + this.b.size();
    this.b.set(i, this.b.get(j));
    this.b.set(j, paramq);
  }

  public void d()
  {
    try
    {
      Iterator localIterator = this.b.iterator();
      while (localIterator.hasNext())
        ((q)localIterator.next()).n();
    }
    catch (Exception localException)
    {
      Log.d("amapApi", "MapOverlayImageView clear erro" + localException.getMessage());
      return;
    }
    b();
  }

  public void d(q paramq)
  {
    if (this.c == null)
      this.c = new IPoint();
    Rect localRect = paramq.b();
    this.c = new IPoint(localRect.left + paramq.h().getWidth() / 2, localRect.top);
    this.d = paramq;
    try
    {
      this.a.a(c());
      return;
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
    }
  }

  public void e(q paramq)
  {
    if (f(paramq))
    {
      this.a.w();
      this.d = null;
    }
  }

  public boolean f(q paramq)
  {
    return this.a.b(paramq);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.a.ab
 * JD-Core Version:    0.6.0
 */