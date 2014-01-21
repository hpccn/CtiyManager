package org.achartengine.chart;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import java.io.Serializable;
import java.text.NumberFormat;
import java.util.List;
import org.achartengine.model.Point;
import org.achartengine.model.SeriesSelection;
import org.achartengine.renderer.DefaultRenderer;
import org.achartengine.renderer.SimpleSeriesRenderer;
import org.achartengine.renderer.XYMultipleSeriesRenderer;
import org.achartengine.renderer.XYMultipleSeriesRenderer.Orientation;

public abstract class AbstractChart
  implements Serializable
{
  private static float[] calculateDrawPoints(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, int paramInt1, int paramInt2)
  {
    float f8;
    float f1;
    float f2;
    float f6;
    float f3;
    float f4;
    if (paramFloat2 > paramInt1)
    {
      f8 = (paramFloat4 - paramFloat2) / (paramFloat3 - paramFloat1);
      f1 = (paramInt1 - paramFloat2 + f8 * paramFloat1) / f8;
      f2 = paramInt1;
      if (f1 < 0.0F)
      {
        f1 = 0.0F;
        f2 = paramFloat2 - f8 * paramFloat1;
        if (paramFloat4 <= paramInt1)
          break label294;
        f6 = (paramFloat4 - paramFloat2) / (paramFloat3 - paramFloat1);
        f3 = (paramInt1 - paramFloat2 + f6 * paramFloat1) / f6;
        f4 = paramInt1;
        if (f3 >= 0.0F)
          break label262;
        f3 = 0.0F;
        f4 = paramFloat2 - f6 * paramFloat1;
      }
    }
    while (true)
    {
      return new float[] { f1, f2, f3, f4 };
      if (f1 <= paramInt2)
        break;
      f1 = paramInt2;
      f2 = paramFloat2 + f8 * paramInt2 - f8 * paramFloat1;
      break;
      if (paramFloat2 < 0.0F)
      {
        float f7 = (paramFloat4 - paramFloat2) / (paramFloat3 - paramFloat1);
        f1 = (-paramFloat2 + f7 * paramFloat1) / f7;
        if (f1 < 0.0F)
        {
          f2 = paramFloat2 - f7 * paramFloat1;
          f1 = 0.0F;
          break;
        }
        boolean bool2 = f1 < paramInt2;
        f2 = 0.0F;
        if (!bool2)
          break;
        f1 = paramInt2;
        f2 = paramFloat2 + f7 * paramInt2 - f7 * paramFloat1;
        break;
      }
      f1 = paramFloat1;
      f2 = paramFloat2;
      break;
      label262: if (f3 <= paramInt2)
        continue;
      f3 = paramInt2;
      f4 = paramFloat2 + f6 * paramInt2 - f6 * paramFloat1;
      continue;
      label294: if (paramFloat4 < 0.0F)
      {
        float f5 = (paramFloat4 - paramFloat2) / (paramFloat3 - paramFloat1);
        f3 = (-paramFloat2 + f5 * paramFloat1) / f5;
        if (f3 < 0.0F)
        {
          f4 = paramFloat2 - f5 * paramFloat1;
          f3 = 0.0F;
          continue;
        }
        boolean bool1 = f3 < paramInt2;
        f4 = 0.0F;
        if (!bool1)
          continue;
        f3 = paramInt2;
        f4 = paramFloat2 + f5 * paramInt2 - f5 * paramFloat1;
        continue;
      }
      f3 = paramFloat3;
      f4 = paramFloat4;
    }
  }

  private String getFitText(String paramString, float paramFloat, Paint paramPaint)
  {
    String str = paramString;
    int i = paramString.length();
    int j = 0;
    while ((paramPaint.measureText(str) > paramFloat) && (j < i))
    {
      j++;
      str = paramString.substring(0, i - j) + "...";
    }
    if (j == i)
      str = "...";
    return str;
  }

  public abstract void draw(Canvas paramCanvas, int paramInt1, int paramInt2, int paramInt3, int paramInt4, Paint paramPaint);

  protected void drawBackground(DefaultRenderer paramDefaultRenderer, Canvas paramCanvas, int paramInt1, int paramInt2, int paramInt3, int paramInt4, Paint paramPaint, boolean paramBoolean, int paramInt5)
  {
    if ((paramDefaultRenderer.isApplyBackgroundColor()) || (paramBoolean))
    {
      if (!paramBoolean)
        break label55;
      paramPaint.setColor(paramInt5);
    }
    while (true)
    {
      paramPaint.setStyle(Paint.Style.FILL);
      paramCanvas.drawRect(paramInt1, paramInt2, paramInt1 + paramInt3, paramInt2 + paramInt4, paramPaint);
      return;
      label55: paramPaint.setColor(paramDefaultRenderer.getBackgroundColor());
    }
  }

  protected void drawLabel(Canvas paramCanvas, String paramString, DefaultRenderer paramDefaultRenderer, List<RectF> paramList, int paramInt1, int paramInt2, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, int paramInt3, int paramInt4, int paramInt5, Paint paramPaint, boolean paramBoolean1, boolean paramBoolean2)
  {
    float f1;
    float f3;
    float f4;
    String str;
    float f6;
    if ((paramDefaultRenderer.isShowLabels()) || (paramBoolean2))
    {
      paramPaint.setColor(paramInt5);
      double d1 = Math.toRadians(90.0F - (paramFloat3 + paramFloat4 / 2.0F));
      double d2 = Math.sin(d1);
      double d3 = Math.cos(d1);
      int i = Math.round(paramInt1 + (float)(d2 * paramFloat1));
      int j = Math.round(paramInt2 + (float)(d3 * paramFloat1));
      int k = Math.round(paramInt1 + (float)(d2 * paramFloat2));
      int m = Math.round(paramInt2 + (float)(d3 * paramFloat2));
      f1 = paramDefaultRenderer.getLabelsTextSize();
      float f2 = Math.max(f1 / 2.0F, 10.0F);
      paramPaint.setTextAlign(Paint.Align.LEFT);
      if (i > k)
      {
        f2 = -f2;
        paramPaint.setTextAlign(Paint.Align.RIGHT);
      }
      f3 = f2 + k;
      f4 = m;
      float f5 = paramInt4 - f3;
      if (i > k)
        f5 = f3 - paramInt3;
      str = getFitText(paramString, f5, paramPaint);
      f6 = paramPaint.measureText(str);
      int n = 0;
      if ((n == 0) && (paramBoolean1))
      {
        int i2 = 0;
        int i3 = paramList.size();
        for (int i4 = 0; (i4 < i3) && (i2 == 0); i4++)
        {
          RectF localRectF = (RectF)paramList.get(i4);
          float f9 = f3 + f6;
          float f10 = f4 + f1;
          if (!localRectF.intersects(f3, f4, f9, f10))
            continue;
          i2 = 1;
          float f11 = localRectF.bottom;
          f4 = Math.max(f4, f11);
        }
        if (i2 == 0);
        for (n = 1; ; n = 0)
          break;
      }
      if (!paramBoolean1)
        break label449;
      int i1 = (int)(f4 - f1 / 2.0F);
      paramCanvas.drawLine(i, j, k, i1, paramPaint);
      paramCanvas.drawLine(k, i1, f2 + k, i1, paramPaint);
    }
    while (true)
    {
      paramCanvas.drawText(str, f3, f4, paramPaint);
      if (paramBoolean1)
      {
        float f7 = f3 + f6;
        float f8 = f4 + f1;
        paramList.add(new RectF(f3, f4, f7, f8));
      }
      return;
      label449: paramPaint.setTextAlign(Paint.Align.CENTER);
    }
  }

  protected int drawLegend(Canvas paramCanvas, DefaultRenderer paramDefaultRenderer, String[] paramArrayOfString, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, Paint paramPaint, boolean paramBoolean)
  {
    float f1 = 32.0F;
    if (paramDefaultRenderer.isShowLegend())
    {
      float f2 = paramInt1;
      float f3 = f1 + (paramInt3 + paramInt5 - paramInt6);
      paramPaint.setTextAlign(Paint.Align.LEFT);
      paramPaint.setTextSize(paramDefaultRenderer.getLegendTextSize());
      int i = Math.min(paramArrayOfString.length, paramDefaultRenderer.getSeriesRendererCount());
      for (int j = 0; j < i; j++)
      {
        SimpleSeriesRenderer localSimpleSeriesRenderer = paramDefaultRenderer.getSeriesRendererAt(j);
        float f4 = getLegendShapeWidth(j);
        if (!localSimpleSeriesRenderer.isShowLegendItem())
          continue;
        String str = paramArrayOfString[j];
        if (paramArrayOfString.length == paramDefaultRenderer.getSeriesRendererCount())
          paramPaint.setColor(localSimpleSeriesRenderer.getColor());
        float[] arrayOfFloat;
        float f5;
        while (true)
        {
          arrayOfFloat = new float[str.length()];
          paramPaint.getTextWidths(str, arrayOfFloat);
          f5 = 0.0F;
          int k = arrayOfFloat.length;
          for (int m = 0; m < k; m++)
            f5 += arrayOfFloat[m];
          paramPaint.setColor(-3355444);
        }
        float f6 = f5 + (10.0F + f4);
        float f7 = f2 + f6;
        if ((j > 0) && (getExceed(f7, paramDefaultRenderer, paramInt2, paramInt4)))
        {
          f2 = paramInt1;
          f3 += paramDefaultRenderer.getLegendTextSize();
          f1 += paramDefaultRenderer.getLegendTextSize();
          f7 = f2 + f6;
        }
        if (getExceed(f7, paramDefaultRenderer, paramInt2, paramInt4))
        {
          float f8 = paramInt2 - f2 - f4 - 10.0F;
          if (isVertical(paramDefaultRenderer))
            f8 = paramInt4 - f2 - f4 - 10.0F;
          int n = paramPaint.breakText(str, true, f8, arrayOfFloat);
          str = str.substring(0, n) + "...";
        }
        if (!paramBoolean)
        {
          drawLegendShape(paramCanvas, localSimpleSeriesRenderer, f2, f3, j, paramPaint);
          drawString(paramCanvas, str, 5.0F + (f2 + f4), f3 + 5.0F, paramPaint);
        }
        f2 += f6;
      }
    }
    return Math.round(f1 + paramDefaultRenderer.getLegendTextSize());
  }

  public abstract void drawLegendShape(Canvas paramCanvas, SimpleSeriesRenderer paramSimpleSeriesRenderer, float paramFloat1, float paramFloat2, int paramInt, Paint paramPaint);

  protected void drawPath(Canvas paramCanvas, List<Float> paramList, Paint paramPaint, boolean paramBoolean)
  {
    Path localPath = new Path();
    int i = paramCanvas.getHeight();
    int j = paramCanvas.getWidth();
    if (paramList.size() < 4)
      return;
    float[] arrayOfFloat1 = calculateDrawPoints(((Float)paramList.get(0)).floatValue(), ((Float)paramList.get(1)).floatValue(), ((Float)paramList.get(2)).floatValue(), ((Float)paramList.get(3)).floatValue(), i, j);
    localPath.moveTo(arrayOfFloat1[0], arrayOfFloat1[1]);
    localPath.lineTo(arrayOfFloat1[2], arrayOfFloat1[3]);
    int k = paramList.size();
    int m = 4;
    if (m < k)
    {
      if (((((Float)paramList.get(m - 1)).floatValue() < 0.0F) && (((Float)paramList.get(m + 1)).floatValue() < 0.0F)) || ((((Float)paramList.get(m - 1)).floatValue() > i) && (((Float)paramList.get(m + 1)).floatValue() > i)));
      while (true)
      {
        m += 2;
        break;
        float[] arrayOfFloat2 = calculateDrawPoints(((Float)paramList.get(m - 2)).floatValue(), ((Float)paramList.get(m - 1)).floatValue(), ((Float)paramList.get(m)).floatValue(), ((Float)paramList.get(m + 1)).floatValue(), i, j);
        if (!paramBoolean)
          localPath.moveTo(arrayOfFloat2[0], arrayOfFloat2[1]);
        localPath.lineTo(arrayOfFloat2[2], arrayOfFloat2[3]);
      }
    }
    if (paramBoolean)
      localPath.lineTo(((Float)paramList.get(0)).floatValue(), ((Float)paramList.get(1)).floatValue());
    paramCanvas.drawPath(localPath, paramPaint);
  }

  protected void drawPath(Canvas paramCanvas, float[] paramArrayOfFloat, Paint paramPaint, boolean paramBoolean)
  {
    Path localPath = new Path();
    int i = paramCanvas.getHeight();
    int j = paramCanvas.getWidth();
    if (paramArrayOfFloat.length < 4)
      return;
    float[] arrayOfFloat1 = calculateDrawPoints(paramArrayOfFloat[0], paramArrayOfFloat[1], paramArrayOfFloat[2], paramArrayOfFloat[3], i, j);
    localPath.moveTo(arrayOfFloat1[0], arrayOfFloat1[1]);
    localPath.lineTo(arrayOfFloat1[2], arrayOfFloat1[3]);
    int k = paramArrayOfFloat.length;
    int m = 4;
    if (m < k)
    {
      if (((paramArrayOfFloat[(m - 1)] < 0.0F) && (paramArrayOfFloat[(m + 1)] < 0.0F)) || ((paramArrayOfFloat[(m - 1)] > i) && (paramArrayOfFloat[(m + 1)] > i)));
      while (true)
      {
        m += 2;
        break;
        float[] arrayOfFloat2 = calculateDrawPoints(paramArrayOfFloat[(m - 2)], paramArrayOfFloat[(m - 1)], paramArrayOfFloat[m], paramArrayOfFloat[(m + 1)], i, j);
        if (!paramBoolean)
          localPath.moveTo(arrayOfFloat2[0], arrayOfFloat2[1]);
        localPath.lineTo(arrayOfFloat2[2], arrayOfFloat2[3]);
      }
    }
    if (paramBoolean)
      localPath.lineTo(paramArrayOfFloat[0], paramArrayOfFloat[1]);
    paramCanvas.drawPath(localPath, paramPaint);
  }

  protected void drawString(Canvas paramCanvas, String paramString, float paramFloat1, float paramFloat2, Paint paramPaint)
  {
    if (paramString != null)
    {
      String[] arrayOfString = paramString.split("\n");
      Rect localRect = new Rect();
      int i = 0;
      for (int j = 0; j < arrayOfString.length; j++)
      {
        paramCanvas.drawText(arrayOfString[j], paramFloat1, paramFloat2 + i, paramPaint);
        paramPaint.getTextBounds(arrayOfString[j], 0, arrayOfString[j].length(), localRect);
        i = 5 + (i + localRect.height());
      }
    }
  }

  protected boolean getExceed(float paramFloat, DefaultRenderer paramDefaultRenderer, int paramInt1, int paramInt2)
  {
    if (paramFloat > paramInt1);
    for (int i = 1; ; i = 0)
    {
      if (isVertical(paramDefaultRenderer))
      {
        if (paramFloat <= paramInt2)
          break;
        i = 1;
      }
      return i;
    }
    return false;
  }

  protected String getLabel(NumberFormat paramNumberFormat, double paramDouble)
  {
    if (paramNumberFormat != null)
      return paramNumberFormat.format(paramDouble);
    if (paramDouble == Math.round(paramDouble))
      return Math.round(paramDouble) + "";
    return paramDouble + "";
  }

  public abstract int getLegendShapeWidth(int paramInt);

  protected int getLegendSize(DefaultRenderer paramDefaultRenderer, int paramInt, float paramFloat)
  {
    int i = paramDefaultRenderer.getLegendHeight();
    if ((paramDefaultRenderer.isShowLegend()) && (i == 0))
      i = paramInt;
    if ((!paramDefaultRenderer.isShowLegend()) && (paramDefaultRenderer.isShowLabels()))
      i = (int)(paramFloat + 4.0F * paramDefaultRenderer.getLabelsTextSize() / 3.0F);
    return i;
  }

  public SeriesSelection getSeriesAndPointForScreenCoordinate(Point paramPoint)
  {
    return null;
  }

  public boolean isNullValue(double paramDouble)
  {
    return (Double.isNaN(paramDouble)) || (Double.isInfinite(paramDouble)) || (paramDouble == 1.7976931348623157E+308D);
  }

  public boolean isVertical(DefaultRenderer paramDefaultRenderer)
  {
    return ((paramDefaultRenderer instanceof XYMultipleSeriesRenderer)) && (((XYMultipleSeriesRenderer)paramDefaultRenderer).getOrientation() == XYMultipleSeriesRenderer.Orientation.VERTICAL);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     org.achartengine.chart.AbstractChart
 * JD-Core Version:    0.6.0
 */