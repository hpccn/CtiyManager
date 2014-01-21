package com.amap.api.search.route;

import com.amap.api.search.core.AMapException;
import com.amap.api.search.core.LatLonPoint;
import com.amap.api.search.core.h;
import java.io.InputStream;
import java.net.Proxy;
import java.util.ArrayList;
import java.util.List;

public abstract class d extends h<e, ArrayList<Route>>
{
  protected String j = "起点";
  protected String k = "目的地";
  protected LatLonPoint l = ((e)this.b).a.mFrom;
  protected LatLonPoint m = ((e)this.b).a.mTo;

  public d(e parame, Proxy paramProxy, String paramString1, String paramString2)
  {
    super(parame, paramProxy, paramString1, paramString2);
  }

  protected ArrayList<Route> a(InputStream paramInputStream)
    throws AMapException
  {
    return null;
  }

  public abstract void a(List<LatLonPoint> paramList);

  protected LatLonPoint[] a(String[] paramArrayOfString)
  {
    int i = 0;
    LatLonPoint[] arrayOfLatLonPoint = new LatLonPoint[paramArrayOfString.length / 2];
    int n = paramArrayOfString.length;
    int i1 = 0;
    while (i1 < n - 1)
    {
      double d = Double.parseDouble(paramArrayOfString[i1]);
      arrayOfLatLonPoint[i] = new LatLonPoint(Double.parseDouble(paramArrayOfString[(i1 + 1)]), d);
      i1 += 2;
      i++;
    }
    return arrayOfLatLonPoint;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.search.route.d
 * JD-Core Version:    0.6.0
 */