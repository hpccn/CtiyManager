package com.autonavi.amap.mapcore;

import java.util.Hashtable;

class d
{
  int a = 0;
  long b;
  boolean c = true;
  private Hashtable d = new Hashtable();

  public d()
  {
    a();
  }

  public void a()
  {
    this.b = System.currentTimeMillis();
  }

  public void a(String paramString)
  {
    this.d.remove(paramString);
  }

  public boolean b(String paramString)
  {
    return this.d.get(paramString) != null;
  }

  public void c(String paramString)
  {
    this.d.put(paramString, new b(paramString, 0));
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.autonavi.amap.mapcore.d
 * JD-Core Version:    0.6.0
 */