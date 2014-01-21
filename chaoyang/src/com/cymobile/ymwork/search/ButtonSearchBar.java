package com.cymobile.ymwork.search;

import android.content.Context;
import android.content.Intent;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.LinearLayout;
import com.cymobile.ymwork.act.SearchableActivity;

public class ButtonSearchBar extends LinearLayout
{
  public static final int SEARCHBAR_MAX_LEN = 50;
  public static final int SEARCH_BAR_BUTTON_CLICKED = 3;
  public static final int SEARCH_BAR_EDITER_CLICKED = 1;
  public static final int SEARCH_BAR_EDITER_ENTER = 2;
  public static final int SEARCH_BAR_TEXT_CHANGE = 0;
  private static final String TAG = "SearchBar";
  public static String mCurrentSearchText = "";
  private Button mButtonSearch;
  private Button mButtonText;
  private Context mContext;
  public String mDispSearchText = "";

  public ButtonSearchBar(Context paramContext)
  {
    super(paramContext);
    this.mContext = paramContext;
    init();
  }

  public ButtonSearchBar(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.mContext = paramContext;
    init();
  }

  private void init()
  {
    Log.i("SearchBar", "SearchBar init()");
    ((LayoutInflater)getContext().getSystemService("layout_inflater")).inflate(2130903044, this, true);
    initButtonText();
  }

  private void initButtonText()
  {
    Log.i("SearchBar", "SearchBar initEditText()");
    this.mButtonText = ((Button)findViewById(2131230758));
    this.mButtonText.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        new Intent(ButtonSearchBar.this.mContext, SearchableActivity.class);
      }
    });
  }

  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    Log.i("SearchBar", "SearchBar dispatchKeyEvent()");
    return super.dispatchKeyEvent(paramKeyEvent);
  }

  public Button getButton()
  {
    Log.i("SearchBar", "SearchBar getEditText()");
    return this.mButtonText;
  }

  public String getSearchEditText()
  {
    Log.i("SearchBar", "SearchBar getSearchEditText()");
    return this.mButtonText.getText().toString();
  }

  void setCurrentSearchText(String paramString)
  {
    Log.i("SearchBar", "SearchBar setCurrentSearchText()" + paramString);
    mCurrentSearchText = paramString;
    this.mButtonText.setText(paramString);
    if (paramString.length() > 50)
      paramString.substring(0, 50);
  }

  public void setSearchBarEnabled(boolean paramBoolean)
  {
    Log.i("SearchBar", "SearchBar setSearchBarEnabled()");
    this.mButtonSearch.setEnabled(paramBoolean);
  }

  public void setSearchEditText(String paramString)
  {
    Log.i("SearchBar", "SearchBar setSearchEditText()" + paramString);
    if ((paramString == null) || (paramString.equals("")))
    {
      this.mButtonText.setHint(2131296275);
      return;
    }
    if (paramString.length() > 50)
      paramString.substring(0, 50);
    mCurrentSearchText = this.mButtonText.getText().toString().trim();
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.search.ButtonSearchBar
 * JD-Core Version:    0.6.0
 */