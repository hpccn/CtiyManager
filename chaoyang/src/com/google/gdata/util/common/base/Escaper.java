package com.google.gdata.util.common.base;

public abstract interface Escaper
{
  public abstract Appendable escape(Appendable paramAppendable);

  public abstract String escape(String paramString);
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.google.gdata.util.common.base.Escaper
 * JD-Core Version:    0.6.0
 */