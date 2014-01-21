package com.cymobile.ymwork.search;

import android.content.Context;
import android.text.Editable;
import android.text.TextPaint;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;

public class EditSearchBar extends LinearLayout
{
  public static final int SEARCHBAR_MAX_LEN = 50;
  public static final int SEARCH_BAR_BUTTON_CLICKED = 3;
  public static final int SEARCH_BAR_EDITER_CLICKED = 1;
  public static final int SEARCH_BAR_EDITER_ENTER = 2;
  public static final int SEARCH_BAR_TEXT_CHANGE = 0;
  private static final String TAG = "SearchBar";
  public static String mCurrentSearchText = "";
  private Button mButtonSearch;
  private ISearchBarChangeObserver mChangeObserver;
  private Context mContext;
  public String mDispSearchText = "";
  private EditText mEditText;

  public EditSearchBar(Context paramContext)
  {
    super(paramContext);
    this.mContext = paramContext;
    init();
  }

  public EditSearchBar(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.mContext = paramContext;
    init();
  }

  private void init()
  {
    Log.i("SearchBar", "SearchBar init()");
    ((LayoutInflater)getContext().getSystemService("layout_inflater")).inflate(2130903057, this, true);
    initEditText();
    initSearchButton();
  }

  private void initEditText()
  {
    Log.i("SearchBar", "SearchBar initEditText()");
    this.mEditText = ((EditText)findViewById(2131230789));
    this.mEditText.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        EditSearchBar.this.dispSoftMethodInput(true);
        EditSearchBar.this.setEditFocus();
        EditSearchBar.this.mDispSearchText = EditSearchBar.this.mEditText.getText().toString();
        EditSearchBar.this.mChangeObserver.onSearchBarChange(1, EditSearchBar.this.mDispSearchText);
      }
    });
    this.mEditText.addTextChangedListener(new TextWatcher()
    {
      public void afterTextChanged(Editable paramEditable)
      {
        EditSearchBar.this.mDispSearchText = paramEditable.toString().trim();
        if (EditSearchBar.this.mChangeObserver != null)
          EditSearchBar.this.mChangeObserver.onSearchBarChange(0, EditSearchBar.this.mDispSearchText);
      }

      public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
      {
      }

      public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
      {
      }
    });
  }

  private void initSearchButton()
  {
    Log.i("SearchBar", "SearchBar initSearchButton()");
    this.mButtonSearch = ((Button)findViewById(2131230791));
    this.mButtonSearch.getPaint().setFakeBoldText(true);
    this.mButtonSearch.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        EditSearchBar.mCurrentSearchText = EditSearchBar.this.mEditText.getText().toString().trim();
        EditSearchBar.this.mChangeObserver.onSearchBarChange(3, EditSearchBar.mCurrentSearchText);
      }
    });
  }

  public void clearEditFocus()
  {
    Log.i("SearchBar", "SearchBar clearEditFocus()");
    if (!this.mEditText.isFocused())
      return;
    this.mEditText.clearFocus();
    this.mButtonSearch.requestFocus();
  }

  public void dispSoftMethodInput(boolean paramBoolean)
  {
    Log.i("SearchBar", "SearchBar dispSoftMethodInput()" + paramBoolean);
    InputMethodManager localInputMethodManager = (InputMethodManager)this.mContext.getSystemService("input_method");
    if (paramBoolean)
    {
      localInputMethodManager.toggleSoftInput(0, 1);
      this.mEditText.requestFocus();
      return;
    }
    this.mButtonSearch.requestFocus();
    localInputMethodManager.hideSoftInputFromWindow(this.mEditText.getWindowToken(), 0);
  }

  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    Log.i("SearchBar", "SearchBar dispatchKeyEvent()");
    if (paramKeyEvent.getKeyCode() == 66)
    {
      mCurrentSearchText = this.mEditText.getText().toString().trim();
      this.mChangeObserver.onSearchBarChange(2, mCurrentSearchText);
    }
    return super.dispatchKeyEvent(paramKeyEvent);
  }

  public EditText getEditText()
  {
    Log.i("SearchBar", "SearchBar getEditText()");
    return this.mEditText;
  }

  public String getSearchEditText()
  {
    Log.i("SearchBar", "SearchBar getSearchEditText()");
    return this.mEditText.getText().toString();
  }

  public void setCurrentSearchText(String paramString)
  {
    Log.i("SearchBar", "SearchBar setCurrentSearchText()" + paramString);
    mCurrentSearchText = paramString;
    this.mEditText.setText(paramString);
    if (paramString.length() > 50)
      paramString.substring(0, 50);
    this.mEditText.setSelection(paramString.length());
  }

  public void setEditFocus()
  {
    Log.i("SearchBar", "SearchBar setEditFocus()");
    if (this.mEditText.isFocused())
      return;
    this.mEditText.requestFocus();
  }

  public void setFocus()
  {
  }

  public void setObserver(ISearchBarChangeObserver paramISearchBarChangeObserver)
  {
    Log.i("SearchBar", "SearchBar setObserver()");
    this.mChangeObserver = paramISearchBarChangeObserver;
  }

  public void setSearchBarEnabled(boolean paramBoolean)
  {
    Log.i("SearchBar", "SearchBar setSearchBarEnabled()");
    this.mButtonSearch.setEnabled(paramBoolean);
    this.mEditText.setEnabled(paramBoolean);
  }

  public void setSearchEditText(String paramString)
  {
    Log.i("SearchBar", "SearchBar setSearchEditText()" + paramString);
    if ((paramString == null) || (paramString.equals("")))
    {
      this.mEditText.setHint(2131296275);
      this.mEditText.setText(paramString);
      return;
    }
    int i = paramString.length();
    if (i > 50)
    {
      i = 50;
      paramString = paramString.substring(0, i);
    }
    this.mEditText.setText(paramString);
    this.mEditText.setSelection(i);
    mCurrentSearchText = this.mEditText.getText().toString().trim();
    this.mChangeObserver.onSearchBarChange(2, mCurrentSearchText);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.search.EditSearchBar
 * JD-Core Version:    0.6.0
 */