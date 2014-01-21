package org.achartengine.tools;

public class ZoomEvent
{
  private boolean mZoomIn;
  private float mZoomRate;

  public ZoomEvent(boolean paramBoolean, float paramFloat)
  {
    this.mZoomIn = paramBoolean;
    this.mZoomRate = paramFloat;
  }

  public float getZoomRate()
  {
    return this.mZoomRate;
  }

  public boolean isZoomIn()
  {
    return this.mZoomIn;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     org.achartengine.tools.ZoomEvent
 * JD-Core Version:    0.6.0
 */