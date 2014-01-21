package com.amap.api.a;

import android.os.RemoteException;
import android.util.Log;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import javax.microedition.khronos.opengles.GL10;

class m
{
  private static int b = 0;
  a a = new a();
  private CopyOnWriteArrayList<r> c = new CopyOnWriteArrayList();

  static String a(String paramString)
  {
    b = 1 + b;
    return paramString + b;
  }

  public void a()
  {
    try
    {
      this.c.clear();
      return;
    }
    catch (Exception localException)
    {
      Log.d("amapApi", "GLOverlayLayer clear erro" + localException.getMessage());
    }
  }

  public void a(r paramr)
    throws RemoteException
  {
    c(paramr.b());
    this.c.add(paramr);
    c();
  }

  public void a(GL10 paramGL10)
  {
    Iterator localIterator = this.c.iterator();
    while (localIterator.hasNext())
    {
      r localr = (r)localIterator.next();
      try
      {
        if (!localr.d())
          continue;
        localr.a(paramGL10);
      }
      catch (RemoteException localRemoteException)
      {
        localRemoteException.printStackTrace();
      }
    }
  }

  public r b(String paramString)
    throws RemoteException
  {
    Iterator localIterator = this.c.iterator();
    while (localIterator.hasNext())
    {
      r localr = (r)localIterator.next();
      if ((localr != null) && (localr.b().equals(paramString)))
        return localr;
    }
    return null;
  }

  public void b()
  {
    try
    {
      Iterator localIterator = this.c.iterator();
      while (localIterator.hasNext())
        ((r)localIterator.next()).m();
    }
    catch (Exception localException)
    {
      Log.d("amapApi", "GLOverlayLayer destory erro" + localException.getMessage());
      return;
    }
    a();
  }

  public void c()
  {
    Object[] arrayOfObject = this.c.toArray();
    Arrays.sort(arrayOfObject, this.a);
    this.c.clear();
    int i = arrayOfObject.length;
    for (int j = 0; j < i; j++)
    {
      Object localObject = arrayOfObject[j];
      this.c.add((r)localObject);
    }
  }

  public boolean c(String paramString)
    throws RemoteException
  {
    r localr = b(paramString);
    if (localr != null)
      return this.c.remove(localr);
    return false;
  }

  public void d()
  {
    Iterator localIterator = this.c.iterator();
    while (localIterator.hasNext())
    {
      r localr = (r)localIterator.next();
      if (localr == null)
        continue;
      try
      {
        localr.f();
      }
      catch (RemoteException localRemoteException)
      {
        localRemoteException.printStackTrace();
      }
    }
  }

  class a
    implements Comparator<Object>
  {
    a()
    {
    }

    public int compare(Object paramObject1, Object paramObject2)
    {
      r localr1 = (r)paramObject1;
      r localr2 = (r)paramObject2;
      if ((localr1 != null) && (localr2 != null))
        try
        {
          if (localr1.c() > localr2.c())
            return 1;
          float f1 = localr1.c();
          float f2 = localr2.c();
          if (f1 < f2)
            return -1;
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
        }
      return 0;
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.a.m
 * JD-Core Version:    0.6.0
 */