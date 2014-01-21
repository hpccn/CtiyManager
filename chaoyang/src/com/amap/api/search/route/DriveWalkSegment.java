package com.amap.api.search.route;

public class DriveWalkSegment extends Segment
{
  public static final int NoAction = -1;
  protected int mActionCode;
  protected String mActionDes;
  protected String mDirection;
  protected String mRoadName;

  public int getActionCode()
  {
    return this.mActionCode;
  }

  public String getActionDescription()
  {
    return this.mActionDes;
  }

  public String getDirection()
  {
    return this.mDirection;
  }

  public String getRoadName()
  {
    return this.mRoadName;
  }

  public void setActionCode(int paramInt)
  {
    this.mActionCode = paramInt;
  }

  public void setActionDescription(String paramString)
  {
    this.mActionDes = paramString;
  }

  public void setDirection(String paramString)
  {
    this.mDirection = paramString;
  }

  public void setRoadName(String paramString)
  {
    this.mRoadName = paramString;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.search.route.DriveWalkSegment
 * JD-Core Version:    0.6.0
 */