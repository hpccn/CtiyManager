package org.achartengine.chart;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.RectF;
import java.util.List;
import org.achartengine.model.XYMultipleSeriesDataset;
import org.achartengine.renderer.SimpleSeriesRenderer;
import org.achartengine.renderer.XYMultipleSeriesRenderer;
import org.achartengine.renderer.XYSeriesRenderer;

public class ScatterChart extends XYChart
{
  private static final int SHAPE_WIDTH = 10;
  private static final float SIZE = 3.0F;
  public static final String TYPE = "Scatter";
  private float size = 3.0F;

  ScatterChart()
  {
  }

  public ScatterChart(XYMultipleSeriesDataset paramXYMultipleSeriesDataset, XYMultipleSeriesRenderer paramXYMultipleSeriesRenderer)
  {
    super(paramXYMultipleSeriesDataset, paramXYMultipleSeriesRenderer);
    this.size = paramXYMultipleSeriesRenderer.getPointSize();
  }

  private void drawCircle(Canvas paramCanvas, Paint paramPaint, float paramFloat1, float paramFloat2)
  {
    paramCanvas.drawCircle(paramFloat1, paramFloat2, this.size, paramPaint);
  }

  private void drawDiamond(Canvas paramCanvas, Paint paramPaint, float[] paramArrayOfFloat, float paramFloat1, float paramFloat2)
  {
    paramArrayOfFloat[0] = paramFloat1;
    paramArrayOfFloat[1] = (paramFloat2 - this.size);
    paramArrayOfFloat[2] = (paramFloat1 - this.size);
    paramArrayOfFloat[3] = paramFloat2;
    paramArrayOfFloat[4] = paramFloat1;
    paramArrayOfFloat[5] = (paramFloat2 + this.size);
    paramArrayOfFloat[6] = (paramFloat1 + this.size);
    paramArrayOfFloat[7] = paramFloat2;
    drawPath(paramCanvas, paramArrayOfFloat, paramPaint, true);
  }

  private void drawSquare(Canvas paramCanvas, Paint paramPaint, float paramFloat1, float paramFloat2)
  {
    paramCanvas.drawRect(paramFloat1 - this.size, paramFloat2 - this.size, paramFloat1 + this.size, paramFloat2 + this.size, paramPaint);
  }

  private void drawTriangle(Canvas paramCanvas, Paint paramPaint, float[] paramArrayOfFloat, float paramFloat1, float paramFloat2)
  {
    paramArrayOfFloat[0] = paramFloat1;
    paramArrayOfFloat[1] = (paramFloat2 - this.size - this.size / 2.0F);
    paramArrayOfFloat[2] = (paramFloat1 - this.size);
    paramArrayOfFloat[3] = (paramFloat2 + this.size);
    paramArrayOfFloat[4] = (paramFloat1 + this.size);
    paramArrayOfFloat[5] = paramArrayOfFloat[3];
    drawPath(paramCanvas, paramArrayOfFloat, paramPaint, true);
  }

  private void drawX(Canvas paramCanvas, Paint paramPaint, float paramFloat1, float paramFloat2)
  {
    paramCanvas.drawLine(paramFloat1 - this.size, paramFloat2 - this.size, paramFloat1 + this.size, paramFloat2 + this.size, paramPaint);
    paramCanvas.drawLine(paramFloat1 + this.size, paramFloat2 - this.size, paramFloat1 - this.size, paramFloat2 + this.size, paramPaint);
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
    if (((XYSeriesRenderer)paramSimpleSeriesRenderer).isFillPoints())
      paramPaint.setStyle(Paint.Style.FILL);
    while (true)
      switch (1.$SwitchMap$org$achartengine$chart$PointStyle[((XYSeriesRenderer)paramSimpleSeriesRenderer).getPointStyle().ordinal()])
      {
      default:
        return;
        paramPaint.setStyle(Paint.Style.STROKE);
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      }
    drawX(paramCanvas, paramPaint, paramFloat1 + 10.0F, paramFloat2);
    return;
    drawCircle(paramCanvas, paramPaint, paramFloat1 + 10.0F, paramFloat2);
    return;
    drawTriangle(paramCanvas, paramPaint, new float[6], paramFloat1 + 10.0F, paramFloat2);
    return;
    drawSquare(paramCanvas, paramPaint, paramFloat1 + 10.0F, paramFloat2);
    return;
    drawDiamond(paramCanvas, paramPaint, new float[8], paramFloat1 + 10.0F, paramFloat2);
    return;
    paramCanvas.drawPoint(paramFloat1 + 10.0F, paramFloat2, paramPaint);
  }

  public void drawSeries(Canvas paramCanvas, Paint paramPaint, List<Float> paramList, SimpleSeriesRenderer paramSimpleSeriesRenderer, float paramFloat, int paramInt1, int paramInt2)
  {
    XYSeriesRenderer localXYSeriesRenderer = (XYSeriesRenderer)paramSimpleSeriesRenderer;
    paramPaint.setColor(localXYSeriesRenderer.getColor());
    float f = paramPaint.getStrokeWidth();
    int i;
    if (localXYSeriesRenderer.isFillPoints())
    {
      paramPaint.setStyle(Paint.Style.FILL);
      i = paramList.size();
      switch (1.$SwitchMap$org$achartengine$chart$PointStyle[localXYSeriesRenderer.getPointStyle().ordinal()])
      {
      default:
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      }
    }
    while (true)
    {
      paramPaint.setStrokeWidth(f);
      return;
      paramPaint.setStrokeWidth(localXYSeriesRenderer.getPointStrokeWidth());
      paramPaint.setStyle(Paint.Style.STROKE);
      break;
      paramPaint.setStrokeWidth(localXYSeriesRenderer.getPointStrokeWidth());
      for (int i2 = 0; i2 < i; i2 += 2)
        drawX(paramCanvas, paramPaint, ((Float)paramList.get(i2)).floatValue(), ((Float)paramList.get(i2 + 1)).floatValue());
      for (int i1 = 0; i1 < i; i1 += 2)
        drawCircle(paramCanvas, paramPaint, ((Float)paramList.get(i1)).floatValue(), ((Float)paramList.get(i1 + 1)).floatValue());
      float[] arrayOfFloat2 = new float[6];
      for (int n = 0; n < i; n += 2)
        drawTriangle(paramCanvas, paramPaint, arrayOfFloat2, ((Float)paramList.get(n)).floatValue(), ((Float)paramList.get(n + 1)).floatValue());
      for (int m = 0; m < i; m += 2)
        drawSquare(paramCanvas, paramPaint, ((Float)paramList.get(m)).floatValue(), ((Float)paramList.get(m + 1)).floatValue());
      float[] arrayOfFloat1 = new float[8];
      for (int k = 0; k < i; k += 2)
        drawDiamond(paramCanvas, paramPaint, arrayOfFloat1, ((Float)paramList.get(k)).floatValue(), ((Float)paramList.get(k + 1)).floatValue());
      for (int j = 0; j < i; j += 2)
        paramCanvas.drawPoint(((Float)paramList.get(j)).floatValue(), ((Float)paramList.get(j + 1)).floatValue(), paramPaint);
    }
  }

  public String getChartType()
  {
    return "Scatter";
  }

  public int getLegendShapeWidth(int paramInt)
  {
    return 10;
  }

  protected void setDatasetRenderer(XYMultipleSeriesDataset paramXYMultipleSeriesDataset, XYMultipleSeriesRenderer paramXYMultipleSeriesRenderer)
  {
    super.setDatasetRenderer(paramXYMultipleSeriesDataset, paramXYMultipleSeriesRenderer);
    this.size = paramXYMultipleSeriesRenderer.getPointSize();
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     org.achartengine.chart.ScatterChart
 * JD-Core Version:    0.6.0
 */