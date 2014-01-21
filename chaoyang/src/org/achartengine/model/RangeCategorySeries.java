package org.achartengine.model;

import java.util.ArrayList;
import java.util.List;

public class RangeCategorySeries extends CategorySeries
{
  private List<Double> mMaxValues = new ArrayList();

  public RangeCategorySeries(String paramString)
  {
    super(paramString);
  }

  public void add(double paramDouble1, double paramDouble2)
  {
    monitorenter;
    try
    {
      super.add(paramDouble1);
      this.mMaxValues.add(Double.valueOf(paramDouble2));
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

  public void add(String paramString, double paramDouble1, double paramDouble2)
  {
    monitorenter;
    try
    {
      super.add(paramString, paramDouble1);
      this.mMaxValues.add(Double.valueOf(paramDouble2));
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
      super.clear();
      this.mMaxValues.clear();
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

  public double getMaximumValue(int paramInt)
  {
    return ((Double)this.mMaxValues.get(paramInt)).doubleValue();
  }

  public double getMinimumValue(int paramInt)
  {
    return getValue(paramInt);
  }

  public void remove(int paramInt)
  {
    monitorenter;
    try
    {
      super.remove(paramInt);
      this.mMaxValues.remove(paramInt);
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

  public XYSeries toXYSeries()
  {
    XYSeries localXYSeries = new XYSeries(getTitle());
    int i = getItemCount();
    for (int j = 0; j < i; j++)
    {
      localXYSeries.add(j + 1, getMinimumValue(j));
      localXYSeries.add(1.000001D + j, getMaximumValue(j));
    }
    return localXYSeries;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     org.achartengine.model.RangeCategorySeries
 * JD-Core Version:    0.6.0
 */