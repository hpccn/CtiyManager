package com.cymobile.ymwork.types;

public class VisitorvolumeReport extends DataItemBase
  implements BaseType
{
  private String registTime;
  private String registTimes;
  private String time;
  private String times;

  public String getRegistTime()
  {
    return this.registTime;
  }

  public String getRegistTimes()
  {
    return this.registTimes;
  }

  public String getTime()
  {
    return this.time;
  }

  public String getTimes()
  {
    return this.times;
  }

  public void setRegistTime(String paramString)
  {
    this.registTime = paramString;
  }

  public void setRegistTimes(String paramString)
  {
    this.registTimes = paramString;
  }

  public void setTime(String paramString)
  {
    this.time = paramString;
  }

  public void setTimes(String paramString)
  {
    this.times = paramString;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.types.VisitorvolumeReport
 * JD-Core Version:    0.6.0
 */