package org.achartengine.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class XYMultipleSeriesDataset
  implements Serializable
{
  private List<XYSeries> mSeries = new ArrayList();

  public void addAllSeries(List<XYSeries> paramList)
  {
    monitorenter;
    try
    {
      this.mSeries.addAll(paramList);
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

  public void addSeries(int paramInt, XYSeries paramXYSeries)
  {
    monitorenter;
    try
    {
      this.mSeries.add(paramInt, paramXYSeries);
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

  public void addSeries(XYSeries paramXYSeries)
  {
    monitorenter;
    try
    {
      this.mSeries.add(paramXYSeries);
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

  public void clear()
  {
    monitorenter;
    try
    {
      this.mSeries.clear();
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

  public XYSeries[] getSeries()
  {
    monitorenter;
    try
    {
      XYSeries[] arrayOfXYSeries = (XYSeries[])this.mSeries.toArray(new XYSeries[0]);
      monitorexit;
      return arrayOfXYSeries;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public XYSeries getSeriesAt(int paramInt)
  {
    monitorenter;
    try
    {
      XYSeries localXYSeries = (XYSeries)this.mSeries.get(paramInt);
      monitorexit;
      return localXYSeries;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public int getSeriesCount()
  {
    monitorenter;
    try
    {
      int i = this.mSeries.size();
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

  public void removeSeries(int paramInt)
  {
    monitorenter;
    try
    {
      this.mSeries.remove(paramInt);
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

  public void removeSeries(XYSeries paramXYSeries)
  {
    monitorenter;
    try
    {
      this.mSeries.remove(paramXYSeries);
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
 * Qualified Name:     org.achartengine.model.XYMultipleSeriesDataset
 * JD-Core Version:    0.6.0
 */