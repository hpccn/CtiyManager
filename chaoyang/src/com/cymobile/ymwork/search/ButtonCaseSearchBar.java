package com.cymobile.ymwork.search;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.os.AsyncTask;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;
import com.cymobile.ymwork.HomeApplication;
import com.cymobile.ymwork.SettingBase;
import com.cymobile.ymwork.act.MainActivity;
import com.cymobile.ymwork.act.SearchableActivity;
import com.cymobile.ymwork.act.ShopDetailsActivity;
import com.cymobile.ymwork.act.ShopDetailsConstructionActivity;
import com.cymobile.ymwork.act.ShopDetailsFireServiceActivity;
import com.cymobile.ymwork.act.ShopDetailsPublicReportActivity;
import com.cymobile.ymwork.server.Server;
import com.cymobile.ymwork.server.error.ServerException;
import com.cymobile.ymwork.types.Building;
import com.cymobile.ymwork.utils.AsyncTaskUtils;
import java.io.IOException;
import java.util.Calendar;

public class ButtonCaseSearchBar extends LinearLayout
{
  public static final int SEARCHBAR_MAX_LEN = 50;
  public static final int SEARCH_BAR_BUTTON_CLICKED = 3;
  public static final int SEARCH_BAR_EDITER_CLICKED = 1;
  public static final int SEARCH_BAR_EDITER_ENTER = 2;
  public static final int SEARCH_BAR_TEXT_CHANGE = 0;
  private static final String TAG = "SearchBar";
  public static String mCurrentSearchText = "";
  private int classid = 0;
  Spinner classspinner;
  private Button mButtonSearch;
  private ImageView mButtonSubmit;
  private EditText mButtonText;
  private Context mContext;
  public String mDispSearchText = "";
  SharedPreferences mPrefs;
  private ProgressDialog mProgressDialog;
  private StateHolder mStateHolder;
  ImageView search_class_chooser;

  public ButtonCaseSearchBar(Context paramContext)
  {
    super(paramContext);
    this.mContext = paramContext;
    init();
  }

  public ButtonCaseSearchBar(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.mContext = paramContext;
    init();
  }

  private void dismissProgressDialog()
  {
    try
    {
      this.mProgressDialog.dismiss();
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
    }
  }

  private void init()
  {
    Log.i("SearchBar", "SearchBar init()");
    ((LayoutInflater)((MainActivity)getContext()).getParent().getSystemService("layout_inflater")).inflate(2130903056, this, true);
    initButtonText();
    this.mPrefs = this.mContext.getSharedPreferences(SettingBase.class.getName(), 2);
    this.mStateHolder = new StateHolder();
  }

  private void initButtonText()
  {
    Log.i("SearchBar", "SearchBar initEditText()");
    this.mButtonText = ((EditText)findViewById(2131230758));
    this.mButtonSubmit = ((ImageView)findViewById(2131230786));
    this.search_class_chooser = ((ImageView)findViewById(2131230784));
    this.classspinner = ((Spinner)findViewById(2131230785));
    this.search_class_chooser.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        ButtonCaseSearchBar.this.classspinner.performClick();
      }
    });
    this.classspinner.setAdapter(new classspinneradapter(getContext()));
    this.classspinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener()
    {
      public void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
      {
        Log.i("xxx", "select " + paramInt);
        if (paramInt == 0)
        {
          ButtonCaseSearchBar.this.search_class_chooser.setImageResource(2130837575);
          ButtonCaseSearchBar.this.classid = 0;
        }
        try
        {
          while (true)
          {
            ButtonCaseSearchBar.this.mButtonText.requestFocus();
            if ((ButtonCaseSearchBar.this.mButtonText.getText() != null) && (ButtonCaseSearchBar.this.mButtonText.getText().length() > 0))
              ButtonCaseSearchBar.this.mButtonText.setSelection(ButtonCaseSearchBar.this.mButtonText.getText().length());
            return;
            if (paramInt == 1)
            {
              ButtonCaseSearchBar.this.search_class_chooser.setImageResource(2130837585);
              ButtonCaseSearchBar.this.classid = 0;
              continue;
            }
            if (paramInt == 2)
            {
              ButtonCaseSearchBar.this.search_class_chooser.setImageResource(2130837580);
              ButtonCaseSearchBar.this.classid = 0;
              continue;
            }
            if (paramInt == 3)
            {
              ButtonCaseSearchBar.this.search_class_chooser.setImageResource(2130837594);
              ButtonCaseSearchBar.this.classid = 3;
              continue;
            }
            if (paramInt == 4)
            {
              ButtonCaseSearchBar.this.search_class_chooser.setImageResource(2130837562);
              ButtonCaseSearchBar.this.classid = 4;
              continue;
            }
            if (paramInt != 5)
              continue;
            ButtonCaseSearchBar.this.search_class_chooser.setImageResource(2130837578);
            ButtonCaseSearchBar.this.classid = 5;
          }
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
        }
      }

      public void onNothingSelected(AdapterView<?> paramAdapterView)
      {
        Log.i("xxx", "select ");
      }
    });
    this.mButtonText.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        new Intent(ButtonCaseSearchBar.this.mContext, SearchableActivity.class);
      }
    });
    this.mButtonText.addTextChangedListener(new TextWatcher()
    {
      public void afterTextChanged(Editable paramEditable)
      {
        if ((paramEditable.toString() == null) || (paramEditable.toString().length() < 8))
        {
          if (ButtonCaseSearchBar.this.mButtonText.getInputType() != 1)
            ButtonCaseSearchBar.this.mButtonText.setInputType(1);
          ButtonCaseSearchBar.this.mButtonSubmit.setVisibility(8);
          return;
        }
        if ((paramEditable.toString() != null) && (paramEditable.toString().length() > 12))
        {
          ButtonCaseSearchBar.this.mButtonSubmit.setVisibility(0);
          return;
        }
        ButtonCaseSearchBar.this.mButtonSubmit.setVisibility(8);
      }

      public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
      {
      }

      public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
      {
        if ((paramCharSequence != null) && (paramCharSequence.toString() != null))
          paramCharSequence.toString().trim().length();
      }
    });
    this.mButtonText.setOnFocusChangeListener(new View.OnFocusChangeListener()
    {
      public void onFocusChange(View paramView, boolean paramBoolean)
      {
        if ((paramBoolean) && ((ButtonCaseSearchBar.this.mButtonText.getText() == null) || (ButtonCaseSearchBar.this.mButtonText.getText().toString() == null) || (ButtonCaseSearchBar.this.mButtonText.getText().toString().trim().length() == 0)))
        {
          int i = Calendar.getInstance().get(1);
          ButtonCaseSearchBar.this.mButtonText.setText("");
          ButtonCaseSearchBar.this.mButtonText.append(i + ButtonCaseSearchBar.this.mContext.getResources().getString(2131296418));
          if (ButtonCaseSearchBar.this.mButtonText.getInputType() != 2)
            ButtonCaseSearchBar.this.mButtonText.setInputType(2);
        }
      }
    });
    this.mButtonSubmit.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        ButtonCaseSearchBar.mCurrentSearchText = ButtonCaseSearchBar.this.mButtonText.getText().toString().trim();
        if ((ButtonCaseSearchBar.mCurrentSearchText != null) && (ButtonCaseSearchBar.mCurrentSearchText.length() > 0))
        {
          ((InputMethodManager)ButtonCaseSearchBar.this.mContext.getSystemService("input_method")).hideSoftInputFromWindow(ButtonCaseSearchBar.this.mButtonText.getWindowToken(), 0);
          ButtonCaseSearchBar.this.mStateHolder.startTask((MainActivity)ButtonCaseSearchBar.this.mContext);
        }
      }
    });
  }

  private void onRefreshTaskStart()
  {
    setLoadingView();
  }

  private void onTaskComplete(Building paramBuilding, Exception paramException)
  {
    this.mStateHolder.setRanOnce(true);
    this.mStateHolder.setIsRunningTask(false);
    dismissProgressDialog();
    Intent localIntent;
    if (paramBuilding != null)
    {
      this.mStateHolder.setSearchResult(paramBuilding);
      if (this.mStateHolder.getSearchResult() != null)
      {
        if ((paramBuilding.getclassid() != 0) && (paramBuilding.getclassid() != 1) && (paramBuilding.getclassid() != 2))
          break label248;
        localIntent = new Intent(this.mContext, ShopDetailsActivity.class);
      }
    }
    while (true)
    {
      localIntent.putExtra("caseid", paramBuilding.getCaseId());
      localIntent.putExtra("classid", paramBuilding.getclassid());
      this.mContext.startActivity(localIntent);
      return;
      if (paramException == null)
        break;
      String str = this.mButtonText.getText().toString();
      this.mDispSearchText = str;
      this.mStateHolder.setSearchResult(null);
      if (((paramException instanceof ServerException)) && (((ServerException)paramException).getErrorCode() == 20))
      {
        Toast.makeText(this.mContext, this.mContext.getResources().getString(2131296428) + str, 0).show();
        return;
      }
      Toast.makeText(this.mContext, this.mContext.getResources().getString(2131296429) + str, 0).show();
      return;
      label248: if (paramBuilding.getclassid() == 3)
      {
        localIntent = new Intent(this.mContext, ShopDetailsConstructionActivity.class);
        continue;
      }
      if (paramBuilding.getclassid() == 4)
      {
        localIntent = new Intent(this.mContext, ShopDetailsFireServiceActivity.class);
        continue;
      }
      int i = paramBuilding.getclassid();
      localIntent = null;
      if (i != 5)
        continue;
      localIntent = new Intent(this.mContext, ShopDetailsPublicReportActivity.class);
    }
  }

  private ProgressDialog showProgressDialog()
  {
    if (this.mProgressDialog == null)
    {
      ProgressDialog localProgressDialog = new ProgressDialog(((Activity)this.mContext).getParent());
      localProgressDialog.setTitle(2131296419);
      localProgressDialog.setMessage(this.mContext.getString(2131296420));
      localProgressDialog.setIndeterminate(true);
      localProgressDialog.setCancelable(true);
      this.mProgressDialog = localProgressDialog;
    }
    this.mProgressDialog.show();
    return this.mProgressDialog;
  }

  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    Log.i("SearchBar", "SearchBar dispatchKeyEvent()");
    if (paramKeyEvent.getKeyCode() == 66)
    {
      mCurrentSearchText = this.mButtonText.getText().toString().trim();
      if ((mCurrentSearchText != null) && (mCurrentSearchText.length() > 0))
      {
        ((InputMethodManager)this.mContext.getSystemService("input_method")).hideSoftInputFromWindow(this.mButtonText.getWindowToken(), 0);
        this.mStateHolder.startTask((MainActivity)this.mContext);
      }
    }
    return super.dispatchKeyEvent(paramKeyEvent);
  }

  public EditText getButton()
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

  public void setLoadingView()
  {
    showProgressDialog();
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

  public class StateHolder
  {
    private boolean mIsRunningTask = false;
    private boolean mRanOnce = false;
    private Building mSearchResult;
    private ButtonCaseSearchBar.TaskSearch mTaskSearch;

    public StateHolder()
    {
    }

    public void cancel()
    {
      if (this.mIsRunningTask);
      try
      {
        if (this.mTaskSearch != null)
          this.mTaskSearch.cancel(true);
        this.mIsRunningTask = false;
        return;
      }
      catch (Exception localException)
      {
        while (true)
          localException.printStackTrace();
      }
    }

    public boolean getIsRunningTask()
    {
      return this.mIsRunningTask;
    }

    public boolean getRanOnce()
    {
      return this.mRanOnce;
    }

    public Building getSearchResult()
    {
      return this.mSearchResult;
    }

    ButtonCaseSearchBar.TaskSearch getTaskSearch()
    {
      return this.mTaskSearch;
    }

    public void setActivity(MainActivity paramMainActivity)
    {
      if (this.mIsRunningTask)
        this.mTaskSearch.setActivity(paramMainActivity);
    }

    public void setIsRunningTask(boolean paramBoolean)
    {
      this.mIsRunningTask = paramBoolean;
    }

    public void setRanOnce(boolean paramBoolean)
    {
      this.mRanOnce = paramBoolean;
    }

    public void setSearchResult(Building paramBuilding)
    {
      this.mSearchResult = paramBuilding;
    }

    public void startTask(MainActivity paramMainActivity)
    {
      if (!this.mIsRunningTask)
      {
        this.mTaskSearch = new ButtonCaseSearchBar.TaskSearch(ButtonCaseSearchBar.this, paramMainActivity);
        AsyncTaskUtils.execute(this.mTaskSearch);
        this.mIsRunningTask = true;
      }
    }
  }

  private class TaskSearch extends AsyncTask<Void, Void, Building>
  {
    private MainActivity mActivity;
    private Exception mException;
    private HomeApplication mHomeApplication;

    public TaskSearch(MainActivity arg2)
    {
      Object localObject;
      this.mHomeApplication = ((HomeApplication)localObject.getApplication());
      this.mActivity = localObject;
    }

    private Building building()
      throws ServerException, IOException
    {
      ButtonCaseSearchBar localButtonCaseSearchBar = ButtonCaseSearchBar.this;
      String str1 = ButtonCaseSearchBar.this.mButtonText.getText().toString();
      localButtonCaseSearchBar.mDispSearchText = str1;
      if ((str1 != null) && (str1.trim().length() < 8))
      {
        int i = Calendar.getInstance().get(1);
        str1 = i + ButtonCaseSearchBar.this.mContext.getResources().getString(2131296418) + str1;
      }
      String str2 = ButtonCaseSearchBar.this.mPrefs.getString("key_GlobalZoneId", null);
      return this.mHomeApplication.getServer().buildingDetailFullNumber(ButtonCaseSearchBar.this.mContext, str1, str2, ButtonCaseSearchBar.this.classid);
    }

    public Building doInBackground(Void[] paramArrayOfVoid)
    {
      try
      {
        Building localBuilding = building();
        return localBuilding;
      }
      catch (Exception localException)
      {
        this.mException = localException;
        localException.printStackTrace();
      }
      return null;
    }

    public void onPostExecute(Building paramBuilding)
    {
      if (this.mActivity != null)
        ButtonCaseSearchBar.this.onTaskComplete(paramBuilding, this.mException);
    }

    protected void onPreExecute()
    {
      ButtonCaseSearchBar.this.onRefreshTaskStart();
    }

    public void setActivity(MainActivity paramMainActivity)
    {
      this.mActivity = paramMainActivity;
    }
  }

  public class ViewHolder
  {
    ImageView imageView;
    TextView textView;

    public ViewHolder()
    {
    }
  }

  public class classspinneradapter extends BaseAdapter
  {
    int[] image = { 2130837574, 2130837584, 2130837579, 2130837593, 2130837561, 2130837577 };
    private LayoutInflater inflater;
    private Context mContext;
    String[] mItem = ButtonCaseSearchBar.this.getResources().getStringArray(2131034120);

    public classspinneradapter(Context arg2)
    {
      Object localObject;
      this.mContext = localObject;
      this.inflater = LayoutInflater.from(this.mContext);
    }

    public int getCount()
    {
      return this.mItem.length;
    }

    public Object getItem(int paramInt)
    {
      return null;
    }

    public long getItemId(int paramInt)
    {
      return paramInt;
    }

    public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
    {
      ButtonCaseSearchBar.ViewHolder localViewHolder;
      if (paramView == null)
      {
        localViewHolder = new ButtonCaseSearchBar.ViewHolder(ButtonCaseSearchBar.this);
        paramView = this.inflater.inflate(2130903103, null);
        localViewHolder.imageView = ((ImageView)paramView.findViewById(2131230993));
        localViewHolder.textView = ((TextView)paramView.findViewById(2131230994));
        paramView.setTag(localViewHolder);
      }
      while (true)
      {
        localViewHolder.imageView.setImageResource(this.image[paramInt]);
        localViewHolder.textView.setText(this.mItem[paramInt]);
        localViewHolder.textView.setGravity(16);
        return paramView;
        localViewHolder = (ButtonCaseSearchBar.ViewHolder)paramView.getTag();
      }
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.search.ButtonCaseSearchBar
 * JD-Core Version:    0.6.0
 */