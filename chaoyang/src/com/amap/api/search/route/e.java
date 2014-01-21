package com.amap.api.search.route;

import com.amap.api.search.core.LatLonPoint;

public class e
{
  public Route.FromAndTo a;
  public int b;

  public e(Route.FromAndTo paramFromAndTo, int paramInt)
  {
    this.a = paramFromAndTo;
    this.b = paramInt;
  }

  public double a()
  {
    return this.a.mFrom.getLongitude();
  }

  public double b()
  {
    return this.a.mTo.getLongitude();
  }

  public double c()
  {
    return this.a.mFrom.getLatitude();
  }

  public double d()
  {
    return this.a.mTo.getLatitude();
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.search.route.e
 * JD-Core Version:    0.6.0
 */