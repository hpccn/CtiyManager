package com.cymobile.ymwork.search;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import com.cymobile.ymwork.act.SearchableActivity;

public class SearchHistoryDeleteItemButtonClickListener
  implements View.OnClickListener
{
  SearchableActivity mObserver;

  public SearchHistoryDeleteItemButtonClickListener(SearchableActivity paramSearchableActivity)
  {
    this.mObserver = paramSearchableActivity;
  }

  public void onClick(View paramView)
  {
    String str = (String)((Button)paramView).getTag();
    this.mObserver.onDeleteItemButtonClick(str);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.search.SearchHistoryDeleteItemButtonClickListener
 * JD-Core Version:    0.6.0
 */