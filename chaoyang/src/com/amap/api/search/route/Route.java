package com.amap.api.search.route;

import android.content.Context;
import com.amap.api.search.core.AMapException;
import com.amap.api.search.core.LatLonPoint;
import java.net.Proxy;
import java.text.DecimalFormat;
import java.util.Iterator;
import java.util.List;

public class Route
{
  public static final int BusDefault = 0;
  public static final int BusLeaseChange = 2;
  public static final int BusLeaseWalk = 3;
  public static final int BusMostComfortable = 4;
  public static final int BusSaveMoney = 1;
  public static final int DrivingDefault = 10;
  public static final int DrivingLeastDistance = 12;
  public static final int DrivingNoFastRoad = 13;
  public static final int DrivingSaveMoney = 11;
  public static final int WalkDefault = 23;
  private LatLonPoint a = null;
  private LatLonPoint b = null;
  private int c;
  public d mHelper;
  protected List<Segment> mSegs;
  protected String mStartPlace;
  protected String mTargetPlace;

  public Route(int paramInt)
  {
    this.c = paramInt;
    if (isBus(paramInt))
    {
      this.mHelper = new a();
      return;
    }
    if (isDrive(paramInt))
    {
      this.mHelper = new b();
      return;
    }
    if (isWalk(paramInt))
    {
      this.mHelper = new c();
      return;
    }
    throw new IllegalArgumentException("Unkown mode");
  }

  static String a(int paramInt)
  {
    if (paramInt > 10000)
    {
      int k = paramInt / 1000;
      return k + "公里";
    }
    if (paramInt > 1000)
    {
      float f = paramInt / 1000.0F;
      String str = new DecimalFormat("##0.0").format(f);
      return str + "公里";
    }
    if (paramInt > 100)
    {
      int j = 50 * (paramInt / 50);
      return j + "米";
    }
    int i = 10 * (paramInt / 10);
    if (i == 0)
      i = 10;
    return i + "米";
  }

  private void b()
  {
    Iterator localIterator1 = this.mSegs.iterator();
    double d1 = 1.7976931348623157E+308D;
    double d2 = 1.7976931348623157E+308D;
    double d9;
    if (localIterator1.hasNext())
    {
      LatLonPoint localLatLonPoint2 = ((Segment)localIterator1.next()).getLowerLeftPoint();
      double d7 = localLatLonPoint2.getLongitude();
      double d8 = localLatLonPoint2.getLatitude();
      if (d7 < d1)
        d1 = d7;
      if (d8 >= d2)
        break label202;
      d9 = d8;
    }
    while (true)
    {
      d2 = d9;
      break;
      Iterator localIterator2 = this.mSegs.iterator();
      double d3 = 4.9E-324D;
      double d4 = 4.9E-324D;
      while (localIterator2.hasNext())
      {
        LatLonPoint localLatLonPoint1 = ((Segment)localIterator2.next()).getUpperRightPoint();
        double d5 = localLatLonPoint1.getLongitude();
        double d6 = localLatLonPoint1.getLatitude();
        if (d5 > d4)
          d4 = d5;
        if (d6 <= d3)
          continue;
        d3 = d6;
      }
      this.a = new LatLonPoint(d2, d1);
      this.b = new LatLonPoint(d3, d4);
      return;
      label202: d9 = d2;
    }
  }

  public static List<Route> calculateRoute(Context paramContext, FromAndTo paramFromAndTo, int paramInt)
    throws AMapException
  {
    com.amap.api.search.core.b.a(paramContext);
    e locale = new e(paramFromAndTo, paramInt);
    Proxy localProxy = com.amap.api.search.core.d.b(paramContext);
    String str = com.amap.api.search.core.d.a(paramContext);
    Object localObject;
    if (isBus(paramInt))
      localObject = new a(locale, localProxy, str, null);
    while (true)
    {
      return (List)((d)localObject).g();
      if (isWalk(paramInt))
      {
        localObject = new f(locale, localProxy, str, null);
        continue;
      }
      localObject = new b(locale, localProxy, str, null);
    }
  }

  public static List<Route> calculateRoute(Context paramContext, FromAndTo paramFromAndTo, int paramInt, List<LatLonPoint> paramList)
    throws AMapException
  {
    com.amap.api.search.core.b.a(paramContext);
    e locale = new e(paramFromAndTo, paramInt);
    Proxy localProxy = com.amap.api.search.core.d.b(paramContext);
    String str = com.amap.api.search.core.d.a(paramContext);
    Object localObject;
    if (isBus(paramInt))
      localObject = new a(locale, localProxy, str, null);
    while (true)
    {
      ((d)localObject).a(paramList);
      return (List)((d)localObject).g();
      if (isWalk(paramInt))
      {
        localObject = new f(locale, localProxy, str, null);
        continue;
      }
      localObject = new b(locale, localProxy, str, null);
    }
  }

  public static boolean isBus(int paramInt)
  {
    return (paramInt >= 0) && (paramInt <= 4);
  }

  public static boolean isDrive(int paramInt)
  {
    return (paramInt >= 10) && (paramInt <= 13);
  }

  public static boolean isWalk(int paramInt)
  {
    return paramInt == 23;
  }

  List<Segment> a()
  {
    return this.mSegs;
  }

  void a(List<Segment> paramList)
  {
    this.mSegs = paramList;
  }

  public int getLength()
  {
    Iterator localIterator = this.mSegs.iterator();
    int i = 0;
    while (localIterator.hasNext())
      i += ((Segment)localIterator.next()).getLength();
    return i;
  }

  public LatLonPoint getLowerLeftPoint()
  {
    if (this.a == null)
      b();
    return this.a;
  }

  public int getMode()
  {
    return this.c;
  }

  public String getOverview()
  {
    return this.mHelper.a();
  }

  public int getSegmentIndex(Segment paramSegment)
  {
    return this.mSegs.indexOf(paramSegment);
  }

  public String getStartPlace()
  {
    return this.mStartPlace;
  }

  public LatLonPoint getStartPos()
  {
    return ((Segment)this.mSegs.get(0)).getFirstPoint();
  }

  public Segment getStep(int paramInt)
  {
    return (Segment)this.mSegs.get(paramInt);
  }

  public int getStepCount()
  {
    return this.mSegs.size();
  }

  public String getStepedDescription(int paramInt)
  {
    return this.mHelper.a(paramInt);
  }

  public String getTargetPlace()
  {
    return this.mTargetPlace;
  }

  public LatLonPoint getTargetPos()
  {
    return ((Segment)this.mSegs.get(-1 + getStepCount())).getLastPoint();
  }

  public LatLonPoint getUpperRightPoint()
  {
    if (this.b == null)
      b();
    return this.b;
  }

  public void setStartPlace(String paramString)
  {
    this.mStartPlace = paramString;
  }

  public void setTargetPlace(String paramString)
  {
    this.mTargetPlace = paramString;
  }

  public static class FromAndTo
  {
    public LatLonPoint mFrom;
    public LatLonPoint mTo;

    public FromAndTo(LatLonPoint paramLatLonPoint1, LatLonPoint paramLatLonPoint2)
    {
      this.mFrom = paramLatLonPoint1;
      this.mTo = paramLatLonPoint2;
    }
  }

  public class a extends Route.d
  {
    public a()
    {
      super();
    }

    private String b(int paramInt)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("步行").append("去往");
      if (paramInt == -1 + Route.this.getStepCount())
        localStringBuilder.append("目的地");
      while (true)
      {
        localStringBuilder.append("\n大约" + Route.a(Route.this.getStep(paramInt).getLength()));
        return localStringBuilder.toString();
        localStringBuilder.append(((BusSegment)Route.this.getStep(paramInt + 1)).getLineName() + "车站");
      }
    }

    private String c(int paramInt)
    {
      BusSegment localBusSegment = (BusSegment)Route.this.getStep(paramInt);
      StringBuffer localStringBuffer = new StringBuffer();
      Object[] arrayOfObject1 = new Object[5];
      arrayOfObject1[0] = localBusSegment.getLineName();
      arrayOfObject1[1] = localBusSegment.getFirstStationName();
      arrayOfObject1[2] = localBusSegment.getLastStationName();
      arrayOfObject1[3] = localBusSegment.getLastStationName();
      arrayOfObject1[4] = "方向";
      localStringBuffer.append(String.format("%s ( %s -- %s ) - %s%s\n", arrayOfObject1));
      localStringBuffer.append("上车 : " + localBusSegment.getOnStationName() + "\n");
      localStringBuffer.append("下车 : " + localBusSegment.getOffStationName() + "\n");
      Object[] arrayOfObject2 = new Object[4];
      arrayOfObject2[0] = "公交";
      arrayOfObject2[1] = Integer.valueOf(-1 + localBusSegment.getStopNumber());
      arrayOfObject2[2] = "站";
      arrayOfObject2[3] = ("大约" + Route.a(localBusSegment.getLength()));
      localStringBuffer.append(String.format("%s%d%s (%s)", arrayOfObject2));
      return localStringBuffer.toString();
    }

    public String a()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      int i = Route.this.getStepCount();
      int j = 1;
      int k = 0;
      while (j < i)
      {
        BusSegment localBusSegment = (BusSegment)Route.this.getStep(j);
        if (j != 1)
          localStringBuilder.append(" -> ");
        localStringBuilder.append(localBusSegment.getLineName());
        k += localBusSegment.getLength();
        j += 2;
      }
      if (k != 0)
        localStringBuilder.append("\n");
      int m = 0;
      int n = 0;
      while (m < i)
      {
        n += Route.this.getStep(m).getLength();
        m += 2;
      }
      Object[] arrayOfObject = new Object[4];
      arrayOfObject[0] = "乘车";
      arrayOfObject[1] = Route.a(k);
      arrayOfObject[2] = "步行";
      arrayOfObject[3] = Route.a(n);
      localStringBuilder.append(String.format("%s%s  %s%s", arrayOfObject));
      return localStringBuilder.toString();
    }

    public String a(int paramInt)
    {
      String str = super.a(paramInt);
      if (str != null)
        return str;
      if ((Route.this.getStep(paramInt) instanceof BusSegment))
        return c(paramInt);
      return b(paramInt);
    }
  }

  class b extends Route.e
  {
    b()
    {
      super();
    }
  }

  class c extends Route.e
  {
    c()
    {
      super();
    }
  }

  public abstract class d
  {
    public d()
    {
    }

    private String b(int paramInt)
    {
      String str;
      if (paramInt == 0)
        str = Route.this.mStartPlace;
      int i;
      do
      {
        return str;
        i = Route.this.getStepCount();
        str = null;
      }
      while (paramInt != i);
      return Route.this.mTargetPlace;
    }

    public abstract String a();

    public String a(int paramInt)
    {
      return b(paramInt);
    }
  }

  abstract class e extends Route.d
  {
    e()
    {
      super();
    }

    public String a()
    {
      StringBuffer localStringBuffer = new StringBuffer();
      Object localObject1 = "";
      int i = Route.this.getStepCount();
      int j = 0;
      int k = 0;
      DriveWalkSegment localDriveWalkSegment;
      if (j < i)
      {
        localDriveWalkSegment = (DriveWalkSegment)Route.this.getStep(j);
        k += localDriveWalkSegment.getLength();
        if ((com.amap.api.search.core.d.a(localDriveWalkSegment.getRoadName())) || (localDriveWalkSegment.getRoadName().equals(localObject1)))
          break label188;
        if (!com.amap.api.search.core.d.a(localStringBuffer.toString()))
          localStringBuffer.append(" -> ");
        localStringBuffer.append(localDriveWalkSegment.getRoadName());
      }
      label188: for (Object localObject2 = localDriveWalkSegment.getRoadName(); ; localObject2 = localObject1)
      {
        j++;
        localObject1 = localObject2;
        break;
        if (!com.amap.api.search.core.d.a(localStringBuffer.toString()))
          localStringBuffer.append("\n");
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = ("大约" + Route.a(k));
        localStringBuffer.append(String.format("%s", arrayOfObject));
        return localStringBuffer.toString();
      }
    }

    public String a(int paramInt)
    {
      String str1 = super.a(paramInt);
      if (str1 != null)
        return str1;
      String str2 = "";
      DriveWalkSegment localDriveWalkSegment = (DriveWalkSegment)Route.this.getStep(paramInt);
      if (!com.amap.api.search.core.d.a(localDriveWalkSegment.getRoadName()))
        str2 = localDriveWalkSegment.getRoadName() + " ";
      String str3 = str2 + localDriveWalkSegment.getActionDescription() + " ";
      StringBuilder localStringBuilder = new StringBuilder().append(str3);
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = "大约";
      arrayOfObject[1] = Route.a(localDriveWalkSegment.getLength());
      return String.format("%s%s", arrayOfObject);
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.search.route.Route
 * JD-Core Version:    0.6.0
 */