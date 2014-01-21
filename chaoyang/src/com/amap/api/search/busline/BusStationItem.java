package com.amap.api.search.busline;

import com.amap.api.search.core.LatLonPoint;

public class BusStationItem
{
  private String a;
  private LatLonPoint b;
  private String c;
  private String d;
  private int e;

  public String getmCode()
  {
    return this.d;
  }

  public LatLonPoint getmCoord()
  {
    return this.b;
  }

  public String getmName()
  {
    return this.a;
  }

  public String getmSpell()
  {
    return this.c;
  }

  public int getmStationNum()
  {
    return this.e;
  }

  public void setmCode(String paramString)
  {
    this.d = paramString;
  }

  public void setmCoord(LatLonPoint paramLatLonPoint)
  {
    this.b = paramLatLonPoint;
  }

  public void setmName(String paramString)
  {
    this.a = paramString;
  }

  public void setmSpell(String paramString)
  {
    this.c = paramString;
  }

  public void setmStationNum(int paramInt)
  {
    this.e = paramInt;
  }

  public String toString()
  {
    return "Name: " + this.a + " Coord: " + this.b.toString() + " Spell: " + this.c + " Code: " + this.d + " StationNum: " + this.e;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.search.busline.BusStationItem
 * JD-Core Version:    0.6.0
 */