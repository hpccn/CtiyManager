package org.achartengine.chart;

import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Join;
import android.graphics.Paint.Style;
import android.graphics.PathEffect;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.SortedMap;
import org.achartengine.model.Point;
import org.achartengine.model.SeriesSelection;
import org.achartengine.model.XYMultipleSeriesDataset;
import org.achartengine.model.XYSeries;
import org.achartengine.renderer.BasicStroke;
import org.achartengine.renderer.SimpleSeriesRenderer;
import org.achartengine.renderer.XYMultipleSeriesRenderer;
import org.achartengine.renderer.XYMultipleSeriesRenderer.Orientation;
import org.achartengine.util.MathHelper;

public abstract class XYChart extends AbstractChart
{
  private Map<Integer, List<ClickableArea>> clickableAreas = new HashMap();
  private final Map<Integer, double[]> mCalcRange = new HashMap();
  private Point mCenter;
  protected XYMultipleSeriesDataset mDataset;
  protected XYMultipleSeriesRenderer mRenderer;
  private float mScale;
  private Rect mScreenR;
  private float mTranslate;

  protected XYChart()
  {
  }

  public XYChart(XYMultipleSeriesDataset paramXYMultipleSeriesDataset, XYMultipleSeriesRenderer paramXYMultipleSeriesRenderer)
  {
    this.mDataset = paramXYMultipleSeriesDataset;
    this.mRenderer = paramXYMultipleSeriesRenderer;
  }

  private int getLabelLinePos(Paint.Align paramAlign)
  {
    int i = 4;
    if (paramAlign == Paint.Align.LEFT)
      i = -i;
    return i;
  }

  private List<Double> getValidLabels(List<Double> paramList)
  {
    ArrayList localArrayList = new ArrayList(paramList);
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      Double localDouble = (Double)localIterator.next();
      if (!localDouble.isNaN())
        continue;
      localArrayList.remove(localDouble);
    }
    return localArrayList;
  }

  private void setStroke(Paint.Cap paramCap, Paint.Join paramJoin, float paramFloat, Paint.Style paramStyle, PathEffect paramPathEffect, Paint paramPaint)
  {
    paramPaint.setStrokeCap(paramCap);
    paramPaint.setStrokeJoin(paramJoin);
    paramPaint.setStrokeMiter(paramFloat);
    paramPaint.setPathEffect(paramPathEffect);
    paramPaint.setStyle(paramStyle);
  }

  private void transform(Canvas paramCanvas, float paramFloat, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      paramCanvas.scale(1.0F / this.mScale, this.mScale);
      paramCanvas.translate(this.mTranslate, -this.mTranslate);
      paramCanvas.rotate(-paramFloat, this.mCenter.getX(), this.mCenter.getY());
      return;
    }
    paramCanvas.rotate(paramFloat, this.mCenter.getX(), this.mCenter.getY());
    paramCanvas.translate(-this.mTranslate, this.mTranslate);
    paramCanvas.scale(this.mScale, 1.0F / this.mScale);
  }

  protected abstract ClickableArea[] clickableAreasForPoints(List<Float> paramList, List<Double> paramList1, float paramFloat, int paramInt1, int paramInt2);

  public void draw(Canvas paramCanvas, int paramInt1, int paramInt2, int paramInt3, int paramInt4, Paint paramPaint)
  {
    paramPaint.setAntiAlias(this.mRenderer.isAntialiasing());
    int i = getLegendSize(this.mRenderer, paramInt4 / 5, this.mRenderer.getAxisTitleTextSize());
    int[] arrayOfInt = this.mRenderer.getMargins();
    int j = paramInt1 + arrayOfInt[1];
    int k = paramInt2 + arrayOfInt[0];
    int m = paramInt1 + paramInt3 - arrayOfInt[3];
    int n = this.mDataset.getSeriesCount();
    String[] arrayOfString = new String[n];
    for (int i1 = 0; i1 < n; i1++)
      arrayOfString[i1] = this.mDataset.getSeriesAt(i1).getTitle();
    if ((this.mRenderer.isFitLegend()) && (this.mRenderer.isShowLegend()))
      i = drawLegend(paramCanvas, this.mRenderer, arrayOfString, j, m, paramInt2, paramInt3, paramInt4, i, paramPaint, true);
    int i2 = paramInt2 + paramInt4 - arrayOfInt[2] - i;
    if (this.mScreenR == null)
      this.mScreenR = new Rect();
    this.mScreenR.set(j, k, m, i2);
    drawBackground(this.mRenderer, paramCanvas, paramInt1, paramInt2, paramInt3, paramInt4, paramPaint, false, 0);
    XYMultipleSeriesRenderer.Orientation localOrientation;
    int i3;
    if ((paramPaint.getTypeface() == null) || ((this.mRenderer.getTextTypeface() != null) && (paramPaint.getTypeface().equals(this.mRenderer.getTextTypeface()))) || (!paramPaint.getTypeface().toString().equals(this.mRenderer.getTextTypefaceName())) || (paramPaint.getTypeface().getStyle() != this.mRenderer.getTextTypefaceStyle()))
    {
      if (this.mRenderer.getTextTypeface() != null)
        paramPaint.setTypeface(this.mRenderer.getTextTypeface());
    }
    else
    {
      localOrientation = this.mRenderer.getOrientation();
      if (localOrientation == XYMultipleSeriesRenderer.Orientation.VERTICAL)
      {
        m -= i;
        i2 += i - 20;
      }
      i3 = localOrientation.getAngle();
      if (i3 != 90)
        break label534;
    }
    int i5;
    label534: for (int i4 = 1; ; i4 = 0)
    {
      this.mScale = (paramInt4 / paramInt3);
      this.mTranslate = (Math.abs(paramInt3 - paramInt4) / 2);
      if (this.mScale < 1.0F)
        this.mTranslate = (-1.0F * this.mTranslate);
      this.mCenter = new Point((paramInt1 + paramInt3) / 2, (paramInt2 + paramInt4) / 2);
      if (i4 != 0)
        transform(paramCanvas, i3, false);
      i5 = -2147483647;
      for (int i6 = 0; i6 < n; i6++)
      {
        int i33 = this.mDataset.getSeriesAt(i6).getScaleNumber();
        i5 = Math.max(i5, i33);
      }
      paramPaint.setTypeface(Typeface.create(this.mRenderer.getTextTypefaceName(), this.mRenderer.getTextTypefaceStyle()));
      break;
    }
    int i7 = i5 + 1;
    if (i7 < 0)
      return;
    double[] arrayOfDouble1 = new double[i7];
    double[] arrayOfDouble2 = new double[i7];
    double[] arrayOfDouble3 = new double[i7];
    double[] arrayOfDouble4 = new double[i7];
    boolean[] arrayOfBoolean1 = new boolean[i7];
    boolean[] arrayOfBoolean2 = new boolean[i7];
    boolean[] arrayOfBoolean3 = new boolean[i7];
    boolean[] arrayOfBoolean4 = new boolean[i7];
    for (int i8 = 0; i8 < i7; i8++)
    {
      arrayOfDouble1[i8] = this.mRenderer.getXAxisMin(i8);
      arrayOfDouble2[i8] = this.mRenderer.getXAxisMax(i8);
      arrayOfDouble3[i8] = this.mRenderer.getYAxisMin(i8);
      arrayOfDouble4[i8] = this.mRenderer.getYAxisMax(i8);
      arrayOfBoolean1[i8] = this.mRenderer.isMinXSet(i8);
      arrayOfBoolean2[i8] = this.mRenderer.isMaxXSet(i8);
      arrayOfBoolean3[i8] = this.mRenderer.isMinYSet(i8);
      arrayOfBoolean4[i8] = this.mRenderer.isMaxYSet(i8);
      if (this.mCalcRange.get(Integer.valueOf(i8)) != null)
        continue;
      this.mCalcRange.put(Integer.valueOf(i8), new double[4]);
    }
    double[] arrayOfDouble5 = new double[i7];
    double[] arrayOfDouble6 = new double[i7];
    int i9 = 0;
    if (i9 < n)
    {
      XYSeries localXYSeries2 = this.mDataset.getSeriesAt(i9);
      int i32 = localXYSeries2.getScaleNumber();
      if (localXYSeries2.getItemCount() == 0);
      while (true)
      {
        i9++;
        break;
        if (arrayOfBoolean1[i32] == 0)
        {
          double d9 = localXYSeries2.getMinX();
          arrayOfDouble1[i32] = Math.min(arrayOfDouble1[i32], d9);
          ((double[])this.mCalcRange.get(Integer.valueOf(i32)))[0] = arrayOfDouble1[i32];
        }
        if (arrayOfBoolean2[i32] == 0)
        {
          double d8 = localXYSeries2.getMaxX();
          arrayOfDouble2[i32] = Math.max(arrayOfDouble2[i32], d8);
          ((double[])this.mCalcRange.get(Integer.valueOf(i32)))[1] = arrayOfDouble2[i32];
        }
        if (arrayOfBoolean3[i32] == 0)
        {
          double d7 = localXYSeries2.getMinY();
          arrayOfDouble3[i32] = Math.min(arrayOfDouble3[i32], (float)d7);
          ((double[])this.mCalcRange.get(Integer.valueOf(i32)))[2] = arrayOfDouble3[i32];
        }
        if (arrayOfBoolean4[i32] != 0)
          continue;
        double d6 = localXYSeries2.getMaxY();
        arrayOfDouble4[i32] = Math.max(arrayOfDouble4[i32], (float)d6);
        ((double[])this.mCalcRange.get(Integer.valueOf(i32)))[3] = arrayOfDouble4[i32];
      }
    }
    for (int i10 = 0; i10 < i7; i10++)
    {
      if (arrayOfDouble2[i10] - arrayOfDouble1[i10] != 0.0D)
        arrayOfDouble5[i10] = ((m - j) / (arrayOfDouble2[i10] - arrayOfDouble1[i10]));
      if (arrayOfDouble4[i10] - arrayOfDouble3[i10] == 0.0D)
        continue;
      arrayOfDouble6[i10] = (float)((i2 - k) / (arrayOfDouble4[i10] - arrayOfDouble3[i10]));
    }
    int i11 = 0;
    this.clickableAreas = new HashMap();
    int i12 = 0;
    XYSeries localXYSeries1;
    int i28;
    label1186: SimpleSeriesRenderer localSimpleSeriesRenderer;
    ArrayList localArrayList1;
    ArrayList localArrayList2;
    float f3;
    LinkedList localLinkedList;
    int i29;
    int i30;
    Rect localRect;
    while (true)
      if (i12 < n)
      {
        localXYSeries1 = this.mDataset.getSeriesAt(i12);
        i28 = localXYSeries1.getScaleNumber();
        if (localXYSeries1.getItemCount() == 0)
        {
          i12++;
          continue;
        }
        i11 = 1;
        localSimpleSeriesRenderer = this.mRenderer.getSeriesRendererAt(i12);
        localArrayList1 = new ArrayList();
        localArrayList2 = new ArrayList();
        f3 = Math.min(i2, (float)(i2 + arrayOfDouble6[i28] * arrayOfDouble3[i28]));
        localLinkedList = new LinkedList();
        this.clickableAreas.put(Integer.valueOf(i12), localLinkedList);
        monitorenter;
        while (true)
        {
          double d4;
          try
          {
            SortedMap localSortedMap = localXYSeries1.getRange(arrayOfDouble1[i28], arrayOfDouble2[i28], localSimpleSeriesRenderer.isDisplayBoundingPoints());
            i29 = -1;
            Iterator localIterator = localSortedMap.entrySet().iterator();
            if (!localIterator.hasNext())
              break;
            Map.Entry localEntry = (Map.Entry)localIterator.next();
            d4 = ((Double)localEntry.getKey()).doubleValue();
            double d5 = ((Double)localEntry.getValue()).doubleValue();
            if ((i29 >= 0) || ((isNullValue(d5)) && (!isRenderNullValues())))
              continue;
            i29 = localXYSeries1.getIndexForKey(d4);
            localArrayList2.add(localEntry.getKey());
            localArrayList2.add(localEntry.getValue());
            if (!isNullValue(d5))
            {
              localArrayList1.add(Float.valueOf((float)(j + arrayOfDouble5[i28] * (d4 - arrayOfDouble1[i28]))));
              localArrayList1.add(Float.valueOf((float)(i2 - arrayOfDouble6[i28] * (d5 - arrayOfDouble3[i28]))));
              continue;
            }
          }
          finally
          {
            monitorexit;
          }
          if (isRenderNullValues())
          {
            localArrayList1.add(Float.valueOf((float)(j + arrayOfDouble5[i28] * (d4 - arrayOfDouble1[i28]))));
            localArrayList1.add(Float.valueOf((float)(i2 - arrayOfDouble6[i28] * -arrayOfDouble3[i28])));
            continue;
          }
          if (localArrayList1.size() > 0)
          {
            drawSeries(localXYSeries1, paramCanvas, paramPaint, localArrayList1, localSimpleSeriesRenderer, f3, i12, localOrientation, i29);
            localLinkedList.addAll(Arrays.asList(clickableAreasForPoints(localArrayList1, localArrayList2, f3, i12, i29)));
            localArrayList1.clear();
            localArrayList2.clear();
            i29 = -1;
          }
          localLinkedList.add(null);
        }
        i30 = localXYSeries1.getAnnotationCount();
        if (i30 <= 0)
          break;
        paramPaint.setColor(this.mRenderer.getLabelsColor());
        localRect = new Rect();
      }
    for (int i31 = 0; ; i31++)
      if (i31 < i30)
      {
        float f4 = (float)(j + arrayOfDouble5[i28] * (localXYSeries1.getAnnotationX(i31) - arrayOfDouble1[i28]));
        float f5 = (float)(i2 - arrayOfDouble6[i28] * (localXYSeries1.getAnnotationY(i31) - arrayOfDouble3[i28]));
        paramPaint.getTextBounds(localXYSeries1.getAnnotationAt(i31), 0, localXYSeries1.getAnnotationAt(i31).length(), localRect);
        if ((f4 >= f4 + localRect.width()) || (f5 >= paramCanvas.getHeight()))
          continue;
        drawString(paramCanvas, localXYSeries1.getAnnotationAt(i31), f4, f5, paramPaint);
      }
      else
      {
        if (localArrayList1.size() > 0)
        {
          drawSeries(localXYSeries1, paramCanvas, paramPaint, localArrayList1, localSimpleSeriesRenderer, f3, i12, localOrientation, i29);
          localLinkedList.addAll(Arrays.asList(clickableAreasForPoints(localArrayList1, localArrayList2, f3, i12, i29)));
        }
        monitorexit;
        break label1186;
        drawBackground(this.mRenderer, paramCanvas, paramInt1, i2, paramInt3, paramInt4 - i2, paramPaint, true, this.mRenderer.getMarginsColor());
        drawBackground(this.mRenderer, paramCanvas, paramInt1, paramInt2, paramInt3, arrayOfInt[0], paramPaint, true, this.mRenderer.getMarginsColor());
        int i16;
        label2041: boolean bool2;
        if (localOrientation == XYMultipleSeriesRenderer.Orientation.HORIZONTAL)
        {
          drawBackground(this.mRenderer, paramCanvas, paramInt1, paramInt2, j - paramInt1, paramInt4 - paramInt2, paramPaint, true, this.mRenderer.getMarginsColor());
          XYMultipleSeriesRenderer localXYMultipleSeriesRenderer4 = this.mRenderer;
          int i25 = arrayOfInt[3];
          int i26 = paramInt4 - paramInt2;
          int i27 = this.mRenderer.getMarginsColor();
          drawBackground(localXYMultipleSeriesRenderer4, paramCanvas, m, paramInt2, i25, i26, paramPaint, true, i27);
          if ((!this.mRenderer.isShowLabels()) || (i11 == 0))
            break label2576;
          i16 = 1;
          boolean bool1 = this.mRenderer.isShowGridX();
          bool2 = this.mRenderer.isShowCustomTextGrid();
          if ((i16 == 0) && (!bool1))
            break label2975;
          List localList = getValidLabels(getXLabels(arrayOfDouble1[0], arrayOfDouble2[0], this.mRenderer.getXLabels()));
          Map localMap = getYLabels(arrayOfDouble3, arrayOfDouble4, i7);
          if (i16 != 0)
          {
            paramPaint.setColor(this.mRenderer.getXLabelsColor());
            paramPaint.setTextSize(this.mRenderer.getLabelsTextSize());
            paramPaint.setTextAlign(this.mRenderer.getXLabelsAlign());
          }
          Double[] arrayOfDouble7 = this.mRenderer.getXTextLabelLocations();
          double d1 = arrayOfDouble5[0];
          double d2 = arrayOfDouble1[0];
          double d3 = arrayOfDouble2[0];
          drawXLabels(localList, arrayOfDouble7, paramCanvas, paramPaint, j, k, i2, d1, d2, d3);
          drawYLabels(localMap, paramCanvas, paramPaint, i7, j, m, i2, arrayOfDouble6, arrayOfDouble3);
          if (i16 == 0)
            break label2734;
          paramPaint.setColor(this.mRenderer.getLabelsColor());
        }
        for (int i22 = 0; ; i22++)
        {
          if (i22 >= i7)
            break label2734;
          Paint.Align localAlign = this.mRenderer.getYAxisAlign(i22);
          Double[] arrayOfDouble8 = this.mRenderer.getYTextLabelLocations(i22);
          int i23 = arrayOfDouble8.length;
          int i24 = 0;
          label2275: if (i24 >= i23)
            continue;
          Double localDouble = arrayOfDouble8[i24];
          float f2;
          String str;
          if ((arrayOfDouble3[i22] <= localDouble.doubleValue()) && (localDouble.doubleValue() <= arrayOfDouble4[i22]))
          {
            f2 = (float)(i2 - arrayOfDouble6[i22] * (localDouble.doubleValue() - arrayOfDouble3[i22]));
            str = this.mRenderer.getYTextLabel(localDouble, i22);
            paramPaint.setColor(this.mRenderer.getYLabelsColor(i22));
            paramPaint.setTextAlign(this.mRenderer.getYLabelsAlign(i22));
            if (localOrientation != XYMultipleSeriesRenderer.Orientation.HORIZONTAL)
              break label2637;
            if (localAlign != Paint.Align.LEFT)
              break label2582;
            paramCanvas.drawLine(j + getLabelLinePos(localAlign), f2, j, f2, paramPaint);
            drawText(paramCanvas, str, j, f2 - this.mRenderer.getYLabelsVerticalPadding(), paramPaint, this.mRenderer.getYLabelsAngle());
            label2450: if (bool2)
            {
              paramPaint.setColor(this.mRenderer.getGridColor());
              paramCanvas.drawLine(j, f2, m, f2, paramPaint);
            }
          }
          while (true)
          {
            i24++;
            break label2275;
            if (localOrientation != XYMultipleSeriesRenderer.Orientation.VERTICAL)
              break;
            XYMultipleSeriesRenderer localXYMultipleSeriesRenderer1 = this.mRenderer;
            int i13 = paramInt3 - m;
            int i14 = paramInt4 - paramInt2;
            int i15 = this.mRenderer.getMarginsColor();
            drawBackground(localXYMultipleSeriesRenderer1, paramCanvas, m, paramInt2, i13, i14, paramPaint, true, i15);
            drawBackground(this.mRenderer, paramCanvas, paramInt1, paramInt2, j - paramInt1, paramInt4 - paramInt2, paramPaint, true, this.mRenderer.getMarginsColor());
            break;
            label2576: i16 = 0;
            break label2041;
            label2582: paramCanvas.drawLine(m, f2, m + getLabelLinePos(localAlign), f2, paramPaint);
            drawText(paramCanvas, str, m, f2 - this.mRenderer.getYLabelsVerticalPadding(), paramPaint, this.mRenderer.getYLabelsAngle());
            break label2450;
            label2637: paramCanvas.drawLine(m - getLabelLinePos(localAlign), f2, m, f2, paramPaint);
            drawText(paramCanvas, str, m + 10, f2 - this.mRenderer.getYLabelsVerticalPadding(), paramPaint, this.mRenderer.getYLabelsAngle());
            if (!bool2)
              continue;
            paramPaint.setColor(this.mRenderer.getGridColor());
            paramCanvas.drawLine(m, f2, j, f2, paramPaint);
          }
        }
        label2734: float f1;
        label2975: label3026: int i19;
        if (i16 != 0)
        {
          paramPaint.setColor(this.mRenderer.getLabelsColor());
          f1 = this.mRenderer.getAxisTitleTextSize();
          paramPaint.setTextSize(f1);
          paramPaint.setTextAlign(Paint.Align.CENTER);
          if (localOrientation == XYMultipleSeriesRenderer.Orientation.HORIZONTAL)
          {
            drawText(paramCanvas, this.mRenderer.getXTitle(), paramInt1 + paramInt3 / 2, f1 + (i2 + 4.0F * this.mRenderer.getLabelsTextSize() / 3.0F + this.mRenderer.getXLabelsPadding()), paramPaint, 0.0F);
            int i21 = 0;
            if (i21 < i7)
            {
              if (this.mRenderer.getYAxisAlign(i21) == Paint.Align.LEFT)
                drawText(paramCanvas, this.mRenderer.getYTitle(i21), f1 + paramInt1, paramInt2 + paramInt4 / 2, paramPaint, -90.0F);
              while (true)
              {
                i21++;
                break;
                drawText(paramCanvas, this.mRenderer.getYTitle(i21), paramInt1 + paramInt3, paramInt2 + paramInt4 / 2, paramPaint, -90.0F);
              }
            }
            paramPaint.setTextSize(this.mRenderer.getChartTitleTextSize());
            drawText(paramCanvas, this.mRenderer.getChartTitle(), paramInt1 + paramInt3 / 2, paramInt2 + this.mRenderer.getChartTitleTextSize(), paramPaint, 0.0F);
          }
        }
        else
        {
          if (localOrientation != XYMultipleSeriesRenderer.Orientation.HORIZONTAL)
            break label3227;
          XYMultipleSeriesRenderer localXYMultipleSeriesRenderer3 = this.mRenderer;
          int i20 = paramInt2 + (int)this.mRenderer.getXLabelsPadding();
          drawLegend(paramCanvas, localXYMultipleSeriesRenderer3, arrayOfString, j, m, i20, paramInt3, paramInt4, i, paramPaint, false);
          if (!this.mRenderer.isShowAxes())
            break label3354;
          paramPaint.setColor(this.mRenderer.getAxesColor());
          paramCanvas.drawLine(j, i2, m, i2, paramPaint);
          i18 = 0;
          i19 = 0;
          label3072: if ((i19 >= i7) || (i18 != 0))
            break label3305;
          if (this.mRenderer.getYAxisAlign(i19) != Paint.Align.RIGHT)
            break label3299;
        }
        label3227: label3299: for (int i18 = 1; ; i18 = 0)
        {
          i19++;
          break label3072;
          if (localOrientation != XYMultipleSeriesRenderer.Orientation.VERTICAL)
            break;
          drawText(paramCanvas, this.mRenderer.getXTitle(), paramInt1 + paramInt3 / 2, paramInt2 + paramInt4 - f1 + this.mRenderer.getXLabelsPadding(), paramPaint, -90.0F);
          drawText(paramCanvas, this.mRenderer.getYTitle(), m + 20, paramInt2 + paramInt4 / 2, paramPaint, 0.0F);
          paramPaint.setTextSize(this.mRenderer.getChartTitleTextSize());
          drawText(paramCanvas, this.mRenderer.getChartTitle(), f1 + paramInt1, k + paramInt4 / 2, paramPaint, 0.0F);
          break;
          if (localOrientation != XYMultipleSeriesRenderer.Orientation.VERTICAL)
            break label3026;
          transform(paramCanvas, i3, true);
          XYMultipleSeriesRenderer localXYMultipleSeriesRenderer2 = this.mRenderer;
          int i17 = paramInt2 + (int)this.mRenderer.getXLabelsPadding();
          drawLegend(paramCanvas, localXYMultipleSeriesRenderer2, arrayOfString, j, m, i17, paramInt3, paramInt4, i, paramPaint, false);
          transform(paramCanvas, i3, false);
          break label3026;
        }
        label3305: if (localOrientation == XYMultipleSeriesRenderer.Orientation.HORIZONTAL)
        {
          paramCanvas.drawLine(j, k, j, i2, paramPaint);
          if (i18 != 0)
            paramCanvas.drawLine(m, k, m, i2, paramPaint);
        }
        label3354: 
        while (i4 != 0)
        {
          transform(paramCanvas, i3, true);
          return;
          if (localOrientation != XYMultipleSeriesRenderer.Orientation.VERTICAL)
            continue;
          paramCanvas.drawLine(m, k, m, i2, paramPaint);
        }
        break;
      }
  }

  protected void drawChartValuesText(Canvas paramCanvas, XYSeries paramXYSeries, SimpleSeriesRenderer paramSimpleSeriesRenderer, Paint paramPaint, List<Float> paramList, int paramInt1, int paramInt2)
  {
    if (paramList.size() > 1)
    {
      float f1 = ((Float)paramList.get(0)).floatValue();
      float f2 = ((Float)paramList.get(1)).floatValue();
      int j = 0;
      if (j < paramList.size())
      {
        if (j == 2)
          if ((Math.abs(((Float)paramList.get(2)).floatValue() - ((Float)paramList.get(0)).floatValue()) > paramSimpleSeriesRenderer.getDisplayChartValuesDistance()) || (Math.abs(((Float)paramList.get(3)).floatValue() - ((Float)paramList.get(1)).floatValue()) > paramSimpleSeriesRenderer.getDisplayChartValuesDistance()))
          {
            drawText(paramCanvas, getLabel(paramSimpleSeriesRenderer.getChartValuesFormat(), paramXYSeries.getY(paramInt2)), ((Float)paramList.get(0)).floatValue(), ((Float)paramList.get(1)).floatValue() - paramSimpleSeriesRenderer.getChartValuesSpacing(), paramPaint, 0.0F);
            drawText(paramCanvas, getLabel(paramSimpleSeriesRenderer.getChartValuesFormat(), paramXYSeries.getY(paramInt2 + 1)), ((Float)paramList.get(2)).floatValue(), ((Float)paramList.get(3)).floatValue() - paramSimpleSeriesRenderer.getChartValuesSpacing(), paramPaint, 0.0F);
            f1 = ((Float)paramList.get(2)).floatValue();
            f2 = ((Float)paramList.get(3)).floatValue();
          }
        while (true)
        {
          j += 2;
          break;
          if ((j <= 2) || ((Math.abs(((Float)paramList.get(j)).floatValue() - f1) <= paramSimpleSeriesRenderer.getDisplayChartValuesDistance()) && (Math.abs(((Float)paramList.get(j + 1)).floatValue() - f2) <= paramSimpleSeriesRenderer.getDisplayChartValuesDistance())))
            continue;
          drawText(paramCanvas, getLabel(paramSimpleSeriesRenderer.getChartValuesFormat(), paramXYSeries.getY(paramInt2 + j / 2)), ((Float)paramList.get(j)).floatValue(), ((Float)paramList.get(j + 1)).floatValue() - paramSimpleSeriesRenderer.getChartValuesSpacing(), paramPaint, 0.0F);
          f1 = ((Float)paramList.get(j)).floatValue();
          f2 = ((Float)paramList.get(j + 1)).floatValue();
        }
      }
    }
    else
    {
      for (int i = 0; i < paramList.size(); i += 2)
        drawText(paramCanvas, getLabel(paramSimpleSeriesRenderer.getChartValuesFormat(), paramXYSeries.getY(paramInt2 + i / 2)), ((Float)paramList.get(i)).floatValue(), ((Float)paramList.get(i + 1)).floatValue() - paramSimpleSeriesRenderer.getChartValuesSpacing(), paramPaint, 0.0F);
    }
  }

  public abstract void drawSeries(Canvas paramCanvas, Paint paramPaint, List<Float> paramList, SimpleSeriesRenderer paramSimpleSeriesRenderer, float paramFloat, int paramInt1, int paramInt2);

  protected void drawSeries(XYSeries paramXYSeries, Canvas paramCanvas, Paint paramPaint, List<Float> paramList, SimpleSeriesRenderer paramSimpleSeriesRenderer, float paramFloat, int paramInt1, XYMultipleSeriesRenderer.Orientation paramOrientation, int paramInt2)
  {
    BasicStroke localBasicStroke = paramSimpleSeriesRenderer.getStroke();
    Paint.Cap localCap = paramPaint.getStrokeCap();
    Paint.Join localJoin = paramPaint.getStrokeJoin();
    float f = paramPaint.getStrokeMiter();
    PathEffect localPathEffect = paramPaint.getPathEffect();
    Paint.Style localStyle = paramPaint.getStyle();
    if (localBasicStroke != null)
    {
      float[] arrayOfFloat = localBasicStroke.getIntervals();
      DashPathEffect localDashPathEffect = null;
      if (arrayOfFloat != null)
        localDashPathEffect = new DashPathEffect(localBasicStroke.getIntervals(), localBasicStroke.getPhase());
      setStroke(localBasicStroke.getCap(), localBasicStroke.getJoin(), localBasicStroke.getMiter(), Paint.Style.FILL_AND_STROKE, localDashPathEffect, paramPaint);
    }
    drawSeries(paramCanvas, paramPaint, paramList, paramSimpleSeriesRenderer, paramFloat, paramInt1, paramInt2);
    if (isRenderPoints(paramSimpleSeriesRenderer))
    {
      ScatterChart localScatterChart = getPointsChart();
      if (localScatterChart != null)
        localScatterChart.drawSeries(paramCanvas, paramPaint, paramList, paramSimpleSeriesRenderer, paramFloat, paramInt1, paramInt2);
    }
    paramPaint.setTextSize(paramSimpleSeriesRenderer.getChartValuesTextSize());
    if (paramOrientation == XYMultipleSeriesRenderer.Orientation.HORIZONTAL)
      paramPaint.setTextAlign(Paint.Align.CENTER);
    while (true)
    {
      if (paramSimpleSeriesRenderer.isDisplayChartValues())
      {
        paramPaint.setTextAlign(paramSimpleSeriesRenderer.getChartValuesTextAlign());
        drawChartValuesText(paramCanvas, paramXYSeries, paramSimpleSeriesRenderer, paramPaint, paramList, paramInt1, paramInt2);
      }
      if (localBasicStroke != null)
        setStroke(localCap, localJoin, f, localStyle, localPathEffect, paramPaint);
      return;
      paramPaint.setTextAlign(Paint.Align.LEFT);
    }
  }

  protected void drawText(Canvas paramCanvas, String paramString, float paramFloat1, float paramFloat2, Paint paramPaint, float paramFloat3)
  {
    float f = paramFloat3 + -this.mRenderer.getOrientation().getAngle();
    if (f != 0.0F)
      paramCanvas.rotate(f, paramFloat1, paramFloat2);
    drawString(paramCanvas, paramString, paramFloat1, paramFloat2, paramPaint);
    if (f != 0.0F)
      paramCanvas.rotate(-f, paramFloat1, paramFloat2);
  }

  protected void drawXLabels(List<Double> paramList, Double[] paramArrayOfDouble, Canvas paramCanvas, Paint paramPaint, int paramInt1, int paramInt2, int paramInt3, double paramDouble1, double paramDouble2, double paramDouble3)
  {
    int i = paramList.size();
    boolean bool1 = this.mRenderer.isShowLabels();
    boolean bool2 = this.mRenderer.isShowGridY();
    for (int j = 0; j < i; j++)
    {
      double d = ((Double)paramList.get(j)).doubleValue();
      float f = (float)(paramInt1 + paramDouble1 * (d - paramDouble2));
      if (bool1)
      {
        paramPaint.setColor(this.mRenderer.getXLabelsColor());
        paramCanvas.drawLine(f, paramInt3, f, paramInt3 + this.mRenderer.getLabelsTextSize() / 3.0F, paramPaint);
        drawText(paramCanvas, getLabel(this.mRenderer.getLabelFormat(), d), f, paramInt3 + 4.0F * this.mRenderer.getLabelsTextSize() / 3.0F + this.mRenderer.getXLabelsPadding(), paramPaint, this.mRenderer.getXLabelsAngle());
      }
      if (!bool2)
        continue;
      paramPaint.setColor(this.mRenderer.getGridColor());
      paramCanvas.drawLine(f, paramInt3, f, paramInt2, paramPaint);
    }
    drawXTextLabels(paramArrayOfDouble, paramCanvas, paramPaint, bool1, paramInt1, paramInt2, paramInt3, paramDouble1, paramDouble2, paramDouble3);
  }

  protected void drawXTextLabels(Double[] paramArrayOfDouble, Canvas paramCanvas, Paint paramPaint, boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, double paramDouble1, double paramDouble2, double paramDouble3)
  {
    boolean bool = this.mRenderer.isShowCustomTextGrid();
    if (paramBoolean)
    {
      paramPaint.setColor(this.mRenderer.getXLabelsColor());
      int i = paramArrayOfDouble.length;
      for (int j = 0; j < i; j++)
      {
        Double localDouble = paramArrayOfDouble[j];
        if ((paramDouble2 > localDouble.doubleValue()) || (localDouble.doubleValue() > paramDouble3))
          continue;
        float f = (float)(paramInt1 + paramDouble1 * (localDouble.doubleValue() - paramDouble2));
        paramPaint.setColor(this.mRenderer.getXLabelsColor());
        paramCanvas.drawLine(f, paramInt3, f, paramInt3 + this.mRenderer.getLabelsTextSize() / 3.0F, paramPaint);
        drawText(paramCanvas, this.mRenderer.getXTextLabel(localDouble), f, paramInt3 + 4.0F * this.mRenderer.getLabelsTextSize() / 3.0F, paramPaint, this.mRenderer.getXLabelsAngle());
        if (!bool)
          continue;
        paramPaint.setColor(this.mRenderer.getGridColor());
        paramCanvas.drawLine(f, paramInt3, f, paramInt2, paramPaint);
      }
    }
  }

  protected void drawYLabels(Map<Integer, List<Double>> paramMap, Canvas paramCanvas, Paint paramPaint, int paramInt1, int paramInt2, int paramInt3, int paramInt4, double[] paramArrayOfDouble1, double[] paramArrayOfDouble2)
  {
    XYMultipleSeriesRenderer.Orientation localOrientation = this.mRenderer.getOrientation();
    boolean bool1 = this.mRenderer.isShowGridX();
    boolean bool2 = this.mRenderer.isShowLabels();
    for (int i = 0; i < paramInt1; i++)
    {
      paramPaint.setTextAlign(this.mRenderer.getYLabelsAlign(i));
      List localList = (List)paramMap.get(Integer.valueOf(i));
      int j = localList.size();
      int k = 0;
      if (k >= j)
        continue;
      double d = ((Double)localList.get(k)).doubleValue();
      Paint.Align localAlign = this.mRenderer.getYAxisAlign(i);
      int m;
      label133: float f;
      if (this.mRenderer.getYTextLabel(Double.valueOf(d), i) != null)
      {
        m = 1;
        f = (float)(paramInt4 - paramArrayOfDouble1[i] * (d - paramArrayOfDouble2[i]));
        if (localOrientation != XYMultipleSeriesRenderer.Orientation.HORIZONTAL)
          break label377;
        if ((bool2) && (m == 0))
        {
          paramPaint.setColor(this.mRenderer.getYLabelsColor(i));
          if (localAlign != Paint.Align.LEFT)
            break label305;
          paramCanvas.drawLine(paramInt2 + getLabelLinePos(localAlign), f, paramInt2, f, paramPaint);
          drawText(paramCanvas, getLabel(this.mRenderer.getLabelFormat(), d), paramInt2 - this.mRenderer.getYLabelsPadding(), f - this.mRenderer.getYLabelsVerticalPadding(), paramPaint, this.mRenderer.getYLabelsAngle());
        }
        label262: if (bool1)
        {
          paramPaint.setColor(this.mRenderer.getGridColor());
          paramCanvas.drawLine(paramInt2, f, paramInt3, f, paramPaint);
        }
      }
      while (true)
      {
        k++;
        break;
        m = 0;
        break label133;
        label305: paramCanvas.drawLine(paramInt3, f, paramInt3 + getLabelLinePos(localAlign), f, paramPaint);
        drawText(paramCanvas, getLabel(this.mRenderer.getLabelFormat(), d), paramInt3 + this.mRenderer.getYLabelsPadding(), f - this.mRenderer.getYLabelsVerticalPadding(), paramPaint, this.mRenderer.getYLabelsAngle());
        break label262;
        label377: if (localOrientation != XYMultipleSeriesRenderer.Orientation.VERTICAL)
          continue;
        if ((bool2) && (m == 0))
        {
          paramPaint.setColor(this.mRenderer.getYLabelsColor(i));
          paramCanvas.drawLine(paramInt3 - getLabelLinePos(localAlign), f, paramInt3, f, paramPaint);
          drawText(paramCanvas, getLabel(this.mRenderer.getLabelFormat(), d), paramInt3 + 10 + this.mRenderer.getYLabelsPadding(), f - this.mRenderer.getYLabelsVerticalPadding(), paramPaint, this.mRenderer.getYLabelsAngle());
        }
        if (!bool1)
          continue;
        paramPaint.setColor(this.mRenderer.getGridColor());
        paramCanvas.drawLine(paramInt3, f, paramInt2, f, paramPaint);
      }
    }
  }

  public double[] getCalcRange(int paramInt)
  {
    return (double[])this.mCalcRange.get(Integer.valueOf(paramInt));
  }

  public abstract String getChartType();

  public XYMultipleSeriesDataset getDataset()
  {
    return this.mDataset;
  }

  public double getDefaultMinimum()
  {
    return 1.7976931348623157E+308D;
  }

  public ScatterChart getPointsChart()
  {
    return null;
  }

  public XYMultipleSeriesRenderer getRenderer()
  {
    return this.mRenderer;
  }

  protected Rect getScreenR()
  {
    return this.mScreenR;
  }

  public SeriesSelection getSeriesAndPointForScreenCoordinate(Point paramPoint)
  {
    if (this.clickableAreas != null)
      for (int i = -1 + this.clickableAreas.size(); i >= 0; i--)
      {
        int j = 0;
        if (this.clickableAreas.get(Integer.valueOf(i)) == null)
          continue;
        Iterator localIterator = ((List)this.clickableAreas.get(Integer.valueOf(i))).iterator();
        while (localIterator.hasNext())
        {
          ClickableArea localClickableArea = (ClickableArea)localIterator.next();
          if (localClickableArea != null)
          {
            RectF localRectF = localClickableArea.getRect();
            if ((localRectF != null) && (localRectF.contains(paramPoint.getX(), paramPoint.getY())))
              return new SeriesSelection(i, j, localClickableArea.getX(), localClickableArea.getY());
          }
          j++;
        }
      }
    return super.getSeriesAndPointForScreenCoordinate(paramPoint);
  }

  protected List<Double> getXLabels(double paramDouble1, double paramDouble2, int paramInt)
  {
    return MathHelper.getLabels(paramDouble1, paramDouble2, paramInt);
  }

  protected Map<Integer, List<Double>> getYLabels(double[] paramArrayOfDouble1, double[] paramArrayOfDouble2, int paramInt)
  {
    HashMap localHashMap = new HashMap();
    for (int i = 0; i < paramInt; i++)
      localHashMap.put(Integer.valueOf(i), getValidLabels(MathHelper.getLabels(paramArrayOfDouble1[i], paramArrayOfDouble2[i], this.mRenderer.getYLabels())));
    return localHashMap;
  }

  protected boolean isRenderNullValues()
  {
    return false;
  }

  public boolean isRenderPoints(SimpleSeriesRenderer paramSimpleSeriesRenderer)
  {
    return false;
  }

  public void setCalcRange(double[] paramArrayOfDouble, int paramInt)
  {
    this.mCalcRange.put(Integer.valueOf(paramInt), paramArrayOfDouble);
  }

  protected void setDatasetRenderer(XYMultipleSeriesDataset paramXYMultipleSeriesDataset, XYMultipleSeriesRenderer paramXYMultipleSeriesRenderer)
  {
    this.mDataset = paramXYMultipleSeriesDataset;
    this.mRenderer = paramXYMultipleSeriesRenderer;
  }

  protected void setScreenR(Rect paramRect)
  {
    this.mScreenR = paramRect;
  }

  public double[] toRealPoint(float paramFloat1, float paramFloat2)
  {
    return toRealPoint(paramFloat1, paramFloat2, 0);
  }

  public double[] toRealPoint(float paramFloat1, float paramFloat2, int paramInt)
  {
    double d1 = this.mRenderer.getXAxisMin(paramInt);
    double d2 = this.mRenderer.getXAxisMax(paramInt);
    double d3 = this.mRenderer.getYAxisMin(paramInt);
    double d4 = this.mRenderer.getYAxisMax(paramInt);
    if (this.mScreenR != null)
    {
      double[] arrayOfDouble2 = new double[2];
      arrayOfDouble2[0] = (d1 + (paramFloat1 - this.mScreenR.left) * (d2 - d1) / this.mScreenR.width());
      arrayOfDouble2[1] = (d3 + (this.mScreenR.top + this.mScreenR.height() - paramFloat2) * (d4 - d3) / this.mScreenR.height());
      return arrayOfDouble2;
    }
    double[] arrayOfDouble1 = new double[2];
    arrayOfDouble1[0] = paramFloat1;
    arrayOfDouble1[1] = paramFloat2;
    return arrayOfDouble1;
  }

  public double[] toScreenPoint(double[] paramArrayOfDouble)
  {
    return toScreenPoint(paramArrayOfDouble, 0);
  }

  public double[] toScreenPoint(double[] paramArrayOfDouble, int paramInt)
  {
    double d1 = this.mRenderer.getXAxisMin(paramInt);
    double d2 = this.mRenderer.getXAxisMax(paramInt);
    double d3 = this.mRenderer.getYAxisMin(paramInt);
    double d4 = this.mRenderer.getYAxisMax(paramInt);
    if ((!this.mRenderer.isMinXSet(paramInt)) || (!this.mRenderer.isMaxXSet(paramInt)) || (!this.mRenderer.isMinXSet(paramInt)) || (!this.mRenderer.isMaxYSet(paramInt)))
    {
      double[] arrayOfDouble1 = getCalcRange(paramInt);
      d1 = arrayOfDouble1[0];
      d2 = arrayOfDouble1[1];
      d3 = arrayOfDouble1[2];
      d4 = arrayOfDouble1[3];
    }
    if (this.mScreenR != null)
    {
      double[] arrayOfDouble2 = new double[2];
      arrayOfDouble2[0] = ((paramArrayOfDouble[0] - d1) * this.mScreenR.width() / (d2 - d1) + this.mScreenR.left);
      arrayOfDouble2[1] = ((d4 - paramArrayOfDouble[1]) * this.mScreenR.height() / (d4 - d3) + this.mScreenR.top);
      paramArrayOfDouble = arrayOfDouble2;
    }
    return paramArrayOfDouble;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     org.achartengine.chart.XYChart
 * JD-Core Version:    0.6.0
 */