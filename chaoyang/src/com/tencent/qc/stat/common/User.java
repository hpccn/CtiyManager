package com.tencent.qc.stat.common;

public class User
{
  private String a = null;
  private String b = null;
  private int c;

  public User(String paramString1, String paramString2, int paramInt)
  {
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramInt;
  }

  public String a()
  {
    return this.a;
  }

  public void a(int paramInt)
  {
    this.c = paramInt;
  }

  public String b()
  {
    return this.b;
  }

  public int c()
  {
    return this.c;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.tencent.qc.stat.common.User
 * JD-Core Version:    0.6.0
 */