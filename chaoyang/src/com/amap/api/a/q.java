package com.amap.api.a;

import android.graphics.Rect;
import android.os.RemoteException;
import com.amap.api.maps.model.BitmapDescriptor;
import com.amap.api.maps.model.LatLng;
import com.autonavi.amap.mapcore.FPoint;
import javax.microedition.khronos.opengles.GL10;

public abstract interface q
{
  public abstract void a(LatLng paramLatLng);

  public abstract void a(String paramString);

  public abstract void a(GL10 paramGL10, n paramn);

  public abstract void a(boolean paramBoolean);

  public abstract boolean a()
    throws RemoteException;

  public abstract boolean a(q paramq);

  public abstract Rect b();

  public abstract void b(String paramString);

  public abstract void b(boolean paramBoolean);

  public abstract LatLng c();

  public abstract String d();

  public abstract FPoint e();

  public abstract String f();

  public abstract String g();

  public abstract BitmapDescriptor h();

  public abstract boolean i();

  public abstract void j();

  public abstract void k();

  public abstract boolean l();

  public abstract boolean m();

  public abstract void n();

  public abstract int o();
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.a.q
 * JD-Core Version:    0.6.0
 */