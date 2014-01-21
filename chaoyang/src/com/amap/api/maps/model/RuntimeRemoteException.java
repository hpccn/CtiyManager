package com.amap.api.maps.model;

import android.os.RemoteException;

public final class RuntimeRemoteException extends RuntimeException
{
  public RuntimeRemoteException(RemoteException paramRemoteException)
  {
    super(paramRemoteException);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.maps.model.RuntimeRemoteException
 * JD-Core Version:    0.6.0
 */