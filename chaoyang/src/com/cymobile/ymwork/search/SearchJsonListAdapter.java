package com.cymobile.ymwork.search;

import android.content.Context;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import java.util.LinkedList;
import java.util.List;

public class SearchJsonListAdapter extends BaseAdapter
{
  private static final String TAG = "SearchJsonListAdapter";
  private Button mCloseButton;
  private View mCloseItemView;
  private Context mContext;
  private List<String> mDataList = new LinkedList();
  private SugCloseButtonCloseObserver mObserver;

  public SearchJsonListAdapter(Context paramContext)
  {
    this.mContext = paramContext;
    this.mObserver = ((SugCloseButtonCloseObserver)paramContext);
  }

  public void addAllItem(List<String> paramList)
  {
    this.mDataList.addAll(paramList);
    notifyDataSetChanged();
  }

  public void addItem(String paramString)
  {
    this.mDataList.add(paramString);
    notifyDataSetChanged();
  }

  public int getCount()
  {
    return 1 + this.mDataList.size();
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
    Log.i("SearchJsonListAdapter", "SearchJsonListAdapter getView()" + paramInt + "view=" + paramView);
    if (paramInt < this.mDataList.size())
    {
      SearchJsonListTextItem localSearchJsonListTextItem;
      if ((paramView != null) && (!paramView.getTag().equals("1")))
        localSearchJsonListTextItem = (SearchJsonListTextItem)paramView;
      while (true)
      {
        localSearchJsonListTextItem.setItemText((String)this.mDataList.get(paramInt));
        return localSearchJsonListTextItem;
        localSearchJsonListTextItem = new SearchJsonListTextItem(this.mContext);
        localSearchJsonListTextItem.setTag("0");
      }
    }
    if ((paramView != null) && (!paramView.getTag().equals("0")))
      this.mCloseItemView = paramView;
    while (true)
    {
      this.mCloseItemView.setTag("1");
      return this.mCloseItemView;
      this.mCloseItemView = LayoutInflater.from(this.mContext).inflate(2130903091, null);
      this.mCloseButton = ((Button)this.mCloseItemView.findViewById(2131230926));
      this.mCloseButton.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramView)
        {
          SearchJsonListAdapter.this.mObserver.onClickSugColseButtonListener();
        }
      });
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.search.SearchJsonListAdapter
 * JD-Core Version:    0.6.0
 */