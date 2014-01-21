package org.achartengine.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.SortedMap;
import org.achartengine.util.IndexXYMap;
import org.achartengine.util.XYEntry;

public class XYSeries
  implements Serializable
{
  private static final double PADDING = 1.0E-12D;
  private List<String> mAnnotations = new ArrayList();
  private double mMaxX = -1.797693134862316E+308D;
  private double mMaxY = -1.797693134862316E+308D;
  private double mMinX = 1.7976931348623157E+308D;
  private double mMinY = 1.7976931348623157E+308D;
  private final int mScaleNumber;
  private final IndexXYMap<Double, Double> mStringXY = new IndexXYMap();
  private String mTitle;
  private final IndexXYMap<Double, Double> mXY = new IndexXYMap();

  public XYSeries(String paramString)
  {
    this(paramString, 0);
  }

  public XYSeries(String paramString, int paramInt)
  {
    this.mTitle = paramString;
    this.mScaleNumber = paramInt;
    initRange();
  }

  private void initRange()
  {
    this.mMinX = 1.7976931348623157E+308D;
    this.mMaxX = -1.797693134862316E+308D;
    this.mMinY = 1.7976931348623157E+308D;
    this.mMaxY = -1.797693134862316E+308D;
    int i = getItemCount();
    for (int j = 0; j < i; j++)
      updateRange(getX(j), getY(j));
  }

  private void updateRange(double paramDouble1, double paramDouble2)
  {
    this.mMinX = Math.min(this.mMinX, paramDouble1);
    this.mMaxX = Math.max(this.mMaxX, paramDouble1);
    this.mMinY = Math.min(this.mMinY, paramDouble2);
    this.mMaxY = Math.max(this.mMaxY, paramDouble2);
  }

  public void add(double paramDouble1, double paramDouble2)
  {
    monitorenter;
    try
    {
      while (this.mXY.get(Double.valueOf(paramDouble1)) != null)
        paramDouble1 += getPadding();
      this.mXY.put(Double.valueOf(paramDouble1), Double.valueOf(paramDouble2));
      updateRange(paramDouble1, paramDouble2);
      return;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public void add(int paramInt, double paramDouble1, double paramDouble2)
  {
    monitorenter;
    try
    {
      while (this.mXY.get(Double.valueOf(paramDouble1)) != null)
        paramDouble1 += getPadding();
      this.mXY.put(paramInt, Double.valueOf(paramDouble1), Double.valueOf(paramDouble2));
      updateRange(paramDouble1, paramDouble2);
      return;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public void addAnnotation(String paramString, double paramDouble1, double paramDouble2)
  {
    this.mAnnotations.add(paramString);
    this.mStringXY.put(Double.valueOf(paramDouble1), Double.valueOf(paramDouble2));
  }

  public void clear()
  {
    monitorenter;
    try
    {
      this.mXY.clear();
      this.mStringXY.clear();
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

  public String getAnnotationAt(int paramInt)
  {
    return (String)this.mAnnotations.get(paramInt);
  }

  public int getAnnotationCount()
  {
    return this.mAnnotations.size();
  }

  public double getAnnotationX(int paramInt)
  {
    return ((Double)this.mStringXY.getXByIndex(paramInt)).doubleValue();
  }

  public double getAnnotationY(int paramInt)
  {
    return ((Double)this.mStringXY.getYByIndex(paramInt)).doubleValue();
  }

  public int getIndexForKey(double paramDouble)
  {
    return this.mXY.getIndexForKey(Double.valueOf(paramDouble));
  }

  public int getItemCount()
  {
    monitorenter;
    try
    {
      int i = this.mXY.size();
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

  public double getMaxX()
  {
    return this.mMaxX;
  }

  public double getMaxY()
  {
    return this.mMaxY;
  }

  public double getMinX()
  {
    return this.mMinX;
  }

  public double getMinY()
  {
    return this.mMinY;
  }

  protected double getPadding()
  {
    return 1.0E-12D;
  }

  public SortedMap<Double, Double> getRange(double paramDouble1, double paramDouble2, boolean paramBoolean)
  {
    monitorenter;
    if (paramBoolean);
    try
    {
      SortedMap localSortedMap2 = this.mXY.headMap(Double.valueOf(paramDouble1));
      if (!localSortedMap2.isEmpty())
        paramDouble1 = ((Double)localSortedMap2.lastKey()).doubleValue();
      SortedMap localSortedMap3 = this.mXY.tailMap(Double.valueOf(paramDouble2));
      Double localDouble;
      if (!localSortedMap3.isEmpty())
      {
        Iterator localIterator = localSortedMap3.keySet().iterator();
        localDouble = (Double)localIterator.next();
        if (!localIterator.hasNext())
          break label139;
        paramDouble2 = ((Double)localIterator.next()).doubleValue();
      }
      while (true)
      {
        SortedMap localSortedMap1 = this.mXY.subMap(Double.valueOf(paramDouble1), Double.valueOf(paramDouble2));
        return localSortedMap1;
        label139: double d = localDouble.doubleValue();
        paramDouble2 += d;
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public int getScaleNumber()
  {
    return this.mScaleNumber;
  }

  public String getTitle()
  {
    return this.mTitle;
  }

  public double getX(int paramInt)
  {
    monitorenter;
    try
    {
      double d = ((Double)this.mXY.getXByIndex(paramInt)).doubleValue();
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

  public double getY(int paramInt)
  {
    monitorenter;
    try
    {
      double d = ((Double)this.mXY.getYByIndex(paramInt)).doubleValue();
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
      XYEntry localXYEntry = this.mXY.removeByIndex(paramInt);
      double d1 = ((Double)localXYEntry.getKey()).doubleValue();
      double d2 = ((Double)localXYEntry.getValue()).doubleValue();
      if ((d1 == this.mMinX) || (d1 == this.mMaxX) || (d2 == this.mMinY) || (d2 == this.mMaxY))
        initRange();
      return;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public void removeAnnotation(int paramInt)
  {
    this.mAnnotations.remove(paramInt);
    this.mStringXY.removeByIndex(paramInt);
  }

  public void setTitle(String paramString)
  {
    this.mTitle = paramString;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     org.achartengine.model.XYSeries
 * JD-Core Version:    0.6.0
 */