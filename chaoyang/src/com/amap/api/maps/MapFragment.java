package com.amap.api.maps;

import android.app.Activity;
import android.app.Fragment;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.amap.api.a.n;
import com.amap.api.a.p;
import com.amap.api.a.y;
import com.amap.api.maps.model.RuntimeRemoteException;

public class MapFragment extends Fragment
{
  private AMap a;
  private p b;

  public static MapFragment newInstance()
  {
    return newInstance(new AMapOptions());
  }

  public static MapFragment newInstance(AMapOptions paramAMapOptions)
  {
    MapFragment localMapFragment = new MapFragment();
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("MapOptions", paramAMapOptions);
    localMapFragment.setArguments(localBundle);
    return localMapFragment;
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
        if (this.a == null)
          this.a = new AMap(localn);
        return this.a;
      }
      catch (RemoteException localRemoteException)
      {
      }
    }
    throw new RuntimeRemoteException(localRemoteException);
  }

  protected p getMapFragmentDelegate()
  {
    if (this.b == null)
      this.b = new y();
    this.b.a(getActivity());
    return this.b;
  }

  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    try
    {
      getMapFragmentDelegate().a(paramBundle);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
    }
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    if (paramBundle == null);
    try
    {
      paramBundle = getArguments();
      View localView = getMapFragmentDelegate().a(paramLayoutInflater, paramViewGroup, paramBundle);
      return localView;
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
    }
    return null;
  }

  public void onDestroy()
  {
    try
    {
      getMapFragmentDelegate().e();
      super.onDestroy();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      while (true)
        localRemoteException.printStackTrace();
    }
  }

  public void onDestroyView()
  {
    try
    {
      getMapFragmentDelegate().d();
      super.onDestroyView();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      while (true)
        localRemoteException.printStackTrace();
    }
  }

  public void onInflate(Activity paramActivity, AttributeSet paramAttributeSet, Bundle paramBundle)
  {
    super.onInflate(paramActivity, paramAttributeSet, paramBundle);
    try
    {
      getMapFragmentDelegate().a(paramActivity, new AMapOptions(), paramBundle);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
    }
  }

  public void onLowMemory()
  {
    super.onLowMemory();
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

  public void onPause()
  {
    super.onPause();
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

  public void onResume()
  {
    super.onResume();
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

  public void onSaveInstanceState(Bundle paramBundle)
  {
    try
    {
      getMapFragmentDelegate().b(paramBundle);
      super.onSaveInstanceState(paramBundle);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      while (true)
        localRemoteException.printStackTrace();
    }
  }

  public void setArguments(Bundle paramBundle)
  {
    super.setArguments(paramBundle);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.maps.MapFragment
 * JD-Core Version:    0.6.0
 */