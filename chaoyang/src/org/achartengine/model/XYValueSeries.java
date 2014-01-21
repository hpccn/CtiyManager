package org.achartengine.model;

import java.util.ArrayList;
import java.util.List;

public class XYValueSeries extends XYSeries
{
  private double mMaxValue = -1.797693134862316E+308D;
  private double mMinValue = 1.7976931348623157E+308D;
  private List<Double> mValue = new ArrayList();

  public XYValueSeries(String paramString)
  {
    super(paramString);
  }

  private void initRange()
  {
    this.mMinValue = 1.7976931348623157E+308D;
    this.mMaxValue = 1.7976931348623157E+308D;
    int i = getItemCount();
    for (int j = 0; j < i; j++)
      updateRange(getValue(j));
  }

  private void updateRange(double paramDouble)
  {
    this.mMinValue = Math.min(this.mMinValue, paramDouble);
    this.mMaxValue = Math.max(this.mMaxValue, paramDouble);
  }

  public void add(double paramDouble1, double paramDouble2)
  {
    monitorenter;
    try
    {
      add(paramDouble1, paramDouble2, 0.0D);
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

  public void add(double paramDouble1, double paramDouble2, double paramDouble3)
  {
    monitorenter;
    try
    {
      super.add(paramDouble1, paramDouble2);
      this.mValue.add(Double.valueOf(paramDouble3));
      updateRange(paramDouble3);
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
      this.mValue.clear();
      initRange();
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

  public double getMaxValue()
  {
    return this.mMaxValue;
  }

  public double getMinValue()
  {
    return this.mMinValue;
  }

  public double getValue(int paramInt)
  {
    monitorenter;
    try
    {
      double d = ((Double)this.mValue.get(paramInt)).doubleValue();
      monitorexit;
      return d;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public void remove(int paramInt)
  {
    monitorenter;
    try
    {
      super.remove(paramInt);
      double d = ((Double)this.mValue.remove(paramInt)).doubleValue();
      if ((d == this.mMinValue) || (d == this.mMaxValue))
        initRange();
      return;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     org.achartengine.model.XYValueSeries
 * JD-Core Version:    0.6.0
 */