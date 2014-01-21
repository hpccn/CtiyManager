package com.amap.api.offlinemap;

public class DownCity extends City
{
  private String a = "";
  private long b = 0L;
  private int c = -1;
  private String d = "";
  private String e = "";

  public String getDurl()
  {
    return this.a;
  }

  public String getJianpin()
  {
    return this.e;
  }

  public long getSize()
  {
    return this.b;
  }

  public String getVersion()
  {
    return this.d;
  }

  public int getmState()
  {
    return this.c;
  }

  public void setDurl(String paramString)
  {
    this.a = paramString;
  }

  public void setJianpin(String paramString)
  {
    this.e = paramString;
  }

  public void setSize(long paramLong)
  {
    this.b = paramLong;
  }

  public void setVersion(String paramString)
  {
    this.d = paramString;
  }

  public void setmState(int paramInt)
  {
    this.c = paramInt;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.offlinemap.DownCity
 * JD-Core Version:    0.6.0
 */