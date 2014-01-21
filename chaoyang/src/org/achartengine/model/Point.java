package org.achartengine.model;

import java.io.Serializable;

public final class Point
  implements Serializable
{
  private float mX;
  private float mY;

  public Point()
  {
  }

  public Point(float paramFloat1, float paramFloat2)
  {
    this.mX = paramFloat1;
    this.mY = paramFloat2;
  }

  public float getX()
  {
    return this.mX;
  }

  public float getY()
  {
    return this.mY;
  }

  public void setX(float paramFloat)
  {
    this.mX = paramFloat;
  }

  public void setY(float paramFloat)
  {
    this.mY = paramFloat;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     org.achartengine.model.Point
 * JD-Core Version:    0.6.0
 */