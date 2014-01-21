package com.cymobile.ymwork.types;

public class Classes extends DataItemBase
  implements BaseType
{
  public String cid;
  private String className;
  private String classid;

  public String getCid()
  {
    return this.cid;
  }

  public String getClassName()
  {
    return this.className;
  }

  public String getClassid()
  {
    return this.classid;
  }

  public void setCid(String paramString)
  {
    this.cid = paramString;
  }

  public void setClassName(String paramString)
  {
    this.className = paramString;
  }

  public void setClassid(String paramString)
  {
    this.classid = paramString;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.types.Classes
 * JD-Core Version:    0.6.0
 */