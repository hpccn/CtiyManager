package com.amap.api.location.core;

import com.a.a.a;
import java.net.Proxy;

public class i extends k<GeoPoint.b, GeoPoint.b>
{
  private GeoPoint.b i;

  public i(GeoPoint.b paramb, Proxy paramProxy, String paramString1, String paramString2)
  {
    super(paramb, paramProxy, paramString1, paramString2);
    this.i = paramb;
  }

  public GeoPoint.b a()
  {
    double[] arrayOfDouble = a.a(this.i.a, this.i.b);
    return new GeoPoint.b(arrayOfDouble[0], arrayOfDouble[1]);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.location.core.i
 * JD-Core Version:    0.6.0
 */