package com.cymobile.ymwork.act;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.Paint.Align;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;
import com.cymobile.ymwork.HomeApplication;
import com.cymobile.ymwork.SettingBase;
import com.cymobile.ymwork.adapter.ReportDataSource;
import com.cymobile.ymwork.preference.PreferencesUtils;
import com.cymobile.ymwork.server.Server;
import com.cymobile.ymwork.server.error.ServerException;
import com.cymobile.ymwork.types.BuildingReport;
import com.cymobile.ymwork.types.BuildingReportItem;
import com.cymobile.ymwork.types.Category;
import com.cymobile.ymwork.types.Group;
import com.cymobile.ymwork.types.Pair;
import com.cymobile.ymwork.types.Zone;
import com.cymobile.ymwork.utils.AsyncTaskUtils;
import com.cymobile.ymwork.utils.UiUtil;
import com.cymobile.ymwork.widget.LoadableListFragmentWithViewAndHeaderReport;
import com.cymobile.ymwork.widget.RangeFilterFragmentReport;
import com.cymobile.ymwork.widget.ShopRangeReportGroup;
import com.cymobile.ymwork.widget.ShopReportFragment;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.achartengine.ChartFactory;
import org.achartengine.GraphicalView;
import org.achartengine.chart.BarChart.Type;
import org.achartengine.model.CategorySeries;
import org.achartengine.model.XYMultipleSeriesDataset;
import org.achartengine.renderer.SimpleSeriesRenderer;
import org.achartengine.renderer.XYMultipleSeriesRenderer;

public class NewBuildingReportAct extends LoadableListFragmentWithViewAndHeaderReport
{
  private static final int MESSAGE_Intent_init_direct_search = 4;
  private static final int MESSAGE_Intent_init_search = 3;
  private final int DISMANTLE_REPORT = 1;
  private final int MESSAGE_CITY = 5;
  private final int MESSAGE_ISVISIBLE_STREET = 2;
  private final int MESSAGE_STREET = 6;
  private final int MESSAGE_UPDATE_REPORT = 1;
  private final int PROCEDURES_SETTLEMENT_REPORT = 2;
  private final int RANKING_REPORT = 0;
  private final int REVERSION_REPORT = 3;
  private int STREET_NO = 1;
  private Spinner Spinner_Street;
  private RelativeLayout btn_Street;
  private RelativeLayout btn_title;
  private String category;
  Context contexts;
  private XYMultipleSeriesDataset dataset;
  private boolean flag;
  private LinearLayout layout_report;
  private GraphicalView mChartView;
  Handler mHandler = new Handler()
  {
    public void handleMessage(Message paramMessage)
    {
      switch (paramMessage.what)
      {
      default:
        return;
      case 1:
        if (NewBuildingReportAct.this.category.length() == 6)
          if (NewBuildingReportAct.this.STREET_NO == 1)
          {
            NewBuildingReportAct.this.str_address = NewBuildingReportAct.this.getResources().getString(2131296465);
            NewBuildingReportAct.this.txt_title.setText(NewBuildingReportAct.this.str_address + NewBuildingReportAct.this.str_list_item);
            NewBuildingReportAct.this.btn_Street.setVisibility(0);
          }
        while (true)
        {
          NewBuildingReportAct.this.renderer = NewBuildingReportAct.this.getBarRenderer();
          NewBuildingReportAct.this.dataset = NewBuildingReportAct.this.getBarDataset();
          NewBuildingReportAct.this.initNames();
          NewBuildingReportAct.this.mChartView = ChartFactory.getBarChartView(NewBuildingReportAct.this, NewBuildingReportAct.this.dataset, NewBuildingReportAct.this.renderer, BarChart.Type.DEFAULT);
          NewBuildingReportAct.this.layout_report.removeAllViews();
          NewBuildingReportAct.this.layout_report.addView(NewBuildingReportAct.this.mChartView, new ViewGroup.LayoutParams(-1, -2));
          return;
          if (NewBuildingReportAct.this.STREET_NO != 2)
            break;
          NewBuildingReportAct.this.str_address = NewBuildingReportAct.this.getResources().getString(2131296491);
          break;
          NewBuildingReportAct.this.str_address = ShopReportFragment.street_name;
          NewBuildingReportAct.this.txt_title.setText(NewBuildingReportAct.this.str_address + NewBuildingReportAct.this.str_list_item);
          NewBuildingReportAct.this.btn_Street.setVisibility(4);
        }
      case 2:
        if (NewBuildingReportAct.this.category.length() == 6)
        {
          if (NewBuildingReportAct.this.STREET_NO == 1)
            NewBuildingReportAct.this.str_address = NewBuildingReportAct.this.getResources().getString(2131296465);
          while (true)
          {
            NewBuildingReportAct.this.txt_title.setText(NewBuildingReportAct.this.str_address + NewBuildingReportAct.this.str_list_item);
            NewBuildingReportAct.this.btn_Street.setVisibility(0);
            return;
            if (NewBuildingReportAct.this.STREET_NO != 2)
              continue;
            NewBuildingReportAct.this.str_address = NewBuildingReportAct.this.getResources().getString(2131296491);
          }
        }
        NewBuildingReportAct.this.str_address = ShopReportFragment.street_name;
        NewBuildingReportAct.this.txt_title.setText(NewBuildingReportAct.this.str_address + NewBuildingReportAct.this.str_list_item);
        NewBuildingReportAct.this.btn_Street.setVisibility(4);
        return;
      case 5:
        NewBuildingReportAct.this.txt_title.setText(NewBuildingReportAct.this.str_list_street + NewBuildingReportAct.this.str_list_item);
        return;
      case 6:
        NewBuildingReportAct.this.txt_title.setText(NewBuildingReportAct.this.str_list_street + NewBuildingReportAct.this.str_list_item);
        return;
      case 4:
        NewBuildingReportAct.this.getFilterFragment().onDataChanged(0);
        return;
      case 3:
      }
      AsyncTaskUtils.execute(new NewBuildingReportAct.GetZoneTask(NewBuildingReportAct.this, NewBuildingReportAct.this));
    }
  };
  private boolean mIsRunningTask;
  private ViewGroup mLayoutEmpty;
  private SharedPreferences mPrefs;
  private BuildingReport mShops;
  private Spinner mSpinner;
  private StateHolder mStateHolder;
  private XYMultipleSeriesRenderer renderer;
  private String str_address;
  private String str_list_item;
  private String str_list_street;
  private TextView txt_Street;
  private TextView txt_title;
  Group<Zone> userSubZones;
  private String userZoneId;
  private String userZoneName;

  private void initNames()
  {
    for (int i = 0; ; i++)
    {
      if (i >= this.mShops.getItems().size())
        return;
      this.renderer.addTextLabel(i + 1, ((BuildingReportItem)this.mShops.getItems().get(i)).getName());
    }
  }

  private void onTaskComplete(BuildingReport paramBuildingReport, Exception paramException)
  {
    this.mIsRunningTask = false;
    setProgressBarIndeterminateVisibility(false);
    if (paramException != null)
    {
      this.mHandler.sendEmptyMessage(2);
      setEmptyView(this.mLayoutEmpty);
      return;
    }
    ((LinearLayout)findViewById(16908292)).setVisibility(8);
    this.layout_report.setVisibility(0);
    this.mShops = paramBuildingReport;
    this.mHandler.sendEmptyMessage(1);
  }

  public void ensureUi()
  {
    ((ImageButton)findViewById(2131230765)).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        NewBuildingReportAct.this.onBackPressed();
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
          NewBuildingReportAct.this.mStateHolder.startTask(NewBuildingReportAct.this);
        }
      });
      ((Button)this.mLayoutEmpty.findViewById(2131230992)).setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramView)
        {
          NewBuildingReportAct.this.onBackPressed();
        }
      });
      this.mLayoutEmpty.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
      return;
    }
  }

  public void getBarChart()
  {
    this.renderer = getBarRenderer();
    this.dataset = getBarDataset();
    initNames();
    this.mChartView = ChartFactory.getBarChartView(this, this.dataset, this.renderer, BarChart.Type.DEFAULT);
    this.layout_report.addView(this.mChartView, new ViewGroup.LayoutParams(-1, -2));
  }

  public XYMultipleSeriesDataset getBarDataset()
  {
    XYMultipleSeriesDataset localXYMultipleSeriesDataset = new XYMultipleSeriesDataset();
    CategorySeries localCategorySeries = new CategorySeries("发案数");
    for (int i = 0; ; i++)
    {
      if (i >= this.mShops.getItems().size())
      {
        localXYMultipleSeriesDataset.addSeries(localCategorySeries.toXYSeries());
        return localXYMultipleSeriesDataset;
      }
      localCategorySeries.add(((BuildingReportItem)this.mShops.getItems().get(i)).getNumber());
    }
  }

  public XYMultipleSeriesRenderer getBarRenderer()
  {
    String str = ShopRangeReportGroup.rangeTypeToPair(getFilterFragment().getReportDataSource().curRange().intId()).name();
    XYMultipleSeriesRenderer localXYMultipleSeriesRenderer = new XYMultipleSeriesRenderer();
    SimpleSeriesRenderer localSimpleSeriesRenderer = new SimpleSeriesRenderer();
    localSimpleSeriesRenderer.setColor(-65536);
    localXYMultipleSeriesRenderer.addSeriesRenderer(localSimpleSeriesRenderer);
    localXYMultipleSeriesRenderer.setChartTitle(str + this.str_address + "新增建筑" + this.mShops.getNumber_all() + "件，新增建筑面积" + this.mShops.getArea_all() + "平米");
    localXYMultipleSeriesRenderer.setYTitle("发案数（件）");
    localXYMultipleSeriesRenderer.setAxisTitleTextSize(24.0F);
    localXYMultipleSeriesRenderer.setChartTitleTextSize(28.0F);
    localXYMultipleSeriesRenderer.setLabelsTextSize(24.0F);
    localXYMultipleSeriesRenderer.setLegendTextSize(24.0F);
    localXYMultipleSeriesRenderer.setChartValuesTextSize(24.0F);
    localXYMultipleSeriesRenderer.setAxesColor(-1);
    localXYMultipleSeriesRenderer.setLabelsColor(-1);
    localXYMultipleSeriesRenderer.setApplyBackgroundColor(true);
    localXYMultipleSeriesRenderer.setBackgroundColor(-16777216);
    localXYMultipleSeriesRenderer.setXAxisMin(0.2D);
    localXYMultipleSeriesRenderer.setBarSpacing(1.0D);
    int i = this.mShops.getItems().size();
    if (i > 10)
      localXYMultipleSeriesRenderer.setXAxisMax(10.5D);
    while (true)
    {
      localXYMultipleSeriesRenderer.setYAxisMin(0.0D);
      localXYMultipleSeriesRenderer.setYAxisMax(4 * this.mShops.getMaxnum() / 3);
      localXYMultipleSeriesRenderer.setZoomButtonsVisible(true);
      localXYMultipleSeriesRenderer.setZoomEnabled(true);
      localXYMultipleSeriesRenderer.setAntialiasing(true);
      localXYMultipleSeriesRenderer.setXLabelsAlign(Paint.Align.CENTER);
      localXYMultipleSeriesRenderer.setYLabelsAlign(Paint.Align.LEFT);
      localXYMultipleSeriesRenderer.setMargins(new int[] { 25, 30, 30, 20 });
      localXYMultipleSeriesRenderer.setPanEnabled(true, false);
      localXYMultipleSeriesRenderer.getSeriesRendererAt(0).setDisplayChartValues(true);
      localXYMultipleSeriesRenderer.setShowGrid(true);
      localXYMultipleSeriesRenderer.setXLabels(0);
      localXYMultipleSeriesRenderer.setXLabelsAngle(-15.0F);
      return localXYMultipleSeriesRenderer;
      if (i == 1)
      {
        localXYMultipleSeriesRenderer.setXAxisMax(0.5D + i);
        localXYMultipleSeriesRenderer.setBarWidth(30.0F);
        continue;
      }
      localXYMultipleSeriesRenderer.setXAxisMax(0.5D + i);
    }
  }

  public void getQueryTitle()
  {
    this.mPrefs = getSharedPreferences(SettingBase.class.getName(), 2);
    this.userZoneId = this.mPrefs.getString("key_GlobalZoneId", null);
    this.userZoneName = this.mPrefs.getString("key_GlobalZoneName", null);
    long l = Long.parseLong(this.userZoneId);
    if (this.userZoneId.length() == 6);
    for (String str = getResources().getString(2131296376); ; str = this.userZoneName)
    {
      ReportDataSource.resetTOPCategory(l, str);
      return;
    }
  }

  public StateHolder getStateHolder()
  {
    return this.mStateHolder;
  }

  public void onCreate(Bundle paramBundle)
  {
    requestWindowFeature(1);
    getQueryTitle();
    setContentView(2130903079);
    super.onCreate(paramBundle);
    this.contexts = this;
    label187: label253: String[] arrayOfString1;
    String[] arrayOfString2;
    ArrayList localArrayList;
    if (getLastNonConfigurationInstance() != null)
    {
      this.mStateHolder = ((StateHolder)getLastNonConfigurationInstance());
      this.mStateHolder.setActivity(this);
      this.layout_report = ((LinearLayout)findViewById(2131230885));
      this.btn_title = ((RelativeLayout)findViewById(2131230770));
      this.btn_Street = ((RelativeLayout)findViewById(2131230773));
      this.txt_title = ((TextView)findViewById(2131230771));
      this.txt_Street = ((TextView)findViewById(2131230774));
      this.mSpinner = ((Spinner)findViewById(2131230772));
      this.Spinner_Street = ((Spinner)findViewById(2131230775));
      this.mSpinner.showContextMenu();
      this.Spinner_Street.showContextMenu();
      if (this.userZoneId.length() != 6)
        break label433;
      this.btn_Street.setVisibility(0);
      ensureUi();
      String str = this.mPrefs.getString("key_GlobalZoneId", null);
      if (((str == null) || (str.length() != 12)) && ((PreferencesUtils.getSubZone() == null) || (PreferencesUtils.getSubZone().size() <= 0)))
        break label444;
      this.flag = true;
      this.mHandler.sendEmptyMessageDelayed(4, 50L);
      this.btn_title.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramView)
        {
          NewBuildingReportAct.this.mSpinner.performClick();
        }
      });
      this.btn_Street.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramView)
        {
          NewBuildingReportAct.this.Spinner_Street.performClick();
        }
      });
      arrayOfString1 = getResources().getStringArray(2131034121);
      arrayOfString2 = getResources().getStringArray(2131034126);
      localArrayList = new ArrayList();
    }
    for (int i = 0; ; i++)
    {
      if (i >= arrayOfString1.length)
      {
        ArrayAdapter localArrayAdapter1 = new ArrayAdapter(this, 17367049, localArrayList);
        ArrayAdapter localArrayAdapter2 = new ArrayAdapter(this, 17367049, arrayOfString2);
        this.mSpinner.setAdapter(localArrayAdapter1);
        this.Spinner_Street.setAdapter(localArrayAdapter2);
        4 local4 = new AdapterView.OnItemSelectedListener(localArrayList)
        {
          public void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
          {
            if (paramInt == 0)
            {
              NewBuildingReportAct.this.str_list_item = ((String)this.val$list.get(0)).toString();
              if (NewBuildingReportAct.this.STREET_NO == 1)
                NewBuildingReportAct.this.txt_title.setText(NewBuildingReportAct.this.getResources().getString(2131296465) + NewBuildingReportAct.this.str_list_item);
            }
            do
              while (true)
              {
                if (NewBuildingReportAct.this.mStateHolder.getIsRunningTask())
                  NewBuildingReportAct.this.getStateHolder().cancel();
                if (NewBuildingReportAct.this.flag)
                  NewBuildingReportAct.this.mStateHolder.startTask(NewBuildingReportAct.this);
                return;
                if (NewBuildingReportAct.this.STREET_NO != 2)
                  continue;
                NewBuildingReportAct.this.txt_title.setText(NewBuildingReportAct.this.str_list_street + NewBuildingReportAct.this.str_list_item);
              }
            while ((paramInt == 1) || (paramInt == 2));
          }

          public void onNothingSelected(AdapterView<?> paramAdapterView)
          {
          }
        };
        5 local5 = new AdapterView.OnItemSelectedListener(arrayOfString2)
        {
          public void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
          {
            if (paramInt == 0)
            {
              NewBuildingReportAct.this.str_list_street = this.val$streenItme[0].toString();
              NewBuildingReportAct.this.txt_Street.setText(NewBuildingReportAct.this.str_list_street);
              NewBuildingReportAct.this.STREET_NO = 1;
              NewBuildingReportAct.this.mHandler.sendEmptyMessage(5);
              if (NewBuildingReportAct.this.mStateHolder.getIsRunningTask())
                NewBuildingReportAct.this.getStateHolder().cancel();
              if (NewBuildingReportAct.this.flag)
                NewBuildingReportAct.this.mStateHolder.startTask(NewBuildingReportAct.this);
            }
            do
            {
              return;
              NewBuildingReportAct.this.flag = true;
              return;
            }
            while (paramInt != 1);
            NewBuildingReportAct.this.str_list_street = this.val$streenItme[1].toString();
            NewBuildingReportAct.this.txt_Street.setText(NewBuildingReportAct.this.str_list_street);
            NewBuildingReportAct.this.STREET_NO = 2;
            NewBuildingReportAct.this.mHandler.sendEmptyMessage(6);
            if (NewBuildingReportAct.this.mStateHolder.getIsRunningTask())
              NewBuildingReportAct.this.getStateHolder().cancel();
            NewBuildingReportAct.this.mStateHolder.startTask(NewBuildingReportAct.this);
          }

          public void onNothingSelected(AdapterView<?> paramAdapterView)
          {
          }
        };
        this.mSpinner.setOnItemSelectedListener(local4);
        this.Spinner_Street.setOnItemSelectedListener(local5);
        return;
        this.mStateHolder = new StateHolder();
        break;
        label433: this.btn_Street.setVisibility(4);
        break label187;
        label444: this.flag = false;
        this.mHandler.sendEmptyMessageDelayed(3, 10L);
        break label253;
      }
      localArrayList.add(arrayOfString1[i]);
    }
  }

  public void setEmptyView(View paramView)
  {
    ((LinearLayout)findViewById(16908292)).setVisibility(0);
    this.layout_report.setVisibility(8);
    LinearLayout localLinearLayout = (LinearLayout)findViewById(16908292);
    localLinearLayout.getChildAt(0).setVisibility(8);
    if (localLinearLayout.getChildCount() > 1)
      localLinearLayout.removeViewAt(1);
    localLinearLayout.addView(paramView);
  }

  private class GetZoneTask extends AsyncTask<Void, Void, Boolean>
  {
    private Exception mReason;

    public GetZoneTask(NewBuildingReportAct arg2)
    {
    }

    protected Boolean doInBackground(Void[] paramArrayOfVoid)
    {
      Server localServer = ((HomeApplication)NewBuildingReportAct.this.getApplication()).getServer();
      try
      {
        String str = NewBuildingReportAct.this.mPrefs.getString("key_GlobalZoneId", null);
        Group localGroup1 = localServer.getZone(NewBuildingReportAct.this.contexts, str);
        bool = false;
        Iterator localIterator;
        if (localGroup1 != null)
        {
          int i = localGroup1.size();
          bool = false;
          if (i > 0)
          {
            NewBuildingReportAct.this.userSubZones = localGroup1;
            if ((str == null) || (str.length() != 6))
              break label199;
            Group localGroup2 = localServer.getAllComm(NewBuildingReportAct.this.contexts);
            if ((localGroup2 != null) && (localGroup2.size() > 0))
              localIterator = localGroup2.iterator();
          }
        }
        while (true)
        {
          if (!localIterator.hasNext())
          {
            PreferencesUtils.setSubZone(NewBuildingReportAct.this.userSubZones);
            bool = true;
            return Boolean.valueOf(bool);
          }
          Zone localZone = (Zone)localIterator.next();
          NewBuildingReportAct.this.userSubZones.add(localZone);
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
          label199: PreferencesUtils.setSubZone(NewBuildingReportAct.this.userSubZones);
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
        Toast.makeText(NewBuildingReportAct.this, 2131296363, 1).show();
        return;
      }
      ReportDataSource.setCategory(PreferencesUtils.getSubZone());
      NewBuildingReportAct.this.getFilterFragment().onDataChanged(0);
    }

    protected void onPreExecute()
    {
    }
  }

  public class StateHolder
  {
    private boolean mRanOnce = false;
    private NewBuildingReportAct.TaskShops mTaskShops;

    public StateHolder()
    {
      NewBuildingReportAct.this.mIsRunningTask = false;
      NewBuildingReportAct.this.mShops = new BuildingReport();
    }

    public void cancel()
    {
      if (NewBuildingReportAct.this.mIsRunningTask);
      try
      {
        if (this.mTaskShops != null)
          this.mTaskShops.cancel(true);
        NewBuildingReportAct.this.mIsRunningTask = false;
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
      return NewBuildingReportAct.this.mIsRunningTask;
    }

    public boolean getRanOnce()
    {
      return this.mRanOnce;
    }

    public BuildingReport getShops()
    {
      return NewBuildingReportAct.this.mShops;
    }

    NewBuildingReportAct.TaskShops getTaskShops()
    {
      return this.mTaskShops;
    }

    public void setActivity(NewBuildingReportAct paramNewBuildingReportAct)
    {
      if (NewBuildingReportAct.this.mIsRunningTask)
        this.mTaskShops.setActivity(paramNewBuildingReportAct);
    }

    public void setIsRunningTask(boolean paramBoolean)
    {
      NewBuildingReportAct.this.mIsRunningTask = paramBoolean;
    }

    public void setRanOnce(boolean paramBoolean)
    {
      this.mRanOnce = paramBoolean;
    }

    public void startTask(NewBuildingReportAct paramNewBuildingReportAct)
    {
      if (!NewBuildingReportAct.this.mIsRunningTask)
      {
        NewBuildingReportAct.this.setProgressBarIndeterminateVisibility(true);
        this.mTaskShops = new NewBuildingReportAct.TaskShops(NewBuildingReportAct.this, paramNewBuildingReportAct);
        AsyncTaskUtils.execute(this.mTaskShops);
        NewBuildingReportAct.this.mIsRunningTask = true;
      }
    }
  }

  public class TaskShops extends AsyncTask<Void, Void, BuildingReport>
  {
    private NewBuildingReportAct mActivity;
    private Exception mException;
    private HomeApplication mHomeApplication;

    public TaskShops(NewBuildingReportAct arg2)
    {
      Object localObject;
      this.mHomeApplication = ((HomeApplication)localObject.getApplication());
      this.mActivity = localObject;
    }

    private BuildingReport shops()
      throws ServerException, IOException
    {
      ReportDataSource localReportDataSource = NewBuildingReportAct.this.getFilterFragment().getReportDataSource();
      NewBuildingReportAct.this.category = localReportDataSource.curCategory().id();
      if (NewBuildingReportAct.this.category.equals("0"))
        NewBuildingReportAct.this.category = NewBuildingReportAct.this.userZoneId;
      return this.mHomeApplication.getServer().buildingsReport(NewBuildingReportAct.this.contexts, NewBuildingReportAct.this.category, NewBuildingReportAct.this.STREET_NO, ReportDataSource.toDays(localReportDataSource.curRange().intId()), NewBuildingReportAct.this.userZoneId, ReportDataSource.getOrderDescStr(localReportDataSource.curFilterId().intId()));
    }

    public BuildingReport doInBackground(Void[] paramArrayOfVoid)
    {
      try
      {
        BuildingReport localBuildingReport = shops();
        return localBuildingReport;
      }
      catch (Exception localException)
      {
        this.mException = localException;
        localException.printStackTrace();
      }
      return null;
    }

    protected void onPostExecute(BuildingReport paramBuildingReport)
    {
      if (this.mActivity != null)
        this.mActivity.onTaskComplete(paramBuildingReport, this.mException);
    }

    protected void onPreExecute()
    {
      NewBuildingReportAct.this.setLoadingView();
    }

    public void setActivity(NewBuildingReportAct paramNewBuildingReportAct)
    {
      this.mActivity = paramNewBuildingReportAct;
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.act.NewBuildingReportAct
 * JD-Core Version:    0.6.0
 */