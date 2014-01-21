package org.achartengine.chart;

import android.graphics.Canvas;
import android.graphics.Paint;
import java.util.List;
import org.achartengine.model.XYMultipleSeriesDataset;
import org.achartengine.model.XYSeries;
import org.achartengine.renderer.SimpleSeriesRenderer;
import org.achartengine.renderer.XYMultipleSeriesRenderer;
import org.achartengine.renderer.XYMultipleSeriesRenderer.Orientation;

public class CombinedXYChart extends XYChart
{
  private XYChart[] mCharts;
  private Class<?>[] xyChartTypes = { TimeChart.class, LineChart.class, CubicLineChart.class, BarChart.class, BubbleChart.class, ScatterChart.class, RangeBarChart.class, RangeStackedBarChart.class };

  public CombinedXYChart(XYMultipleSeriesDataset paramXYMultipleSeriesDataset, XYMultipleSeriesRenderer paramXYMultipleSeriesRenderer, String[] paramArrayOfString)
  {
    super(paramXYMultipleSeriesDataset, paramXYMultipleSeriesRenderer);
    int i = paramArrayOfString.length;
    this.mCharts = new XYChart[i];
    int j = 0;
    while (true)
    {
      if (j < i);
      try
      {
        this.mCharts[j] = getXYChart(paramArrayOfString[j]);
        label95: if (this.mCharts[j] == null)
          throw new IllegalArgumentException("Unknown chart type " + paramArrayOfString[j]);
        XYMultipleSeriesDataset localXYMultipleSeriesDataset = new XYMultipleSeriesDataset();
        localXYMultipleSeriesDataset.addSeries(paramXYMultipleSeriesDataset.getSeriesAt(j));
        XYMultipleSeriesRenderer localXYMultipleSeriesRenderer = new XYMultipleSeriesRenderer();
        localXYMultipleSeriesRenderer.setBarSpacing(paramXYMultipleSeriesRenderer.getBarSpacing());
        localXYMultipleSeriesRenderer.setPointSize(paramXYMultipleSeriesRenderer.getPointSize());
        int k = paramXYMultipleSeriesDataset.getSeriesAt(j).getScaleNumber();
        if (paramXYMultipleSeriesRenderer.isMinXSet(k))
          localXYMultipleSeriesRenderer.setXAxisMin(paramXYMultipleSeriesRenderer.getXAxisMin(k));
        if (paramXYMultipleSeriesRenderer.isMaxXSet(k))
          localXYMultipleSeriesRenderer.setXAxisMax(paramXYMultipleSeriesRenderer.getXAxisMax(k));
        if (paramXYMultipleSeriesRenderer.isMinYSet(k))
          localXYMultipleSeriesRenderer.setYAxisMin(paramXYMultipleSeriesRenderer.getYAxisMin(k));
        if (paramXYMultipleSeriesRenderer.isMaxYSet(k))
          localXYMultipleSeriesRenderer.setYAxisMax(paramXYMultipleSeriesRenderer.getYAxisMax(k));
        localXYMultipleSeriesRenderer.addSeriesRenderer(paramXYMultipleSeriesRenderer.getSeriesRendererAt(j));
        this.mCharts[j].setDatasetRenderer(localXYMultipleSeriesDataset, localXYMultipleSeriesRenderer);
        j++;
        continue;
        return;
      }
      catch (Exception localException)
      {
        break label95;
      }
    }
  }

  private XYChart getXYChart(String paramString)
    throws IllegalAccessException, InstantiationException
  {
    Object localObject = null;
    int i = this.xyChartTypes.length;
    for (int j = 0; (j < i) && (localObject == null); j++)
    {
      XYChart localXYChart = (XYChart)this.xyChartTypes[j].newInstance();
      if (!paramString.equals(localXYChart.getChartType()))
        continue;
      localObject = localXYChart;
    }
    return localObject;
  }

  protected ClickableArea[] clickableAreasForPoints(List<Float> paramList, List<Double> paramList1, float paramFloat, int paramInt1, int paramInt2)
  {
    return this.mCharts[paramInt1].clickableAreasForPoints(paramList, paramList1, paramFloat, 0, paramInt2);
  }

  public void drawLegendShape(Canvas paramCanvas, SimpleSeriesRenderer paramSimpleSeriesRenderer, float paramFloat1, float paramFloat2, int paramInt, Paint paramPaint)
  {
    this.mCharts[paramInt].drawLegendShape(paramCanvas, paramSimpleSeriesRenderer, paramFloat1, paramFloat2, 0, paramPaint);
  }

  public void drawSeries(Canvas paramCanvas, Paint paramPaint, List<Float> paramList, SimpleSeriesRenderer paramSimpleSeriesRenderer, float paramFloat, int paramInt1, int paramInt2)
  {
    this.mCharts[paramInt1].setScreenR(getScreenR());
    this.mCharts[paramInt1].setCalcRange(getCalcRange(this.mDataset.getSeriesAt(paramInt1).getScaleNumber()), 0);
    this.mCharts[paramInt1].drawSeries(paramCanvas, paramPaint, paramList, paramSimpleSeriesRenderer, paramFloat, 0, paramInt2);
  }

  protected void drawSeries(XYSeries paramXYSeries, Canvas paramCanvas, Paint paramPaint, List<Float> paramList, SimpleSeriesRenderer paramSimpleSeriesRenderer, float paramFloat, int paramInt1, XYMultipleSeriesRenderer.Orientation paramOrientation, int paramInt2)
  {
    this.mCharts[paramInt1].setScreenR(getScreenR());
    this.mCharts[paramInt1].setCalcRange(getCalcRange(this.mDataset.getSeriesAt(paramInt1).getScaleNumber()), 0);
    this.mCharts[paramInt1].drawSeries(paramXYSeries, paramCanvas, paramPaint, paramList, paramSimpleSeriesRenderer, paramFloat, 0, paramOrientation, paramInt2);
  }

  public String getChartType()
  {
    return "Combined";
  }

  public int getLegendShapeWidth(int paramInt)
  {
    return this.mCharts[paramInt].getLegendShapeWidth(0);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     org.achartengine.chart.CombinedXYChart
 * JD-Core Version:    0.6.0
 */