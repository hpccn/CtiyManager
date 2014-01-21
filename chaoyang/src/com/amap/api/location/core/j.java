package com.amap.api.location.core;

public class j
{
  private static j g;
  private String a = "http://webrd01.is.autonavi.com";
  private String b = "http://tm.mapabc.com";
  private String c = "http://restapi.amap.com";
  private String d = "http://ds.mapabc.com:8888";
  private String e = "http://mst01.is.autonavi.com";
  private String f = "http://tmds.mapabc.com";

  public static j a()
  {
    monitorenter;
    try
    {
      if (g == null)
        g = new j();
      j localj = g;
      return localj;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public String b()
  {
    return this.c;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.location.core.j
 * JD-Core Version:    0.6.0
 */