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
import com.cymobile.ymwork.types.ConstrustionFieldAvgItem;
import com.cymobile.ymwork.types.Group;
import com.cymobile.ymwork.types.Pair;
import com.cymobile.ymwork.types.Zone;
import com.cymobile.ymwork.utils.AsyncTaskUtils;
import com.cymobile.ymwork.utils.UiUtil;
import com.cymobile.ymwork.widget.LoadableListFragmentWithViewAndHeaderPublicReport1;
import com.cymobile.ymwork.widget.RangeFilterFragmentPublic_Report;
import com.cymobile.ymwork.widget.ShopRangeReportGroup;
import com.cymobile.ymwork.widget.ShopReportFragment;
import java.io.IOException;
import java.text.DecimalFormat;
import java.text.NumberFormat;
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

public class PublicReportAct extends LoadableListFragmentWithViewAndHeaderPublicReport1
{
  private static final int MESSAGE_Intent_init_direct_search = 4;
  private static final int MESSAGE_Intent_init_search = 3;
  private final int DISMANTLE_REPORT = 1;
  private final int MESSAGE_CITY = 5;
  private final int MESSAGE_ISVISIBLE_STREET = 2;
  private final int MESSAGE_STREET = 6;
  private final int MESSAGE_UPDATE_REPORT = 1;
  private final int RANKING_REPORT = 0;
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
        PublicReportAct.this.getTxt_title();
        PublicReportAct.this.renderer = PublicReportAct.this.getBarRenderer();
        PublicReportAct.this.dataset = PublicReportAct.this.getBarDataset();
        if (PublicReportAct.this.mark == 0)
          PublicReportAct.this.initNames1();
        while (true)
        {
          PublicReportAct.this.mChartView = ChartFactory.getBarChartView(PublicReportAct.this, PublicReportAct.this.dataset, PublicReportAct.this.renderer, BarChart.Type.DEFAULT);
          PublicReportAct.this.layout_report.removeAllViews();
          PublicReportAct.this.layout_report.addView(PublicReportAct.this.mChartView, new ViewGroup.LayoutParams(-1, -2));
          return;
          PublicReportAct.this.initNames2();
        }
      case 2:
        PublicReportAct.this.getTxt_title();
        return;
      case 5:
        PublicReportAct.this.txt_title.setText(PublicReportAct.this.str_list_street + PublicReportAct.this.str_list_item);
        return;
      case 6:
        PublicReportAct.this.txt_title.setText(PublicReportAct.this.str_list_street + PublicReportAct.this.str_list_item);
        PublicReportAct.this.mStateHolder.startTask(PublicReportAct.this);
        return;
      case 4:
        PublicReportAct.this.getFilterFragment().onDataChanged(0);
        return;
      case 3:
      }
      AsyncTaskUtils.execute(new PublicReportAct.GetZoneTask(PublicReportAct.this, PublicReportAct.this));
    }
  };
  private boolean mIsRunningTask;
  private ViewGroup mLayoutEmpty;
  private SharedPreferences mPrefs;
  private BuildingReport mShops;
  private Spinner mSpinner;
  private StateHolder mStateHolder;
  private int mark = 0;
  private XYMultipleSeriesRenderer renderer;
  private String str_address;
  private String str_list_item;
  private String str_list_street;
  private TextView txt_Street;
  private TextView txt_title;
  Group<Zone> userSubZones;
  private String userZoneId;
  private String userZoneName;

  private void initNames1()
  {
    for (int i = 0; ; i++)
    {
      if (i >= this.mShops.getItems().size())
        return;
      this.renderer.addTextLabel(i + 1, ((BuildingReportItem)this.mShops.getItems().get(i)).getName());
    }
  }

  private void initNames2()
  {
    for (int i = 0; ; i++)
    {
      if (i >= this.mShops.getAvgs().size())
        return;
      this.renderer.addTextLabel(i + 1, ((ConstrustionFieldAvgItem)this.mShops.getAvgs().get(i)).getName());
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
        PublicReportAct.this.onBackPressed();
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
          PublicReportAct.this.mStateHolder.startTask(PublicReportAct.this);
        }
      });
      ((Button)this.mLayoutEmpty.findViewById(2131230992)).setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramView)
        {
          PublicReportAct.this.onBackPressed();
        }
      });
      this.mLayoutEmpty.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
      return;
    }
  }

  public XYMultipleSeriesDataset getBarDataset()
  {
    XYMultipleSeriesDataset localXYMultipleSeriesDataset = new XYMultipleSeriesDataset();
    CategorySeries localCategorySeries;
    int i;
    if (this.mark == 0)
    {
      localCategorySeries = new CategorySeries("发案数");
      i = 0;
      if (i < this.mShops.getItems().size());
    }
    while (true)
    {
      localXYMultipleSeriesDataset.addSeries(localCategorySeries.toXYSeries());
      return localXYMultipleSeriesDataset;
      localCategorySeries.add(((BuildingReportItem)this.mShops.getItems().get(i)).getNumber());
      i++;
      break;
      int j = this.mark;
      localCategorySeries = null;
      if (j != 1)
        continue;
      localCategorySeries = new CategorySeries("结案率");
      for (int k = 0; k < this.mShops.getAvgs().size(); k++)
      {
        double d = 100.0D * Double.parseDouble(((ConstrustionFieldAvgItem)this.mShops.getAvgs().get(k)).getAvg());
        localCategorySeries.add(Double.parseDouble(new DecimalFormat("###.0").format(d)));
      }
    }
  }

  public XYMultipleSeriesRenderer getBarRenderer()
  {
    String str = ShopRangeReportGroup.rangeTypeToPair(getFilterFragment().getReportDataSource().curRange().intId()).name();
    XYMultipleSeriesRenderer localXYMultipleSeriesRenderer = new XYMultipleSeriesRenderer();
    SimpleSeriesRenderer localSimpleSeriesRenderer = new SimpleSeriesRenderer();
    localSimpleSeriesRenderer.setColor(-65536);
    localXYMultipleSeriesRenderer.addSeriesRenderer(localSimpleSeriesRenderer);
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
    if (this.mark == 0)
    {
      localXYMultipleSeriesRenderer.setYTitle("发案数（件）");
      localXYMultipleSeriesRenderer.setChartTitle(str + this.str_address + "公众举报投诉发案数" + this.mShops.getNumber_all() + "件");
    }
    while (true)
    {
      try
      {
        int n = this.mShops.getItems().size();
        j = n;
        if (j <= 10)
          break label466;
        localXYMultipleSeriesRenderer.setXAxisMax(10.5D);
        localXYMultipleSeriesRenderer.setYAxisMin(0.0D);
        int k = this.mShops.getMaxnum();
        if (this.mark != 0)
          break label507;
        localXYMultipleSeriesRenderer.setYAxisMax(k * 4 / 3);
        localXYMultipleSeriesRenderer.setZoomButtonsVisible(true);
        localXYMultipleSeriesRenderer.setZoomEnabled(true);
        localXYMultipleSeriesRenderer.setAntialiasing(true);
        localXYMultipleSeriesRenderer.setXLabelsAlign(Paint.Align.CENTER);
        localXYMultipleSeriesRenderer.setYLabelsAlign(Paint.Align.LEFT);
        localXYMultipleSeriesRenderer.setMargins(new int[] { 25, 30, 30, 20 });
        localXYMultipleSeriesRenderer.setPanEnabled(true, false);
        localXYMultipleSeriesRenderer.isPanXEnabled();
        localXYMultipleSeriesRenderer.getSeriesRendererAt(0).setDisplayChartValues(true);
        localXYMultipleSeriesRenderer.setShowGrid(true);
        localXYMultipleSeriesRenderer.setXLabels(0);
        localXYMultipleSeriesRenderer.setXLabelsAngle(-15.0F);
        return localXYMultipleSeriesRenderer;
      }
      catch (Exception localException2)
      {
        localException2.printStackTrace();
        j = 0;
        continue;
      }
      int i = this.mark;
      int j = 0;
      if (i != 1)
        continue;
      double d = 100.0D * Double.parseDouble(this.mShops.getAvgsum());
      localXYMultipleSeriesRenderer.setYTitle("结案率（%）");
      localXYMultipleSeriesRenderer.setChartTitle(str + this.str_address + "公众举报投诉结案率" + NumberFormat.getInstance().format(d) + "%");
      try
      {
        int m = this.mShops.getAvgs().size();
        j = m;
      }
      catch (Exception localException1)
      {
        localException1.printStackTrace();
        j = 0;
      }
      continue;
      label466: if (j == 1)
      {
        localXYMultipleSeriesRenderer.setXAxisMax(0.5D + j);
        localXYMultipleSeriesRenderer.setBarWidth(30.0F);
        continue;
      }
      localXYMultipleSeriesRenderer.setXAxisMax(0.5D + j);
      continue;
      label507: if (this.mark != 1)
        continue;
      localXYMultipleSeriesRenderer.setYAxisMax(110.0D);
    }
  }

  public void getCancel()
  {
    try
    {
      if (this.mStateHolder.getIsRunningTask())
        getStateHolder().cancel();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
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

  public void getTxt_title()
  {
    if (this.category.length() == 6)
    {
      if (this.STREET_NO == 1)
        this.str_address = getResources().getString(2131296465);
      while (true)
      {
        this.txt_title.setText(this.str_address + this.str_list_item);
        this.btn_Street.setVisibility(0);
        return;
        if (this.STREET_NO != 2)
          continue;
        this.str_address = getResources().getString(2131296491);
      }
    }
    this.str_address = ShopReportFragment.street_name;
    this.txt_title.setText(this.str_address + this.str_list_item);
    this.btn_Street.setVisibility(4);
  }

  public void onCreate(Bundle paramBundle)
  {
    requestWindowFeature(1);
    getQueryTitle();
    setContentView(2130903079);
    super.onCreate(paramBundle);
    this.contexts = this;
    label187: label253: String[] arrayOfString1;
    ArrayList localArrayList;
    String[] arrayOfString2;
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
        break label438;
      this.btn_Street.setVisibility(0);
      ensureUi();
      String str = this.mPrefs.getString("key_GlobalZoneId", null);
      if (((str == null) || (str.length() != 12)) && ((PreferencesUtils.getSubZone() == null) || (PreferencesUtils.getSubZone().size() <= 0)))
        break label449;
      this.flag = true;
      this.mHandler.sendEmptyMessageDelayed(4, 50L);
      this.btn_title.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramView)
        {
          PublicReportAct.this.mSpinner.performClick();
        }
      });
      this.btn_Street.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramView)
        {
          PublicReportAct.this.Spinner_Street.performClick();
        }
      });
      arrayOfString1 = getResources().getStringArray(2131034126);
      localArrayList = new ArrayList();
      ((String[])null);
      arrayOfString2 = getResources().getStringArray(2131034125);
    }
    for (int i = 0; ; i++)
    {
      if (i >= arrayOfString2.length)
      {
        ArrayAdapter localArrayAdapter1 = new ArrayAdapter(this, 17367049, localArrayList);
        ArrayAdapter localArrayAdapter2 = new ArrayAdapter(this, 17367049, arrayOfString1);
        this.mSpinner.setAdapter(localArrayAdapter1);
        this.Spinner_Street.setAdapter(localArrayAdapter2);
        4 local4 = new AdapterView.OnItemSelectedListener(localArrayList)
        {
          public void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
          {
            if (paramInt == 0)
            {
              PublicReportAct.this.mark = 0;
              PublicReportAct.this.str_list_item = ((String)this.val$list.get(0)).toString();
              if (PublicReportAct.this.STREET_NO == 1)
                PublicReportAct.this.txt_title.setText(PublicReportAct.this.getResources().getString(2131296465) + PublicReportAct.this.str_list_item);
            }
            do
              while (true)
              {
                PublicReportAct.this.getCancel();
                if (PublicReportAct.this.flag)
                  PublicReportAct.this.mStateHolder.startTask(PublicReportAct.this);
                return;
                if (PublicReportAct.this.STREET_NO != 2)
                  continue;
                PublicReportAct.this.txt_title.setText(PublicReportAct.this.str_list_street + PublicReportAct.this.str_list_item);
              }
            while (paramInt != 1);
            PublicReportAct.this.mark = 1;
            PublicReportAct.this.str_list_item = ((String)this.val$list.get(1)).toString();
            if (PublicReportAct.this.STREET_NO == 1)
              PublicReportAct.this.txt_title.setText(PublicReportAct.this.getResources().getString(2131296465) + PublicReportAct.this.str_list_item);
            while (true)
            {
              PublicReportAct.this.getCancel();
              if (!PublicReportAct.this.flag)
                break;
              PublicReportAct.this.mStateHolder.startTask(PublicReportAct.this);
              return;
              if (PublicReportAct.this.STREET_NO != 2)
                continue;
              PublicReportAct.this.txt_title.setText(PublicReportAct.this.str_list_street + PublicReportAct.this.str_list_item);
            }
          }

          public void onNothingSelected(AdapterView<?> paramAdapterView)
          {
          }
        };
        5 local5 = new AdapterView.OnItemSelectedListener(arrayOfString1)
        {
          public void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
          {
            if (paramInt == 0)
            {
              PublicReportAct.this.str_list_street = this.val$streenItme[0].toString();
              PublicReportAct.this.txt_Street.setText(PublicReportAct.this.str_list_street);
              PublicReportAct.this.STREET_NO = 1;
              PublicReportAct.this.mHandler.sendEmptyMessage(5);
              PublicReportAct.this.getCancel();
              if (PublicReportAct.this.flag)
                PublicReportAct.this.mStateHolder.startTask(PublicReportAct.this);
            }
            do
            {
              return;
              PublicReportAct.this.flag = true;
              return;
            }
            while (paramInt != 1);
            PublicReportAct.this.str_list_street = this.val$streenItme[1].toString();
            PublicReportAct.this.txt_Street.setText(PublicReportAct.this.str_list_street);
            PublicReportAct.this.STREET_NO = 2;
            PublicReportAct.this.mHandler.sendEmptyMessage(6);
            PublicReportAct.this.getCancel();
            PublicReportAct.this.mStateHolder.startTask(PublicReportAct.this);
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
        label438: this.btn_Street.setVisibility(4);
        break label187;
        label449: this.flag = false;
        this.mHandler.sendEmptyMessageDelayed(3, 10L);
        break label253;
      }
      localArrayList.add(arrayOfString2[i]);
    }
  }

  public void onDestroy()
  {
    super.onDestroy();
    try
    {
      if (getStateHolder() != null)
        getStateHolder().cancel();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  protected void onPause()
  {
    super.onPause();
    if (isFinishing())
      this.mStateHolder.cancel();
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

    public GetZoneTask(PublicReportAct arg2)
    {
    }

    protected Boolean doInBackground(Void[] paramArrayOfVoid)
    {
      Server localServer = ((HomeApplication)PublicReportAct.this.getApplication()).getServer();
      try
      {
        String str = PublicReportAct.this.mPrefs.getString("key_GlobalZoneId", null);
        Group localGroup1 = localServer.getZone(PublicReportAct.this.contexts, str);
        bool = false;
        Iterator localIterator;
        if (localGroup1 != null)
        {
          int i = localGroup1.size();
          bool = false;
          if (i > 0)
          {
            PublicReportAct.this.userSubZones = localGroup1;
            if ((str == null) || (str.length() != 6))
              break label199;
            Group localGroup2 = localServer.getAllComm(PublicReportAct.this.contexts);
            if ((localGroup2 != null) && (localGroup2.size() > 0))
              localIterator = localGroup2.iterator();
          }
        }
        while (true)
        {
          if (!localIterator.hasNext())
          {
            PreferencesUtils.setSubZone(PublicReportAct.this.userSubZones);
            bool = true;
            return Boolean.valueOf(bool);
          }
          Zone localZone = (Zone)localIterator.next();
          PublicReportAct.this.userSubZones.add(localZone);
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
          label199: PreferencesUtils.setSubZone(PublicReportAct.this.userSubZones);
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
        Toast.makeText(PublicReportAct.this, 2131296363, 1).show();
        return;
      }
      ReportDataSource.setCategory(PreferencesUtils.getSubZone());
      PublicReportAct.this.getFilterFragment().onDataChanged(0);
    }

    protected void onPreExecute()
    {
    }
  }

  public class StateHolder
  {
    private boolean mRanOnce = false;
    private PublicReportAct.TaskShops mTaskShops;

    public StateHolder()
    {
      PublicReportAct.this.mIsRunningTask = false;
      PublicReportAct.this.mShops = new BuildingReport();
    }

    public void cancel()
    {
      if (PublicReportAct.this.mIsRunningTask);
      try
      {
        if (this.mTaskShops != null)
          this.mTaskShops.cancel(true);
        PublicReportAct.this.mIsRunningTask = false;
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
      return PublicReportAct.this.mIsRunningTask;
    }

    public boolean getRanOnce()
    {
      return this.mRanOnce;
    }

    public BuildingReport getShops()
    {
      return PublicReportAct.this.mShops;
    }

    PublicReportAct.TaskShops getTaskShops()
    {
      return this.mTaskShops;
    }

    public void setActivity(PublicReportAct paramPublicReportAct)
    {
      if (PublicReportAct.this.mIsRunningTask)
        this.mTaskShops.setActivity(paramPublicReportAct);
    }

    public void setIsRunningTask(boolean paramBoolean)
    {
      PublicReportAct.this.mIsRunningTask = paramBoolean;
    }

    public void setRanOnce(boolean paramBoolean)
    {
      this.mRanOnce = paramBoolean;
    }

    public void startTask(PublicReportAct paramPublicReportAct)
    {
      if (!PublicReportAct.this.mIsRunningTask)
      {
        PublicReportAct.this.setProgressBarIndeterminateVisibility(true);
        this.mTaskShops = new PublicReportAct.TaskShops(PublicReportAct.this, paramPublicReportAct);
        AsyncTaskUtils.execute(this.mTaskShops);
        PublicReportAct.this.mIsRunningTask = true;
      }
    }
  }

  public class TaskShops extends AsyncTask<Void, Void, BuildingReport>
  {
    private PublicReportAct mActivity;
    private Exception mException;
    private HomeApplication mHomeApplication;

    public TaskShops(PublicReportAct arg2)
    {
      Object localObject;
      this.mHomeApplication = ((HomeApplication)localObject.getApplication());
      this.mActivity = localObject;
    }

    private BuildingReport shops()
      throws ServerException, IOException
    {
      ReportDataSource localReportDataSource = PublicReportAct.this.getFilterFragment().getReportDataSource();
      PublicReportAct.this.category = localReportDataSource.curCategory().id();
      if (PublicReportAct.this.category.equals("0"))
        PublicReportAct.this.category = PublicReportAct.this.userZoneId;
      BuildingReport localBuildingReport;
      if (PublicReportAct.this.mark == 0)
        localBuildingReport = this.mHomeApplication.getServer().PublicReport(PublicReportAct.this.contexts, PublicReportAct.this.category, PublicReportAct.this.STREET_NO, ReportDataSource.toDays(localReportDataSource.curRange().intId()), PublicReportAct.this.userZoneId, ReportDataSource.getOrderDescStr(localReportDataSource.curFilterId().intId()));
      int i;
      do
      {
        return localBuildingReport;
        i = PublicReportAct.this.mark;
        localBuildingReport = null;
      }
      while (i != 1);
      return this.mHomeApplication.getServer().PublicReport2(PublicReportAct.this.contexts, PublicReportAct.this.category, PublicReportAct.this.STREET_NO, ReportDataSource.toDays(localReportDataSource.curRange().intId()), PublicReportAct.this.userZoneId, ReportDataSource.getOrderDescStr(localReportDataSource.curFilterId().intId()));
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
      PublicReportAct.this.setLoadingView();
    }

    public void setActivity(PublicReportAct paramPublicReportAct)
    {
      this.mActivity = paramPublicReportAct;
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.act.PublicReportAct
 * JD-Core Version:    0.6.0
 */