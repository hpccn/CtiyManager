package com.cymobile.ymwork.search;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.Button;
import android.widget.TextView;

public class SearchRecordListTextItem extends TextListItem
{
  private Button mDeleteItemButton;
  private TextView mSearchRecordText;

  public SearchRecordListTextItem(Context paramContext)
  {
    super(paramContext);
    init();
  }

  public SearchRecordListTextItem(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init();
  }

  private void init()
  {
    ((LayoutInflater)getContext().getSystemService("layout_inflater")).inflate(2130903090, this, true);
    this.mSearchRecordText = ((TextView)findViewById(2131230923));
    this.mDeleteItemButton = ((Button)findViewById(2131230924));
  }

  public String getDeletButotnTag()
  {
    return (String)this.mDeleteItemButton.getTag();
  }

  public String getItemText()
  {
    return this.mSearchRecordText.getText().toString();
  }

  public void setDeletButotnTag(String paramString)
  {
    this.mDeleteItemButton.setTag(paramString);
  }

  public void setItemText(String paramString)
  {
    this.mSearchRecordText.setText(paramString);
  }

  public void setOnSearchHistoryDeleteItemButtonClickListener(SearchHistoryDeleteItemButtonClickListener paramSearchHistoryDeleteItemButtonClickListener)
  {
    this.mDeleteItemButton.setOnClickListener(paramSearchHistoryDeleteItemButtonClickListener);
  }

  public void setTextGravity(int paramInt)
  {
    this.mSearchRecordText.setGravity(paramInt);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.search.SearchRecordListTextItem
 * JD-Core Version:    0.6.0
 */