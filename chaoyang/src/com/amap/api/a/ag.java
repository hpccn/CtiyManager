package com.amap.api.a;

import android.os.RemoteException;
import android.util.Log;
import com.amap.api.a.b.f;
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

class ag
  implements s
{
  private static float m = 1.0E+10F;
  private n a;
  private float b = 0.0F;
  private boolean c = true;
  private String d;
  private float e;
  private int f;
  private int g;
  private List<IPoint> h = new ArrayList();
  private FloatBuffer i;
  private FloatBuffer j;
  private int k = 0;
  private int l = 0;

  public ag(n paramn)
  {
    this.a = paramn;
    try
    {
      this.d = b();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
    }
  }

  static FPoint[] a(FPoint[] paramArrayOfFPoint)
  {
    int n = paramArrayOfFPoint.length;
    FPoint[] arrayOfFPoint1 = new FPoint[n];
    for (int i1 = 0; i1 < n; i1++)
      arrayOfFPoint1[i1] = new FPoint(paramArrayOfFPoint[i1].x * m, paramArrayOfFPoint[i1].y * m);
    ArrayList localArrayList = new ArrayList();
    f.a(arrayOfFPoint1, localArrayList);
    int i2 = localArrayList.size();
    FPoint[] arrayOfFPoint2 = new FPoint[i2];
    for (int i3 = 0; i3 < i2; i3++)
    {
      arrayOfFPoint2[i3] = new FPoint();
      arrayOfFPoint2[i3].x = (((FPoint)localArrayList.get(i3)).x / m);
      arrayOfFPoint2[i3].y = (((FPoint)localArrayList.get(i3)).y / m);
    }
    return arrayOfFPoint2;
  }

  public void a()
    throws RemoteException
  {
    this.a.a(b());
  }

  public void a(float paramFloat)
    throws RemoteException
  {
    this.b = paramFloat;
  }

  public void a(int paramInt)
    throws RemoteException
  {
    this.f = paramInt;
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
      if ((this.i != null) && (this.j != null) && (this.k != 0) && (this.l != 0))
        continue;
      f();
    }
    while ((this.i == null) || (this.j == null) || (this.k <= 0) || (this.l <= 0));
    l.a(paramGL10, h(), j(), this.i, g(), this.j, this.k, this.l);
  }

  public void a(boolean paramBoolean)
    throws RemoteException
  {
    this.c = paramBoolean;
  }

  public boolean a(r paramr)
    throws RemoteException
  {
    return (equals(paramr)) || (paramr.b().equals(b()));
  }

  public String b()
    throws RemoteException
  {
    if (this.d == null)
      this.d = m.a("Polygon");
    return this.d;
  }

  public void b(float paramFloat)
    throws RemoteException
  {
    this.e = paramFloat;
  }

  public void b(int paramInt)
    throws RemoteException
  {
    this.g = paramInt;
  }

  void b(List<LatLng> paramList)
    throws RemoteException
  {
    this.h.clear();
    if (paramList != null)
    {
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        LatLng localLatLng = (LatLng)localIterator.next();
        IPoint localIPoint = new IPoint();
        this.a.a(localLatLng.latitude, localLatLng.longitude, localIPoint);
        this.h.add(localIPoint);
      }
    }
    if (this.i != null)
      this.i.clear();
    if (this.j != null)
      this.j.clear();
    this.k = 0;
    this.l = 0;
  }

  public float c()
    throws RemoteException
  {
    return this.b;
  }

  public boolean d()
    throws RemoteException
  {
    return this.c;
  }

  public int e()
    throws RemoteException
  {
    return super.hashCode();
  }

  public void f()
    throws RemoteException
  {
    int n = 0;
    if ((this.h == null) || (this.h.size() == 0))
      return;
    FPoint[] arrayOfFPoint1 = new FPoint[this.h.size()];
    float[] arrayOfFloat1 = new float[3 * this.h.size()];
    Iterator localIterator = this.h.iterator();
    for (int i1 = 0; localIterator.hasNext(); i1++)
    {
      IPoint localIPoint = (IPoint)localIterator.next();
      arrayOfFPoint1[i1] = new FPoint();
      this.a.a(localIPoint.y, localIPoint.x, arrayOfFPoint1[i1]);
      arrayOfFloat1[(i1 * 3)] = arrayOfFPoint1[i1].x;
      arrayOfFloat1[(1 + i1 * 3)] = arrayOfFPoint1[i1].y;
      arrayOfFloat1[(2 + i1 * 3)] = 0.0F;
    }
    FPoint[] arrayOfFPoint2 = a(arrayOfFPoint1);
    if (arrayOfFPoint2.length == 0)
    {
      if (m != 1.0E+10F)
        break label268;
      m = 1.0E+08F;
    }
    float[] arrayOfFloat2;
    while (true)
    {
      arrayOfFPoint2 = a(arrayOfFPoint1);
      arrayOfFloat2 = new float[3 * arrayOfFPoint2.length];
      int i2 = arrayOfFPoint2.length;
      int i3 = 0;
      while (n < i2)
      {
        FPoint localFPoint = arrayOfFPoint2[n];
        arrayOfFloat2[(i3 * 3)] = localFPoint.x;
        arrayOfFloat2[(1 + i3 * 3)] = localFPoint.y;
        arrayOfFloat2[(2 + i3 * 3)] = 0.0F;
        i3++;
        n++;
      }
      label268: m = 1.0E+10F;
    }
    this.k = arrayOfFPoint1.length;
    this.l = arrayOfFPoint2.length;
    this.i = g.a(arrayOfFloat1);
    this.j = g.a(arrayOfFloat2);
  }

  public float g()
    throws RemoteException
  {
    return this.e;
  }

  public int h()
    throws RemoteException
  {
    return this.f;
  }

  public List<LatLng> i()
    throws RemoteException
  {
    return k();
  }

  public int j()
    throws RemoteException
  {
    return this.g;
  }

  List<LatLng> k()
    throws RemoteException
  {
    if (this.h != null)
    {
      ArrayList localArrayList = new ArrayList();
      Iterator localIterator = this.h.iterator();
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
      if (this.i != null)
      {
        this.i.clear();
        this.i = null;
      }
      if (this.j != null)
        this.j = null;
      return;
    }
    catch (Exception localException)
    {
      Log.d("destroy erro", "PolygonDelegateImp destroy");
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.a.ag
 * JD-Core Version:    0.6.0
 */