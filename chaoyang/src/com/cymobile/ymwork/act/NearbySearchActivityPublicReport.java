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
import com.cymobile.ymwork.types.Building;
import com.cymobile.ymwork.types.Category;
import com.cymobile.ymwork.types.Group;
import com.cymobile.ymwork.types.Pair;
import com.cymobile.ymwork.types.Zone;
import com.cymobile.ymwork.utils.AsyncTaskUtils;
import com.cymobile.ymwork.utils.Comparators;
import com.cymobile.ymwork.utils.UiUtil;
import com.cymobile.ymwork.widget.LoadableListFragmentWithViewAndHeader;
import com.cymobile.ymwork.widget.NearbyShopListAdapter;
import com.cymobile.ymwork.widget.PullToRefreshListView;
import com.cymobile.ymwork.widget.PullToRefreshListView.OnAddMoreListener;
import com.cymobile.ymwork.widget.PullToRefreshListView.OnRefreshListener;
import com.cymobile.ymwork.widget.RangeFilterFragment;
import com.cymobile.ymwork.widget.SeparatedListAdapter;
import java.io.IOException;
import java.lang.ref.SoftReference;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;

public class NearbySearchActivityPublicReport extends LoadableListFragmentWithViewAndHeader
{
  public static final int CITY_RADIUS_IN_METERS = 50000;
  private static final int Intent_init_direct_search = 12;
  private static final int Intent_init_search = 11;
  private static final long SLEEP_TIME_IF_NO_LOCATION = 3000L;
  public static final String TAG = "NearbySearchActivity";
  private int classid = 0;
  private int classidextra = 0;
  TextView commonTitle;
  private Context contexts;
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
      Log.i("NearbySearchActivity", "onReceive: " + paramIntent);
      NearbySearchActivityPublicReport.this.finish();
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
        NearbySearchActivityPublicReport.this.onBackPressed();
      }
    });
    ((ImageButton)findViewById(2131230768)).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        try
        {
          if ((NearbySearchActivityPublicReport.this.mStateHolder != null) && (NearbySearchActivityPublicReport.this.mStateHolder.getShops() != null) && (NearbySearchActivityPublicReport.this.mStateHolder.getShops().size() > 0))
          {
            Intent localIntent = new Intent(NearbySearchActivityPublicReport.this, MapFragmentActivity.class);
            FilterDataSource localFilterDataSource = NearbySearchActivityPublicReport.this.getFilterFragment().getFilterDataSource();
            String str = localFilterDataSource.curCategory().id();
            if (str.equals("0"))
              str = NearbySearchActivityPublicReport.this.userZoneId;
            localIntent.putExtra("Intent_ClassId", NearbySearchActivityPublicReport.this.classid);
            localIntent.putExtra("Intent_ZoneId", str);
            localIntent.putExtra("Intent_Days", FilterDataSource.toDays(localFilterDataSource.curRange().intId()));
            NearbySearchActivityPublicReport.this.startActivity(localIntent);
            NearbySearchActivityPublicReport.this.finish();
            return;
          }
          Toast.makeText(NearbySearchActivityPublicReport.this, 2131296391, 1).show();
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
    FilterDataSource localFilterDataSource = getFilterFragment().getFilterDataSource();
    if ((localFilterDataSource != null) && (localFilterDataSource.curFilterId().intId() == 1))
      sortShopsRecent(this.mStateHolder.getShops(), this.mListAdapter);
    PullToRefreshListView localPullToRefreshListView = (PullToRefreshListView)getListView();
    localPullToRefreshListView.setAdapter(this.mListAdapter);
    localPullToRefreshListView.setDividerHeight(0);
    localPullToRefreshListView.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
      {
        Building localBuilding = (Building)NearbySearchActivityPublicReport.this.mListAdapter.getItem(paramInt);
        Intent localIntent = new Intent(NearbySearchActivityPublicReport.this, ShopDetailsActivity.class);
        localIntent.putExtra("caseid", localBuilding.getCaseId());
        localIntent.putExtra("classid", localBuilding.getclassid());
        NearbySearchActivityPublicReport.this.startActivity(localIntent);
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
          NearbySearchActivityPublicReport.this.mStateHolder.startTask(NearbySearchActivityPublicReport.this);
        }
      });
      ((Button)this.mLayoutEmpty.findViewById(2131230992)).setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramView)
        {
          NearbySearchActivityPublicReport.this.onBackPressed();
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

  private void onTaskComplete(Group<Building> paramGroup, Exception paramException)
  {
    this.mStateHolder.setRanOnce(true);
    this.mStateHolder.setIsRunningTask(false);
    setProgressBarIndeterminateVisibility(false);
    this.mListAdapter.removeObserver();
    this.mListAdapter.clear();
    this.mListAdapter = new SeparatedListAdapter(this);
    FilterDataSource localFilterDataSource;
    if (paramGroup != null)
    {
      this.mStateHolder.setShops(paramGroup);
      localFilterDataSource = getFilterFragment().getFilterDataSource();
      if ((localFilterDataSource != null) && (localFilterDataSource.curFilterId().intId() == 1))
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
      if ((localFilterDataSource != null) && (localFilterDataSource.curFilterId().intId() == 2))
      {
        sortShopsRecentDesc(this.mStateHolder.getShops(), this.mListAdapter);
        continue;
      }
      if ((localFilterDataSource != null) && (localFilterDataSource.curFilterId().intId() == 3))
      {
        sortShopsAreaDesc(this.mStateHolder.getShops(), this.mListAdapter);
        continue;
      }
      if ((localFilterDataSource == null) || (localFilterDataSource.curFilterId().intId() != 4))
        continue;
      sortShopsDistanceDesc(this.mStateHolder.getShops(), this.mListAdapter);
      continue;
      if (paramException == null)
        continue;
      this.mStateHolder.setShops(new Group());
    }
    ((PullToRefreshListView)getListView()).onRefreshComplete(false);
  }

  private void sortShopsAreaDesc(Group<Building> paramGroup, SeparatedListAdapter paramSeparatedListAdapter)
  {
    Group localGroup = new Group();
    NearbyShopListAdapter localNearbyShopListAdapter = new NearbyShopListAdapter(this, this.homeApplication.getRemoteResourceManager());
    Iterator localIterator = paramGroup.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
      {
        if (localGroup.size() > 0)
        {
          localNearbyShopListAdapter.setGroup(localGroup);
          paramSeparatedListAdapter.addSection(getResources().getString(2131296308), localNearbyShopListAdapter);
        }
        return;
      }
      localGroup.add((Building)localIterator.next());
    }
  }

  private void sortShopsDistanceDesc(Group<Building> paramGroup, SeparatedListAdapter paramSeparatedListAdapter)
  {
    Collections.sort(paramGroup, Comparators.getRecentDistanceComparator());
    Group localGroup = new Group();
    NearbyShopListAdapter localNearbyShopListAdapter = new NearbyShopListAdapter(this, this.homeApplication.getRemoteResourceManager());
    Iterator localIterator = paramGroup.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
      {
        if (localGroup.size() > 0)
        {
          localNearbyShopListAdapter.setGroup(localGroup);
          paramSeparatedListAdapter.addSection(getResources().getString(2131296308), localNearbyShopListAdapter);
        }
        return;
      }
      localGroup.add((Building)localIterator.next());
    }
  }

  private void sortShopsRecent(Group<Building> paramGroup, SeparatedListAdapter paramSeparatedListAdapter)
  {
    Collections.sort(paramGroup, Collections.reverseOrder(Comparators.getShopRecencyComparator()));
    Group localGroup = new Group();
    NearbyShopListAdapter localNearbyShopListAdapter = new NearbyShopListAdapter(this, this.homeApplication.getRemoteResourceManager());
    Iterator localIterator = paramGroup.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
      {
        if (localGroup.size() > 0)
        {
          localNearbyShopListAdapter.setGroup(localGroup);
          paramSeparatedListAdapter.addSection(getResources().getString(2131296308), localNearbyShopListAdapter);
        }
        return;
      }
      localGroup.add((Building)localIterator.next());
    }
  }

  private void sortShopsRecentDesc(Group<Building> paramGroup, SeparatedListAdapter paramSeparatedListAdapter)
  {
    Collections.sort(paramGroup, Comparators.getShopRecencyComparator());
    Group localGroup = new Group();
    NearbyShopListAdapter localNearbyShopListAdapter = new NearbyShopListAdapter(this, this.homeApplication.getRemoteResourceManager());
    Iterator localIterator = paramGroup.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
      {
        if (localGroup.size() > 0)
        {
          localNearbyShopListAdapter.setGroup(localGroup);
          paramSeparatedListAdapter.addSection(getResources().getString(2131296308), localNearbyShopListAdapter);
        }
        return;
      }
      localGroup.add((Building)localIterator.next());
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

  void onAddMoreTaskComplete(Group<Building> paramGroup, Exception paramException)
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
        FilterDataSource localFilterDataSource = getFilterFragment().getFilterDataSource();
        if ((localFilterDataSource != null) && (localFilterDataSource.curFilterId().intId() == 1))
        {
          sortShopsRecent(this.mStateHolder.getShops(), this.mListAdapter);
          continue;
        }
        if ((localFilterDataSource != null) && (localFilterDataSource.curFilterId().intId() == 2))
        {
          sortShopsRecentDesc(this.mStateHolder.getShops(), this.mListAdapter);
          continue;
        }
        if ((localFilterDataSource != null) && (localFilterDataSource.curFilterId().intId() == 3))
        {
          sortShopsAreaDesc(this.mStateHolder.getShops(), this.mListAdapter);
          continue;
        }
        if ((localFilterDataSource == null) || (localFilterDataSource.curFilterId().intId() != 4))
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
        break label477;
      str1 = "全部";
      FilterDataSource.resetTOPCategory(l, str1);
      setContentView(2130903080);
      super.onCreate(paramBundle);
      registerReceiver(this.mLoggedOutReceiver, new IntentFilter("com.cymobile.ymwork.intent.action.LOGGED_OUT"));
      this.homeApplication = ((HomeApplication)getApplication());
      if (getLastNonConfigurationInstance() == null)
        break label486;
      this.mStateHolder = ((StateHolder)getLastNonConfigurationInstance());
      this.mStateHolder.setActivity(this);
      label297: ensureUi();
      this.commonTitle = ((TextView)findViewById(2131230767));
      if (this.classid != 0)
        break label501;
      this.commonTitle.setText(getResources().getString(2131296422));
      if (this.classidextra == 81)
        this.commonTitle.setText("消防安全");
      if (this.classidextra == 82)
        this.commonTitle.setText("食品安全");
    }
    while (true)
    {
      ((PullToRefreshListView)getListView()).setOnRefreshListener(new PullToRefreshListView.OnRefreshListener()
      {
        public void onRefresh()
        {
          NearbySearchActivityPublicReport.this.mStateHolder.startTask(NearbySearchActivityPublicReport.this);
        }
      });
      ((PullToRefreshListView)getListView()).setOnAddMoreListener(new PullToRefreshListView.OnAddMoreListener()
      {
        public void onAddMore()
        {
          NearbySearchActivityPublicReport.this.mStateHolder.startMoreTask(NearbySearchActivityPublicReport.this);
        }
      });
      String str2 = this.mPrefs.getString("key_GlobalZoneId", null);
      if (((str2 == null) || (str2.length() != 12)) && ((PreferencesUtils.getSubZone() == null) || (PreferencesUtils.getSubZone().size() <= 0)))
        break label557;
      this.mHandler.sendEmptyMessageDelayed(12, 50L);
      return;
      finish();
      return;
      label477: str1 = this.userZoneName;
      break;
      label486: this.mStateHolder = new StateHolder();
      break label297;
      label501: if (this.classid == 1)
      {
        this.commonTitle.setText(getResources().getString(2131296423));
        continue;
      }
      if (this.classid != 2)
        continue;
      this.commonTitle.setText(getResources().getString(2131296424));
    }
    label557: this.mHandler.sendEmptyMessageDelayed(11, 10L);
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

  private class GetZoneTask extends AsyncTask<Void, Void, Boolean>
  {
    private Exception mReason;

    public GetZoneTask(NearbySearchActivityPublicReport arg2)
    {
    }

    protected Boolean doInBackground(Void[] paramArrayOfVoid)
    {
      Server localServer = ((HomeApplication)NearbySearchActivityPublicReport.this.getApplication()).getServer();
      try
      {
        String str = NearbySearchActivityPublicReport.this.mPrefs.getString("key_GlobalZoneId", null);
        Group localGroup1 = localServer.getZone(NearbySearchActivityPublicReport.this.contexts, str);
        Log.d("zonezone", localGroup1);
        bool = false;
        Iterator localIterator;
        if (localGroup1 != null)
        {
          int i = localGroup1.size();
          bool = false;
          if (i > 0)
          {
            NearbySearchActivityPublicReport.this.userSubZones = localGroup1;
            if ((str == null) || (str.length() != 6))
              break label220;
            Group localGroup2 = localServer.getAllComm(NearbySearchActivityPublicReport.this.contexts);
            if ((localGroup2 != null) && (localGroup2.size() > 0))
              localIterator = localGroup2.iterator();
          }
        }
        while (true)
        {
          if (!localIterator.hasNext())
          {
            PreferencesUtils.setSubZone(NearbySearchActivityPublicReport.this.userSubZones);
            bool = true;
            return Boolean.valueOf(bool);
          }
          Zone localZone = (Zone)localIterator.next();
          NearbySearchActivityPublicReport.this.userSubZones.add(localZone);
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
          label220: PreferencesUtils.setSubZone(NearbySearchActivityPublicReport.this.userSubZones);
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
        Toast.makeText(NearbySearchActivityPublicReport.this, 2131296363, 1).show();
        return;
      }
      FilterDataSource.setCategory(PreferencesUtils.getSubZone());
      FilterDataSourcePublicReport.setCategoryClass(PreferencesUtils.getSubClasses());
      NearbySearchActivityPublicReport.this.getFilterFragment().onDataChanged(0);
    }

    protected void onPreExecute()
    {
    }
  }

  public class StateHolder
  {
    private boolean mIsRunningTask = false;
    private NearbySearchActivityPublicReport.TaskMoreShops mMoreTaskShops;
    private boolean mRanOnce = false;
    private Group<Building> mShops = new Group();
    private NearbySearchActivityPublicReport.TaskShops mTaskShops;

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

    public Group<Building> getShops()
    {
      return this.mShops;
    }

    NearbySearchActivityPublicReport.TaskMoreShops getTaskMoreShops()
    {
      return this.mMoreTaskShops;
    }

    NearbySearchActivityPublicReport.TaskShops getTaskShops()
    {
      return this.mTaskShops;
    }

    public void setActivity(NearbySearchActivityPublicReport paramNearbySearchActivityPublicReport)
    {
      if (this.mIsRunningTask)
        this.mTaskShops.setActivity(paramNearbySearchActivityPublicReport);
    }

    public void setIsRunningTask(boolean paramBoolean)
    {
      this.mIsRunningTask = paramBoolean;
    }

    public void setRanOnce(boolean paramBoolean)
    {
      this.mRanOnce = paramBoolean;
    }

    public void setShops(Group<Building> paramGroup)
    {
      if (paramGroup.getNumber() == 0)
        if (NearbySearchActivityPublicReport.this.classid == 0)
        {
          NearbySearchActivityPublicReport.this.commonTitle.setText(NearbySearchActivityPublicReport.this.getResources().getString(2131296422));
          if (NearbySearchActivityPublicReport.this.classidextra == 81)
            NearbySearchActivityPublicReport.this.commonTitle.setText("消防安全");
          if (NearbySearchActivityPublicReport.this.classidextra == 82)
            NearbySearchActivityPublicReport.this.commonTitle.setText("食品安全");
        }
      while (true)
      {
        this.mShops = paramGroup;
        return;
        if (NearbySearchActivityPublicReport.this.classid == 1)
        {
          NearbySearchActivityPublicReport.this.commonTitle.setText(NearbySearchActivityPublicReport.this.getResources().getString(2131296423));
          continue;
        }
        if (NearbySearchActivityPublicReport.this.classid != 2)
          continue;
        NearbySearchActivityPublicReport.this.commonTitle.setText(NearbySearchActivityPublicReport.this.getResources().getString(2131296424));
        continue;
        if (NearbySearchActivityPublicReport.this.classid == 0)
        {
          NearbySearchActivityPublicReport.this.commonTitle.setText("新增建筑【共" + paramGroup.getNumber() + "件】");
          if (NearbySearchActivityPublicReport.this.classidextra == 81)
            NearbySearchActivityPublicReport.this.commonTitle.setText("消防安全【共" + paramGroup.getNumber() + "件】");
          if (NearbySearchActivityPublicReport.this.classidextra != 82)
            continue;
          NearbySearchActivityPublicReport.this.commonTitle.setText("食品安全【共" + paramGroup.getNumber() + "件】");
          continue;
        }
        if (NearbySearchActivityPublicReport.this.classid == 1)
        {
          NearbySearchActivityPublicReport.this.commonTitle.setText("疑似新增建筑【共" + paramGroup.getNumber() + "件】");
          continue;
        }
        if (NearbySearchActivityPublicReport.this.classid != 2)
          continue;
        NearbySearchActivityPublicReport.this.commonTitle.setText("公众举报违建【共" + paramGroup.getNumber() + "件】");
      }
    }

    public void startMoreTask(NearbySearchActivityPublicReport paramNearbySearchActivityPublicReport)
    {
      if (!this.mIsRunningTask)
      {
        this.mMoreTaskShops = new NearbySearchActivityPublicReport.TaskMoreShops(NearbySearchActivityPublicReport.this, paramNearbySearchActivityPublicReport);
        AsyncTaskUtils.execute(this.mMoreTaskShops);
        this.mIsRunningTask = true;
      }
    }

    public void startTask(NearbySearchActivityPublicReport paramNearbySearchActivityPublicReport)
    {
      if (!this.mIsRunningTask)
      {
        NearbySearchActivityPublicReport.this.setProgressBarIndeterminateVisibility(true);
        this.mTaskShops = new NearbySearchActivityPublicReport.TaskShops(NearbySearchActivityPublicReport.this, paramNearbySearchActivityPublicReport);
        AsyncTaskUtils.execute(this.mTaskShops);
        this.mIsRunningTask = true;
      }
    }
  }

  private class TaskMoreShops extends AsyncTask<Void, Void, Group<Building>>
  {
    private NearbySearchActivityPublicReport mActivity;
    private Exception mException;
    private HomeApplication mHomeApplication;

    public TaskMoreShops(NearbySearchActivityPublicReport arg2)
    {
      Object localObject;
      this.mHomeApplication = ((HomeApplication)localObject.getApplication());
      this.mActivity = localObject;
    }

    private Group<Building> moreShops()
      throws ServerException, IOException
    {
      FilterDataSource localFilterDataSource = NearbySearchActivityPublicReport.this.getFilterFragment().getFilterDataSource();
      String str = localFilterDataSource.curCategory().id();
      if (str.equals("0"))
        str = NearbySearchActivityPublicReport.this.userZoneId;
      int i = SettingBase.getListNum(NearbySearchActivityPublicReport.this.mPrefs);
      if (i < 0)
        i = 50;
      return this.mHomeApplication.getServer().buildings(NearbySearchActivityPublicReport.this.contexts, NearbySearchActivityPublicReport.this.classid, NearbySearchActivityPublicReport.this.userZoneId, FilterDataSource.toDays(localFilterDataSource.curRange().intId()), str, FilterDataSource.getOrderDescStr(localFilterDataSource.curFilterId().intId()), NearbySearchActivityPublicReport.this.mStateHolder.getShops().size(), i, null);
    }

    public Group<Building> doInBackground(Void[] paramArrayOfVoid)
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

    public void onPostExecute(Group<Building> paramGroup)
    {
      if (this.mActivity != null)
        this.mActivity.onAddMoreTaskComplete(paramGroup, this.mException);
    }

    protected void onPreExecute()
    {
      this.mActivity.onMoreTaskStart();
    }

    public void setActivity(NearbySearchActivityPublicReport paramNearbySearchActivityPublicReport)
    {
      this.mActivity = paramNearbySearchActivityPublicReport;
    }
  }

  private class TaskShops extends AsyncTask<Void, Void, Group<Building>>
  {
    private NearbySearchActivityPublicReport mActivity;
    private Exception mException;
    private HomeApplication mHomeApplication;

    public TaskShops(NearbySearchActivityPublicReport arg2)
    {
      Object localObject;
      this.mHomeApplication = ((HomeApplication)localObject.getApplication());
      this.mActivity = localObject;
    }

    private Group<Building> shops()
      throws ServerException, IOException
    {
      FilterDataSource localFilterDataSource = NearbySearchActivityPublicReport.this.getFilterFragment().getFilterDataSource();
      String str = localFilterDataSource.curCategory().id();
      if (str.equals("0"))
        str = NearbySearchActivityPublicReport.this.userZoneId;
      int i = SettingBase.getListNum(NearbySearchActivityPublicReport.this.mPrefs);
      if (i < 0)
        i = 50;
      return this.mHomeApplication.getServer().buildings(NearbySearchActivityPublicReport.this.contexts, NearbySearchActivityPublicReport.this.classid, NearbySearchActivityPublicReport.this.userZoneId, FilterDataSource.toDays(localFilterDataSource.curRange().intId()), str, FilterDataSource.getOrderDescStr(localFilterDataSource.curFilterId().intId()), 0, i, null);
    }

    public Group<Building> doInBackground(Void[] paramArrayOfVoid)
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

    public void onPostExecute(Group<Building> paramGroup)
    {
      if (this.mActivity != null)
        this.mActivity.onTaskComplete(paramGroup, this.mException);
    }

    protected void onPreExecute()
    {
      this.mActivity.onRefreshTaskStart();
    }

    public void setActivity(NearbySearchActivityPublicReport paramNearbySearchActivityPublicReport)
    {
      this.mActivity = paramNearbySearchActivityPublicReport;
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
        NearbySearchActivityPublicReport.this.getFilterFragment().onDataChanged(0);
      do
        return;
      while (paramMessage.what != 11);
      AsyncTaskUtils.execute(new NearbySearchActivityPublicReport.GetZoneTask(NearbySearchActivityPublicReport.this, NearbySearchActivityPublicReport.this));
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.act.NearbySearchActivityPublicReport
 * JD-Core Version:    0.6.0
 */