package com.autonavi.amap.mapcore;

import javax.microedition.khronos.opengles.GL10;

public abstract interface IMapCallback
{
  public abstract void OnMapDataRequired(MapCore paramMapCore, int paramInt, String[] paramArrayOfString);

  public abstract void OnMapDestory(GL10 paramGL10, MapCore paramMapCore);

  public abstract void OnMapLabelsRequired(MapCore paramMapCore, int[] paramArrayOfInt, int paramInt);

  public abstract void OnMapProcessEvent(MapCore paramMapCore);

  public abstract void OnMapReferencechanged(MapCore paramMapCore, String paramString1, String paramString2);

  public abstract void OnMapSufaceChanged(GL10 paramGL10, MapCore paramMapCore, int paramInt1, int paramInt2);

  public abstract void OnMapSurfaceCreate(GL10 paramGL10, MapCore paramMapCore);

  public abstract void OnMapSurfaceRenderer(GL10 paramGL10, MapCore paramMapCore, int paramInt);
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.autonavi.amap.mapcore.IMapCallback
 * JD-Core Version:    0.6.0
 */