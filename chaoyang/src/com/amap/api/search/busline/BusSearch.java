package com.amap.api.search.busline;

import android.content.Context;
import com.amap.api.search.core.AMapException;
import com.amap.api.search.core.b;
import com.amap.api.search.core.d;
import java.util.ArrayList;

public class BusSearch
{
  private Context a;
  private BusQuery b;
  private int c = 10;

  public BusSearch(Context paramContext, BusQuery paramBusQuery)
  {
    b.a(paramContext);
    this.a = paramContext;
    this.b = paramBusQuery;
  }

  public BusSearch(Context paramContext, String paramString, BusQuery paramBusQuery)
  {
    b.a(paramContext);
    this.a = paramContext;
    this.b = paramBusQuery;
  }

  public BusQuery getQuery()
  {
    return this.b;
  }

  public BusPagedResult searchBusLine()
    throws AMapException
  {
    a locala = new a(this.b, d.b(this.a), d.a(this.a), null);
    locala.a(1);
    locala.b(this.c);
    return BusPagedResult.a(locala, (ArrayList)locala.g());
  }

  public void setPageSize(int paramInt)
  {
    this.c = paramInt;
  }

  public void setQuery(BusQuery paramBusQuery)
  {
    this.b = paramBusQuery;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.search.busline.BusSearch
 * JD-Core Version:    0.6.0
 */