package com.amap.api.search.geocoder;

import android.content.Context;
import android.location.Address;
import com.amap.api.search.core.AMapException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.List<Landroid.location.Address;>;

public final class Geocoder
{
  public static final String Cross = "Cross";
  public static final String POI = "POI";
  public static final String Street_Road = "StreetAndRoad";
  private String a;
  private Context b;

  public Geocoder(Context paramContext)
  {
    com.amap.api.search.core.b.a(paramContext);
    a(paramContext, com.amap.api.search.core.d.a(paramContext));
  }

  public Geocoder(Context paramContext, String paramString)
  {
    com.amap.api.search.core.b.a(paramContext);
    a(paramContext, com.amap.api.search.core.d.a(paramContext));
  }

  private List<Address> a(double paramDouble1, double paramDouble2, int paramInt, boolean paramBoolean)
    throws AMapException
  {
    if (com.amap.api.search.core.d.a)
    {
      if ((paramDouble1 < com.amap.api.search.core.d.a(1000000L)) || (paramDouble1 > com.amap.api.search.core.d.a(65000000L)))
        throw new AMapException("无效的参数 - IllegalArgumentException latitude == " + paramDouble1);
      if ((paramDouble2 < com.amap.api.search.core.d.a(50000000L)) || (paramDouble2 > com.amap.api.search.core.d.a(145000000L)))
        throw new AMapException("无效的参数 - IllegalArgumentException longitude == " + paramDouble2);
    }
    if (paramInt <= 0)
      return new ArrayList();
    return (List)new c(new d(paramDouble2, paramDouble1, paramInt, paramBoolean), com.amap.api.search.core.d.b(this.b), this.a, null).g();
  }

  private List<Address> a(List<Address> paramList, double paramDouble1, double paramDouble2, double paramDouble3, double paramDouble4, int paramInt)
  {
    Object localObject = null;
    if (paramList != null)
    {
      ArrayList localArrayList = new ArrayList();
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        Address localAddress = (Address)localIterator.next();
        double d1 = localAddress.getLongitude();
        double d2 = localAddress.getLatitude();
        if ((d1 > paramDouble4) || (d1 < paramDouble2) || (d2 > paramDouble3) || (d2 < paramDouble1) || (localArrayList.size() >= paramInt))
          continue;
        localArrayList.add(localAddress);
      }
      localObject = localArrayList;
    }
    return localObject;
  }

  private void a(Context paramContext, String paramString)
  {
    this.b = paramContext;
    this.a = paramString;
  }

  public List<Address> getFromLocation(double paramDouble1, double paramDouble2, int paramInt)
    throws AMapException
  {
    return a(paramDouble1, paramDouble2, paramInt, false);
  }

  public List<Address> getFromLocationName(String paramString, int paramInt)
    throws AMapException
  {
    return getFromLocationName(paramString, paramInt, com.amap.api.search.core.d.a(1000000L), com.amap.api.search.core.d.a(50000000L), com.amap.api.search.core.d.a(65000000L), com.amap.api.search.core.d.a(145000000L));
  }

  public List<Address> getFromLocationName(String paramString, int paramInt, double paramDouble1, double paramDouble2, double paramDouble3, double paramDouble4)
    throws AMapException
  {
    return getFromLocationName(paramString, "", paramInt, paramDouble1, paramDouble2, paramDouble3, paramDouble4);
  }

  public List<Address> getFromLocationName(String paramString1, String paramString2, int paramInt)
    throws AMapException
  {
    return getFromLocationName(paramString1, paramString2, paramInt, com.amap.api.search.core.d.a(1000000L), com.amap.api.search.core.d.a(50000000L), com.amap.api.search.core.d.a(65000000L), com.amap.api.search.core.d.a(145000000L));
  }

  public List<Address> getFromLocationName(String paramString1, String paramString2, int paramInt, double paramDouble1, double paramDouble2, double paramDouble3, double paramDouble4)
    throws AMapException
  {
    if (paramString1 == null)
      throw new IllegalArgumentException("locationName == null");
    if (com.amap.api.search.core.d.a)
    {
      if ((paramDouble1 < com.amap.api.search.core.d.a(1000000L)) || (paramDouble1 > com.amap.api.search.core.d.a(65000000L)))
        throw new AMapException("无效的参数 - IllegalArgumentException lowerLeftLatitude == " + paramDouble1);
      if ((paramDouble2 < com.amap.api.search.core.d.a(50000000L)) || (paramDouble2 > com.amap.api.search.core.d.a(145000000L)))
        throw new AMapException("无效的参数 - IllegalArgumentException lowerLeftLongitude == " + paramDouble2);
      if ((paramDouble3 < com.amap.api.search.core.d.a(1000000L)) || (paramDouble3 > com.amap.api.search.core.d.a(65000000L)))
        throw new AMapException("无效的参数 - IllegalArgumentException upperRightLatitude == " + paramDouble3);
      if ((paramDouble4 < com.amap.api.search.core.d.a(50000000L)) || (paramDouble4 > com.amap.api.search.core.d.a(145000000L)))
        throw new AMapException("无效的参数 - IllegalArgumentException upperRightLongitude == " + paramDouble4);
    }
    Object localObject;
    if (paramInt <= 0)
      localObject = new ArrayList();
    do
    {
      return localObject;
      localObject = (List)new a(new b(paramString1, paramString2, 15), com.amap.api.search.core.d.b(this.b), this.a, null).g();
    }
    while (!com.amap.api.search.core.d.a);
    return (List<Address>)a((List)localObject, paramDouble1, paramDouble2, paramDouble3, paramDouble4, paramInt);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.search.geocoder.Geocoder
 * JD-Core Version:    0.6.0
 */