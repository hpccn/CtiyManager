package com.cymobile.ymwork.adapter;

import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;

public abstract interface IFilterAdapter
{
  public abstract void setDataSet(ArrayList<? extends Parcelable> paramArrayList);

  public abstract void setDataSet(List<? extends Parcelable> paramList, Parcelable paramParcelable);
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.adapter.IFilterAdapter
 * JD-Core Version:    0.6.0
 */