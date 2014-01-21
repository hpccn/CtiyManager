package com.amap.api.offlinemap;

import android.content.Context;
import android.os.Handler;
import java.util.ArrayList;
import java.util.Iterator;

public final class OfflineMapManager
{
  Handler a = new d(this);
  private c b;
  private OfflineMapDownloadListener c;
  private ArrayList<City> d = new ArrayList();
  private Context e;

  public OfflineMapManager(Context paramContext, OfflineMapDownloadListener paramOfflineMapDownloadListener)
  {
    this.e = paramContext;
    this.b = new c(paramContext, this.a);
    com.amap.api.a.b.c.a(paramContext);
    this.c = paramOfflineMapDownloadListener;
    this.b.c();
  }

  private void a(DownCity paramDownCity)
  {
    this.d.add(paramDownCity);
    g localg = new g(paramDownCity);
    localg.a(this.b.b.size());
    localg.a = 2;
    this.b.b.add(localg);
    this.b.a(-1 + this.b.b.size());
  }

  public boolean downloadByCityCode(String paramString)
  {
    if (!com.amap.api.a.b.g.c(this.e));
    DownCity localDownCity;
    do
    {
      return false;
      localDownCity = getItemByCityCode(paramString);
    }
    while (localDownCity == null);
    a(localDownCity);
    return true;
  }

  public boolean downloadByCityName(String paramString)
  {
    if (!com.amap.api.a.b.g.c(this.e));
    DownCity localDownCity;
    do
    {
      return false;
      localDownCity = getItemByCityName(paramString);
    }
    while (localDownCity == null);
    a(localDownCity);
    return true;
  }

  public ArrayList<City> getDownloadingCityList()
  {
    return this.d;
  }

  public DownCity getItemByCityCode(String paramString)
  {
    Iterator localIterator = this.b.d.iterator();
    while (localIterator.hasNext())
    {
      DownCity localDownCity = (DownCity)localIterator.next();
      if (localDownCity.getCode().equals(paramString))
        return localDownCity;
    }
    return null;
  }

  public DownCity getItemByCityName(String paramString)
  {
    Iterator localIterator = this.b.d.iterator();
    while (localIterator.hasNext())
    {
      DownCity localDownCity = (DownCity)localIterator.next();
      String str = localDownCity.getCity();
      if ((str.contains(paramString)) || (paramString.contains(str)))
        return localDownCity;
    }
    return null;
  }

  public ArrayList<DownCity> getOfflineCityList()
  {
    return this.b.d;
  }

  public void pause()
  {
    this.b.b(0);
  }

  public void remove(String paramString)
  {
    DownCity localDownCity = getItemByCityName(paramString);
    if (localDownCity != null)
    {
      g localg = new g(localDownCity);
      this.b.a(localg);
    }
  }

  public void restart()
  {
    this.b.a(-1 + this.b.b.size());
  }

  public void stop()
  {
    this.b.b();
  }

  public static abstract interface OfflineMapDownloadListener
  {
    public abstract void onDownload(int paramInt1, int paramInt2);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.offlinemap.OfflineMapManager
 * JD-Core Version:    0.6.0
 */