package com.cymobile.ymwork.search;

import java.util.List;

public abstract interface IJsonHandleObserver
{
  public abstract void notifyGetJsonError(int paramInt);

  public abstract void showJson(List<String> paramList);

  public abstract void startGetJson();
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.search.IJsonHandleObserver
 * JD-Core Version:    0.6.0
 */