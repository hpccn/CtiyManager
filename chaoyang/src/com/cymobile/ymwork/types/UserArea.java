package com.cymobile.ymwork.types;

public class UserArea extends DataItemBase
  implements BaseType
{
  private String AreaName;
  private String BIANJIE;
  private double GEOX;
  private double GEOY;
  private double LEFTDOWNX;
  private double LEFTDOWNY;
  private double RIGHTUPX;
  private double RIGHTUPY;

  public double geRIGHTUPX()
  {
    return this.RIGHTUPX;
  }

  public String getAreaName()
  {
    return this.AreaName;
  }

  public String getBIANJIE()
  {
    return this.BIANJIE;
  }

  public double getGEOX()
  {
    return this.GEOX;
  }

  public double getGEOY()
  {
    return this.GEOY;
  }

  public double getLEFTDOWNX()
  {
    return this.LEFTDOWNX;
  }

  public double getLEFTDOWNY()
  {
    return this.LEFTDOWNY;
  }

  public double getRIGHTUPY()
  {
    return this.RIGHTUPY;
  }

  public void setAreaName(String paramString)
  {
    this.AreaName = paramString;
  }

  public void setBIANJIE(String paramString)
  {
    this.BIANJIE = paramString;
  }

  public void setGEOX(double paramDouble)
  {
    this.GEOX = paramDouble;
  }

  public void setGEOY(double paramDouble)
  {
    this.GEOY = paramDouble;
  }

  public void setLEFTDOWNX(double paramDouble)
  {
    this.LEFTDOWNX = paramDouble;
  }

  public void setLEFTDOWNY(double paramDouble)
  {
    this.LEFTDOWNY = paramDouble;
  }

  public void setRIGHTUPX(double paramDouble)
  {
    this.RIGHTUPX = paramDouble;
  }

  public void setRIGHTUPY(double paramDouble)
  {
    this.RIGHTUPY = paramDouble;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.types.UserArea
 * JD-Core Version:    0.6.0
 */