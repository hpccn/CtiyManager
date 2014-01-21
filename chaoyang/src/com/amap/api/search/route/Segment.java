package com.amap.api.search.route;

import com.amap.api.search.core.LatLonPoint;

public class Segment
{
  private LatLonPoint a = null;
  private LatLonPoint b = null;
  protected int mLength;
  protected Route mRoute;
  protected LatLonPoint[] mShapes;
  protected String strTimeConsume = "";

  private void a()
  {
    double d1 = 1.7976931348623157E+308D;
    double d2 = 4.9E-324D;
    double d3 = 1.7976931348623157E+308D;
    double d4 = 4.9E-324D;
    LatLonPoint[] arrayOfLatLonPoint = this.mShapes;
    int i = arrayOfLatLonPoint.length;
    int j = 0;
    double d5;
    double d6;
    if (j < i)
    {
      LatLonPoint localLatLonPoint = arrayOfLatLonPoint[j];
      d5 = localLatLonPoint.getLongitude();
      d6 = localLatLonPoint.getLatitude();
      if (d5 > d2)
        d2 = d5;
      if (d5 >= d1)
        break label146;
    }
    while (true)
    {
      if (d6 > d4)
        d4 = d6;
      if (d6 < d3);
      while (true)
      {
        j++;
        d1 = d5;
        d3 = d6;
        break;
        this.a = new LatLonPoint(d3, d1);
        this.b = new LatLonPoint(d4, d2);
        return;
        d6 = d3;
      }
      label146: d5 = d1;
    }
  }

  private int b()
  {
    int i = this.mRoute.getSegmentIndex(this);
    if (i < 0)
      throw new IllegalArgumentException("this segment is not in the route !");
    return i;
  }

  public String getConsumeTime()
  {
    return this.strTimeConsume;
  }

  public LatLonPoint getFirstPoint()
  {
    return this.mShapes[0];
  }

  public LatLonPoint getLastPoint()
  {
    return this.mShapes[(-1 + this.mShapes.length)];
  }

  public int getLength()
  {
    return this.mLength;
  }

  public LatLonPoint getLowerLeftPoint()
  {
    if (this.a == null)
      a();
    return this.a;
  }

  public Segment getNext()
  {
    int i = b();
    if (i == -1 + this.mRoute.getStepCount())
      return null;
    return this.mRoute.getStep(i + 1);
  }

  public Segment getPrev()
  {
    int i = b();
    if (i == 0)
      return null;
    return this.mRoute.getStep(i - 1);
  }

  public LatLonPoint[] getShapes()
  {
    return this.mShapes;
  }

  public LatLonPoint getUpperRightPoint()
  {
    if (this.b == null)
      a();
    return this.b;
  }

  public void setConsumeTime(String paramString)
  {
    this.strTimeConsume = paramString;
  }

  public void setLength(int paramInt)
  {
    this.mLength = paramInt;
  }

  public void setRoute(Route paramRoute)
  {
    this.mRoute = paramRoute;
  }

  public void setShapes(LatLonPoint[] paramArrayOfLatLonPoint)
  {
    this.mShapes = paramArrayOfLatLonPoint;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.search.route.Segment
 * JD-Core Version:    0.6.0
 */