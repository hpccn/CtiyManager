package com.cymobile.ymwork.services;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class WebService
{
  private static final int THREAD_COUNT = 5;
  private static ExecutorService mCached;
  private static ExecutorService mFixed;

  public static ExecutorService getTheadPool(boolean paramBoolean)
  {
    ExecutorService localExecutorService = mCached;
    if (paramBoolean)
    {
      if (localExecutorService == null)
        mCached = Executors.newCachedThreadPool();
      return mCached;
    }
    if (mFixed == null)
      mFixed = Executors.newFixedThreadPool(5);
    return mFixed;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.services.WebService
 * JD-Core Version:    0.6.0
 */