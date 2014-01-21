package com.amap.api.search.busline;

import com.amap.api.search.core.d;

public class BusQuery
{
  private String a;
  private SearchType b;
  private String c;

  public BusQuery(String paramString, SearchType paramSearchType)
  {
    this(paramString, paramSearchType, null);
  }

  public BusQuery(String paramString1, SearchType paramSearchType, String paramString2)
  {
    this.a = paramString1;
    this.b = paramSearchType;
    this.c = paramString2;
    if (!a())
      throw new IllegalArgumentException("Empty query");
  }

  private boolean a()
  {
    return !d.a(this.a);
  }

  public SearchType getCategory()
  {
    return this.b;
  }

  public String getCity()
  {
    return this.c;
  }

  public String getQueryString()
  {
    return this.a;
  }

  public static enum SearchType
  {
    static
    {
      SearchType[] arrayOfSearchType = new SearchType[3];
      arrayOfSearchType[0] = BY_ID;
      arrayOfSearchType[1] = BY_LINE_NAME;
      arrayOfSearchType[2] = BY_STATION_NAME;
      a = arrayOfSearchType;
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.search.busline.BusQuery
 * JD-Core Version:    0.6.0
 */