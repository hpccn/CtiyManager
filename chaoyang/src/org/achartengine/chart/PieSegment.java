package org.achartengine.chart;

import java.io.Serializable;

public class PieSegment
  implements Serializable
{
  private int mDataIndex;
  private float mEndAngle;
  private float mStartAngle;
  private float mValue;

  public PieSegment(int paramInt, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    this.mStartAngle = paramFloat2;
    this.mEndAngle = (paramFloat3 + paramFloat2);
    this.mDataIndex = paramInt;
    this.mValue = paramFloat1;
  }

  protected int getDataIndex()
  {
    return this.mDataIndex;
  }

  protected float getEndAngle()
  {
    return this.mEndAngle;
  }

  protected float getStartAngle()
  {
    return this.mStartAngle;
  }

  protected float getValue()
  {
    return this.mValue;
  }

  public boolean isInSegment(double paramDouble)
  {
    if ((paramDouble >= this.mStartAngle) && (paramDouble <= this.mEndAngle));
    double d1;
    double d2;
    double d3;
    do
    {
      return true;
      d1 = paramDouble % 360.0D;
      d2 = this.mStartAngle;
      d3 = this.mEndAngle;
      while (d3 > 360.0D)
      {
        d2 -= 360.0D;
        d3 -= 360.0D;
      }
    }
    while ((d1 >= d2) && (d1 <= d3));
    return false;
  }

  public String toString()
  {
    return "mDataIndex=" + this.mDataIndex + ",mValue=" + this.mValue + ",mStartAngle=" + this.mStartAngle + ",mEndAngle=" + this.mEndAngle;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     org.achartengine.chart.PieSegment
 * JD-Core Version:    0.6.0
 */