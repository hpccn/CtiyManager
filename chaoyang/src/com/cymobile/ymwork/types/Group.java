package com.cymobile.ymwork.types;

import java.util.ArrayList;
import java.util.Collection;

public class Group<T extends BaseType> extends ArrayList<T>
  implements BaseType
{
  private static final long serialVersionUID = 1L;
  private int mNumber;
  private String mType;

  public Group()
  {
  }

  public Group(Collection<T> paramCollection)
  {
    super(paramCollection);
  }

  public int getNumber()
  {
    return this.mNumber;
  }

  public String getType()
  {
    return this.mType;
  }

  public void setNumber(int paramInt)
  {
    this.mNumber = paramInt;
  }

  public void setType(String paramString)
  {
    this.mType = paramString;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.types.Group
 * JD-Core Version:    0.6.0
 */