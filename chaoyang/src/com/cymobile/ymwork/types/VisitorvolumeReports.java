package com.cymobile.ymwork.types;

public class VisitorvolumeReports extends DataItemBase
  implements BaseType
{
  private Group<VisitorvolumeReport> count;
  private int maxnum1;
  private int maxnum2;
  private Group<VisitorvolumeReport> regist;

  public Group<VisitorvolumeReport> getItems()
  {
    return this.count;
  }

  public Group<VisitorvolumeReport> getItems_regist()
  {
    return this.regist;
  }

  public int getMaxnum1()
  {
    return this.maxnum1;
  }

  public int getMaxnum2()
  {
    return this.maxnum2;
  }

  public void setItems(Group<VisitorvolumeReport> paramGroup)
  {
    this.count = paramGroup;
  }

  public void setItems_regist(Group<VisitorvolumeReport> paramGroup)
  {
    this.regist = paramGroup;
  }

  public void setMaxnum1(int paramInt)
  {
    this.maxnum1 = paramInt;
  }

  public void setMaxnum2(int paramInt)
  {
    this.maxnum2 = paramInt;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.types.VisitorvolumeReports
 * JD-Core Version:    0.6.0
 */