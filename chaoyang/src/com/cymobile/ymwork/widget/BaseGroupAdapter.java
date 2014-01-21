package com.cymobile.ymwork.widget;

import android.content.Context;
import android.widget.BaseAdapter;
import com.cymobile.ymwork.types.BaseType;
import com.cymobile.ymwork.types.Group;

public abstract class BaseGroupAdapter<T extends BaseType> extends BaseAdapter
{
  Group<T> group = null;

  public BaseGroupAdapter(Context paramContext)
  {
  }

  public void appendGroup(Group<T> paramGroup)
  {
    this.group.addAll(paramGroup);
    notifyDataSetInvalidated();
  }

  public int getCount()
  {
    if (this.group == null)
      return 0;
    return this.group.size();
  }

  public Object getItem(int paramInt)
  {
    return this.group.get(paramInt);
  }

  public long getItemId(int paramInt)
  {
    return paramInt;
  }

  public boolean hasStableIds()
  {
    return true;
  }

  public boolean isEmpty()
  {
    if (this.group == null)
      return true;
    return this.group.isEmpty();
  }

  public void setGroup(Group<T> paramGroup)
  {
    this.group = paramGroup;
    notifyDataSetInvalidated();
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.widget.BaseGroupAdapter
 * JD-Core Version:    0.6.0
 */