package com.cymobile.ymwork.types;

public class BuildingReport extends DataItemBase
  implements BaseType
{
  private int area_all;
  private Group<ConstrustionFieldAvgItem> avgs;
  private String avgsum;
  private Group<BuildingReportItem> items;
  private int maxnum;
  private int number_all;

  public int getArea_all()
  {
    return this.area_all;
  }

  public Group<ConstrustionFieldAvgItem> getAvgs()
  {
    return this.avgs;
  }

  public String getAvgsum()
  {
    return this.avgsum;
  }

  public Group<BuildingReportItem> getItems()
  {
    return this.items;
  }

  public int getMaxnum()
  {
    return this.maxnum;
  }

  public int getNumber_all()
  {
    return this.number_all;
  }

  public void setArea_all(int paramInt)
  {
    this.area_all = paramInt;
  }

  public void setAvgs(Group<ConstrustionFieldAvgItem> paramGroup)
  {
    this.avgs = paramGroup;
  }

  public void setAvgsum(String paramString)
  {
    this.avgsum = paramString;
  }

  public void setItems(Group<BuildingReportItem> paramGroup)
  {
    this.items = paramGroup;
  }

  public void setMaxnum(int paramInt)
  {
    this.maxnum = paramInt;
  }

  public void setNumber_all(int paramInt)
  {
    this.number_all = paramInt;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.types.BuildingReport
 * JD-Core Version:    0.6.0
 */