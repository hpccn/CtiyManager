package com.amap.api.a;

import android.os.RemoteException;
import android.util.Log;
import com.amap.api.a.b.g;
import com.amap.api.maps.model.LatLng;
import com.autonavi.amap.mapcore.FPoint;
import com.autonavi.amap.mapcore.IPoint;
import com.autonavi.amap.mapcore.MapProjection;
import java.nio.FloatBuffer;
import javax.microedition.khronos.opengles.GL10;

class i
  implements o
{
  private static float n = 40075016.0F;
  private static int o = 256;
  private static int p = 20;
  private LatLng a = null;
  private double b = 0.0D;
  private float c = 10.0F;
  private int d = -16777216;
  private int e = 0;
  private float f = 0.0F;
  private boolean g = true;
  private String h;
  private n i;
  private FloatBuffer j;
  private FloatBuffer k;
  private int l = 0;
  private int m = 0;

  public i(n paramn)
  {
    this.i = paramn;
    try
    {
      this.h = b();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
    }
  }

  private float b(double paramDouble)
  {
    return (float)(Math.cos(3.141592653589793D * paramDouble / 180.0D) * n / (o << p));
  }

  private double c(double paramDouble)
  {
    return 1.0D / b(paramDouble);
  }

  public void a()
    throws RemoteException
  {
    this.i.a(b());
  }

  public void a(double paramDouble)
    throws RemoteException
  {
    this.b = paramDouble;
    g();
  }

  public void a(float paramFloat)
    throws RemoteException
  {
    this.f = paramFloat;
  }

  public void a(int paramInt)
    throws RemoteException
  {
    this.d = paramInt;
  }

  public void a(LatLng paramLatLng)
    throws RemoteException
  {
    this.a = paramLatLng;
    g();
  }

  public void a(GL10 paramGL10)
    throws RemoteException
  {
    if ((h() == null) || (this.b <= 0.0D) || (!d()));
    do
    {
      return;
      if ((this.j != null) && (this.k != null) && (this.l != 0) && (this.m != 0))
        continue;
      f();
    }
    while ((this.j == null) || (this.k == null) || (this.l <= 0) || (this.m <= 0));
    l.b(paramGL10, l(), k(), this.j, j(), this.k, this.l, this.m);
  }

  public void a(boolean paramBoolean)
    throws RemoteException
  {
    this.g = paramBoolean;
  }

  public boolean a(r paramr)
    throws RemoteException
  {
    return (equals(paramr)) || (paramr.b().equals(b()));
  }

  public String b()
    throws RemoteException
  {
    if (this.h == null)
      this.h = m.a("Circle");
    return this.h;
  }

  public void b(float paramFloat)
    throws RemoteException
  {
    this.c = paramFloat;
  }

  public void b(int paramInt)
    throws RemoteException
  {
    this.e = paramInt;
  }

  public float c()
    throws RemoteException
  {
    return this.f;
  }

  public boolean d()
    throws RemoteException
  {
    return this.g;
  }

  public int e()
    throws RemoteException
  {
    return 0;
  }

  public void f()
    throws RemoteException
  {
    LatLng localLatLng = h();
    if (localLatLng != null)
    {
      FPoint[] arrayOfFPoint1 = new FPoint[360];
      float[] arrayOfFloat1 = new float[3 * arrayOfFPoint1.length];
      double d1 = c(h().latitude) * i();
      IPoint localIPoint = new IPoint();
      MapProjection localMapProjection = this.i.b();
      MapProjection.lonlat2Geo(localLatLng.longitude, localLatLng.latitude, localIPoint);
      for (int i1 = 0; i1 < 360; i1++)
      {
        double d2 = 3.141592653589793D * i1 / 180.0D;
        double d3 = d1 * Math.sin(d2);
        double d4 = d1 * Math.cos(d2);
        int i5 = (int)(d3 + localIPoint.x);
        int i6 = (int)(d4 + localIPoint.y);
        FPoint localFPoint2 = new FPoint();
        localMapProjection.geo2Map(i5, i6, localFPoint2);
        arrayOfFPoint1[i1] = localFPoint2;
        arrayOfFloat1[(i1 * 3)] = arrayOfFPoint1[i1].x;
        arrayOfFloat1[(1 + i1 * 3)] = arrayOfFPoint1[i1].y;
        arrayOfFloat1[(2 + i1 * 3)] = 0.0F;
      }
      FPoint[] arrayOfFPoint2 = ag.a(arrayOfFPoint1);
      int i2 = 0;
      float[] arrayOfFloat2 = new float[3 * arrayOfFPoint2.length];
      int i3 = arrayOfFPoint2.length;
      for (int i4 = 0; i4 < i3; i4++)
      {
        FPoint localFPoint1 = arrayOfFPoint2[i4];
        arrayOfFloat2[(i2 * 3)] = localFPoint1.x;
        arrayOfFloat2[(1 + i2 * 3)] = localFPoint1.y;
        arrayOfFloat2[(2 + i2 * 3)] = 0.0F;
        i2++;
      }
      this.l = arrayOfFPoint1.length;
      this.m = arrayOfFPoint2.length;
      this.j = g.a(arrayOfFloat1);
      this.k = g.a(arrayOfFloat2);
    }
  }

  void g()
  {
    this.l = 0;
    this.m = 0;
    if (this.j != null)
      this.j.clear();
    if (this.k != null)
      this.k.clear();
  }

  public LatLng h()
    throws RemoteException
  {
    return this.a;
  }

  public double i()
    throws RemoteException
  {
    return this.b;
  }

  public float j()
    throws RemoteException
  {
    return this.c;
  }

  public int k()
    throws RemoteException
  {
    return this.d;
  }

  public int l()
    throws RemoteException
  {
    return this.e;
  }

  public void m()
  {
    try
    {
      this.a = null;
      if (this.j != null)
      {
        this.j.clear();
        this.j = null;
      }
      if (this.k != null)
      {
        this.k.clear();
        this.j = null;
      }
      return;
    }
    catch (Exception localException)
    {
      Log.d("destroy erro", "CircleDelegateImp destroy");
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.a.i
 * JD-Core Version:    0.6.0
 */