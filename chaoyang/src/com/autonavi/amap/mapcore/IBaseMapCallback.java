package com.autonavi.amap.mapcore;

import android.content.Context;

public abstract interface IBaseMapCallback
{
  public abstract void OnMapLoaderError(int paramInt);

  public abstract Context getContext();

  public abstract String getMapSvrAddress();

  public abstract boolean isMapEngineValid();
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.autonavi.amap.mapcore.IBaseMapCallback
 * JD-Core Version:    0.6.0
 */