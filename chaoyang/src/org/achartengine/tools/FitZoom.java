package org.achartengine.tools;

import org.achartengine.chart.AbstractChart;
import org.achartengine.chart.RoundChart;
import org.achartengine.chart.XYChart;
import org.achartengine.model.XYMultipleSeriesDataset;
import org.achartengine.model.XYSeries;
import org.achartengine.renderer.DefaultRenderer;
import org.achartengine.renderer.XYMultipleSeriesRenderer;

public class FitZoom extends AbstractTool
{
  public FitZoom(AbstractChart paramAbstractChart)
  {
    super(paramAbstractChart);
  }

  public void apply()
  {
    if ((this.mChart instanceof XYChart))
    {
      if (((XYChart)this.mChart).getDataset() == null);
      while (true)
      {
        return;
        int i = this.mRenderer.getScalesCount();
        if (this.mRenderer.isInitialRangeSet())
        {
          for (int n = 0; n < i; n++)
          {
            if (!this.mRenderer.isInitialRangeSet(n))
              continue;
            this.mRenderer.setRange(this.mRenderer.getInitialRange(n), n);
          }
          continue;
        }
        XYSeries[] arrayOfXYSeries = ((XYChart)this.mChart).getDataset().getSeries();
        int j = arrayOfXYSeries.length;
        if (j <= 0)
          continue;
        for (int k = 0; k < i; k++)
        {
          double[] arrayOfDouble1 = { 1.7976931348623157E+308D, -1.797693134862316E+308D, 1.7976931348623157E+308D, -1.797693134862316E+308D };
          for (int m = 0; m < j; m++)
          {
            if (k != arrayOfXYSeries[m].getScaleNumber())
              continue;
            arrayOfDouble1[0] = Math.min(arrayOfDouble1[0], arrayOfXYSeries[m].getMinX());
            arrayOfDouble1[1] = Math.max(arrayOfDouble1[1], arrayOfXYSeries[m].getMaxX());
            arrayOfDouble1[2] = Math.min(arrayOfDouble1[2], arrayOfXYSeries[m].getMinY());
            arrayOfDouble1[3] = Math.max(arrayOfDouble1[3], arrayOfXYSeries[m].getMaxY());
          }
          double d1 = Math.abs(arrayOfDouble1[1] - arrayOfDouble1[0]) / 40.0D;
          double d2 = Math.abs(arrayOfDouble1[3] - arrayOfDouble1[2]) / 40.0D;
          XYMultipleSeriesRenderer localXYMultipleSeriesRenderer = this.mRenderer;
          double[] arrayOfDouble2 = new double[4];
          arrayOfDouble1[0] -= d1;
          arrayOfDouble2[1] = (d1 + arrayOfDouble1[1]);
          arrayOfDouble1[2] -= d2;
          arrayOfDouble2[3] = (d2 + arrayOfDouble1[3]);
          localXYMultipleSeriesRenderer.setRange(arrayOfDouble2, k);
        }
      }
    }
    DefaultRenderer localDefaultRenderer = ((RoundChart)this.mChart).getRenderer();
    localDefaultRenderer.setScale(localDefaultRenderer.getOriginalScale());
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     org.achartengine.tools.FitZoom
 * JD-Core Version:    0.6.0
 */