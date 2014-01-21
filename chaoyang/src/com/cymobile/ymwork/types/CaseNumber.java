package com.cymobile.ymwork.types;

public class CaseNumber extends DataItemBase
  implements BaseType
{
  int[] classNumber = new int[17];

  public int getClassNumber(int paramInt)
  {
    return this.classNumber[paramInt];
  }

  public void setClassNumber(int paramInt1, int paramInt2)
  {
    this.classNumber[paramInt1] = paramInt2;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.types.CaseNumber
 * JD-Core Version:    0.6.0
 */