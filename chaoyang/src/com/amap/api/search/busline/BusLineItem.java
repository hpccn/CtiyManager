package com.amap.api.search.busline;

import com.amap.api.search.core.LatLonPoint;
import java.util.ArrayList;

public class BusLineItem
{
  private ArrayList<BusStationItem> A;
  private LatLonPoint B = null;
  private LatLonPoint C = null;
  private float a;
  private String b;
  private int c;
  private String d;
  private int e;
  private float f;
  private ArrayList<LatLonPoint> g;
  private String h;
  private String i;
  private String j;
  private String k;
  private String l;
  private String m;
  private String n;
  private float o;
  private float p;
  private boolean q;
  private boolean r;
  private boolean s;
  private boolean t;
  private boolean u;
  private int v;
  private boolean w;
  private String x;
  private String y;
  private boolean z;

  private void a()
  {
    if ((this.g == null) || (this.g.size() == 0))
      return;
    int i1 = 0;
    double d1 = 4.9E-324D;
    double d2 = 1.7976931348623157E+308D;
    double d3 = 1.7976931348623157E+308D;
    double d4 = 4.9E-324D;
    while (i1 < this.g.size())
    {
      LatLonPoint localLatLonPoint = (LatLonPoint)this.g.get(i1);
      double d5 = localLatLonPoint.getLongitude();
      double d6 = localLatLonPoint.getLatitude();
      if (d5 < d3)
        d3 = d5;
      if (d6 < d2)
        d2 = d6;
      if (d5 > d4)
        d4 = d5;
      if (d6 > d1)
        d1 = d6;
      i1++;
    }
    this.B = new LatLonPoint(d2, d3);
    this.C = new LatLonPoint(d1, d4);
  }

  public LatLonPoint getLowerLeftPoint()
  {
    if (this.B == null)
      a();
    return this.B;
  }

  public LatLonPoint getUpperRightPoint()
  {
    if (this.C == null)
      a();
    return this.C;
  }

  public boolean getmAir()
  {
    return this.w;
  }

  public boolean getmAuto()
  {
    return this.r;
  }

  public float getmBasicPrice()
  {
    return this.o;
  }

  public boolean getmCommunicationTicket()
  {
    return this.q;
  }

  public String getmCompany()
  {
    return this.n;
  }

  public int getmDataSource()
  {
    return this.v;
  }

  public String getmDescription()
  {
    return this.d;
  }

  public String getmEndTime()
  {
    return this.m;
  }

  public String getmFrontName()
  {
    return this.j;
  }

  public String getmFrontSpell()
  {
    return this.x;
  }

  public String getmKeyName()
  {
    return this.i;
  }

  public float getmLength()
  {
    return this.a;
  }

  public String getmLineId()
  {
    return this.h;
  }

  public String getmName()
  {
    return this.b;
  }

  public float getmSpeed()
  {
    return this.f;
  }

  public String getmStartTime()
  {
    return this.l;
  }

  public ArrayList<BusStationItem> getmStations()
  {
    return this.A;
  }

  public int getmStatus()
  {
    return this.e;
  }

  public String getmTerminalName()
  {
    return this.k;
  }

  public String getmTerminalSpell()
  {
    return this.y;
  }

  public float getmTotalPrice()
  {
    return this.p;
  }

  public int getmType()
  {
    return this.c;
  }

  public ArrayList<LatLonPoint> getmXys()
  {
    return this.g;
  }

  public boolean ismDoubleDeck()
  {
    return this.u;
  }

  public boolean ismExpressWay()
  {
    return this.z;
  }

  public boolean ismIcCard()
  {
    return this.s;
  }

  public boolean ismLoop()
  {
    return this.t;
  }

  public void setmAir(boolean paramBoolean)
  {
    this.w = paramBoolean;
  }

  public void setmAuto(boolean paramBoolean)
  {
    this.r = paramBoolean;
  }

  public void setmBasicPrice(float paramFloat)
  {
    this.o = paramFloat;
  }

  public void setmCommunicationTicket(boolean paramBoolean)
  {
    this.q = paramBoolean;
  }

  public void setmCompany(String paramString)
  {
    this.n = paramString;
  }

  public void setmDataSource(int paramInt)
  {
    this.v = paramInt;
  }

  public void setmDescription(String paramString)
  {
    this.d = paramString;
  }

  public void setmDoubleDeck(boolean paramBoolean)
  {
    this.u = paramBoolean;
  }

  public void setmEndTime(String paramString)
  {
    this.m = paramString;
  }

  public void setmExpressWay(boolean paramBoolean)
  {
    this.z = paramBoolean;
  }

  public void setmFrontName(String paramString)
  {
    this.j = paramString;
  }

  public void setmFrontSpell(String paramString)
  {
    this.x = paramString;
  }

  public void setmIcCard(boolean paramBoolean)
  {
    this.s = paramBoolean;
  }

  public void setmKeyName(String paramString)
  {
    this.i = paramString;
  }

  public void setmLength(float paramFloat)
  {
    this.a = paramFloat;
  }

  public void setmLineId(String paramString)
  {
    this.h = paramString;
  }

  public void setmLoop(boolean paramBoolean)
  {
    this.t = paramBoolean;
  }

  public void setmName(String paramString)
  {
    this.b = paramString;
  }

  public void setmSpeed(float paramFloat)
  {
    this.f = paramFloat;
  }

  public void setmStartTime(String paramString)
  {
    this.l = paramString;
  }

  public void setmStations(ArrayList<BusStationItem> paramArrayList)
  {
    this.A = paramArrayList;
  }

  public void setmStatus(int paramInt)
  {
    this.e = paramInt;
  }

  public void setmTerminalName(String paramString)
  {
    this.k = paramString;
  }

  public void setmTerminalSpell(String paramString)
  {
    this.y = paramString;
  }

  public void setmTotalPrice(float paramFloat)
  {
    this.p = paramFloat;
  }

  public void setmType(int paramInt)
  {
    this.c = paramInt;
  }

  public void setmXys(ArrayList<LatLonPoint> paramArrayList)
  {
    this.g = paramArrayList;
  }

  public String toString()
  {
    return this.b + " " + this.l + "-" + this.m;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.search.busline.BusLineItem
 * JD-Core Version:    0.6.0
 */