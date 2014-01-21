package com.amap.api.search.core;

public class g
{
  private static g b;
  private String a = "http://restapi.amap.com";

  public static g a()
  {
    monitorenter;
    try
    {
      if (b == null)
        b = new g();
      g localg = b;
      return localg;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public String b()
  {
    return this.a;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.search.core.g
 * JD-Core Version:    0.6.0
 */