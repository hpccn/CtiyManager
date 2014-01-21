package com.amap.api.a;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.amap.api.maps.AMapOptions;

public abstract interface p
{
  public abstract View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
    throws RemoteException;

  public abstract n a()
    throws RemoteException;

  public abstract void a(Activity paramActivity);

  public abstract void a(Activity paramActivity, AMapOptions paramAMapOptions, Bundle paramBundle)
    throws RemoteException;

  public abstract void a(Bundle paramBundle)
    throws RemoteException;

  public abstract void a(AMapOptions paramAMapOptions);

  public abstract void b()
    throws RemoteException;

  public abstract void b(Bundle paramBundle)
    throws RemoteException;

  public abstract void c()
    throws RemoteException;

  public abstract void d()
    throws RemoteException;

  public abstract void e()
    throws RemoteException;

  public abstract void f()
    throws RemoteException;
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.a.p
 * JD-Core Version:    0.6.0
 */