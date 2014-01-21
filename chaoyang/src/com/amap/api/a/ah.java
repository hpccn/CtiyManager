package com.amap.api.a;

import android.os.RemoteException;
import android.util.Log;
import com.amap.api.a.b.g;
import com.amap.api.maps.model.LatLng;
import com.autonavi.amap.mapcore.DPoint;
import com.autonavi.amap.mapcore.FPoint;
import com.autonavi.amap.mapcore.IPoint;
import java.nio.FloatBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.microedition.khronos.opengles.GL10;

class ah
  implements t
{
  private n a;
  private float b = 10.0F;
  private int c = -16777216;
  private float d = 0.0F;
  private boolean e = true;
  private String f;
  private List<IPoint> g = new ArrayList();
  private FloatBuffer h;
  private int i = 0;

  public ah(n paramn)
  {
    this.a = paramn;
    try
    {
      this.f = b();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
    }
  }

  public void a()
    throws RemoteException
  {
    this.a.a(b());
  }

  public void a(float paramFloat)
    throws RemoteException
  {
    this.d = paramFloat;
  }

  public void a(int paramInt)
    throws RemoteException
  {
    this.c = paramInt;
  }

  public void a(List<LatLng> paramList)
    throws RemoteException
  {
    b(paramList);
  }

  public void a(GL10 paramGL10)
    throws RemoteException
  {
    if ((i() == null) || (i().size() == 0));
    do
    {
      return;
      if ((this.h != null) && (this.i != 0))
        continue;
      f();
    }
    while ((this.h == null) || (this.i <= 0));
    l.a(paramGL10, 3, h(), this.h, g(), this.i);
  }

  public void a(boolean paramBoolean)
    throws RemoteException
  {
    this.e = paramBoolean;
  }

  public boolean a(r paramr)
    throws RemoteException
  {
    return (equals(paramr)) || (paramr.b().equals(b()));
  }

  public String b()
    throws RemoteException
  {
    if (this.f == null)
      this.f = m.a("Polyline");
    return this.f;
  }

  public void b(float paramFloat)
    throws RemoteException
  {
    this.b = paramFloat;
  }

  void b(List<LatLng> paramList)
    throws RemoteException
  {
    this.g.clear();
    if (paramList != null)
    {
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        LatLng localLatLng = (LatLng)localIterator.next();
        IPoint localIPoint = new IPoint();
        this.a.a(localLatLng.latitude, localLatLng.longitude, localIPoint);
        this.g.add(localIPoint);
      }
    }
    if (this.h != null)
      this.h.clear();
    this.i = 0;
  }

  public float c()
    throws RemoteException
  {
    return this.d;
  }

  public boolean d()
    throws RemoteException
  {
    return this.e;
  }

  public int e()
    throws RemoteException
  {
    return super.hashCode();
  }

  public void f()
    throws RemoteException
  {
    if ((this.g == null) || (this.g.size() == 0))
      return;
    float[] arrayOfFloat = new float[3 * this.g.size()];
    FPoint localFPoint = new FPoint();
    Iterator localIterator = this.g.iterator();
    for (int j = 0; localIterator.hasNext(); j++)
    {
      IPoint localIPoint = (IPoint)localIterator.next();
      this.a.a(localIPoint.y, localIPoint.x, localFPoint);
      arrayOfFloat[(j * 3)] = localFPoint.x;
      arrayOfFloat[(1 + j * 3)] = localFPoint.y;
      arrayOfFloat[(2 + j * 3)] = 0.0F;
    }
    this.h = g.a(arrayOfFloat);
    this.i = this.g.size();
  }

  public float g()
    throws RemoteException
  {
    return this.b;
  }

  public int h()
    throws RemoteException
  {
    return this.c;
  }

  public List<LatLng> i()
    throws RemoteException
  {
    return j();
  }

  List<LatLng> j()
    throws RemoteException
  {
    if (this.g != null)
    {
      ArrayList localArrayList = new ArrayList();
      Iterator localIterator = this.g.iterator();
      while (localIterator.hasNext())
      {
        IPoint localIPoint = (IPoint)localIterator.next();
        if (localIPoint == null)
          continue;
        DPoint localDPoint = new DPoint();
        this.a.b(localIPoint.x, localIPoint.y, localDPoint);
        localArrayList.add(new LatLng(localDPoint.y, localDPoint.x));
      }
      return localArrayList;
    }
    return null;
  }

  public void m()
  {
    try
    {
      if (this.h != null)
      {
        this.h.clear();
        this.h = null;
      }
      return;
    }
    catch (Exception localException)
    {
      Log.d("destroy erro", "PolylineDelegateImp destroy");
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.a.ah
 * JD-Core Version:    0.6.0
 */