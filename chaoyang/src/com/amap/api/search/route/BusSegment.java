package com.amap.api.search.route;

import com.amap.api.search.core.LatLonPoint;

public class BusSegment extends Segment
{
  protected String mFirstStation;
  protected String mLastStation;
  protected String mLine;
  protected String[] mPassStopName;
  protected LatLonPoint[] mPassStopPos;

  public String getFirstStationName()
  {
    return this.mFirstStation;
  }

  public String getLastStationName()
  {
    return this.mLastStation;
  }

  public String getLineName()
  {
    return this.mLine;
  }

  public String getOffStationName()
  {
    return this.mPassStopName[(-1 + this.mPassStopName.length)];
  }

  public String getOnStationName()
  {
    return this.mPassStopName[0];
  }

  public String[] getPassStopName()
  {
    return this.mPassStopName;
  }

  public int getStopNumber()
  {
    return this.mPassStopPos.length;
  }

  public void setFirstStationName(String paramString)
  {
    this.mFirstStation = paramString;
  }

  public void setLastStationName(String paramString)
  {
    this.mLastStation = paramString;
  }

  public void setLineName(String paramString)
  {
    this.mLine = paramString;
  }

  public void setPassStopName(String[] paramArrayOfString)
  {
    this.mPassStopName = paramArrayOfString;
  }

  public void setPassStopPos(LatLonPoint[] paramArrayOfLatLonPoint)
  {
    this.mPassStopPos = paramArrayOfLatLonPoint;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.search.route.BusSegment
 * JD-Core Version:    0.6.0
 */