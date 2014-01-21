package com.cymobile.ymwork.types;

public class ConstrustionFieldAvgItem extends DataItemBase
  implements BaseType
{
  private String avg;
  private String name;

  public String getAvg()
  {
    return this.avg;
  }

  public String getName()
  {
    return this.name;
  }

  public void setAvg(String paramString)
  {
    this.avg = paramString;
  }

  public void setName(String paramString)
  {
    this.name = paramString;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.types.ConstrustionFieldAvgItem
 * JD-Core Version:    0.6.0
 */