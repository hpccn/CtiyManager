package com.cymobile.ymwork.types;

public class CommonResult extends DataItemBase
  implements BaseType
{
  private String result;
  private String userId;

  public String getResult()
  {
    return this.result;
  }

  public String getUserId()
  {
    return this.userId;
  }

  public void setResult(String paramString)
  {
    this.result = paramString;
  }

  public void setUserId(String paramString)
  {
    this.userId = paramString;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.types.CommonResult
 * JD-Core Version:    0.6.0
 */