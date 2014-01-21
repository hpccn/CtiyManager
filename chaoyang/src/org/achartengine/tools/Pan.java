package org.achartengine.tools;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.achartengine.chart.AbstractChart;
import org.achartengine.chart.RoundChart;
import org.achartengine.chart.XYChart;
import org.achartengine.renderer.XYMultipleSeriesRenderer;

public class Pan extends AbstractTool
{
  private boolean limitsReachedX = false;
  private boolean limitsReachedY = false;
  private List<PanListener> mPanListeners = new ArrayList();

  public Pan(AbstractChart paramAbstractChart)
  {
    super(paramAbstractChart);
  }

  private double getAxisRatio(double[] paramArrayOfDouble)
  {
    return Math.abs(paramArrayOfDouble[1] - paramArrayOfDouble[0]) / Math.abs(paramArrayOfDouble[3] - paramArrayOfDouble[2]);
  }

  private void notifyPanListeners()
  {
    monitorenter;
    try
    {
      Iterator localIterator = this.mPanListeners.iterator();
      while (localIterator.hasNext())
        ((PanListener)localIterator.next()).panApplied();
    }
    finally
    {
      monitorexit;
    }
    monitorexit;
  }

  public void addPanListener(PanListener paramPanListener)
  {
    monitorenter;
    try
    {
      this.mPanListeners.add(paramPanListener);
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

  public void apply(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    int i = 1;
    int j = 1;
    int k = 1;
    int m = 1;
    if ((this.mChart instanceof XYChart))
    {
      int n = this.mRenderer.getScalesCount();
      double[] arrayOfDouble1 = this.mRenderer.getPanLimits();
      if ((arrayOfDouble1 != null) && (arrayOfDouble1.length == 4));
      XYChart localXYChart;
      int i2;
      double[] arrayOfDouble2;
      for (int i1 = 1; ; i1 = 0)
      {
        localXYChart = (XYChart)this.mChart;
        i2 = 0;
        if (i2 >= n)
          break label544;
        arrayOfDouble2 = getRange(i2);
        double[] arrayOfDouble3 = localXYChart.getCalcRange(i2);
        if ((!this.limitsReachedX) || (!this.limitsReachedY) || (((arrayOfDouble2[0] != arrayOfDouble2[1]) || (arrayOfDouble3[0] != arrayOfDouble3[1])) && ((arrayOfDouble2[2] != arrayOfDouble2[3]) || (arrayOfDouble3[2] != arrayOfDouble3[3]))))
          break;
        return;
      }
      checkRange(arrayOfDouble2, i2);
      double[] arrayOfDouble4 = localXYChart.toRealPoint(paramFloat1, paramFloat2, i2);
      double[] arrayOfDouble5 = localXYChart.toRealPoint(paramFloat3, paramFloat4, i2);
      double d1 = arrayOfDouble4[0] - arrayOfDouble5[0];
      double d2 = arrayOfDouble4[1] - arrayOfDouble5[1];
      double d3 = getAxisRatio(arrayOfDouble2);
      if (localXYChart.isVertical(this.mRenderer))
      {
        double d4 = d3 * -d2;
        double d5 = d1 / d3;
        d1 = d4;
        d2 = d5;
      }
      label395: label418: if (this.mRenderer.isPanXEnabled())
      {
        if (arrayOfDouble1 != null)
        {
          if (k != 0)
          {
            if (arrayOfDouble1[0] > d1 + arrayOfDouble2[0])
              break label464;
            k = 1;
          }
          label294: if (m != 0)
          {
            if (arrayOfDouble1[1] < d1 + arrayOfDouble2[1])
              break label470;
            m = 1;
          }
        }
        label317: if ((i1 != 0) && ((k == 0) || (m == 0)))
          break label476;
        setXRange(d1 + arrayOfDouble2[0], d1 + arrayOfDouble2[1], i2);
        this.limitsReachedX = false;
      }
      else
      {
        label357: if (this.mRenderer.isPanYEnabled())
        {
          if (arrayOfDouble1 != null)
          {
            if (j != 0)
            {
              if (arrayOfDouble1[2] > d2 + arrayOfDouble2[2])
                break label484;
              j = 1;
            }
            if (i != 0)
            {
              if (arrayOfDouble1[3] < d2 + arrayOfDouble2[3])
                break label490;
              i = 1;
            }
          }
          if ((i1 != 0) && ((j == 0) || (i == 0)))
            break label496;
          setYRange(d2 + arrayOfDouble2[2], d2 + arrayOfDouble2[3], i2);
        }
      }
      label464: label470: label476: label484: label490: label496: for (this.limitsReachedY = false; ; this.limitsReachedY = true)
      {
        i2++;
        break;
        k = 0;
        break label294;
        m = 0;
        break label317;
        this.limitsReachedX = true;
        break label357;
        j = 0;
        break label395;
        i = 0;
        break label418;
      }
    }
    RoundChart localRoundChart = (RoundChart)this.mChart;
    localRoundChart.setCenterX(localRoundChart.getCenterX() + (int)(paramFloat3 - paramFloat1));
    localRoundChart.setCenterY(localRoundChart.getCenterY() + (int)(paramFloat4 - paramFloat2));
    label544: notifyPanListeners();
  }

  public void removePanListener(PanListener paramPanListener)
  {
    monitorenter;
    try
    {
      this.mPanListeners.remove(paramPanListener);
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
 * Qualified Name:     org.achartengine.tools.Pan
 * JD-Core Version:    0.6.0
 */