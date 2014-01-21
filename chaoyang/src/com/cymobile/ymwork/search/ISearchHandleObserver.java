package com.cymobile.ymwork.search;

import com.cymobile.ymwork.types.Building;
import java.util.List;

public abstract interface ISearchHandleObserver
{
  public abstract void searchError();

  public abstract void searchNetworkError();

  public abstract void searchResultNothing();

  public abstract void searchResultRefresh(List<Building> paramList);

  public abstract void searchResultShow(List<Building> paramList);

  public abstract void searchStart();
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.search.ISearchHandleObserver
 * JD-Core Version:    0.6.0
 */