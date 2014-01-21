package com.autonavi.amap.mapcore;

public class ConnectionManager extends Thread
{
  c connectionPool = new c();
  int sleepTime = 30;
  boolean threadFlag = true;

  public ConnectionManager()
  {
    super("ConnectionManager");
  }

  public void addConntionTask(MapLoader paramMapLoader)
  {
    monitorenter;
    try
    {
      this.connectionPool.a(paramMapLoader);
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

  protected void finalize()
  {
    this.threadFlag = false;
    if (this.connectionPool != null)
      this.connectionPool.clear();
    interrupt();
  }

  public int getTaskCount()
  {
    monitorenter;
    try
    {
      int i = this.connectionPool.size();
      monitorexit;
      return i;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public void insertConntionTask(MapLoader paramMapLoader)
  {
    monitorenter;
    try
    {
      this.connectionPool.insertElementAt(paramMapLoader, 0);
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

  public boolean isEmptyTask()
  {
    monitorenter;
    try
    {
      int i = this.connectionPool.size();
      if (i == 0)
      {
        j = 1;
        return j;
      }
      int j = 0;
    }
    finally
    {
      monitorexit;
    }
  }

  public void run()
  {
    if (this.threadFlag)
      while (true)
      {
        while ((!this.threadFlag) || (isInterrupted()) || (this.connectionPool == null))
          try
          {
            interrupt();
          }
          catch (Exception localException1)
          {
          }
        MapLoader localMapLoader = (MapLoader)this.connectionPool.a();
        if (localMapLoader == null)
          break;
        label51: if (System.currentTimeMillis() - localMapLoader.createtime > 50L)
        {
          localMapLoader.doRequest();
          continue;
        }
        try
        {
          sleep(10L);
          label79: if (this.threadFlag)
            break label51;
        }
        catch (Exception localException2)
        {
          break label79;
        }
      }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.autonavi.amap.mapcore.ConnectionManager
 * JD-Core Version:    0.6.0
 */