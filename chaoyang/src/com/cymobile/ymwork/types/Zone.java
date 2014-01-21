package com.cymobile.ymwork.types;

public class Zone extends DataItemBase
  implements BaseType
{
  public int cityOrSuburb;
  public String pid;
  private String zoneName;
  private String zoneid;

  public int getCityOrSuburb()
  {
    return this.cityOrSuburb;
  }

  public String getPid()
  {
    return this.pid;
  }

  public String getZoneName()
  {
    return this.zoneName;
  }

  public String getZoneid()
  {
    return this.zoneid;
  }

  public void setCityOrSuburb(int paramInt)
  {
    this.cityOrSuburb = paramInt;
  }

  public void setPid(String paramString)
  {
    this.pid = paramString;
  }

  public void setZoneName(String paramString)
  {
    this.zoneName = paramString;
  }

  public void setZoneid(String paramString)
  {
    this.zoneid = paramString;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.types.Zone
 * JD-Core Version:    0.6.0
 */