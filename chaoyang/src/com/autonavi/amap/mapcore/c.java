package com.autonavi.amap.mapcore;

import java.util.Vector;

class c extends Vector
{
  protected int a = -1;

  public Object a()
  {
    monitorenter;
    try
    {
      boolean bool = b();
      Object localObject2;
      if (bool)
        localObject2 = null;
      while (true)
      {
        return localObject2;
        localObject2 = super.elementAt(0);
        super.removeElementAt(0);
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject1;
  }

  public void a(Object paramObject)
  {
    monitorenter;
    try
    {
      if ((this.a > 0) && (size() > this.a))
        a();
      super.addElement(paramObject);
      return;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public boolean b()
  {
    return super.isEmpty();
  }

  public void clear()
  {
    monitorenter;
    try
    {
      super.removeAllElements();
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
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.autonavi.amap.mapcore.c
 * JD-Core Version:    0.6.0
 */