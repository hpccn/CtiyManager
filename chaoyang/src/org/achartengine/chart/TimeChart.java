package org.achartengine.chart;

import android.graphics.Canvas;
import android.graphics.Paint;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.List<Ljava.lang.Double;>;
import org.achartengine.model.XYMultipleSeriesDataset;
import org.achartengine.model.XYSeries;
import org.achartengine.renderer.XYMultipleSeriesRenderer;

public class TimeChart extends LineChart
{
  public static final long DAY = 86400000L;
  public static final String TYPE = "Time";
  private String mDateFormat;
  private Double mStartPoint;

  TimeChart()
  {
  }

  public TimeChart(XYMultipleSeriesDataset paramXYMultipleSeriesDataset, XYMultipleSeriesRenderer paramXYMultipleSeriesRenderer)
  {
    super(paramXYMultipleSeriesDataset, paramXYMultipleSeriesRenderer);
  }

  private DateFormat getDateFormat(double paramDouble1, double paramDouble2)
  {
    if (this.mDateFormat != null);
    double d;
    do
    {
      try
      {
        localObject = new SimpleDateFormat(this.mDateFormat);
        return localObject;
      }
      catch (Exception localException)
      {
      }
      Object localObject = SimpleDateFormat.getDateInstance(2);
      d = paramDouble2 - paramDouble1;
      if ((d > 86400000.0D) && (d < 432000000.0D))
        return SimpleDateFormat.getDateTimeInstance(3, 3);
    }
    while (d >= 86400000.0D);
    return (DateFormat)SimpleDateFormat.getTimeInstance(2);
  }

  protected void drawXLabels(List<Double> paramList, Double[] paramArrayOfDouble, Canvas paramCanvas, Paint paramPaint, int paramInt1, int paramInt2, int paramInt3, double paramDouble1, double paramDouble2, double paramDouble3)
  {
    int i = paramList.size();
    if (i > 0)
    {
      boolean bool1 = this.mRenderer.isShowLabels();
      boolean bool2 = this.mRenderer.isShowGridY();
      DateFormat localDateFormat = getDateFormat(((Double)paramList.get(0)).doubleValue(), ((Double)paramList.get(i - 1)).doubleValue());
      for (int j = 0; j < i; j++)
      {
        long l = Math.round(((Double)paramList.get(j)).doubleValue());
        float f = (float)(paramInt1 + paramDouble1 * (l - paramDouble2));
        if (bool1)
        {
          paramPaint.setColor(this.mRenderer.getXLabelsColor());
          paramCanvas.drawLine(f, paramInt3, f, paramInt3 + this.mRenderer.getLabelsTextSize() / 3.0F, paramPaint);
          drawText(paramCanvas, localDateFormat.format(new Date(l)), f, paramInt3 + 4.0F * this.mRenderer.getLabelsTextSize() / 3.0F + this.mRenderer.getXLabelsPadding(), paramPaint, this.mRenderer.getXLabelsAngle());
        }
        if (!bool2)
          continue;
        paramPaint.setColor(this.mRenderer.getGridColor());
        paramCanvas.drawLine(f, paramInt3, f, paramInt2, paramPaint);
      }
    }
    drawXTextLabels(paramArrayOfDouble, paramCanvas, paramPaint, true, paramInt1, paramInt2, paramInt3, paramDouble1, paramDouble2, paramDouble3);
  }

  public String getChartType()
  {
    return "Time";
  }

  public String getDateFormat()
  {
    return this.mDateFormat;
  }

  protected List<Double> getXLabels(double paramDouble1, double paramDouble2, int paramInt)
  {
    Object localObject = new ArrayList();
    if (!this.mRenderer.isXRoundedLabels())
    {
      if (this.mDataset.getSeriesCount() > 0)
      {
        XYSeries localXYSeries = this.mDataset.getSeriesAt(0);
        int k = localXYSeries.getItemCount();
        int m = 0;
        int n = -1;
        for (int i1 = 0; i1 < k; i1++)
        {
          double d5 = localXYSeries.getX(i1);
          if ((paramDouble1 > d5) || (d5 > paramDouble2))
            continue;
          m++;
          if (n >= 0)
            continue;
          n = i1;
        }
        if (m < paramInt)
          for (int i4 = n; i4 < n + m; i4++)
            ((List)localObject).add(Double.valueOf(localXYSeries.getX(i4)));
        float f = m / paramInt;
        int i2 = 0;
        for (int i3 = 0; (i3 < k) && (i2 < paramInt); i3++)
        {
          double d4 = localXYSeries.getX(Math.round(f * i3));
          if ((paramDouble1 > d4) || (d4 > paramDouble2))
            continue;
          ((List)localObject).add(Double.valueOf(d4));
          i2++;
        }
      }
      localObject = super.getXLabels(paramDouble1, paramDouble2, paramInt);
    }
    double d1;
    do
    {
      return localObject;
      if (this.mStartPoint == null)
        this.mStartPoint = Double.valueOf(86400000.0D + (paramDouble1 - paramDouble1 % 86400000.0D) + 1000 * (60 * new Date(Math.round(paramDouble1)).getTimezoneOffset()));
      if (paramInt > 25)
        paramInt = 25;
      d1 = (paramDouble2 - paramDouble1) / paramInt;
    }
    while (d1 <= 0.0D);
    double d2 = 86400000.0D;
    if (d1 <= 86400000.0D)
      while (d1 < d2 / 2.0D)
        d2 /= 2.0D;
    while (d1 > d2)
      d2 *= 2.0D;
    double d3 = this.mStartPoint.doubleValue() - d2 * Math.floor((this.mStartPoint.doubleValue() - paramDouble1) / d2);
    int j;
    for (int i = 0; ; i = j)
    {
      if (d3 >= paramDouble2)
        break label451;
      j = i + 1;
      if (i > paramInt)
        break;
      ((List)localObject).add(Double.valueOf(d3));
      d3 += d2;
    }
    label451: return (List<Double>)localObject;
  }

  public void setDateFormat(String paramString)
  {
    this.mDateFormat = paramString;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     org.achartengine.chart.TimeChart
 * JD-Core Version:    0.6.0
 */