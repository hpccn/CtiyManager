package com.cymobile.ymwork.search;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.cymobile.ymwork.act.SearchableActivity;
import java.util.LinkedList;
import java.util.List;

public class SearchRecordListAdapter extends BaseAdapter
{
  private Context mContext;
  private List<SearchRecord> mDataList = new LinkedList();

  public SearchRecordListAdapter(Context paramContext)
  {
    this.mContext = paramContext;
  }

  public void addAllItem(List<SearchRecord> paramList)
  {
    this.mDataList.addAll(paramList);
    notifyDataSetChanged();
  }

  public void addItem(SearchRecord paramSearchRecord)
  {
    this.mDataList.add(paramSearchRecord);
    notifyDataSetChanged();
  }

  public int getCount()
  {
    return this.mDataList.size();
  }

  public Object getItem(int paramInt)
  {
    return this.mDataList.get(paramInt);
  }

  public long getItemId(int paramInt)
  {
    return paramInt;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null);
    for (SearchRecordListTextItem localSearchRecordListTextItem = new SearchRecordListTextItem(this.mContext); ; localSearchRecordListTextItem = (SearchRecordListTextItem)paramView)
    {
      String str = ((SearchRecord)this.mDataList.get(paramInt)).getSearchRecordText();
      localSearchRecordListTextItem.setItemText(str);
      localSearchRecordListTextItem.setDeletButotnTag(str);
      localSearchRecordListTextItem.setOnSearchHistoryDeleteItemButtonClickListener(new SearchHistoryDeleteItemButtonClickListener((SearchableActivity)this.mContext));
      return localSearchRecordListTextItem;
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.search.SearchRecordListAdapter
 * JD-Core Version:    0.6.0
 */