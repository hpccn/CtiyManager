package com.cymobile.ymwork.widget;

import android.content.Context;
import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.BaseAdapter;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class SeparatedListAdapter extends BaseAdapter
  implements ObservableAdapter
{
  Context mContext;
  private DataSetObserver mDataSetObserver = new DataSetObserver()
  {
    public void onChanged()
    {
      SeparatedListAdapter.this.notifyDataSetChanged();
    }
  };
  public final Map<String, Adapter> sections = new LinkedHashMap();

  public SeparatedListAdapter(Context paramContext)
  {
    this.mContext = paramContext;
  }

  public SeparatedListAdapter(Context paramContext, int paramInt)
  {
    this.mContext = paramContext;
  }

  public void addSection(String paramString, Adapter paramAdapter)
  {
    this.sections.put(paramString, paramAdapter);
    paramAdapter.registerDataSetObserver(this.mDataSetObserver);
  }

  public boolean areAllItemsEnabled()
  {
    return false;
  }

  public void clear()
  {
    this.sections.clear();
    notifyDataSetInvalidated();
  }

  public Adapter getAdapter(String paramString)
  {
    return (Adapter)this.sections.get(paramString);
  }

  public int getCount()
  {
    int i = 0;
    Iterator localIterator = this.sections.values().iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return i;
      i += ((Adapter)localIterator.next()).getCount();
    }
  }

  public Object getItem(int paramInt)
  {
    Iterator localIterator = this.sections.keySet().iterator();
    while (true)
    {
      Object localObject;
      if (!localIterator.hasNext())
        localObject = null;
      Adapter localAdapter;
      int i;
      do
      {
        return localObject;
        localObject = localIterator.next();
        localAdapter = (Adapter)this.sections.get(localObject);
        i = 1 + localAdapter.getCount();
      }
      while (paramInt == 0);
      if (paramInt < i)
        return localAdapter.getItem(paramInt - 1);
      paramInt -= i;
    }
  }

  public long getItemId(int paramInt)
  {
    return paramInt;
  }

  public int getItemViewType(int paramInt)
  {
    int i = 1;
    Iterator localIterator = this.sections.keySet().iterator();
    while (true)
    {
      if (!localIterator.hasNext());
      Adapter localAdapter;
      int j;
      do
      {
        return -1;
        Object localObject = localIterator.next();
        localAdapter = (Adapter)this.sections.get(localObject);
        j = 1 + localAdapter.getCount();
      }
      while (paramInt == 0);
      if (paramInt < j)
        return i + localAdapter.getItemViewType(paramInt - 1);
      paramInt -= j;
      i += localAdapter.getViewTypeCount();
    }
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    int i = 0;
    Iterator localIterator = this.sections.keySet().iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return null;
      Object localObject = localIterator.next();
      Adapter localAdapter = (Adapter)this.sections.get(localObject);
      int j = localAdapter.getCount();
      if (paramInt < j)
        return localAdapter.getView(paramInt, paramView, paramViewGroup);
      paramInt -= j;
      i++;
    }
  }

  public int getViewTypeCount()
  {
    int i = 1;
    Iterator localIterator = this.sections.values().iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return i;
      i += ((Adapter)localIterator.next()).getViewTypeCount();
    }
  }

  public boolean hasStableIds()
  {
    return false;
  }

  public boolean isEmpty()
  {
    return getCount() == 0;
  }

  public boolean isEnabled(int paramInt)
  {
    return true;
  }

  public void removeObserver()
  {
    Iterator localIterator = this.sections.entrySet().iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return;
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      if (!(localEntry.getValue() instanceof ObservableAdapter))
        continue;
      ((ObservableAdapter)localEntry.getValue()).removeObserver();
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.widget.SeparatedListAdapter
 * JD-Core Version:    0.6.0
 */