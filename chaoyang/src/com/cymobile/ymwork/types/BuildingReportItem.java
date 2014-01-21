package com.cymobile.ymwork.types;

public class BuildingReportItem extends DataItemBase
  implements BaseType
{
  private String name;
  private int number;
  private String unitname;

  public String getName()
  {
    return this.name;
  }

  public int getNumber()
  {
    return this.number;
  }

  public String getUnitname()
  {
    return this.unitname;
  }

  public void setName(String paramString)
  {
    this.name = paramString;
  }

  public void setNumber(int paramInt)
  {
    this.number = paramInt;
  }

  public void setUnitname(String paramString)
  {
    this.unitname = paramString;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.types.BuildingReportItem
 * JD-Core Version:    0.6.0
 */