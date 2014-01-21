package org.achartengine.chart;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.RectF;
import java.util.ArrayList;
import java.util.List;
import org.achartengine.model.XYMultipleSeriesDataset;
import org.achartengine.renderer.SimpleSeriesRenderer;
import org.achartengine.renderer.XYMultipleSeriesRenderer;
import org.achartengine.renderer.XYSeriesRenderer;
import org.achartengine.renderer.XYSeriesRenderer.FillOutsideLine;
import org.achartengine.renderer.XYSeriesRenderer.FillOutsideLine.Type;

public class LineChart extends XYChart
{
  private static final int SHAPE_WIDTH = 30;
  public static final String TYPE = "Line";
  private ScatterChart pointsChart;

  LineChart()
  {
  }

  public LineChart(XYMultipleSeriesDataset paramXYMultipleSeriesDataset, XYMultipleSeriesRenderer paramXYMultipleSeriesRenderer)
  {
    super(paramXYMultipleSeriesDataset, paramXYMultipleSeriesRenderer);
    this.pointsChart = new ScatterChart(paramXYMultipleSeriesDataset, paramXYMultipleSeriesRenderer);
  }

  protected ClickableArea[] clickableAreasForPoints(List<Float> paramList, List<Double> paramList1, float paramFloat, int paramInt1, int paramInt2)
  {
    int i = paramList.size();
    ClickableArea[] arrayOfClickableArea = new ClickableArea[i / 2];
    for (int j = 0; j < i; j += 2)
    {
      int k = this.mRenderer.getSelectableBuffer();
      arrayOfClickableArea[(j / 2)] = new ClickableArea(new RectF(((Float)paramList.get(j)).floatValue() - k, ((Float)paramList.get(j + 1)).floatValue() - k, ((Float)paramList.get(j)).floatValue() + k, ((Float)paramList.get(j + 1)).floatValue() + k), ((Double)paramList1.get(j)).doubleValue(), ((Double)paramList1.get(j + 1)).doubleValue());
    }
    return arrayOfClickableArea;
  }

  public void drawLegendShape(Canvas paramCanvas, SimpleSeriesRenderer paramSimpleSeriesRenderer, float paramFloat1, float paramFloat2, int paramInt, Paint paramPaint)
  {
    paramCanvas.drawLine(paramFloat1, paramFloat2, paramFloat1 + 30.0F, paramFloat2, paramPaint);
    if (isRenderPoints(paramSimpleSeriesRenderer))
      this.pointsChart.drawLegendShape(paramCanvas, paramSimpleSeriesRenderer, paramFloat1 + 5.0F, paramFloat2, paramInt, paramPaint);
  }

  public void drawSeries(Canvas paramCanvas, Paint paramPaint, List<Float> paramList, SimpleSeriesRenderer paramSimpleSeriesRenderer, float paramFloat, int paramInt1, int paramInt2)
  {
    XYSeriesRenderer localXYSeriesRenderer = (XYSeriesRenderer)paramSimpleSeriesRenderer;
    float f1 = paramPaint.getStrokeWidth();
    paramPaint.setStrokeWidth(localXYSeriesRenderer.getLineWidth());
    label340: for (XYSeriesRenderer.FillOutsideLine localFillOutsideLine : localXYSeriesRenderer.getFillOutsideLine())
    {
      if (localFillOutsideLine.getType() == XYSeriesRenderer.FillOutsideLine.Type.NONE)
        continue;
      paramPaint.setColor(localFillOutsideLine.getColor());
      ArrayList localArrayList1 = new ArrayList();
      int[] arrayOfInt = localFillOutsideLine.getFillRange();
      if (arrayOfInt == null)
        localArrayList1.addAll(paramList);
      while (true)
        switch (1.$SwitchMap$org$achartengine$renderer$XYSeriesRenderer$FillOutsideLine$Type[localFillOutsideLine.getType().ordinal()])
        {
        default:
          throw new RuntimeException("You have added a new type of filling but have not implemented.");
          localArrayList1.addAll(paramList.subList(2 * arrayOfInt[0], 2 * arrayOfInt[1]));
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        }
      float f2 = paramFloat;
      if ((localFillOutsideLine.getType() == XYSeriesRenderer.FillOutsideLine.Type.BOUNDS_ABOVE) || (localFillOutsideLine.getType() == XYSeriesRenderer.FillOutsideLine.Type.BOUNDS_BELOW))
      {
        ArrayList localArrayList2 = new ArrayList();
        int k;
        if ((localFillOutsideLine.getType() != XYSeriesRenderer.FillOutsideLine.Type.BOUNDS_ABOVE) || (((Float)localArrayList1.get(1)).floatValue() >= f2))
        {
          XYSeriesRenderer.FillOutsideLine.Type localType1 = localFillOutsideLine.getType();
          XYSeriesRenderer.FillOutsideLine.Type localType2 = XYSeriesRenderer.FillOutsideLine.Type.BOUNDS_BELOW;
          k = 0;
          if (localType1 == localType2)
          {
            boolean bool = ((Float)localArrayList1.get(1)).floatValue() < f2;
            k = 0;
            if (!bool);
          }
        }
        else
        {
          localArrayList2.add(localArrayList1.get(0));
          localArrayList2.add(localArrayList1.get(1));
          k = 1;
        }
        int m = 3;
        if (m < localArrayList1.size())
        {
          float f3 = ((Float)localArrayList1.get(m - 2)).floatValue();
          float f4 = ((Float)localArrayList1.get(m)).floatValue();
          float f6;
          if (((f3 < f2) && (f4 > f2)) || ((f3 > f2) && (f4 < f2)))
          {
            float f5 = ((Float)localArrayList1.get(m - 3)).floatValue();
            f6 = ((Float)localArrayList1.get(m - 1)).floatValue();
            localArrayList2.add(Float.valueOf(f5 + (f6 - f5) * (f2 - f3) / (f4 - f3)));
            localArrayList2.add(Float.valueOf(f2));
            if (((localFillOutsideLine.getType() == XYSeriesRenderer.FillOutsideLine.Type.BOUNDS_ABOVE) && (f4 > f2)) || ((localFillOutsideLine.getType() == XYSeriesRenderer.FillOutsideLine.Type.BOUNDS_BELOW) && (f4 < f2)))
            {
              m += 2;
              k = 0;
            }
          }
          while (true)
          {
            m += 2;
            break label340;
            f2 = paramFloat;
            break;
            f2 = paramFloat;
            break;
            f2 = paramCanvas.getHeight();
            break;
            f2 = 0.0F;
            break;
            localArrayList2.add(Float.valueOf(f6));
            localArrayList2.add(Float.valueOf(f4));
            k = 1;
            continue;
            if ((k == 0) && ((localFillOutsideLine.getType() != XYSeriesRenderer.FillOutsideLine.Type.BOUNDS_ABOVE) || (f4 >= f2)) && ((localFillOutsideLine.getType() != XYSeriesRenderer.FillOutsideLine.Type.BOUNDS_BELOW) || (f4 <= f2)))
              continue;
            localArrayList2.add(localArrayList1.get(m - 1));
            localArrayList2.add(Float.valueOf(f4));
          }
        }
        localArrayList1.clear();
        localArrayList1.addAll(localArrayList2);
      }
      int n = localArrayList1.size();
      localArrayList1.set(0, Float.valueOf(1.0F + ((Float)localArrayList1.get(0)).floatValue()));
      localArrayList1.add(localArrayList1.get(n - 2));
      localArrayList1.add(Float.valueOf(f2));
      localArrayList1.add(localArrayList1.get(0));
      localArrayList1.add(localArrayList1.get(n + 1));
      for (int i1 = 0; i1 < n + 4; i1 += 2)
      {
        if (((Float)localArrayList1.get(i1 + 1)).floatValue() >= 0.0F)
          continue;
        localArrayList1.set(i1 + 1, Float.valueOf(0.0F));
      }
      paramPaint.setStyle(Paint.Style.FILL);
      drawPath(paramCanvas, localArrayList1, paramPaint, true);
    }
    paramPaint.setColor(paramSimpleSeriesRenderer.getColor());
    paramPaint.setStyle(Paint.Style.STROKE);
    drawPath(paramCanvas, paramList, paramPaint, false);
    paramPaint.setStrokeWidth(f1);
  }

  public String getChartType()
  {
    return "Line";
  }

  public int getLegendShapeWidth(int paramInt)
  {
    return 30;
  }

  public ScatterChart getPointsChart()
  {
    return this.pointsChart;
  }

  public boolean isRenderPoints(SimpleSeriesRenderer paramSimpleSeriesRenderer)
  {
    return ((XYSeriesRenderer)paramSimpleSeriesRenderer).getPointStyle() != PointStyle.POINT;
  }

  protected void setDatasetRenderer(XYMultipleSeriesDataset paramXYMultipleSeriesDataset, XYMultipleSeriesRenderer paramXYMultipleSeriesRenderer)
  {
    super.setDatasetRenderer(paramXYMultipleSeriesDataset, paramXYMultipleSeriesRenderer);
    this.pointsChart = new ScatterChart(paramXYMultipleSeriesDataset, paramXYMultipleSeriesRenderer);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     org.achartengine.chart.LineChart
 * JD-Core Version:    0.6.0
 */