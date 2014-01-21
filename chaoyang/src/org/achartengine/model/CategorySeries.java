package org.achartengine.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class CategorySeries
  implements Serializable
{
  private List<String> mCategories = new ArrayList();
  private String mTitle;
  private List<Double> mValues = new ArrayList();

  public CategorySeries(String paramString)
  {
    this.mTitle = paramString;
  }

  public void add(double paramDouble)
  {
    monitorenter;
    try
    {
      add(this.mCategories.size() + "", paramDouble);
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

  public void add(String paramString, double paramDouble)
  {
    monitorenter;
    try
    {
      this.mCategories.add(paramString);
      this.mValues.add(Double.valueOf(paramDouble));
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
      this.mCategories.clear();
      this.mValues.clear();
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

  public String getCategory(int paramInt)
  {
    monitorenter;
    try
    {
      String str = (String)this.mCategories.get(paramInt);
      monitorexit;
      return str;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public int getItemCount()
  {
    monitorenter;
    try
    {
      int i = this.mCategories.size();
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

  public String getTitle()
  {
    return this.mTitle;
  }

  public double getValue(int paramInt)
  {
    monitorenter;
    try
    {
      double d = ((Double)this.mValues.get(paramInt)).doubleValue();
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
      this.mCategories.remove(paramInt);
      this.mValues.remove(paramInt);
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

  public void set(int paramInt, String paramString, double paramDouble)
  {
    monitorenter;
    try
    {
      this.mCategories.set(paramInt, paramString);
      this.mValues.set(paramInt, Double.valueOf(paramDouble));
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
    XYSeries localXYSeries = new XYSeries(this.mTitle);
    int i = 0;
    Iterator localIterator = this.mValues.iterator();
    while (localIterator.hasNext())
    {
      double d = ((Double)localIterator.next()).doubleValue();
      i++;
      localXYSeries.add(i, d);
    }
    return localXYSeries;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     org.achartengine.model.CategorySeries
 * JD-Core Version:    0.6.0
 */