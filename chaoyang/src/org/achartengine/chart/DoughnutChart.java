package org.achartengine.chart;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.RectF;
import java.util.ArrayList;
import java.util.List;
import org.achartengine.model.MultipleCategorySeries;
import org.achartengine.renderer.DefaultRenderer;
import org.achartengine.renderer.SimpleSeriesRenderer;

public class DoughnutChart extends RoundChart
{
  private MultipleCategorySeries mDataset;
  private int mStep;

  public DoughnutChart(MultipleCategorySeries paramMultipleCategorySeries, DefaultRenderer paramDefaultRenderer)
  {
    super(null, paramDefaultRenderer);
    this.mDataset = paramMultipleCategorySeries;
  }

  public void draw(Canvas paramCanvas, int paramInt1, int paramInt2, int paramInt3, int paramInt4, Paint paramPaint)
  {
    paramPaint.setAntiAlias(this.mRenderer.isAntialiasing());
    paramPaint.setStyle(Paint.Style.FILL);
    paramPaint.setTextSize(this.mRenderer.getLabelsTextSize());
    int i = getLegendSize(this.mRenderer, paramInt4 / 5, 0.0F);
    int j = paramInt1 + paramInt3;
    int k = this.mDataset.getCategoriesCount();
    String[] arrayOfString1 = new String[k];
    for (int m = 0; m < k; m++)
      arrayOfString1[m] = this.mDataset.getCategory(m);
    if (this.mRenderer.isFitLegend())
      i = drawLegend(paramCanvas, this.mRenderer, arrayOfString1, paramInt1, j, paramInt2, paramInt3, paramInt4, i, paramPaint, true);
    int n = paramInt2 + paramInt4 - i;
    drawBackground(this.mRenderer, paramCanvas, paramInt1, paramInt2, paramInt3, paramInt4, paramPaint, false, 0);
    this.mStep = 7;
    int i1 = Math.min(Math.abs(j - paramInt1), Math.abs(n - paramInt2));
    double d1 = 0.35D * this.mRenderer.getScale();
    double d2 = 0.2D / k;
    int i2 = (int)(d1 * i1);
    if (this.mCenterX == 2147483647)
      this.mCenterX = ((paramInt1 + j) / 2);
    if (this.mCenterY == 2147483647)
      this.mCenterY = ((n + paramInt2) / 2);
    float f1 = 0.9F * i2;
    float f2 = 1.1F * i2;
    ArrayList localArrayList = new ArrayList();
    int i3 = 0;
    if (i3 < k)
    {
      int i4 = this.mDataset.getItemCount(i3);
      double d3 = 0.0D;
      String[] arrayOfString2 = new String[i4];
      for (int i5 = 0; i5 < i4; i5++)
      {
        d3 += this.mDataset.getValues(i3)[i5];
        arrayOfString2[i5] = this.mDataset.getTitles(i3)[i5];
      }
      float f3 = this.mRenderer.getStartAngle();
      RectF localRectF = new RectF(this.mCenterX - i2, this.mCenterY - i2, i2 + this.mCenterX, i2 + this.mCenterY);
      for (int i6 = 0; i6 < i4; i6++)
      {
        paramPaint.setColor(this.mRenderer.getSeriesRendererAt(i6).getColor());
        float f4 = (float)(360.0D * ((float)this.mDataset.getValues(i3)[i6] / d3));
        paramCanvas.drawArc(localRectF, f3, f4, true, paramPaint);
        String str = this.mDataset.getTitles(i3)[i6];
        DefaultRenderer localDefaultRenderer = this.mRenderer;
        int i8 = this.mCenterX;
        int i9 = this.mCenterY;
        int i10 = this.mRenderer.getLabelsColor();
        drawLabel(paramCanvas, str, localDefaultRenderer, localArrayList, i8, i9, f1, f2, f3, f4, paramInt1, j, i10, paramPaint, true, false);
        f3 += f4;
      }
      int i7 = (int)(i2 - d2 * i1);
      f1 = (float)(f1 - (d2 * i1 - 2.0D));
      if (this.mRenderer.getBackgroundColor() != 0)
        paramPaint.setColor(this.mRenderer.getBackgroundColor());
      while (true)
      {
        paramPaint.setStyle(Paint.Style.FILL);
        paramCanvas.drawArc(new RectF(this.mCenterX - i7, this.mCenterY - i7, i7 + this.mCenterX, i7 + this.mCenterY), 0.0F, 360.0F, true, paramPaint);
        i2 = i7 - 1;
        i3++;
        break;
        paramPaint.setColor(-1);
      }
    }
    localArrayList.clear();
    drawLegend(paramCanvas, this.mRenderer, arrayOfString1, paramInt1, j, paramInt2, paramInt3, paramInt4, i, paramPaint, false);
    drawTitle(paramCanvas, paramInt1, paramInt2, paramInt3, paramPaint);
  }

  public void drawLegendShape(Canvas paramCanvas, SimpleSeriesRenderer paramSimpleSeriesRenderer, float paramFloat1, float paramFloat2, int paramInt, Paint paramPaint)
  {
    this.mStep = (-1 + this.mStep);
    paramCanvas.drawCircle(10.0F + paramFloat1 - this.mStep, paramFloat2, this.mStep, paramPaint);
  }

  public int getLegendShapeWidth(int paramInt)
  {
    return 10;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     org.achartengine.chart.DoughnutChart
 * JD-Core Version:    0.6.0
 */