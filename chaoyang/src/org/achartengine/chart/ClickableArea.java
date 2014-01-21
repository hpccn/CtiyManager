package org.achartengine.chart;

import android.graphics.RectF;

public class ClickableArea
{
  private RectF rect;
  private double x;
  private double y;

  public ClickableArea(RectF paramRectF, double paramDouble1, double paramDouble2)
  {
    this.rect = paramRectF;
    this.x = paramDouble1;
    this.y = paramDouble2;
  }

  public RectF getRect()
  {
    return this.rect;
  }

  public double getX()
  {
    return this.x;
  }

  public double getY()
  {
    return this.y;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     org.achartengine.chart.ClickableArea
 * JD-Core Version:    0.6.0
 */