package com.autonavi.amap.mapcore;

public class MapSourceGridData
{
  private String gridName;
  private int sourceType;

  public MapSourceGridData(String paramString, int paramInt)
  {
    this.gridName = paramString;
    this.sourceType = paramInt;
  }

  public String getGridName()
  {
    return this.gridName;
  }

  public String getKeyGridName()
  {
    return this.sourceType + "-" + this.gridName;
  }

  public int getSourceType()
  {
    return this.sourceType;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.autonavi.amap.mapcore.MapSourceGridData
 * JD-Core Version:    0.6.0
 */