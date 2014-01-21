package com.cymobile.ymwork.search;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import java.util.List;

public class SearchJsonList extends LinearLayout
{
  private Context mContext;
  private TextView mJsonLoadingText;
  private ISearchJsonListListener mListener;
  private ListView mSearchJsonListView;
  private LinearLayout mSearchJsonView;
  private List<String> mjsonKeywordList;

  public SearchJsonList(Context paramContext)
  {
    super(paramContext);
    this.mContext = paramContext;
    init();
  }

  public SearchJsonList(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.mContext = paramContext;
    init();
  }

  private void init()
  {
    this.mSearchJsonView = ((LinearLayout)((LayoutInflater)this.mContext.getSystemService("layout_inflater")).inflate(2130903088, this, true));
    this.mJsonLoadingText = ((TextView)this.mSearchJsonView.findViewById(2131230916));
    this.mSearchJsonListView = ((ListView)this.mSearchJsonView.findViewById(2131230917));
    this.mSearchJsonListView.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
      {
        if (paramInt < SearchJsonList.this.mjsonKeywordList.size())
        {
          String str = ((SearchJsonListTextItem)paramView).getItemText().trim();
          SearchJsonList.this.mListener.onJsonListItemClick(str);
        }
      }
    });
  }

  public void displayJosnLoading(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.mJsonLoadingText.setVisibility(0);
      return;
    }
    this.mJsonLoadingText.setVisibility(8);
  }

  public void setAdapter(SearchJsonListAdapter paramSearchJsonListAdapter, List<String> paramList)
  {
    this.mjsonKeywordList = paramList;
    this.mSearchJsonListView.setAdapter(paramSearchJsonListAdapter);
  }

  public void setJosnViewVisibility(int paramInt)
  {
    if (this.mSearchJsonView.getVisibility() != paramInt)
      this.mSearchJsonView.setVisibility(paramInt);
  }

  public void setListener(ISearchJsonListListener paramISearchJsonListListener)
  {
    this.mListener = paramISearchJsonListListener;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.search.SearchJsonList
 * JD-Core Version:    0.6.0
 */