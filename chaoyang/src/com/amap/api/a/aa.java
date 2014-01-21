package com.amap.api.a;

import java.util.concurrent.CopyOnWriteArrayList;

class aa
{
  private CopyOnWriteArrayList<h> a = new CopyOnWriteArrayList();
  private CopyOnWriteArrayList<z> b = new CopyOnWriteArrayList();

  public z a()
  {
    if (b() == 0)
      return null;
    z localz = (z)this.b.get(0);
    this.b.remove(localz);
    return localz;
  }

  public void a(h paramh)
  {
    this.a.add(paramh);
  }

  public void a(z paramz)
  {
    monitorenter;
    try
    {
      this.b.add(paramz);
      monitorexit;
      return;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public int b()
  {
    return this.b.size();
  }

  public h c()
  {
    if (d() == 0)
      return null;
    h localh = (h)this.a.get(0);
    this.a.remove(localh);
    return localh;
  }

  public int d()
  {
    return this.a.size();
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.a.aa
 * JD-Core Version:    0.6.0
 */