package com.cymobile.ymwork.act;

import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListView;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import com.cymobile.ymwork.HomeApplication;
import com.cymobile.ymwork.SettingBase;
import com.cymobile.ymwork.adapter.FilterDataSource;
import com.cymobile.ymwork.adapter.FilterDataSourcePublicReport;
import com.cymobile.ymwork.preference.PreferencesUtils;
import com.cymobile.ymwork.server.Server;
import com.cymobile.ymwork.server.error.ServerException;
import com.cymobile.ymwork.types.Category;
import com.cymobile.ymwork.types.ConstrustionField;
import com.cymobile.ymwork.types.Group;
import com.cymobile.ymwork.types.Pair;
import com.cymobile.ymwork.types.Zone;
import com.cymobile.ymwork.utils.AsyncTaskUtils;
import com.cymobile.ymwork.utils.Comparators;
import com.cymobile.ymwork.utils.UiUtil;
import com.cymobile.ymwork.widget.LoadableListFragmentWithViewAndHeaderPublicReport;
import com.cymobile.ymwork.widget.PublicReportListAdapter;
import com.cymobile.ymwork.widget.PullToRefreshListView;
import com.cymobile.ymwork.widget.PullToRefreshListView.OnAddMoreListener;
import com.cymobile.ymwork.widget.PullToRefreshListView.OnRefreshListener;
import com.cymobile.ymwork.widget.SeparatedListAdapter;
import com.cymobile.ymwork.widget.ShopFilterFragmentPublicReport;
import java.io.IOException;
import java.lang.ref.SoftReference;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;

public class MainClassPublicReportAct extends LoadableListFragmentWithViewAndHeaderPublicReport
{
  public static final int CITY_RADIUS_IN_METERS = 50000;
  private static final int Intent_init_direct_search = 12;
  private static final int Intent_init_search = 11;
  private static final long SLEEP_TIME_IF_NO_LOCATION = 3000L;
  public static final String TAG = "MainClassPublicReportAct";
  private int classid = 0;
  private int classidextra = 0;
  TextView commonTitle;
  Context contexts;
  public HashMap<String, SoftReference<Bitmap>> drawableMap = new HashMap();
  HomeApplication homeApplication;
  private int intentDays;
  private String intentZoneId = null;
  Handler mHandler = new UIHandler();
  private ViewGroup mLayoutEmpty;
  private SeparatedListAdapter mListAdapter;
  private BroadcastReceiver mLoggedOutReceiver = new BroadcastReceiver()
  {
    public void onReceive(Context paramContext, Intent paramIntent)
    {
      Log.i("MainClassPublicReportAct", "onReceive: " + paramIntent);
      MainClassPublicReportAct.this.finish();
    }
  };
  private SharedPreferences mPrefs;
  private StateHolder mStateHolder;
  final boolean[] orderflags = new boolean[3];
  Group<Zone> userSubZones;
  String userZoneId;
  String userZoneName;

  private void ensureUi()
  {
    ((ImageButton)findViewById(2131230765)).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        MainClassPublicReportAct.this.onBackPressed();
      }
    });
    Button localButton = (Button)findViewById(2131230768);
    localButton.setText("地图模式");
    localButton.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        try
        {
          if ((MainClassPublicReportAct.this.mStateHolder != null) && (MainClassPublicReportAct.this.mStateHolder.getShops() != null) && (MainClassPublicReportAct.this.mStateHolder.getShops().size() > 0))
          {
            Intent localIntent = new Intent(MainClassPublicReportAct.this, MapConstrustionFragmentActivity.class);
            FilterDataSourcePublicReport localFilterDataSourcePublicReport = MainClassPublicReportAct.this.getFilterFragment().getFilterDataSource();
            String str = localFilterDataSourcePublicReport.curCategory().id();
            if (str.equals("0"))
              str = MainClassPublicReportAct.this.userZoneId;
            localIntent.putExtra("Intent_ClassId", MainClassPublicReportAct.this.classid);
            localIntent.putExtra("Intent_ZoneId", str);
            localIntent.putExtra("Intent_Days", FilterDataSource.toDays(localFilterDataSourcePublicReport.curRange().intId()));
            MainClassPublicReportAct.this.startActivity(localIntent);
            MainClassPublicReportAct.this.finish();
            return;
          }
          Toast.makeText(MainClassPublicReportAct.this, 2131296391, 1).show();
          return;
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
        }
      }
    });
    ensureUiListView();
  }

  private void ensureUiListView()
  {
    this.mListAdapter = new SeparatedListAdapter(this);
    FilterDataSourcePublicReport localFilterDataSourcePublicReport = getFilterFragment().getFilterDataSource();
    if ((localFilterDataSourcePublicReport != null) && (localFilterDataSourcePublicReport.curFilterId().intId() == 1))
      sortShopsRecent(this.mStateHolder.getShops(), this.mListAdapter);
    PullToRefreshListView localPullToRefreshListView = (PullToRefreshListView)getListView();
    localPullToRefreshListView.setAdapter(this.mListAdapter);
    localPullToRefreshListView.setDividerHeight(0);
    localPullToRefreshListView.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
      {
        ConstrustionField localConstrustionField = (ConstrustionField)MainClassPublicReportAct.this.mListAdapter.getItem(paramInt);
        Intent localIntent = new Intent(MainClassPublicReportAct.this, ShopDetailsPublicReportActivity.class);
        localIntent.putExtra("caseid", localConstrustionField.getCaseid());
        localIntent.putExtra("classid", localConstrustionField.getClassids());
        MainClassPublicReportAct.this.startActivity(localIntent);
      }
    });
    LayoutInflater localLayoutInflater = LayoutInflater.from(this);
    if (UiUtil.sdkVersion() > 3);
    for (this.mLayoutEmpty = ((ScrollView)localLayoutInflater.inflate(2130903101, null)); ; this.mLayoutEmpty = ((ScrollView)localLayoutInflater.inflate(2130903102, null)))
    {
      ((Button)this.mLayoutEmpty.findViewById(2131230991)).setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramView)
        {
          MainClassPublicReportAct.this.mStateHolder.startTask(MainClassPublicReportAct.this);
        }
      });
      ((Button)this.mLayoutEmpty.findViewById(2131230992)).setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramView)
        {
          MainClassPublicReportAct.this.onBackPressed();
        }
      });
      this.mLayoutEmpty.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
      this.mListAdapter.getCount();
      if (!this.mStateHolder.getIsRunningTask())
        break;
      setProgressBarIndeterminateVisibility(true);
      if (!this.mStateHolder.getRanOnce())
        setLoadingView();
      return;
    }
    setProgressBarIndeterminateVisibility(false);
  }

  private void onMoreTaskStart()
  {
    setProgressBarIndeterminateVisibility(true);
  }

  private void onRefreshTaskStart()
  {
    setProgressBarIndeterminateVisibility(true);
    setLoadingView();
  }

  private void onTaskComplete(Group<ConstrustionField> paramGroup, Exception paramException)
  {
    this.mStateHolder.setRanOnce(true);
    this.mStateHolder.setIsRunningTask(false);
    setProgressBarIndeterminateVisibility(false);
    this.mListAdapter.removeObserver();
    this.mListAdapter.clear();
    this.mListAdapter = new SeparatedListAdapter(this);
    FilterDataSourcePublicReport localFilterDataSourcePublicReport;
    if (paramGroup != null)
    {
      this.mStateHolder.setShops(paramGroup);
      localFilterDataSourcePublicReport = getFilterFragment().getFilterDataSource();
      if ((localFilterDataSourcePublicReport != null) && (localFilterDataSourcePublicReport.curFilterId().intId() == 1))
        sortShopsRecent(this.mStateHolder.getShops(), this.mListAdapter);
    }
    while (true)
    {
      if (this.mStateHolder.getShops().size() == 0)
        setEmptyView(this.mLayoutEmpty);
      getListView().setAdapter(this.mListAdapter);
      getListView().setSelection(1);
      if ((this.mStateHolder.getShops() == null) || (paramGroup == null) || (this.mStateHolder.getShops().size() != paramGroup.getNumber()))
        break;
      ((PullToRefreshListView)getListView()).onRefreshComplete(true);
      return;
      if ((localFilterDataSourcePublicReport != null) && (localFilterDataSourcePublicReport.curFilterId().intId() == 2))
      {
        sortShopsRecentDesc(this.mStateHolder.getShops(), this.mListAdapter);
        continue;
      }
      if ((localFilterDataSourcePublicReport != null) && (localFilterDataSourcePublicReport.curFilterId().intId() == 3))
      {
        sortShopsAreaDesc(this.mStateHolder.getShops(), this.mListAdapter);
        continue;
      }
      if ((localFilterDataSourcePublicReport == null) || (localFilterDataSourcePublicReport.curFilterId().intId() != 4))
        continue;
      sortShopsDistanceDesc(this.mStateHolder.getShops(), this.mListAdapter);
      continue;
      if (paramException == null)
        continue;
      this.mStateHolder.setShops(new Group());
    }
    ((PullToRefreshListView)getListView()).onRefreshComplete(false);
  }

  private void sortShopsAreaDesc(Group<ConstrustionField> paramGroup, SeparatedListAdapter paramSeparatedListAdapter)
  {
    Group localGroup = new Group();
    PublicReportListAdapter localPublicReportListAdapter = new PublicReportListAdapter(this, this.homeApplication.getRemoteResourceManager());
    Iterator localIterator = paramGroup.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
      {
        if (localGroup.size() > 0)
        {
          localPublicReportListAdapter.setGroup(localGroup);
          paramSeparatedListAdapter.addSection(getResources().getString(2131296308), localPublicReportListAdapter);
        }
        return;
      }
      localGroup.add((ConstrustionField)localIterator.next());
    }
  }

  private void sortShopsDistanceDesc(Group<ConstrustionField> paramGroup, SeparatedListAdapter paramSeparatedListAdapter)
  {
    Collections.sort(paramGroup, Comparators.getConstrustionFieldDistanceComparator());
    Group localGroup = new Group();
    PublicReportListAdapter localPublicReportListAdapter = new PublicReportListAdapter(this, this.homeApplication.getRemoteResourceManager());
    Iterator localIterator = paramGroup.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
      {
        if (localGroup.size() > 0)
        {
          localPublicReportListAdapter.setGroup(localGroup);
          paramSeparatedListAdapter.addSection(getResources().getString(2131296308), localPublicReportListAdapter);
        }
        return;
      }
      localGroup.add((ConstrustionField)localIterator.next());
    }
  }

  private void sortShopsRecent(Group<ConstrustionField> paramGroup, SeparatedListAdapter paramSeparatedListAdapter)
  {
    Collections.sort(paramGroup, Collections.reverseOrder(Comparators.getConstrustionFieldComparator()));
    Group localGroup = new Group();
    PublicReportListAdapter localPublicReportListAdapter = new PublicReportListAdapter(this, this.homeApplication.getRemoteResourceManager());
    Iterator localIterator = paramGroup.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
      {
        if (localGroup.size() > 0)
        {
          localPublicReportListAdapter.setGroup(localGroup);
          paramSeparatedListAdapter.addSection(getResources().getString(2131296308), localPublicReportListAdapter);
        }
        return;
      }
      localGroup.add((ConstrustionField)localIterator.next());
    }
  }

  private void sortShopsRecentDesc(Group<ConstrustionField> paramGroup, SeparatedListAdapter paramSeparatedListAdapter)
  {
    Collections.sort(paramGroup, Comparators.getConstrustionFieldComparator());
    Group localGroup = new Group();
    PublicReportListAdapter localPublicReportListAdapter = new PublicReportListAdapter(this, this.homeApplication.getRemoteResourceManager());
    Iterator localIterator = paramGroup.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
      {
        if (localGroup.size() > 0)
        {
          localPublicReportListAdapter.setGroup(localGroup);
          paramSeparatedListAdapter.addSection(getResources().getString(2131296308), localPublicReportListAdapter);
        }
        return;
      }
      localGroup.add((ConstrustionField)localIterator.next());
    }
  }

  public int getNoSearchResultsStringId()
  {
    return 2131296281;
  }

  int getShopsSize()
  {
    if (this.mListAdapter != null)
      return this.mListAdapter.getCount();
    return 0;
  }

  public StateHolder getStateHolder()
  {
    return this.mStateHolder;
  }

  void onAddMoreTaskComplete(Group<ConstrustionField> paramGroup, Exception paramException)
  {
    PullToRefreshListView localPullToRefreshListView = (PullToRefreshListView)getListView();
    localPullToRefreshListView.getChildAt(0);
    int i = localPullToRefreshListView.getFirstVisiblePosition();
    this.mStateHolder.setRanOnce(true);
    this.mStateHolder.setIsRunningTask(false);
    setProgressBarIndeterminateVisibility(false);
    if (paramException != null)
      if ((paramException instanceof ServerException))
        if (((ServerException)paramException).getErrorCode() == 20)
        {
          ((PullToRefreshListView)getListView()).onLastRecordComplete();
          Toast.makeText(this, 2131296401, 0).show();
          if ((this.mStateHolder.getShops() == null) || (this.mStateHolder.getShops().size() <= 0))
            this.mStateHolder.setShops(new Group());
        }
    while (true)
    {
      if (this.mStateHolder.getShops().size() == 0)
        setEmptyView(this.mLayoutEmpty);
      getListView().setAdapter(this.mListAdapter);
      getListView().setSelection(i);
      ((PullToRefreshListView)getListView()).onAddMoreComplete(true);
      return;
      Toast.makeText(this, 2131296400, 0).show();
      break;
      Toast.makeText(this, 2131296400, 0).show();
      break;
      if ((paramGroup != null) && (paramGroup.size() > 0))
      {
        this.mListAdapter.removeObserver();
        this.mListAdapter.clear();
        this.mListAdapter = new SeparatedListAdapter(this);
        paramGroup.addAll(this.mStateHolder.getShops());
        this.mStateHolder.setShops(paramGroup);
        FilterDataSourcePublicReport localFilterDataSourcePublicReport = getFilterFragment().getFilterDataSource();
        if ((localFilterDataSourcePublicReport != null) && (localFilterDataSourcePublicReport.curFilterId().intId() == 1))
        {
          sortShopsRecent(this.mStateHolder.getShops(), this.mListAdapter);
          continue;
        }
        if ((localFilterDataSourcePublicReport != null) && (localFilterDataSourcePublicReport.curFilterId().intId() == 2))
        {
          sortShopsRecentDesc(this.mStateHolder.getShops(), this.mListAdapter);
          continue;
        }
        if ((localFilterDataSourcePublicReport != null) && (localFilterDataSourcePublicReport.curFilterId().intId() == 3))
        {
          sortShopsAreaDesc(this.mStateHolder.getShops(), this.mListAdapter);
          continue;
        }
        if ((localFilterDataSourcePublicReport == null) || (localFilterDataSourcePublicReport.curFilterId().intId() != 4))
          continue;
        sortShopsDistanceDesc(this.mStateHolder.getShops(), this.mListAdapter);
        continue;
      }
      if ((paramGroup != null) && (paramGroup.size() != 0))
        continue;
      Toast.makeText(this, 2131296401, 0).show();
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    requestWindowFeature(1);
    this.mPrefs = getSharedPreferences(SettingBase.class.getName(), 2);
    requestWindowFeature(5);
    this.contexts = this;
    String str1;
    if (getIntent().getExtras().containsKey("Intent_ClassId"))
    {
      this.classid = getIntent().getExtras().getInt("Intent_ClassId");
      if ((this.classid == 81) || (this.classid == 82))
      {
        this.classidextra = this.classid;
        this.classid = 0;
      }
      if (getIntent().getExtras().containsKey("Intent_ZoneId"))
        this.intentZoneId = getIntent().getExtras().getString("Intent_ZoneId");
      if (getIntent().getExtras().containsKey("Intent_Days"))
        this.intentDays = getIntent().getExtras().getInt("Intent_Days");
      this.userZoneId = this.mPrefs.getString("key_GlobalZoneId", null);
      this.userZoneName = this.mPrefs.getString("key_GlobalZoneName", null);
      long l = Long.parseLong(this.userZoneId);
      if (this.userZoneId.length() != 6)
        break label432;
      str1 = "全部";
      FilterDataSourcePublicReport.resetTOPCategory(l, str1);
      setContentView(2130903080);
      super.onCreate(paramBundle);
      registerReceiver(this.mLoggedOutReceiver, new IntentFilter("com.cymobile.ymwork.intent.action.LOGGED_OUT"));
      this.homeApplication = ((HomeApplication)getApplication());
      if (getLastNonConfigurationInstance() == null)
        break label441;
      this.mStateHolder = ((StateHolder)getLastNonConfigurationInstance());
      this.mStateHolder.setActivity(this);
    }
    while (true)
    {
      ensureUi();
      this.commonTitle = ((TextView)findViewById(2131230767));
      this.commonTitle.setText(getResources().getString(2131296427));
      ((PullToRefreshListView)getListView()).setOnRefreshListener(new PullToRefreshListView.OnRefreshListener()
      {
        public void onRefresh()
        {
          MainClassPublicReportAct.this.mStateHolder.startTask(MainClassPublicReportAct.this);
        }
      });
      ((PullToRefreshListView)getListView()).setOnAddMoreListener(new PullToRefreshListView.OnAddMoreListener()
      {
        public void onAddMore()
        {
          MainClassPublicReportAct.this.mStateHolder.startMoreTask(MainClassPublicReportAct.this);
        }
      });
      String str2 = this.mPrefs.getString("key_GlobalZoneId", null);
      if (((str2 == null) || (str2.length() != 12)) && ((PreferencesUtils.getSubZone() == null) || (PreferencesUtils.getSubZone().size() <= 0)))
        break label456;
      this.mHandler.sendEmptyMessageDelayed(12, 50L);
      return;
      finish();
      return;
      label432: str1 = this.userZoneName;
      break;
      label441: this.mStateHolder = new StateHolder();
    }
    label456: this.mHandler.sendEmptyMessageDelayed(11, 10L);
  }

  protected Dialog onCreateDialog(int paramInt)
  {
    return null;
  }

  public void onDestroy()
  {
    super.onDestroy();
    try
    {
      unregisterReceiver(this.mLoggedOutReceiver);
    }
    catch (Exception localException1)
    {
      try
      {
        while (true)
        {
          if (getStateHolder() != null)
            getStateHolder().cancel();
          return;
          localException1 = localException1;
          localException1.printStackTrace();
        }
      }
      catch (Exception localException2)
      {
        localException2.printStackTrace();
      }
    }
  }

  public void onPause()
  {
    super.onPause();
    if (isFinishing())
    {
      this.mListAdapter.removeObserver();
      unregisterReceiver(this.mLoggedOutReceiver);
      this.mStateHolder.cancel();
    }
  }

  public void onResume()
  {
    super.onResume();
    if ((getListView() != null) && (getListView().getAdapter() != null))
      getListView().invalidateViews();
  }

  private class GetZoneTask extends AsyncTask<Void, Void, Boolean>
  {
    private Exception mReason;

    public GetZoneTask(MainClassPublicReportAct arg2)
    {
    }

    protected Boolean doInBackground(Void[] paramArrayOfVoid)
    {
      Server localServer = ((HomeApplication)MainClassPublicReportAct.this.getApplication()).getServer();
      try
      {
        String str = MainClassPublicReportAct.this.mPrefs.getString("key_GlobalZoneId", null);
        Group localGroup1 = localServer.getZone(MainClassPublicReportAct.this.contexts, str);
        bool = false;
        Iterator localIterator;
        if (localGroup1 != null)
        {
          int i = localGroup1.size();
          bool = false;
          if (i > 0)
          {
            MainClassPublicReportAct.this.userSubZones = localGroup1;
            if ((str == null) || (str.length() != 6))
              break label199;
            Group localGroup2 = localServer.getAllComm(MainClassPublicReportAct.this.contexts);
            if ((localGroup2 != null) && (localGroup2.size() > 0))
              localIterator = localGroup2.iterator();
          }
        }
        while (true)
        {
          if (!localIterator.hasNext())
          {
            PreferencesUtils.setSubZone(MainClassPublicReportAct.this.userSubZones);
            bool = true;
            return Boolean.valueOf(bool);
          }
          Zone localZone = (Zone)localIterator.next();
          MainClassPublicReportAct.this.userSubZones.add(localZone);
        }
      }
      catch (Exception localException)
      {
        while (true)
        {
          localException.printStackTrace();
          this.mReason = localException;
          boolean bool = false;
          continue;
          label199: PreferencesUtils.setSubZone(MainClassPublicReportAct.this.userSubZones);
        }
      }
    }

    protected void onCancelled()
    {
    }

    protected void onPostExecute(Boolean paramBoolean)
    {
      if ((this.mReason != null) || (paramBoolean == null) || (!paramBoolean.booleanValue()))
      {
        MainClassPublicReportAct.this.runOnUiThread(new Runnable()
        {
          public void run()
          {
            Toast.makeText(MainClassPublicReportAct.this, 2131296363, 1).show();
          }
        });
        return;
      }
      FilterDataSourcePublicReport.setCategory(PreferencesUtils.getSubZone());
      FilterDataSourcePublicReport.setCategoryClass(PreferencesUtils.getSubClasses());
      MainClassPublicReportAct.this.getFilterFragment().onDataChanged(0);
    }

    protected void onPreExecute()
    {
    }
  }

  public class StateHolder
  {
    private boolean mIsRunningTask = false;
    private MainClassPublicReportAct.TaskMoreShops mMoreTaskShops;
    private boolean mRanOnce = false;
    private Group<ConstrustionField> mShops = new Group();
    private MainClassPublicReportAct.TaskShops mTaskShops;

    public StateHolder()
    {
    }

    public void cancel()
    {
      if (this.mIsRunningTask);
      try
      {
        if (this.mTaskShops != null)
          this.mTaskShops.cancel(true);
      }
      catch (Exception localException1)
      {
        try
        {
          while (true)
          {
            if (this.mMoreTaskShops != null)
              this.mMoreTaskShops.cancel(true);
            this.mIsRunningTask = false;
            return;
            localException1 = localException1;
            localException1.printStackTrace();
          }
        }
        catch (Exception localException2)
        {
          while (true)
            localException2.printStackTrace();
        }
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

    public Group<ConstrustionField> getShops()
    {
      return this.mShops;
    }

    MainClassPublicReportAct.TaskMoreShops getTaskMoreShops()
    {
      return this.mMoreTaskShops;
    }

    MainClassPublicReportAct.TaskShops getTaskShops()
    {
      return this.mTaskShops;
    }

    public void setActivity(MainClassPublicReportAct paramMainClassPublicReportAct)
    {
      if (this.mIsRunningTask)
        this.mTaskShops.setActivity(paramMainClassPublicReportAct);
    }

    public void setIsRunningTask(boolean paramBoolean)
    {
      this.mIsRunningTask = paramBoolean;
    }

    public void setRanOnce(boolean paramBoolean)
    {
      this.mRanOnce = paramBoolean;
    }

    public void setShops(Group<ConstrustionField> paramGroup)
    {
      if (paramGroup.getNumber() == 0)
        MainClassPublicReportAct.this.commonTitle.setText(MainClassPublicReportAct.this.getResources().getString(2131296427));
      while (true)
      {
        this.mShops = paramGroup;
        return;
        MainClassPublicReportAct.this.commonTitle.setText("公众举报投诉【共" + paramGroup.getNumber() + "件】");
      }
    }

    public void startMoreTask(MainClassPublicReportAct paramMainClassPublicReportAct)
    {
      if (!this.mIsRunningTask)
      {
        this.mMoreTaskShops = new MainClassPublicReportAct.TaskMoreShops(MainClassPublicReportAct.this, paramMainClassPublicReportAct);
        AsyncTaskUtils.execute(this.mMoreTaskShops);
        this.mIsRunningTask = true;
      }
    }

    public void startTask(MainClassPublicReportAct paramMainClassPublicReportAct)
    {
      if (!this.mIsRunningTask)
      {
        MainClassPublicReportAct.this.setProgressBarIndeterminateVisibility(true);
        this.mTaskShops = new MainClassPublicReportAct.TaskShops(MainClassPublicReportAct.this, paramMainClassPublicReportAct);
        AsyncTaskUtils.execute(this.mTaskShops);
        this.mIsRunningTask = true;
      }
    }
  }

  private class TaskMoreShops extends AsyncTask<Void, Void, Group<ConstrustionField>>
  {
    private MainClassPublicReportAct mActivity;
    private Exception mException;
    private HomeApplication mHomeApplication;

    public TaskMoreShops(MainClassPublicReportAct arg2)
    {
      Object localObject;
      this.mHomeApplication = ((HomeApplication)localObject.getApplication());
      this.mActivity = localObject;
    }

    private Group<ConstrustionField> moreShops()
      throws ServerException, IOException
    {
      FilterDataSourcePublicReport localFilterDataSourcePublicReport = MainClassPublicReportAct.this.getFilterFragment().getFilterDataSource();
      String str1 = localFilterDataSourcePublicReport.curCategory().id();
      String str2 = localFilterDataSourcePublicReport.curClasses().id();
      if (str1.equals("0"))
        str1 = MainClassPublicReportAct.this.userZoneId;
      if (str2.equals("1"))
        str2 = "";
      int i = SettingBase.getListNum(MainClassPublicReportAct.this.mPrefs);
      if (i < 0)
        i = 50;
      return this.mHomeApplication.getServer().construstionfield(MainClassPublicReportAct.this.contexts, MainClassPublicReportAct.this.classid, MainClassPublicReportAct.this.userZoneId, FilterDataSource.toDays(localFilterDataSourcePublicReport.curRange().intId()), str1, FilterDataSource.getOrderDescStr(localFilterDataSourcePublicReport.curFilterId().intId()), MainClassPublicReportAct.this.mStateHolder.getShops().size(), i, null, str2, null);
    }

    public Group<ConstrustionField> doInBackground(Void[] paramArrayOfVoid)
    {
      try
      {
        Group localGroup = moreShops();
        return localGroup;
      }
      catch (Exception localException)
      {
        this.mException = localException;
        localException.printStackTrace();
      }
      return null;
    }

    public void onPostExecute(Group<ConstrustionField> paramGroup)
    {
      if (this.mActivity != null)
        this.mActivity.onAddMoreTaskComplete(paramGroup, this.mException);
    }

    protected void onPreExecute()
    {
      this.mActivity.onMoreTaskStart();
    }

    public void setActivity(MainClassPublicReportAct paramMainClassPublicReportAct)
    {
      this.mActivity = paramMainClassPublicReportAct;
    }
  }

  private class TaskShops extends AsyncTask<Void, Void, Group<ConstrustionField>>
  {
    private MainClassPublicReportAct mActivity;
    private Exception mException;
    private HomeApplication mHomeApplication;

    public TaskShops(MainClassPublicReportAct arg2)
    {
      Object localObject;
      this.mHomeApplication = ((HomeApplication)localObject.getApplication());
      this.mActivity = localObject;
    }

    private Group<ConstrustionField> shops()
      throws ServerException, IOException
    {
      FilterDataSourcePublicReport localFilterDataSourcePublicReport = MainClassPublicReportAct.this.getFilterFragment().getFilterDataSource();
      String str1 = localFilterDataSourcePublicReport.curCategory().id();
      String str2 = localFilterDataSourcePublicReport.curClasses().id();
      if (str1.equals("0"))
        str1 = MainClassPublicReportAct.this.userZoneId;
      if (str2.equals("1"))
        str2 = "";
      int i = SettingBase.getListNum(MainClassPublicReportAct.this.mPrefs);
      if (i < 0)
        i = 50;
      return this.mHomeApplication.getServer().construstionfield(MainClassPublicReportAct.this.contexts, MainClassPublicReportAct.this.classid, MainClassPublicReportAct.this.userZoneId, FilterDataSource.toDays(localFilterDataSourcePublicReport.curRange().intId()), str1, FilterDataSource.getOrderDescStr(localFilterDataSourcePublicReport.curFilterId().intId()), 0, i, null, str2, null);
    }

    public Group<ConstrustionField> doInBackground(Void[] paramArrayOfVoid)
    {
      try
      {
        Group localGroup = shops();
        return localGroup;
      }
      catch (Exception localException)
      {
        this.mException = localException;
        localException.printStackTrace();
      }
      return null;
    }

    public void onPostExecute(Group<ConstrustionField> paramGroup)
    {
      if (this.mActivity != null)
        this.mActivity.onTaskComplete(paramGroup, this.mException);
    }

    protected void onPreExecute()
    {
      this.mActivity.onRefreshTaskStart();
    }

    public void setActivity(MainClassPublicReportAct paramMainClassPublicReportAct)
    {
      this.mActivity = paramMainClassPublicReportAct;
    }
  }

  class UIHandler extends Handler
  {
    UIHandler()
    {
    }

    public void handleMessage(Message paramMessage)
    {
      if (paramMessage.what == 12)
        MainClassPublicReportAct.this.getFilterFragment().onDataChanged(0);
      do
        return;
      while (paramMessage.what != 11);
      AsyncTaskUtils.execute(new MainClassPublicReportAct.GetZoneTask(MainClassPublicReportAct.this, MainClassPublicReportAct.this));
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.act.MainClassPublicReportAct
 * JD-Core Version:    0.6.0
 */