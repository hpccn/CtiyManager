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
import com.cymobile.ymwork.widget.LoadableListFragmentWithViewAndHeaderConstructionReport;
import com.cymobile.ymwork.widget.RangeFilterFragmentConstructionReport;
import com.cymobile.ymwork.widget.ShopRangeReportGroup;
import com.cymobile.ymwork.widget.ShopReportFragment;
import java.io.IOException;
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

public class ConstrustionFieldReportAct extends LoadableListFragmentWithViewAndHeaderConstructionReport
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
        ConstrustionFieldReportAct.this.getTxt_title();
        ConstrustionFieldReportAct.this.renderer = ConstrustionFieldReportAct.this.getBarRenderer();
        ConstrustionFieldReportAct.this.dataset = ConstrustionFieldReportAct.this.getBarDataset();
        if (ConstrustionFieldReportAct.this.mark == 0)
          ConstrustionFieldReportAct.this.initNames1();
        while (true)
        {
          ConstrustionFieldReportAct.this.mChartView = ChartFactory.getBarChartView(ConstrustionFieldReportAct.this, ConstrustionFieldReportAct.this.dataset, ConstrustionFieldReportAct.this.renderer, BarChart.Type.DEFAULT);
          ConstrustionFieldReportAct.this.layout_report.removeAllViews();
          ConstrustionFieldReportAct.this.layout_report.addView(ConstrustionFieldReportAct.this.mChartView, new ViewGroup.LayoutParams(-1, -2));
          return;
          if (ConstrustionFieldReportAct.this.mark == 1)
          {
            ConstrustionFieldReportAct.this.initNames2();
            continue;
          }
          if (ConstrustionFieldReportAct.this.mark != 3)
            continue;
          ConstrustionFieldReportAct.this.initNames4();
        }
      case 2:
        ConstrustionFieldReportAct.this.getTxt_title();
        return;
      case 5:
        ConstrustionFieldReportAct.this.txt_title.setText(ConstrustionFieldReportAct.this.str_list_street + ConstrustionFieldReportAct.this.str_list_item);
        return;
      case 6:
        ConstrustionFieldReportAct.this.txt_title.setText(ConstrustionFieldReportAct.this.str_list_street + ConstrustionFieldReportAct.this.str_list_item);
        ConstrustionFieldReportAct.this.mStateHolder.startTask(ConstrustionFieldReportAct.this);
        return;
      case 4:
        ConstrustionFieldReportAct.this.getFilterFragment().onDataChanged(0);
        return;
      case 3:
      }
      AsyncTaskUtils.execute(new ConstrustionFieldReportAct.GetZoneTask(ConstrustionFieldReportAct.this, ConstrustionFieldReportAct.this));
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
    int i = 0;
    if (i >= this.mShops.getItems().size())
      return;
    String str = ((BuildingReportItem)this.mShops.getItems().get(i)).getName() + " - " + ((BuildingReportItem)this.mShops.getItems().get(i)).getUnitname();
    StringBuffer localStringBuffer1 = new StringBuffer(str);
    if ((str.length() > 6) && (str.length() < 18))
      this.renderer.addTextLabel(i + 1, localStringBuffer1.insert(str.length() / 2, "\n").toString());
    while (true)
    {
      i++;
      break;
      if (str.length() < 18)
        continue;
      StringBuffer localStringBuffer2 = localStringBuffer1.insert(str.length() / 3, "\n");
      this.renderer.addTextLabel(i + 1, localStringBuffer1.insert(2 * (localStringBuffer2.length() / 3), "\n").toString());
    }
  }

  private void initNames4()
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
        ConstrustionFieldReportAct.this.onBackPressed();
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
          ConstrustionFieldReportAct.this.mStateHolder.startTask(ConstrustionFieldReportAct.this);
        }
      });
      ((Button)this.mLayoutEmpty.findViewById(2131230992)).setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramView)
        {
          ConstrustionFieldReportAct.this.onBackPressed();
        }
      });
      this.mLayoutEmpty.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
      return;
    }
  }

  public XYMultipleSeriesDataset getBarDataset()
  {
    XYMultipleSeriesDataset localXYMultipleSeriesDataset = new XYMultipleSeriesDataset();
    CategorySeries localCategorySeries = new CategorySeries("发案数");
    int i;
    if ((this.mark == 1) || (this.mark == 0))
    {
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
      if (this.mark != 3)
        continue;
      for (int j = 0; j < this.mShops.getAvgs().size(); j++)
        localCategorySeries.add(Double.parseDouble(((ConstrustionFieldAvgItem)this.mShops.getAvgs().get(j)).getAvg()));
    }
  }

  public XYMultipleSeriesRenderer getBarRenderer()
  {
    String str = ShopRangeReportGroup.rangeTypeToPair(getFilterFragment().getReportDataSource().curRange().intId()).name();
    XYMultipleSeriesRenderer localXYMultipleSeriesRenderer = new XYMultipleSeriesRenderer();
    SimpleSeriesRenderer localSimpleSeriesRenderer = new SimpleSeriesRenderer();
    localSimpleSeriesRenderer.setColor(-65536);
    localXYMultipleSeriesRenderer.addSeriesRenderer(localSimpleSeriesRenderer);
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
    if (this.mark == 0)
      localXYMultipleSeriesRenderer.setChartTitle(str + this.str_address + "土方工地发案数" + this.mShops.getNumber_all() + "件");
    while (true)
    {
      try
      {
        int i1 = this.mShops.getItems().size();
        n = i1;
        if (n <= 10)
          continue;
        localXYMultipleSeriesRenderer.setXAxisMax(10.5D);
        localXYMultipleSeriesRenderer.setYAxisMin(0.0D);
        localXYMultipleSeriesRenderer.setYAxisMax(4 * this.mShops.getMaxnum() / 3);
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
      catch (Exception localException3)
      {
        localException3.printStackTrace();
        int n = 0;
        continue;
        if (n != 1)
          continue;
        localXYMultipleSeriesRenderer.setXAxisMax(0.5D + n);
        localXYMultipleSeriesRenderer.setBarWidth(30.0F);
        continue;
        localXYMultipleSeriesRenderer.setXAxisMax(0.5D + n);
        continue;
      }
      if (this.mark == 1)
      {
        localXYMultipleSeriesRenderer.setChartTitle(str + this.str_address + "工地发案数" + this.mShops.getNumber_all() + "件");
        try
        {
          int m = this.mShops.getItems().size();
          k = m;
          if (k > 5)
            localXYMultipleSeriesRenderer.setXAxisMax(5.5D);
        }
        catch (Exception localException2)
        {
          int k;
          while (true)
          {
            localException2.printStackTrace();
            k = 0;
          }
          if (k == 1)
          {
            localXYMultipleSeriesRenderer.setXAxisMax(0.5D + k);
            localXYMultipleSeriesRenderer.setBarWidth(30.0F);
            continue;
          }
          localXYMultipleSeriesRenderer.setXAxisMax(0.5D + k);
        }
        continue;
      }
      if (this.mark != 3)
        continue;
      double d = Double.parseDouble(this.mShops.getAvgsum());
      localXYMultipleSeriesRenderer.setChartTitle(str + this.str_address + "土方工地平均发案数" + NumberFormat.getInstance().format(d) + "件");
      try
      {
        int j = this.mShops.getAvgs().size();
        i = j;
        if (i > 10)
          localXYMultipleSeriesRenderer.setXAxisMax(10.5D);
      }
      catch (Exception localException1)
      {
        int i;
        while (true)
        {
          localException1.printStackTrace();
          i = 0;
        }
        if (i == 1)
        {
          localXYMultipleSeriesRenderer.setXAxisMax(0.5D + i);
          localXYMultipleSeriesRenderer.setBarWidth(30.0F);
          continue;
        }
        localXYMultipleSeriesRenderer.setXAxisMax(0.5D + i);
      }
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
          ConstrustionFieldReportAct.this.mSpinner.performClick();
        }
      });
      this.btn_Street.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramView)
        {
          ConstrustionFieldReportAct.this.Spinner_Street.performClick();
        }
      });
      arrayOfString1 = getResources().getStringArray(2131034126);
      localArrayList = new ArrayList();
      ((String[])null);
      arrayOfString2 = getResources().getStringArray(2131034122);
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
              ConstrustionFieldReportAct.this.mark = 0;
              ConstrustionFieldReportAct.this.str_list_item = ((String)this.val$list.get(0)).toString();
              if (ConstrustionFieldReportAct.this.STREET_NO == 1)
                ConstrustionFieldReportAct.this.txt_title.setText(ConstrustionFieldReportAct.this.getResources().getString(2131296465) + ConstrustionFieldReportAct.this.str_list_item);
            }
            label122: 
            do
            {
              break label122;
              while (true)
              {
                ConstrustionFieldReportAct.this.getCancel();
                if (ConstrustionFieldReportAct.this.flag)
                  ConstrustionFieldReportAct.this.mStateHolder.startTask(ConstrustionFieldReportAct.this);
                return;
                if (ConstrustionFieldReportAct.this.STREET_NO != 2)
                  continue;
                ConstrustionFieldReportAct.this.txt_title.setText(ConstrustionFieldReportAct.this.str_list_street + ConstrustionFieldReportAct.this.str_list_item);
              }
              if (paramInt != 1)
                continue;
              ConstrustionFieldReportAct.this.mark = 1;
              ConstrustionFieldReportAct.this.str_list_item = ((String)this.val$list.get(1)).toString();
              if (ConstrustionFieldReportAct.this.STREET_NO == 1)
                ConstrustionFieldReportAct.this.txt_title.setText(ConstrustionFieldReportAct.this.getResources().getString(2131296465) + ConstrustionFieldReportAct.this.str_list_item);
              while (true)
              {
                ConstrustionFieldReportAct.this.getCancel();
                if (!ConstrustionFieldReportAct.this.flag)
                  break;
                ConstrustionFieldReportAct.this.mStateHolder.startTask(ConstrustionFieldReportAct.this);
                return;
                if (ConstrustionFieldReportAct.this.STREET_NO != 2)
                  continue;
                ConstrustionFieldReportAct.this.txt_title.setText(ConstrustionFieldReportAct.this.str_list_street + ConstrustionFieldReportAct.this.str_list_item);
              }
            }
            while (paramInt != 2);
            ConstrustionFieldReportAct.this.mark = 3;
            ConstrustionFieldReportAct.this.str_list_item = ((String)this.val$list.get(2)).toString();
            if (ConstrustionFieldReportAct.this.STREET_NO == 1)
              ConstrustionFieldReportAct.this.txt_title.setText(ConstrustionFieldReportAct.this.getResources().getString(2131296465) + ConstrustionFieldReportAct.this.str_list_item);
            while (true)
            {
              ConstrustionFieldReportAct.this.getCancel();
              if (!ConstrustionFieldReportAct.this.flag)
                break;
              ConstrustionFieldReportAct.this.mStateHolder.startTask(ConstrustionFieldReportAct.this);
              return;
              if (ConstrustionFieldReportAct.this.STREET_NO != 2)
                continue;
              ConstrustionFieldReportAct.this.txt_title.setText(ConstrustionFieldReportAct.this.str_list_street + ConstrustionFieldReportAct.this.str_list_item);
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
              ConstrustionFieldReportAct.this.str_list_street = this.val$streenItme[0].toString();
              ConstrustionFieldReportAct.this.txt_Street.setText(ConstrustionFieldReportAct.this.str_list_street);
              ConstrustionFieldReportAct.this.STREET_NO = 1;
              ConstrustionFieldReportAct.this.mHandler.sendEmptyMessage(5);
              ConstrustionFieldReportAct.this.getCancel();
              if (ConstrustionFieldReportAct.this.flag)
                ConstrustionFieldReportAct.this.mStateHolder.startTask(ConstrustionFieldReportAct.this);
            }
            do
            {
              return;
              ConstrustionFieldReportAct.this.flag = true;
              return;
            }
            while (paramInt != 1);
            ConstrustionFieldReportAct.this.str_list_street = this.val$streenItme[1].toString();
            ConstrustionFieldReportAct.this.txt_Street.setText(ConstrustionFieldReportAct.this.str_list_street);
            ConstrustionFieldReportAct.this.STREET_NO = 2;
            ConstrustionFieldReportAct.this.mHandler.sendEmptyMessage(6);
            ConstrustionFieldReportAct.this.getCancel();
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

    public GetZoneTask(ConstrustionFieldReportAct arg2)
    {
    }

    protected Boolean doInBackground(Void[] paramArrayOfVoid)
    {
      Server localServer = ((HomeApplication)ConstrustionFieldReportAct.this.getApplication()).getServer();
      try
      {
        String str = ConstrustionFieldReportAct.this.mPrefs.getString("key_GlobalZoneId", null);
        Group localGroup1 = localServer.getZone(ConstrustionFieldReportAct.this.contexts, str);
        bool = false;
        Iterator localIterator;
        if (localGroup1 != null)
        {
          int i = localGroup1.size();
          bool = false;
          if (i > 0)
          {
            ConstrustionFieldReportAct.this.userSubZones = localGroup1;
            if ((str == null) || (str.length() != 6))
              break label199;
            Group localGroup2 = localServer.getAllComm(ConstrustionFieldReportAct.this.contexts);
            if ((localGroup2 != null) && (localGroup2.size() > 0))
              localIterator = localGroup2.iterator();
          }
        }
        while (true)
        {
          if (!localIterator.hasNext())
          {
            PreferencesUtils.setSubZone(ConstrustionFieldReportAct.this.userSubZones);
            bool = true;
            return Boolean.valueOf(bool);
          }
          Zone localZone = (Zone)localIterator.next();
          ConstrustionFieldReportAct.this.userSubZones.add(localZone);
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
          label199: PreferencesUtils.setSubZone(ConstrustionFieldReportAct.this.userSubZones);
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
        Toast.makeText(ConstrustionFieldReportAct.this, 2131296363, 1).show();
        return;
      }
      ReportDataSource.setCategory(PreferencesUtils.getSubZone());
      ConstrustionFieldReportAct.this.getFilterFragment().onDataChanged(0);
    }

    protected void onPreExecute()
    {
    }
  }

  public class StateHolder
  {
    private boolean mRanOnce = false;
    private ConstrustionFieldReportAct.TaskShops mTaskShops;

    public StateHolder()
    {
      ConstrustionFieldReportAct.this.mIsRunningTask = false;
      ConstrustionFieldReportAct.this.mShops = new BuildingReport();
    }

    public void cancel()
    {
      if (ConstrustionFieldReportAct.this.mIsRunningTask);
      try
      {
        if (this.mTaskShops != null)
          this.mTaskShops.cancel(true);
        ConstrustionFieldReportAct.this.mIsRunningTask = false;
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
      return ConstrustionFieldReportAct.this.mIsRunningTask;
    }

    public boolean getRanOnce()
    {
      return this.mRanOnce;
    }

    public BuildingReport getShops()
    {
      return ConstrustionFieldReportAct.this.mShops;
    }

    ConstrustionFieldReportAct.TaskShops getTaskShops()
    {
      return this.mTaskShops;
    }

    public void setActivity(ConstrustionFieldReportAct paramConstrustionFieldReportAct)
    {
      if (ConstrustionFieldReportAct.this.mIsRunningTask)
        this.mTaskShops.setActivity(paramConstrustionFieldReportAct);
    }

    public void setIsRunningTask(boolean paramBoolean)
    {
      ConstrustionFieldReportAct.this.mIsRunningTask = paramBoolean;
    }

    public void setRanOnce(boolean paramBoolean)
    {
      this.mRanOnce = paramBoolean;
    }

    public void startTask(ConstrustionFieldReportAct paramConstrustionFieldReportAct)
    {
      if (!ConstrustionFieldReportAct.this.mIsRunningTask)
      {
        ConstrustionFieldReportAct.this.setProgressBarIndeterminateVisibility(true);
        this.mTaskShops = new ConstrustionFieldReportAct.TaskShops(ConstrustionFieldReportAct.this, paramConstrustionFieldReportAct);
        AsyncTaskUtils.execute(this.mTaskShops);
        ConstrustionFieldReportAct.this.mIsRunningTask = true;
      }
    }
  }

  public class TaskShops extends AsyncTask<Void, Void, BuildingReport>
  {
    private ConstrustionFieldReportAct mActivity;
    private Exception mException;
    private HomeApplication mHomeApplication;

    public TaskShops(ConstrustionFieldReportAct arg2)
    {
      Object localObject;
      this.mHomeApplication = ((HomeApplication)localObject.getApplication());
      this.mActivity = localObject;
    }

    private BuildingReport shops()
      throws ServerException, IOException
    {
      ReportDataSource localReportDataSource = ConstrustionFieldReportAct.this.getFilterFragment().getReportDataSource();
      ConstrustionFieldReportAct.this.category = localReportDataSource.curCategory().id();
      if (ConstrustionFieldReportAct.this.category.equals("0"))
        ConstrustionFieldReportAct.this.category = ConstrustionFieldReportAct.this.userZoneId;
      BuildingReport localBuildingReport;
      if (ConstrustionFieldReportAct.this.mark == 0)
        localBuildingReport = this.mHomeApplication.getServer().ConstrustionFieldReport1(ConstrustionFieldReportAct.this.contexts, ConstrustionFieldReportAct.this.category, ConstrustionFieldReportAct.this.STREET_NO, ReportDataSource.toDays(localReportDataSource.curRange().intId()), ConstrustionFieldReportAct.this.userZoneId, ReportDataSource.getOrderDescStr(localReportDataSource.curFilterId().intId()));
      int i;
      do
      {
        return localBuildingReport;
        if (ConstrustionFieldReportAct.this.mark == 1)
          return this.mHomeApplication.getServer().ConstrustionFieldReport2(ConstrustionFieldReportAct.this.contexts, ConstrustionFieldReportAct.this.category, ConstrustionFieldReportAct.this.STREET_NO, ReportDataSource.toDays(localReportDataSource.curRange().intId()), ConstrustionFieldReportAct.this.userZoneId, ReportDataSource.getOrderDescStr(localReportDataSource.curFilterId().intId()));
        i = ConstrustionFieldReportAct.this.mark;
        localBuildingReport = null;
      }
      while (i != 3);
      return this.mHomeApplication.getServer().ConstrustionFieldReport4(ConstrustionFieldReportAct.this.contexts, ConstrustionFieldReportAct.this.category, ConstrustionFieldReportAct.this.STREET_NO, ReportDataSource.toDays(localReportDataSource.curRange().intId()), ConstrustionFieldReportAct.this.userZoneId, ReportDataSource.getOrderDescStr(localReportDataSource.curFilterId().intId()));
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
      ConstrustionFieldReportAct.this.setLoadingView();
    }

    public void setActivity(ConstrustionFieldReportAct paramConstrustionFieldReportAct)
    {
      this.mActivity = paramConstrustionFieldReportAct;
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.act.ConstrustionFieldReportAct
 * JD-Core Version:    0.6.0
 */