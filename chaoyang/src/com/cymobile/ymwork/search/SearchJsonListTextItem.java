package com.cymobile.ymwork.search;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.TextView;

public class SearchJsonListTextItem extends TextListItem
{
  private TextView mSearchJsonText;

  public SearchJsonListTextItem(Context paramContext)
  {
    super(paramContext);
    init();
  }

  public SearchJsonListTextItem(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init();
  }

  private void init()
  {
    ((LayoutInflater)getContext().getSystemService("layout_inflater")).inflate(2130903089, this, true);
    this.mSearchJsonText = ((TextView)findViewById(2131230920));
  }

  public String getItemText()
  {
    return this.mSearchJsonText.getText().toString();
  }

  public void setItemText(String paramString)
  {
    this.mSearchJsonText.setText(paramString);
  }

  public void setTextGravity(int paramInt)
  {
    this.mSearchJsonText.setGravity(paramInt);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.search.SearchJsonListTextItem
 * JD-Core Version:    0.6.0
 */