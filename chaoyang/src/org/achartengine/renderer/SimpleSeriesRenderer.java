package org.achartengine.renderer;

import android.graphics.Paint.Align;
import java.io.Serializable;
import java.text.NumberFormat;

public class SimpleSeriesRenderer
  implements Serializable
{
  private NumberFormat mChartValuesFormat;
  private float mChartValuesSpacing = 5.0F;
  private Paint.Align mChartValuesTextAlign = Paint.Align.CENTER;
  private float mChartValuesTextSize = 10.0F;
  private int mColor = -16776961;
  private boolean mDisplayBoundingPoints = true;
  private boolean mDisplayChartValues;
  private int mDisplayChartValuesDistance = 100;
  private boolean mGradientEnabled = false;
  private int mGradientStartColor;
  private double mGradientStartValue;
  private int mGradientStopColor;
  private double mGradientStopValue;
  private boolean mHighlighted;
  private boolean mShowLegendItem = true;
  private BasicStroke mStroke;

  public NumberFormat getChartValuesFormat()
  {
    return this.mChartValuesFormat;
  }

  public float getChartValuesSpacing()
  {
    return this.mChartValuesSpacing;
  }

  public Paint.Align getChartValuesTextAlign()
  {
    return this.mChartValuesTextAlign;
  }

  public float getChartValuesTextSize()
  {
    return this.mChartValuesTextSize;
  }

  public int getColor()
  {
    return this.mColor;
  }

  public int getDisplayChartValuesDistance()
  {
    return this.mDisplayChartValuesDistance;
  }

  public int getGradientStartColor()
  {
    return this.mGradientStartColor;
  }

  public double getGradientStartValue()
  {
    return this.mGradientStartValue;
  }

  public int getGradientStopColor()
  {
    return this.mGradientStopColor;
  }

  public double getGradientStopValue()
  {
    return this.mGradientStopValue;
  }

  public BasicStroke getStroke()
  {
    return this.mStroke;
  }

  public boolean isDisplayBoundingPoints()
  {
    return this.mDisplayBoundingPoints;
  }

  public boolean isDisplayChartValues()
  {
    return this.mDisplayChartValues;
  }

  public boolean isGradientEnabled()
  {
    return this.mGradientEnabled;
  }

  public boolean isHighlighted()
  {
    return this.mHighlighted;
  }

  public boolean isShowLegendItem()
  {
    return this.mShowLegendItem;
  }

  public void setChartValuesFormat(NumberFormat paramNumberFormat)
  {
    this.mChartValuesFormat = paramNumberFormat;
  }

  public void setChartValuesSpacing(float paramFloat)
  {
    this.mChartValuesSpacing = paramFloat;
  }

  public void setChartValuesTextAlign(Paint.Align paramAlign)
  {
    this.mChartValuesTextAlign = paramAlign;
  }

  public void setChartValuesTextSize(float paramFloat)
  {
    this.mChartValuesTextSize = paramFloat;
  }

  public void setColor(int paramInt)
  {
    this.mColor = paramInt;
  }

  public void setDisplayBoundingPoints(boolean paramBoolean)
  {
    this.mDisplayBoundingPoints = paramBoolean;
  }

  public void setDisplayChartValues(boolean paramBoolean)
  {
    this.mDisplayChartValues = paramBoolean;
  }

  public void setDisplayChartValuesDistance(int paramInt)
  {
    this.mDisplayChartValuesDistance = paramInt;
  }

  public void setGradientEnabled(boolean paramBoolean)
  {
    this.mGradientEnabled = paramBoolean;
  }

  public void setGradientStart(double paramDouble, int paramInt)
  {
    this.mGradientStartValue = paramDouble;
    this.mGradientStartColor = paramInt;
  }

  public void setGradientStop(double paramDouble, int paramInt)
  {
    this.mGradientStopValue = paramDouble;
    this.mGradientStopColor = paramInt;
  }

  public void setHighlighted(boolean paramBoolean)
  {
    this.mHighlighted = paramBoolean;
  }

  public void setShowLegendItem(boolean paramBoolean)
  {
    this.mShowLegendItem = paramBoolean;
  }

  public void setStroke(BasicStroke paramBasicStroke)
  {
    this.mStroke = paramBasicStroke;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     org.achartengine.renderer.SimpleSeriesRenderer
 * JD-Core Version:    0.6.0
 */