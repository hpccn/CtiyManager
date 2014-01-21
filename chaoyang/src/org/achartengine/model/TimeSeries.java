package org.achartengine.model;

import java.util.Date;

public class TimeSeries extends XYSeries
{
  public TimeSeries(String paramString)
  {
    super(paramString);
  }

  public void add(Date paramDate, double paramDouble)
  {
    monitorenter;
    try
    {
      super.add(paramDate.getTime(), paramDouble);
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

  protected double getPadding()
  {
    return 1.0D;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     org.achartengine.model.TimeSeries
 * JD-Core Version:    0.6.0
 */