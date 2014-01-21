package com.cymobile.ymwork.act;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
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
import android.widget.Toast;
import com.cymobile.ymwork.HomeApplication;
import com.cymobile.ymwork.SettingBase;
import com.cymobile.ymwork.server.Server;
import com.cymobile.ymwork.server.error.ServerException;
import com.cymobile.ymwork.types.Group;
import com.cymobile.ymwork.types.Reply;
import com.cymobile.ymwork.utils.AsyncTaskUtils;
import com.cymobile.ymwork.utils.NotificationsUtil;
import com.cymobile.ymwork.utils.UiUtil;
import com.cymobile.ymwork.widget.FragmentListActivity;
import com.cymobile.ymwork.widget.ReplyListAdapter;
import java.io.IOException;

public class ReplyListActivity extends FragmentListActivity
{
  private static final int Dialog_confirm_reply = 10;
  private static final String TAG = "ReplyListActivity";
  private Context contexts;
  Handler handler;
  private String mCaseid;
  private HomeApplication mHomeApplication;
  private ViewGroup mLayoutEmpty;
  private ReplyListAdapter mListAdapter;
  SharedPreferences mPrefs;
  private StateHolder mStateHolder;
  String zoneCode;

  private void ensureUi()
  {
    ((ImageButton)findViewById(2131230765)).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        ReplyListActivity.this.onBackPressed();
      }
    });
    Button localButton = (Button)findViewById(2131230768);
    localButton.setText(2131296444);
    localButton.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        if (ReplyListActivity.this.mHomeApplication.isLogined())
        {
          String str = ReplyListActivity.this.mPrefs.getString("key_GlobalZoneId", null);
          if ((str != null) && (str.length() == 6))
          {
            Intent localIntent = new Intent(ReplyListActivity.this, AddReplay.class);
            localIntent.putExtra("caseid", ReplyListActivity.this.mCaseid);
            localIntent.putExtra("classid", 0);
            ReplyListActivity.this.startActivity(localIntent);
            return;
          }
          Toast.makeText(ReplyListActivity.this, 2131296461, 0).show();
          return;
        }
        ReplyListActivity.this.showDialog(10);
      }
    });
    ((TextView)findViewById(2131230767)).setText(2131296445);
    ensureUiListView();
  }

  private void ensureUiListView()
  {
    this.mListAdapter = new ReplyListAdapter(this, this.mHomeApplication.getRemoteResourceManager());
    ListView localListView = getListView();
    localListView.setAdapter(this.mListAdapter);
    localListView.setDividerHeight(0);
    localListView.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
      {
        Intent localIntent = new Intent(ReplyListActivity.this, AddReplay.class);
        localIntent.putExtra("caseid", ReplyListActivity.this.mCaseid);
        ReplyListActivity.this.startActivity(localIntent);
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
          Log.i("ReplyListActivity", "Intent intent = new Intent(FriendsActivity.this, AddFriendsActivity.class);");
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

  private void onTaskComplete(Group<Reply> paramGroup, Exception paramException)
  {
    this.mStateHolder.setRanOnce(true);
    this.mStateHolder.setIsRunningTask(false);
    setProgressBarIndeterminateVisibility(false);
    this.mListAdapter.removeObserver();
    this.mListAdapter = new ReplyListAdapter(this, this.mHomeApplication.getRemoteResourceManager());
    if (paramGroup != null)
      this.mStateHolder.setReply(paramGroup);
    while (this.mStateHolder.getReply().size() == 0)
    {
      setEmptyView(this.mLayoutEmpty, new ServerException("", "", 20));
      return;
      if (paramException == null)
        continue;
      this.mStateHolder.setReply(new Group());
      NotificationsUtil.ToastReasonForFailure(this, paramException);
    }
    ((LinearLayout)findViewById(2131230913)).setVisibility(8);
    setAdapter(this.mStateHolder.getReply());
    getListView().setAdapter(this.mListAdapter);
    getListView().setSelection(1);
  }

  private void setAdapter(Group<Reply> paramGroup)
  {
    if (paramGroup.size() > 0)
      this.mListAdapter.setGroup(paramGroup);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    this.mPrefs = getSharedPreferences(SettingBase.class.getName(), 2);
    setContentView(2130903087);
    this.contexts = this;
    if (getIntent() != null)
      this.mCaseid = getIntent().getExtras().getString("caseid");
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

  protected Dialog onCreateDialog(int paramInt)
  {
    if (paramInt == 10)
    {
      AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
      localBuilder.setMessage("只有区级领导才能批示意见，是否继续？");
      localBuilder.setTitle("提示");
      localBuilder.setPositiveButton("确认", new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramDialogInterface, int paramInt)
        {
          paramDialogInterface.dismiss();
          String[] arrayOfString = new String[2];
          arrayOfString[0] = "caseid";
          arrayOfString[1] = ReplyListActivity.access$3(ReplyListActivity.this);
          new Intent(ReplyListActivity.this, AddReplay.class);
          HomeApplication.redirectToLoginActivityAndBack(ReplyListActivity.this, ReplyListActivity.class, arrayOfString);
        }
      });
      localBuilder.setNegativeButton("取消", new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramDialogInterface, int paramInt)
        {
          paramDialogInterface.dismiss();
        }
      });
      return localBuilder.create();
    }
    return super.onCreateDialog(paramInt);
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
            ReplyListActivity.this.setLoadingView();
            ReplyListActivity.this.mStateHolder.startTask(ReplyListActivity.this);
          }
        });
        localButton2.setOnClickListener(new View.OnClickListener()
        {
          public void onClick(View paramView)
          {
            ReplyListActivity.this.onBackPressed();
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
        localTextView.setText(2131296460);
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
    private Group<Reply> mReply = new Group();
    private ReplyListActivity.TaskReplys mTaskReplys;

    public StateHolder()
    {
    }

    public void cancel()
    {
      if (this.mIsRunningTask)
      {
        this.mTaskReplys.cancel(true);
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

    public Group<Reply> getReply()
    {
      return this.mReply;
    }

    public void setActivity(ReplyListActivity paramReplyListActivity)
    {
      if (this.mIsRunningTask)
        this.mTaskReplys.setActivity(paramReplyListActivity);
    }

    public void setIsRunningTask(boolean paramBoolean)
    {
      this.mIsRunningTask = paramBoolean;
    }

    public void setRanOnce(boolean paramBoolean)
    {
      this.mRanOnce = paramBoolean;
    }

    public void setReply(Group<Reply> paramGroup)
    {
      if ((paramGroup != null) && (paramGroup.size() > 0))
        ReplyListActivity.this.mPrefs.getString("key_newGlobalUserPhone", null);
      for (int i = 0; ; i++)
      {
        if (i >= paramGroup.size())
        {
          this.mReply = paramGroup;
          return;
        }
        ((Reply)paramGroup.get(i));
      }
    }

    public void startTask(ReplyListActivity paramReplyListActivity)
    {
      if (!this.mIsRunningTask)
      {
        this.mTaskReplys = new ReplyListActivity.TaskReplys(ReplyListActivity.this, paramReplyListActivity);
        AsyncTaskUtils.execute(this.mTaskReplys);
        this.mIsRunningTask = true;
      }
    }
  }

  private class TaskReplys extends AsyncTask<Void, Void, Group<Reply>>
  {
    private ReplyListActivity mActivity;
    private Exception mException;
    private HomeApplication mHomeApplication;

    public TaskReplys(ReplyListActivity arg2)
    {
      Object localObject;
      this.mHomeApplication = ((HomeApplication)localObject.getApplication());
      this.mActivity = localObject;
    }

    private Group<Reply> reply()
      throws ServerException, IOException
    {
      return this.mHomeApplication.getServer().getCaseReplys(ReplyListActivity.this.contexts, ReplyListActivity.this.mCaseid, 0);
    }

    public Group<Reply> doInBackground(Void[] paramArrayOfVoid)
    {
      try
      {
        Group localGroup = reply();
        return localGroup;
      }
      catch (Exception localException)
      {
        this.mException = localException;
        localException.printStackTrace();
      }
      return null;
    }

    public void onPostExecute(Group<Reply> paramGroup)
    {
      if (this.mActivity != null)
        this.mActivity.onTaskComplete(paramGroup, this.mException);
    }

    protected void onPreExecute()
    {
      this.mActivity.onRefreshTaskStart();
    }

    public void setActivity(ReplyListActivity paramReplyListActivity)
    {
      this.mActivity = paramReplyListActivity;
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.act.ReplyListActivity
 * JD-Core Version:    0.6.0
 */