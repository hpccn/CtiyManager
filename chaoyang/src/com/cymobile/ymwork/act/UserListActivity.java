package com.cymobile.ymwork.act;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListView;
import android.widget.ScrollView;
import android.widget.TextView;
import com.cymobile.ymwork.HomeApplication;
import com.cymobile.ymwork.SettingBase;
import com.cymobile.ymwork.server.Server;
import com.cymobile.ymwork.server.error.ServerException;
import com.cymobile.ymwork.types.Group;
import com.cymobile.ymwork.types.User;
import com.cymobile.ymwork.utils.AsyncTaskUtils;
import com.cymobile.ymwork.utils.NotificationsUtil;
import com.cymobile.ymwork.utils.UiUtil;
import com.cymobile.ymwork.widget.FragmentListActivity;
import com.cymobile.ymwork.widget.UsersListAdapter;
import java.io.IOException;

public class UserListActivity extends FragmentListActivity
{
  private static final long SLEEP_TIME_IF_NO_LOCATION = 3000L;
  private static final String TAG = "UserListActivity";
  private static Context contexts;
  Handler handler;
  private HomeApplication mHomeApplication;
  private ViewGroup mLayoutEmpty;
  private UsersListAdapter mListAdapter;
  SharedPreferences mPrefs;
  private StateHolder mStateHolder;
  String zoneCode;

  private void ensureUi()
  {
    ((ImageButton)findViewById(2131230765)).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        UserListActivity.this.onBackPressed();
      }
    });
    Button localButton = (Button)findViewById(2131230768);
    localButton.setText(2131296329);
    localButton.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        Intent localIntent = new Intent(UserListActivity.this, UserAddActivity.class);
        UserListActivity.this.startActivity(localIntent);
      }
    });
    ((TextView)findViewById(2131230767)).setText(2131296331);
    ensureUiListView();
  }

  private void ensureUiListView()
  {
    this.mListAdapter = new UsersListAdapter(this, this.mHomeApplication.getRemoteResourceManager());
    ListView localListView = getListView();
    localListView.setAdapter(this.mListAdapter);
    localListView.setDividerHeight(0);
    localListView.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
      {
        Intent localIntent = new Intent(UserListActivity.this, UserEditActivity.class);
        localIntent.putExtra("Extra_userMobile", ((User)UserListActivity.this.mStateHolder.getUsers().get(paramInt)).getMobile());
        UserListActivity.this.startActivity(localIntent);
      }
    });
    LayoutInflater localLayoutInflater = LayoutInflater.from(this);
    if (UiUtil.sdkVersion() > 3)
    {
      this.mLayoutEmpty = ((ScrollView)localLayoutInflater.inflate(2130903101, null));
      ((Button)this.mLayoutEmpty.findViewById(2131230991)).setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramView)
        {
          Log.i("UserListActivity", "Intent intent = new Intent(FriendsActivity.this, AddFriendsActivity.class);");
        }
      });
    }
    while (true)
    {
      this.mLayoutEmpty.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
      if (this.mListAdapter.getCount() == 0)
        setEmptyView(this.mLayoutEmpty, null);
      if (!this.mStateHolder.getIsRunningTask())
        break;
      setProgressBarIndeterminateVisibility(true);
      if (!this.mStateHolder.getRanOnce())
        setLoadingView();
      return;
      this.mLayoutEmpty = ((ScrollView)localLayoutInflater.inflate(2130903102, null));
    }
    setProgressBarIndeterminateVisibility(false);
  }

  private void onRefreshTaskStart()
  {
    setProgressBarIndeterminateVisibility(true);
    setLoadingView();
  }

  private void onTaskComplete(Group<User> paramGroup, Exception paramException)
  {
    this.mStateHolder.setRanOnce(true);
    this.mStateHolder.setIsRunningTask(false);
    setProgressBarIndeterminateVisibility(false);
    this.mListAdapter.removeObserver();
    this.mListAdapter = new UsersListAdapter(this, this.mHomeApplication.getRemoteResourceManager());
    if (paramGroup != null)
      this.mStateHolder.setUsers(paramGroup);
    while (this.mStateHolder.getUsers().size() == 0)
    {
      setEmptyView(this.mLayoutEmpty, new ServerException("", "", 20));
      return;
      if (paramException == null)
        continue;
      this.mStateHolder.setUsers(new Group());
      NotificationsUtil.ToastReasonForFailure(this, paramException);
    }
    ((LinearLayout)findViewById(2131230913)).setVisibility(8);
    setAdapter(this.mStateHolder.getUsers());
    getListView().setAdapter(this.mListAdapter);
    getListView().setSelection(1);
  }

  private void setAdapter(Group<User> paramGroup)
  {
    if (paramGroup.size() > 0)
      this.mListAdapter.setGroup(paramGroup);
  }

  public void addUser(View paramView)
  {
    Log.i("UserListActivity", "add user");
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    this.mPrefs = getSharedPreferences(SettingBase.class.getName(), 2);
    contexts = this;
    if (!this.mPrefs.getBoolean("Pref_key_GlobalIsAdmin", false))
    {
      finish();
      return;
    }
    setContentView(2130903110);
    this.zoneCode = this.mPrefs.getString("key_GlobalZoneId", null);
    if (getLastNonConfigurationInstance() != null)
    {
      this.mStateHolder = ((StateHolder)getLastNonConfigurationInstance());
      this.mStateHolder.setActivity(this);
    }
    while (true)
    {
      this.mHomeApplication = ((HomeApplication)getApplication());
      ensureUi();
      return;
      this.mStateHolder = new StateHolder();
    }
  }

  public void onResume()
  {
    super.onResume();
    if (!this.mStateHolder.getRanOnce())
      this.mStateHolder.startTask(this);
  }

  public void setEmptyView(View paramView, ServerException paramServerException)
  {
    if (paramView != null);
    try
    {
      if ((paramView.getParent() != null) && ((paramView.getParent() instanceof LinearLayout)))
        ((LinearLayout)paramView.getParent()).removeView(paramView);
      LinearLayout localLinearLayout = (LinearLayout)findViewById(2131230913);
      if ((localLinearLayout != null) && (localLinearLayout.getChildAt(0) != null))
        localLinearLayout.getChildAt(0).setVisibility(8);
      if (localLinearLayout.getChildCount() > 1)
        localLinearLayout.removeViewAt(1);
      localLinearLayout.addView(paramView);
      localTextView = (TextView)findViewById(2131230990);
      Button localButton1 = (Button)findViewById(2131230991);
      Button localButton2 = (Button)findViewById(2131230992);
      if ((paramServerException != null) && (paramServerException.getErrorCode() > 0))
      {
        if (paramServerException.getErrorCode() == 25)
          localTextView.setText(2131296335);
      }
      else
      {
        localButton1.setOnClickListener(new View.OnClickListener()
        {
          public void onClick(View paramView)
          {
            UserListActivity.this.setLoadingView();
            UserListActivity.this.mStateHolder.startTask(UserListActivity.this);
          }
        });
        localButton2.setOnClickListener(new View.OnClickListener()
        {
          public void onClick(View paramView)
          {
            UserListActivity.this.onBackPressed();
          }
        });
        return;
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        TextView localTextView;
        localException.printStackTrace();
        continue;
        if (paramServerException.getErrorCode() != 20)
          continue;
        localTextView.setText(2131296334);
      }
    }
  }

  public void setLoadingView()
  {
    LinearLayout localLinearLayout = (LinearLayout)findViewById(2131230913);
    if (localLinearLayout.getChildCount() > 1)
      localLinearLayout.removeViewAt(1);
    if (localLinearLayout.getChildCount() > 0)
      localLinearLayout.getChildAt(0).setVisibility(0);
  }

  private class StateHolder
  {
    private boolean mIsRunningTask = false;
    private boolean mRanOnce = false;
    private UserListActivity.TaskUsers mTaskUsers;
    private Group<User> mUsers = new Group();

    public StateHolder()
    {
    }

    public void cancel()
    {
      if (this.mIsRunningTask)
      {
        this.mTaskUsers.cancel(true);
        this.mIsRunningTask = false;
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

    public Group<User> getUsers()
    {
      return this.mUsers;
    }

    public void setActivity(UserListActivity paramUserListActivity)
    {
      if (this.mIsRunningTask)
        this.mTaskUsers.setActivity(paramUserListActivity);
    }

    public void setIsRunningTask(boolean paramBoolean)
    {
      this.mIsRunningTask = paramBoolean;
    }

    public void setRanOnce(boolean paramBoolean)
    {
      this.mRanOnce = paramBoolean;
    }

    public void setUsers(Group<User> paramGroup)
    {
      String str;
      if ((paramGroup != null) && (paramGroup.size() > 0))
        str = UserListActivity.this.mPrefs.getString("key_newGlobalUserPhone", null);
      for (int i = 0; ; i++)
      {
        if (i >= paramGroup.size())
        {
          this.mUsers = paramGroup;
          return;
        }
        User localUser = (User)paramGroup.get(i);
        if ((localUser.getMobile() == null) || (!localUser.getMobile().equals(str)))
          continue;
        paramGroup.remove(i);
      }
    }

    public void startTask(UserListActivity paramUserListActivity)
    {
      if (!this.mIsRunningTask)
      {
        this.mTaskUsers = new UserListActivity.TaskUsers(paramUserListActivity);
        AsyncTaskUtils.execute(this.mTaskUsers);
        this.mIsRunningTask = true;
      }
    }
  }

  private static class TaskUsers extends AsyncTask<Void, Void, Group<User>>
  {
    private UserListActivity mActivity;
    private Exception mException;
    private HomeApplication mHomeApplication;

    public TaskUsers(UserListActivity paramUserListActivity)
    {
      this.mHomeApplication = ((HomeApplication)paramUserListActivity.getApplication());
      this.mActivity = paramUserListActivity;
    }

    private Group<User> users()
      throws ServerException, IOException
    {
      return this.mHomeApplication.getServer().users(UserListActivity.contexts, this.mActivity.zoneCode);
    }

    public Group<User> doInBackground(Void[] paramArrayOfVoid)
    {
      try
      {
        Group localGroup = users();
        return localGroup;
      }
      catch (Exception localException)
      {
        this.mException = localException;
        localException.printStackTrace();
      }
      return null;
    }

    public void onPostExecute(Group<User> paramGroup)
    {
      if (this.mActivity != null)
        this.mActivity.onTaskComplete(paramGroup, this.mException);
    }

    protected void onPreExecute()
    {
      this.mActivity.onRefreshTaskStart();
    }

    public void setActivity(UserListActivity paramUserListActivity)
    {
      this.mActivity = paramUserListActivity;
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.act.UserListActivity
 * JD-Core Version:    0.6.0
 */