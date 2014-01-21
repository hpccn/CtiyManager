package com.tencent.qc.stat;

public enum StatReportStrategy
{
  int g;

  static
  {
    StatReportStrategy[] arrayOfStatReportStrategy = new StatReportStrategy[6];
    arrayOfStatReportStrategy[0] = a;
    arrayOfStatReportStrategy[1] = b;
    arrayOfStatReportStrategy[2] = c;
    arrayOfStatReportStrategy[3] = d;
    arrayOfStatReportStrategy[4] = e;
    arrayOfStatReportStrategy[5] = f;
    h = arrayOfStatReportStrategy;
  }

  private StatReportStrategy(int arg3)
  {
    int j;
    this.g = j;
  }

  public static StatReportStrategy a(int paramInt)
  {
    for (StatReportStrategy localStatReportStrategy : a())
      if (paramInt == localStatReportStrategy.b())
        return localStatReportStrategy;
    return null;
  }

  public static StatReportStrategy[] a()
  {
    return (StatReportStrategy[])h.clone();
  }

  public int b()
  {
    return this.g;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.tencent.qc.stat.StatReportStrategy
 * JD-Core Version:    0.6.0
 */