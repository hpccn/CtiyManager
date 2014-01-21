package com.cymobile.ymwork.utils;

import android.annotation.SuppressLint;
import android.os.AsyncTask;
import android.os.Build.VERSION;

public class AsyncTaskUtils
{
  public static <P, T extends AsyncTask<P, ?, ?>> void execute(T paramT)
  {
    execute(paramT, null);
  }

  @SuppressLint({"NewApi"})
  public static <P, T extends AsyncTask<P, ?, ?>> void execute(T paramT, P[] paramArrayOfP)
  {
    if (Build.VERSION.SDK_INT >= 11)
    {
      paramT.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, paramArrayOfP);
      return;
    }
    paramT.execute(paramArrayOfP);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.utils.AsyncTaskUtils
 * JD-Core Version:    0.6.0
 */