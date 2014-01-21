package org.achartengine.chart;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import java.util.List;
import org.achartengine.model.Point;
import org.achartengine.model.XYMultipleSeriesDataset;
import org.achartengine.renderer.XYMultipleSeriesRenderer;

public class CubicLineChart extends LineChart
{
  public static final String TYPE = "Cubic";
  private float firstMultiplier;
  private Point p1 = new Point();
  private Point p2 = new Point();
  private Point p3 = new Point();
  private float secondMultiplier;

  public CubicLineChart()
  {
    this.firstMultiplier = 0.33F;
    this.secondMultiplier = (1.0F - this.firstMultiplier);
  }

  public CubicLineChart(XYMultipleSeriesDataset paramXYMultipleSeriesDataset, XYMultipleSeriesRenderer paramXYMultipleSeriesRenderer, float paramFloat)
  {
    super(paramXYMultipleSeriesDataset, paramXYMultipleSeriesRenderer);
    this.firstMultiplier = paramFloat;
    this.secondMultiplier = (1.0F - this.firstMultiplier);
  }

  private void calc(List<Float> paramList, Point paramPoint, int paramInt1, int paramInt2, float paramFloat)
  {
    float f1 = ((Float)paramList.get(paramInt1)).floatValue();
    float f2 = ((Float)paramList.get(paramInt1 + 1)).floatValue();
    float f3 = ((Float)paramList.get(paramInt2)).floatValue();
    float f4 = ((Float)paramList.get(paramInt2 + 1)).floatValue();
    float f5 = f3 - f1;
    float f6 = f4 - f2;
    paramPoint.setX(f1 + f5 * paramFloat);
    paramPoint.setY(f2 + f6 * paramFloat);
  }

  protected void drawPath(Canvas paramCanvas, List<Float> paramList, Paint paramPaint, boolean paramBoolean)
  {
    Path localPath = new Path();
    localPath.moveTo(((Float)paramList.get(0)).floatValue(), ((Float)paramList.get(1)).floatValue());
    int i = paramList.size();
    if (paramBoolean)
      i -= 4;
    int j = 0;
    if (j < i)
    {
      int m;
      if (j + 2 < i)
      {
        m = j + 2;
        label81: if (j + 4 >= i)
          break label242;
      }
      label242: for (int n = j + 4; ; n = m)
      {
        calc(paramList, this.p1, j, m, this.secondMultiplier);
        this.p2.setX(((Float)paramList.get(m)).floatValue());
        this.p2.setY(((Float)paramList.get(m + 1)).floatValue());
        Point localPoint = this.p3;
        float f = this.firstMultiplier;
        calc(paramList, localPoint, m, n, f);
        localPath.cubicTo(this.p1.getX(), this.p1.getY(), this.p2.getX(), this.p2.getY(), this.p3.getX(), this.p3.getY());
        j += 2;
        break;
        m = j;
        break label81;
      }
    }
    if (paramBoolean)
    {
      for (int k = i; k < i + 4; k += 2)
        localPath.lineTo(((Float)paramList.get(k)).floatValue(), ((Float)paramList.get(k + 1)).floatValue());
      localPath.lineTo(((Float)paramList.get(0)).floatValue(), ((Float)paramList.get(1)).floatValue());
    }
    paramCanvas.drawPath(localPath, paramPaint);
  }

  public String getChartType()
  {
    return "Cubic";
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     org.achartengine.chart.CubicLineChart
 * JD-Core Version:    0.6.0
 */