package com.amap.api.location;

import android.app.Activity;
import android.app.PendingIntent;
import android.app.PendingIntent.CanceledException;
import android.content.Context;
import android.content.Intent;
import android.location.Criteria;
import android.location.GpsStatus;
import android.location.GpsStatus.Listener;
import android.location.Location;
import android.location.LocationManager;
import android.os.Bundle;
import com.amap.api.location.core.d;
import com.amap.api.location.core.f;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.List<Ljava.lang.String;>;

public class LocationManagerProxy
{
  public static final String GPS_PROVIDER = "gps";
  public static final String KEY_LOCATION_CHANGED = "location";
  public static final String KEY_PROVIDER_ENABLED = "providerEnabled";
  public static final String KEY_PROXIMITY_ENTERING = "entering";
  public static final String KEY_STATUS_CHANGED = "status";
  public static final String NETWORK_PROVIDER = "network";
  private static LocationManagerProxy c = null;
  d a;
  private LocationManager b = null;
  private a d = null;
  private Context e;
  private c f;
  private b g;
  private ArrayList<PendingIntent> h = new ArrayList();
  private Hashtable<String, LocationProviderProxy> i = new Hashtable();
  private String j;
  private double k;
  private double l;
  private boolean m = false;
  private long n = 0L;
  private double o = 0.0D;
  private c p;
  private a q;
  private ArrayList<PendingIntent> r = new ArrayList();
  private Thread s;
  private String t;

  private LocationManagerProxy(Activity paramActivity)
  {
    a(paramActivity.getApplicationContext());
  }

  private LocationManagerProxy(Context paramContext)
  {
    a(paramContext);
  }

  private void a(Context paramContext)
  {
    this.e = paramContext;
    this.a = d.a(paramContext);
    this.b = ((LocationManager)paramContext.getSystemService("location"));
    this.d = a.a(paramContext.getApplicationContext(), this.b);
    this.t = this.a.c(paramContext);
    this.s = new Thread(this.d);
    this.s.setDaemon(true);
  }

  public static LocationManagerProxy getInstance(Activity paramActivity)
  {
    monitorenter;
    try
    {
      if (c == null)
        c = new LocationManagerProxy(paramActivity);
      LocationManagerProxy localLocationManagerProxy = c;
      return localLocationManagerProxy;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public static LocationManagerProxy getInstance(Context paramContext)
  {
    monitorenter;
    try
    {
      if (c == null)
        c = new LocationManagerProxy(paramContext);
      LocationManagerProxy localLocationManagerProxy = c;
      return localLocationManagerProxy;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public boolean addGpsStatusListener(GpsStatus.Listener paramListener)
  {
    if (this.b != null)
      return this.b.addGpsStatusListener(paramListener);
    return false;
  }

  public void addProximityAlert(double paramDouble1, double paramDouble2, float paramFloat, long paramLong, PendingIntent paramPendingIntent)
  {
    if (("lbs".equals(this.j)) && (this.a.a(this.t)))
    {
      if (this.p == null)
        this.p = new c(this);
      if (this.q == null)
        this.q = new a();
      this.p.a(this.q, 10000L, paramFloat, this.j);
      this.m = true;
      this.k = paramDouble1;
      this.l = paramDouble2;
      this.o = paramFloat;
      if (paramLong != -1L)
        this.n = (paramLong + f.a());
      this.r.add(paramPendingIntent);
    }
    do
      return;
    while (this.b == null);
    this.b.addProximityAlert(paramDouble1, paramDouble2, paramFloat, paramLong, paramPendingIntent);
  }

  public void addTestProvider(String paramString, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, boolean paramBoolean5, boolean paramBoolean6, boolean paramBoolean7, int paramInt1, int paramInt2)
  {
    if (this.b != null)
      this.b.addTestProvider(paramString, paramBoolean1, paramBoolean2, paramBoolean3, paramBoolean4, paramBoolean5, paramBoolean6, paramBoolean7, paramInt1, paramInt2);
  }

  public void clearTestProviderEnabled(String paramString)
  {
    if (this.b != null)
      this.b.clearTestProviderEnabled(paramString);
  }

  public void clearTestProviderLocation(String paramString)
  {
    if (this.b != null)
      this.b.clearTestProviderLocation(paramString);
  }

  public void clearTestProviderStatus(String paramString)
  {
    if (this.b != null)
      this.b.clearTestProviderStatus(paramString);
  }

  public void destory()
  {
    if (this.d != null)
      this.d.a();
    if (this.i != null)
      this.i.clear();
    if (this.h != null)
      this.h.clear();
    if (this.r != null)
      this.r.clear();
    this.i = null;
    this.h = null;
    this.r = null;
    this.d = null;
    c = null;
  }

  public List<String> getAllProviders()
  {
    List localList = this.b.getAllProviders();
    if (localList != null)
    {
      if (!localList.contains("lbs"))
        localList.add("lbs");
      return localList;
    }
    ArrayList localArrayList = new ArrayList();
    localArrayList.add("lbs");
    localArrayList.addAll(this.b.getAllProviders());
    return localArrayList;
  }

  public String getBestProvider(Criteria paramCriteria, boolean paramBoolean)
  {
    String str = "lbs";
    if (paramCriteria == null);
    do
    {
      return str;
      if (getProvider("lbs").meetsCriteria(paramCriteria))
        continue;
      str = this.b.getBestProvider(paramCriteria, paramBoolean);
    }
    while ((!paramBoolean) || (f.b(this.e)));
    return this.b.getBestProvider(paramCriteria, paramBoolean);
  }

  public GpsStatus getGpsStatus(GpsStatus paramGpsStatus)
  {
    if (this.b != null)
      return this.b.getGpsStatus(paramGpsStatus);
    return null;
  }

  public AMapLocation getLastKnownLocation(String paramString)
  {
    if (("lbs".equals(paramString)) && (this.a.a(this.t)))
    {
      this.j = paramString;
      return this.d.b();
    }
    Location localLocation = this.b.getLastKnownLocation(paramString);
    if ((this.b != null) && (localLocation != null))
      return new AMapLocation(localLocation);
    return null;
  }

  public LocationProviderProxy getProvider(String paramString)
  {
    if (paramString == null)
      throw new IllegalArgumentException("name不能为空！");
    if (this.i.containsKey(paramString))
      return (LocationProviderProxy)this.i.get(paramString);
    LocationProviderProxy localLocationProviderProxy = LocationProviderProxy.a(this.b, paramString);
    this.i.put(paramString, localLocationProviderProxy);
    return localLocationProviderProxy;
  }

  public List<String> getProviders(Criteria paramCriteria, boolean paramBoolean)
  {
    Object localObject = this.b.getProviders(paramCriteria, paramBoolean);
    if ((localObject == null) || (((List)localObject).size() == 0))
      localObject = new ArrayList();
    if ("lbs".equals(getBestProvider(paramCriteria, paramBoolean)))
      ((List)localObject).add("lbs");
    return (List<String>)localObject;
  }

  public List<String> getProviders(boolean paramBoolean)
  {
    Object localObject = this.b.getProviders(paramBoolean);
    if (isProviderEnabled("lbs"))
    {
      if ((localObject == null) || (((List)localObject).size() == 0))
        localObject = new ArrayList();
      ((List)localObject).add("lbs");
    }
    return (List<String>)localObject;
  }

  public boolean isProviderEnabled(String paramString)
  {
    if ("lbs".equals(paramString))
      return f.b(this.e);
    return this.b.isProviderEnabled(paramString);
  }

  public void removeGpsStatusListener(GpsStatus.Listener paramListener)
  {
    if (this.b != null)
      this.b.removeGpsStatusListener(paramListener);
  }

  public void removeProximityAlert(PendingIntent paramPendingIntent)
  {
    if (("lbs".equals(this.j)) && (this.a.a(this.t)))
    {
      if (this.p != null)
        this.p.a();
      this.r.remove(paramPendingIntent);
      this.p = null;
      this.m = false;
      this.n = 0L;
      this.o = 0.0D;
      this.k = 0.0D;
      this.l = 0.0D;
    }
    do
      return;
    while (this.b == null);
    this.b.removeProximityAlert(paramPendingIntent);
  }

  public void removeUpdates(PendingIntent paramPendingIntent)
  {
    if (this.f != null)
    {
      this.h.remove(paramPendingIntent);
      this.f.a();
    }
    this.f = null;
    this.b.removeUpdates(paramPendingIntent);
  }

  public void removeUpdates(AMapLocationListener paramAMapLocationListener)
  {
    if (paramAMapLocationListener != null)
    {
      if (this.d != null)
        this.d.a(paramAMapLocationListener);
      this.b.removeUpdates(paramAMapLocationListener);
    }
  }

  public void requestLocationUpdates(String paramString, long paramLong, float paramFloat, PendingIntent paramPendingIntent)
  {
    if (("lbs".equals(paramString)) && (this.a.a(this.t)))
    {
      if (this.f == null)
        this.f = new c(this);
      if (this.g == null)
        this.g = new b();
      this.f.a(this.g, paramLong, paramFloat);
      this.h.add(paramPendingIntent);
      return;
    }
    this.b.requestLocationUpdates(paramString, paramLong, paramFloat, paramPendingIntent);
  }

  public void requestLocationUpdates(String paramString, long paramLong, float paramFloat, AMapLocationListener paramAMapLocationListener)
  {
    if ((this.s != null) && (!this.s.isAlive()))
      this.s.start();
    if ((!this.a.a(this.t)) && ("lbs".equals(paramString)));
    for (String str = "network"; ; str = paramString)
    {
      this.j = str;
      if (("lbs".equals(str)) && (this.a.a(this.t)))
      {
        this.d.a(paramLong, paramFloat, paramAMapLocationListener);
        return;
      }
      if ("gps".equals(str))
      {
        this.d.a(paramLong, paramFloat, paramAMapLocationListener);
        return;
      }
      this.b.requestLocationUpdates(str, paramLong, paramFloat, paramAMapLocationListener);
      return;
    }
  }

  class a
    implements AMapLocationListener
  {
    a()
    {
    }

    public void onLocationChanged(Location paramLocation)
    {
      if ((LocationManagerProxy.c(LocationManagerProxy.this)) && (LocationManagerProxy.d(LocationManagerProxy.this).size() > 0))
      {
        double d1 = paramLocation.getLatitude();
        double d2 = paramLocation.getLongitude();
        double d3 = Math.abs((d1 - LocationManagerProxy.e(LocationManagerProxy.this)) * (d1 - LocationManagerProxy.e(LocationManagerProxy.this)) + (d2 - LocationManagerProxy.f(LocationManagerProxy.this)) * (d2 - LocationManagerProxy.f(LocationManagerProxy.this)));
        Iterator localIterator = LocationManagerProxy.d(LocationManagerProxy.this).iterator();
        while (localIterator.hasNext())
        {
          PendingIntent localPendingIntent = (PendingIntent)localIterator.next();
          if ((f.a() > LocationManagerProxy.g(LocationManagerProxy.this)) && (LocationManagerProxy.g(LocationManagerProxy.this) != 0L))
          {
            LocationManagerProxy.this.removeProximityAlert(localPendingIntent);
            continue;
          }
          if (Math.abs(d3 - LocationManagerProxy.h(LocationManagerProxy.this) * LocationManagerProxy.h(LocationManagerProxy.this)) >= 0.5D)
            continue;
          Intent localIntent = new Intent();
          Bundle localBundle = new Bundle();
          localBundle.putParcelable("location", paramLocation);
          localIntent.putExtras(localBundle);
          try
          {
            localPendingIntent.send(LocationManagerProxy.b(LocationManagerProxy.this), 0, localIntent);
          }
          catch (PendingIntent.CanceledException localCanceledException)
          {
            localCanceledException.printStackTrace();
          }
        }
      }
    }

    public void onLocationChanged(AMapLocation paramAMapLocation)
    {
      if ((LocationManagerProxy.c(LocationManagerProxy.this)) && (LocationManagerProxy.d(LocationManagerProxy.this).size() > 0))
      {
        double d1 = paramAMapLocation.getLatitude();
        double d2 = paramAMapLocation.getLongitude();
        double d3 = Math.abs((d1 - LocationManagerProxy.e(LocationManagerProxy.this)) * (d1 - LocationManagerProxy.e(LocationManagerProxy.this)) + (d2 - LocationManagerProxy.f(LocationManagerProxy.this)) * (d2 - LocationManagerProxy.f(LocationManagerProxy.this)));
        Iterator localIterator = LocationManagerProxy.d(LocationManagerProxy.this).iterator();
        while (localIterator.hasNext())
        {
          PendingIntent localPendingIntent = (PendingIntent)localIterator.next();
          if ((f.a() > LocationManagerProxy.g(LocationManagerProxy.this)) && (LocationManagerProxy.g(LocationManagerProxy.this) != 0L))
          {
            LocationManagerProxy.this.removeProximityAlert(localPendingIntent);
            continue;
          }
          if (Math.abs(d3 - LocationManagerProxy.h(LocationManagerProxy.this) * LocationManagerProxy.h(LocationManagerProxy.this)) >= 0.5D)
            continue;
          Intent localIntent = new Intent();
          Bundle localBundle = new Bundle();
          localBundle.putParcelable("location", paramAMapLocation);
          localIntent.putExtras(localBundle);
          try
          {
            localPendingIntent.send(LocationManagerProxy.b(LocationManagerProxy.this), 0, localIntent);
          }
          catch (PendingIntent.CanceledException localCanceledException)
          {
            localCanceledException.printStackTrace();
          }
        }
      }
    }

    public void onProviderDisabled(String paramString)
    {
    }

    public void onProviderEnabled(String paramString)
    {
    }

    public void onStatusChanged(String paramString, int paramInt, Bundle paramBundle)
    {
    }
  }

  class b
    implements AMapLocationListener
  {
    b()
    {
    }

    public void onLocationChanged(Location paramLocation)
    {
      if ((LocationManagerProxy.a(LocationManagerProxy.this) != null) && (LocationManagerProxy.a(LocationManagerProxy.this).size() > 0))
      {
        Iterator localIterator = LocationManagerProxy.a(LocationManagerProxy.this).iterator();
        while (localIterator.hasNext())
        {
          PendingIntent localPendingIntent = (PendingIntent)localIterator.next();
          Intent localIntent = new Intent();
          Bundle localBundle = new Bundle();
          localBundle.putParcelable("location", paramLocation);
          localIntent.putExtras(localBundle);
          try
          {
            localPendingIntent.send(LocationManagerProxy.b(LocationManagerProxy.this), 0, localIntent);
          }
          catch (PendingIntent.CanceledException localCanceledException)
          {
            localCanceledException.printStackTrace();
          }
        }
      }
    }

    public void onLocationChanged(AMapLocation paramAMapLocation)
    {
      if ((LocationManagerProxy.a(LocationManagerProxy.this) != null) && (LocationManagerProxy.a(LocationManagerProxy.this).size() > 0))
      {
        Iterator localIterator = LocationManagerProxy.a(LocationManagerProxy.this).iterator();
        while (localIterator.hasNext())
        {
          PendingIntent localPendingIntent = (PendingIntent)localIterator.next();
          Intent localIntent = new Intent();
          Bundle localBundle = new Bundle();
          localBundle.putParcelable("location", paramAMapLocation);
          localIntent.putExtras(localBundle);
          try
          {
            localPendingIntent.send(LocationManagerProxy.b(LocationManagerProxy.this), 0, localIntent);
          }
          catch (PendingIntent.CanceledException localCanceledException)
          {
            localCanceledException.printStackTrace();
          }
        }
      }
    }

    public void onProviderDisabled(String paramString)
    {
    }

    public void onProviderEnabled(String paramString)
    {
    }

    public void onStatusChanged(String paramString, int paramInt, Bundle paramBundle)
    {
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.location.LocationManagerProxy
 * JD-Core Version:    0.6.0
 */