package com.amap.api.search.route;

public class WalkSegment extends DriveWalkSegment
{
  protected String mAccessorialInfo;
  protected String mTextInfo;

  public String getAccessorialInfo()
  {
    return this.mAccessorialInfo;
  }

  public String getTextInfo()
  {
    return this.mTextInfo;
  }

  public void setAccessorialInfo(String paramString)
  {
    this.mAccessorialInfo = paramString;
  }

  public void setTextInfo(String paramString)
  {
    this.mTextInfo = paramString;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.search.route.WalkSegment
 * JD-Core Version:    0.6.0
 */