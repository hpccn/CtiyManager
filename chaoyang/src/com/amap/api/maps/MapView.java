package com.amap.api.maps;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.amap.api.a.n;
import com.amap.api.a.p;
import com.amap.api.a.y;
import com.amap.api.maps.model.RuntimeRemoteException;

public class MapView extends FrameLayout
{
  private p a;
  private AMap b;

  public MapView(Context paramContext)
  {
    super(paramContext);
    getMapFragmentDelegate().a((Activity)paramContext);
  }

  public MapView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    getMapFragmentDelegate().a((Activity)paramContext);
  }

  public MapView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    getMapFragmentDelegate().a((Activity)paramContext);
  }

  public MapView(Context paramContext, AMapOptions paramAMapOptions)
  {
    super(paramContext);
    getMapFragmentDelegate().a((Activity)paramContext);
    getMapFragmentDelegate().a(paramAMapOptions);
  }

  public AMap getMap()
  {
    p localp = getMapFragmentDelegate();
    if (localp == null);
    while (true)
    {
      return null;
      try
      {
        n localn = localp.a();
        if (localn == null)
          continue;
        if (this.b == null)
          this.b = new AMap(localn);
        return this.b;
      }
      catch (RemoteException localRemoteException)
      {
      }
    }
    throw new RuntimeRemoteException(localRemoteException);
  }

  protected p getMapFragmentDelegate()
  {
    if (this.a == null)
      this.a = new y();
    return this.a;
  }

  public final void onCreate(Bundle paramBundle)
  {
    try
    {
      addView(getMapFragmentDelegate().a(null, null, paramBundle));
      return;
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
    }
  }

  public final void onDestroy()
  {
    try
    {
      getMapFragmentDelegate().e();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
    }
  }

  public final void onLowMemory()
  {
    try
    {
      getMapFragmentDelegate().f();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
    }
  }

  public final void onPause()
  {
    try
    {
      getMapFragmentDelegate().c();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
    }
  }

  public final void onResume()
  {
    try
    {
      getMapFragmentDelegate().b();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
    }
  }

  public final void onSaveInstanceState(Bundle paramBundle)
  {
    try
    {
      getMapFragmentDelegate().b(paramBundle);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.maps.MapView
 * JD-Core Version:    0.6.0
 */