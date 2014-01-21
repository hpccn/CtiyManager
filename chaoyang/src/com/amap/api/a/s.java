package com.amap.api.a;

import android.os.RemoteException;
import com.amap.api.maps.model.LatLng;
import java.util.List;

public abstract interface s extends r
{
  public abstract void a(int paramInt)
    throws RemoteException;

  public abstract void a(List<LatLng> paramList)
    throws RemoteException;

  public abstract void b(float paramFloat)
    throws RemoteException;

  public abstract void b(int paramInt)
    throws RemoteException;

  public abstract float g()
    throws RemoteException;

  public abstract int h()
    throws RemoteException;

  public abstract List<LatLng> i()
    throws RemoteException;

  public abstract int j()
    throws RemoteException;
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.a.s
 * JD-Core Version:    0.6.0
 */