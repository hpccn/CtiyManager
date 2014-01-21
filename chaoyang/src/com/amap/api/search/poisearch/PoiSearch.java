package com.amap.api.search.poisearch;

import android.content.Context;
import com.amap.api.search.core.AMapException;
import com.amap.api.search.core.LatLonPoint;
import com.amap.api.search.core.d;
import java.util.ArrayList;

public class PoiSearch
{
  private SearchBound a;
  private Query b;
  private Context c;
  private int d = 20;

  public PoiSearch(Context paramContext, Query paramQuery)
  {
    com.amap.api.search.core.b.a(paramContext);
    this.c = paramContext;
    setQuery(paramQuery);
  }

  public PoiSearch(Context paramContext, String paramString, Query paramQuery)
  {
    com.amap.api.search.core.b.a(paramContext);
    this.c = paramContext;
    setQuery(paramQuery);
  }

  public SearchBound getBound()
  {
    return this.a;
  }

  public Query getQuery()
  {
    return this.b;
  }

  public PoiPagedResult searchPOI()
    throws AMapException
  {
    b localb = new b(new c(this.b, this.a), d.b(this.c), d.a(this.c), null);
    localb.a(1);
    localb.b(this.d);
    return PoiPagedResult.a(localb, (ArrayList)localb.g());
  }

  public void setBound(SearchBound paramSearchBound)
  {
    this.a = paramSearchBound;
  }

  public void setPageSize(int paramInt)
  {
    this.d = paramInt;
  }

  @Deprecated
  public void setPoiNumber(int paramInt)
  {
    setPageSize(paramInt);
  }

  public void setQuery(Query paramQuery)
  {
    this.b = paramQuery;
  }

  public static class Query
  {
    private String a;
    private String b;
    private String c;

    public Query(String paramString1, String paramString2)
    {
      this(paramString1, paramString2, null);
    }

    public Query(String paramString1, String paramString2, String paramString3)
    {
      this.a = paramString1;
      this.b = paramString2;
      this.c = paramString3;
      if (!b())
        throw new IllegalArgumentException("Empty  query and catagory");
    }

    private boolean b()
    {
      return (!d.a(this.a)) || (!d.a(this.b));
    }

    String a()
    {
      return "";
    }

    public String getCategory()
    {
      if ((this.b == null) || (this.b.equals("00")) || (this.b.equals("00|")))
        return a();
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
  }

  public static class SearchBound
  {
    public static final String BOUND_SHAPE = "bound";
    public static final String ELLIPSE_SHAPE = "Ellipse";
    public static final String POLYGON_SHAPE = "Polygon";
    public static final String RECTANGLE_SHAPE = "Rectangle";
    private LatLonPoint a;
    private LatLonPoint b;
    private int c;
    private LatLonPoint d;
    private String e = "Rectangle";

    public SearchBound(LatLonPoint paramLatLonPoint, int paramInt)
    {
      this.c = paramInt;
      this.d = paramLatLonPoint;
      a(paramLatLonPoint, d.a(paramInt), d.a(paramInt));
    }

    public SearchBound(LatLonPoint paramLatLonPoint1, LatLonPoint paramLatLonPoint2)
    {
      a(paramLatLonPoint1, paramLatLonPoint2);
    }

    private void a(LatLonPoint paramLatLonPoint, double paramDouble1, double paramDouble2)
    {
      double d1 = paramDouble1 / 2.0D;
      double d2 = paramDouble2 / 2.0D;
      double d3 = paramLatLonPoint.getLatitude();
      double d4 = paramLatLonPoint.getLongitude();
      a(new LatLonPoint(d3 - d1, d4 - d2), new LatLonPoint(d1 + d3, d2 + d4));
    }

    private void a(LatLonPoint paramLatLonPoint1, LatLonPoint paramLatLonPoint2)
    {
      this.a = paramLatLonPoint1;
      this.b = paramLatLonPoint2;
      if ((this.a.getLatitude() >= this.b.getLatitude()) || (this.a.getLongitude() >= this.b.getLongitude()))
        throw new IllegalArgumentException("invalid rect ");
      this.d = new LatLonPoint((this.a.getLatitude() + this.b.getLatitude()) / 2.0D, (this.a.getLongitude() + this.b.getLongitude()) / 2.0D);
    }

    public LatLonPoint getCenter()
    {
      return this.d;
    }

    public double getLatSpanInMeter()
    {
      return this.b.getLatitude() - this.a.getLatitude();
    }

    public double getLonSpanInMeter()
    {
      return this.b.getLongitude() - this.a.getLongitude();
    }

    public LatLonPoint getLowerLeft()
    {
      return this.a;
    }

    public int getRange()
    {
      return this.c;
    }

    public String getShape()
    {
      return this.e;
    }

    public LatLonPoint getUpperRight()
    {
      return this.b;
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.search.poisearch.PoiSearch
 * JD-Core Version:    0.6.0
 */