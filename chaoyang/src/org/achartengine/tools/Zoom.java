package org.achartengine.tools;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.achartengine.chart.AbstractChart;
import org.achartengine.chart.RoundChart;
import org.achartengine.chart.XYChart;
import org.achartengine.renderer.DefaultRenderer;
import org.achartengine.renderer.XYMultipleSeriesRenderer;

public class Zoom extends AbstractTool
{
  public static final int ZOOM_AXIS_X = 1;
  public static final int ZOOM_AXIS_XY = 0;
  public static final int ZOOM_AXIS_Y = 2;
  private boolean limitsReachedX = false;
  private boolean limitsReachedY = false;
  private boolean mZoomIn;
  private List<ZoomListener> mZoomListeners = new ArrayList();
  private float mZoomRate;

  public Zoom(AbstractChart paramAbstractChart, boolean paramBoolean, float paramFloat)
  {
    super(paramAbstractChart);
    this.mZoomIn = paramBoolean;
    setZoomRate(paramFloat);
  }

  private void notifyZoomListeners(ZoomEvent paramZoomEvent)
  {
    monitorenter;
    try
    {
      Iterator localIterator = this.mZoomListeners.iterator();
      while (localIterator.hasNext())
        ((ZoomListener)localIterator.next()).zoomApplied(paramZoomEvent);
    }
    finally
    {
      monitorexit;
    }
    monitorexit;
  }

  public void addZoomListener(ZoomListener paramZoomListener)
  {
    monitorenter;
    try
    {
      this.mZoomListeners.add(paramZoomListener);
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

  public void apply(int paramInt)
  {
    label181: label215: label480: label493: DefaultRenderer localDefaultRenderer;
    if ((this.mChart instanceof XYChart))
    {
      int i = this.mRenderer.getScalesCount();
      int j = 0;
      if (j < i)
      {
        double[] arrayOfDouble1 = getRange(j);
        checkRange(arrayOfDouble1, j);
        double[] arrayOfDouble2 = this.mRenderer.getZoomLimits();
        double d1 = (arrayOfDouble1[0] + arrayOfDouble1[1]) / 2.0D;
        double d2 = (arrayOfDouble1[2] + arrayOfDouble1[3]) / 2.0D;
        double d3 = arrayOfDouble1[1] - arrayOfDouble1[0];
        double d4 = arrayOfDouble1[3] - arrayOfDouble1[2];
        double d5 = d1 - d3 / 2.0D;
        double d6 = d1 + d3 / 2.0D;
        double d7 = d2 - d4 / 2.0D;
        double d8 = d2 + d4 / 2.0D;
        boolean bool1;
        boolean bool2;
        label263: label298: double d9;
        double d10;
        if (j == 0)
        {
          if ((arrayOfDouble2 != null) && ((d5 <= arrayOfDouble2[0]) || (d6 >= arrayOfDouble2[1])))
          {
            bool1 = true;
            this.limitsReachedX = bool1;
            if ((arrayOfDouble2 == null) || ((d7 > arrayOfDouble2[2]) && (d8 < arrayOfDouble2[3])))
              break label461;
            bool2 = true;
            this.limitsReachedY = bool2;
          }
        }
        else
        {
          if (!this.mZoomIn)
            break label493;
          if ((this.mRenderer.isZoomXEnabled()) && ((paramInt == 1) || (paramInt == 0)) && ((!this.limitsReachedX) || (this.mZoomRate >= 1.0F)))
            break label467;
          if ((this.mRenderer.isZoomYEnabled()) && ((paramInt == 2) || (paramInt == 0)) && ((!this.limitsReachedY) || (this.mZoomRate >= 1.0F)))
            break label480;
          if (arrayOfDouble2 == null)
            break label568;
          d9 = Math.min(this.mRenderer.getZoomInLimitX(), arrayOfDouble2[1] - arrayOfDouble2[0]);
          d10 = Math.min(this.mRenderer.getZoomInLimitY(), arrayOfDouble2[3] - arrayOfDouble2[2]);
        }
        while (true)
        {
          double d11 = Math.max(d3, d9);
          double d12 = Math.max(d4, d10);
          if ((this.mRenderer.isZoomXEnabled()) && ((paramInt == 1) || (paramInt == 0)))
            setXRange(d1 - d11 / 2.0D, d1 + d11 / 2.0D, j);
          if ((this.mRenderer.isZoomYEnabled()) && ((paramInt == 2) || (paramInt == 0)))
            setYRange(d2 - d12 / 2.0D, d2 + d12 / 2.0D, j);
          j++;
          break;
          bool1 = false;
          break label181;
          label461: bool2 = false;
          break label215;
          label467: d3 /= this.mZoomRate;
          break label263;
          d4 /= this.mZoomRate;
          break label298;
          if ((this.mRenderer.isZoomXEnabled()) && (!this.limitsReachedX) && ((paramInt == 1) || (paramInt == 0)))
            d3 *= this.mZoomRate;
          if ((!this.mRenderer.isZoomYEnabled()) || (this.limitsReachedY) || ((paramInt != 2) && (paramInt != 0)))
            break label298;
          d4 *= this.mZoomRate;
          break label298;
          label568: d9 = this.mRenderer.getZoomInLimitX();
          d10 = this.mRenderer.getZoomInLimitY();
        }
      }
    }
    else
    {
      localDefaultRenderer = ((RoundChart)this.mChart).getRenderer();
      if (!this.mZoomIn)
        break label640;
      localDefaultRenderer.setScale(localDefaultRenderer.getScale() * this.mZoomRate);
    }
    while (true)
    {
      notifyZoomListeners(new ZoomEvent(this.mZoomIn, this.mZoomRate));
      return;
      label640: localDefaultRenderer.setScale(localDefaultRenderer.getScale() / this.mZoomRate);
    }
  }

  public void notifyZoomResetListeners()
  {
    monitorenter;
    try
    {
      Iterator localIterator = this.mZoomListeners.iterator();
      while (localIterator.hasNext())
        ((ZoomListener)localIterator.next()).zoomReset();
    }
    finally
    {
      monitorexit;
    }
    monitorexit;
  }

  public void removeZoomListener(ZoomListener paramZoomListener)
  {
    monitorenter;
    try
    {
      this.mZoomListeners.remove(paramZoomListener);
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

  public void setZoomRate(float paramFloat)
  {
    this.mZoomRate = paramFloat;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     org.achartengine.tools.Zoom
 * JD-Core Version:    0.6.0
 */