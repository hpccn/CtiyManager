package com.cymobile.ymwork.act;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.Paint.Align;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
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
import com.cymobile.ymwork.types.Category;
import com.cymobile.ymwork.types.Group;
import com.cymobile.ymwork.types.Pair;
import com.cymobile.ymwork.types.VisitorvolumeReport;
import com.cymobile.ymwork.types.VisitorvolumeReports;
import com.cymobile.ymwork.types.Zone;
import com.cymobile.ymwork.utils.AsyncTaskUtils;
import com.cymobile.ymwork.utils.UiUtil;
import com.cymobile.ymwork.widget.LoadableListFragmentWithViewAndHeaderVisitorvolumeReport;
import com.cymobile.ymwork.widget.RangeFilterFragmentVisitorvolumeReport;
import com.cymobile.ymwork.widget.ShopReportFragment;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.TimeZone;
import org.achartengine.ChartFactory;
import org.achartengine.GraphicalView;
import org.achartengine.chart.PointStyle;
import org.achartengine.model.XYMultipleSeriesDataset;
import org.achartengine.model.XYSeries;
import org.achartengine.renderer.SimpleSeriesRenderer;
import org.achartengine.renderer.XYMultipleSeriesRenderer;
import org.achartengine.renderer.XYSeriesRenderer;

public class VisitorvolumeReportAct extends LoadableListFragmentWithViewAndHeaderVisitorvolumeReport
{
  private static final int MESSAGE_Intent_init_direct_search = 4;
  private static final int MESSAGE_Intent_init_search = 3;
  private final int DISMANTLE_REPORT = 1;
  private final int MESSAGE_ISVISIBLE_STREET = 2;
  private final int MESSAGE_UPDATE_REPORT = 1;
  private final int PROCEDURES_SETTLEMENT_REPORT = 2;
  private final int RANKING_REPORT = 0;
  private final int REVERSION_REPORT = 3;
  private int STREET_NO = 1;
  private Spinner Spinner_Street;
  private int a;
  private int b = 0;
  private RelativeLayout btn_Street;
  private RelativeLayout btn_title;
  private int c;
  private String category;
  private int[] colors;
  Context context;
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
        if (VisitorvolumeReportAct.this.category.length() == 6)
        {
          VisitorvolumeReportAct.this.str_address = VisitorvolumeReportAct.this.getResources().getString(2131296465);
          VisitorvolumeReportAct.this.btn_Street.setVisibility(8);
        }
        while (true)
        {
          VisitorvolumeReportAct.this.initTimes();
          VisitorvolumeReportAct.this.lineChart();
          return;
          VisitorvolumeReportAct.this.str_address = ShopReportFragment.street_name;
          VisitorvolumeReportAct.this.btn_Street.setVisibility(8);
        }
      case 2:
        if (VisitorvolumeReportAct.this.category.length() == 6)
        {
          VisitorvolumeReportAct.this.str_address = VisitorvolumeReportAct.this.getResources().getString(2131296465);
          VisitorvolumeReportAct.this.btn_Street.setVisibility(8);
          return;
        }
        VisitorvolumeReportAct.this.str_address = ShopReportFragment.street_name;
        VisitorvolumeReportAct.this.btn_Street.setVisibility(8);
        return;
      case 4:
        VisitorvolumeReportAct.this.getFilterFragment().onDataChanged(0);
        return;
      case 3:
      }
      AsyncTaskUtils.execute(new VisitorvolumeReportAct.GetZoneTask(VisitorvolumeReportAct.this, VisitorvolumeReportAct.this));
    }
  };
  private boolean mIsRunningTask;
  private ViewGroup mLayoutEmpty;
  private SharedPreferences mPrefs;
  private VisitorvolumeReports mShops;
  private Spinner mSpinner;
  private StateHolder mStateHolder;
  private int mark = 0;
  private XYMultipleSeriesRenderer renderer;
  private int s;
  private String str_address;
  private PointStyle[] styles;
  private String[] titles;
  private TextView txt_Street;
  private TextView txt_title;
  Group<Zone> userSubZones;
  private String userZoneId;
  private String userZoneName;
  private List<double[]> values = new ArrayList();

  private void addXYSeries(XYMultipleSeriesDataset paramXYMultipleSeriesDataset, String[] paramArrayOfString, List<double[]> paramList1, List<double[]> paramList2, int paramInt)
  {
    int i = paramArrayOfString.length;
    int j = 0;
    if (j >= i)
      return;
    XYSeries localXYSeries = new XYSeries(paramArrayOfString[j], paramInt);
    double[] arrayOfDouble1 = (double[])paramList1.get(j);
    double[] arrayOfDouble2 = (double[])paramList2.get(j);
    int k = arrayOfDouble1.length;
    for (int m = 0; ; m++)
    {
      if (m >= k)
      {
        paramXYMultipleSeriesDataset.addSeries(localXYSeries);
        j++;
        break;
      }
      localXYSeries.add(arrayOfDouble1[m], arrayOfDouble2[m]);
    }
  }

  private XYMultipleSeriesDataset buildDataset(String[] paramArrayOfString, List<double[]> paramList1, List<double[]> paramList2)
  {
    XYMultipleSeriesDataset localXYMultipleSeriesDataset = new XYMultipleSeriesDataset();
    addXYSeries(localXYMultipleSeriesDataset, paramArrayOfString, paramList1, paramList2, 0);
    return localXYMultipleSeriesDataset;
  }

  private XYMultipleSeriesRenderer buildRenderer(int[] paramArrayOfInt, PointStyle[] paramArrayOfPointStyle)
  {
    XYMultipleSeriesRenderer localXYMultipleSeriesRenderer = new XYMultipleSeriesRenderer();
    setRenderer(localXYMultipleSeriesRenderer, paramArrayOfInt, paramArrayOfPointStyle);
    return localXYMultipleSeriesRenderer;
  }

  private void initTimes()
  {
    double[] arrayOfDouble1 = new double[this.mShops.getItems().size()];
    double[] arrayOfDouble2 = new double[this.mShops.getItems_regist().size()];
    int i = 0;
    int m;
    if (i >= this.mShops.getItems().size())
    {
      if (this.mark != 2)
        break label220;
      if (this.mShops.getMaxnum2() >= 100)
        break label189;
      m = 10;
      label66: this.b = this.mShops.getMaxnum2();
      if (this.b / m % 2 != 0)
        break label196;
      this.c = (m * (2 + this.b / m) + m / 2);
    }
    label110: for (int k = 0; ; k++)
    {
      if (k >= this.mShops.getItems_regist().size())
      {
        if (this.mark != 2)
          break label369;
        this.values.clear();
        this.values.add(arrayOfDouble2);
        return;
        arrayOfDouble1[i] = Double.valueOf(((VisitorvolumeReport)this.mShops.getItems().get(i)).getTimes()).doubleValue();
        i++;
        break;
        m = 100;
        break label66;
        this.c = (m * (1 + this.b / m) + m / 2);
        break label110;
        int j;
        if (this.mShops.getMaxnum1() < 100)
          j = 10;
        while (true)
        {
          this.b = this.mShops.getMaxnum1();
          if (this.b / j % 2 != 0)
            break label311;
          this.c = (j * (2 + this.b / j) + j / 2);
          break;
          if (this.mShops.getMaxnum1() > 1000)
          {
            j = 1000;
            continue;
          }
          j = 100;
        }
        this.c = (j * (1 + this.b / j) + j / 2);
        break label110;
      }
      arrayOfDouble2[k] = Double.valueOf(((VisitorvolumeReport)this.mShops.getItems_regist().get(k)).getRegistTimes()).doubleValue();
    }
    label189: label196: label220: label369: if (this.mark == 1)
    {
      this.values.clear();
      this.values.add(arrayOfDouble1);
      return;
    }
    label311: this.values.clear();
    this.values.add(arrayOfDouble1);
    this.values.add(arrayOfDouble2);
  }

  private void onTaskComplete(VisitorvolumeReports paramVisitorvolumeReports, Exception paramException)
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
    this.mShops = paramVisitorvolumeReports;
    this.mHandler.sendEmptyMessage(1);
  }

  private void setChartSettings(XYMultipleSeriesRenderer paramXYMultipleSeriesRenderer, String paramString1, String paramString2, String paramString3, double paramDouble1, double paramDouble2, double paramDouble3, double paramDouble4, int paramInt1, int paramInt2)
  {
    paramXYMultipleSeriesRenderer.setChartTitle(paramString1);
    paramXYMultipleSeriesRenderer.setXTitle(paramString2);
    paramXYMultipleSeriesRenderer.setYTitle(paramString3);
    paramXYMultipleSeriesRenderer.setXAxisMin(paramDouble1);
    paramXYMultipleSeriesRenderer.setXAxisMax(paramDouble2);
    paramXYMultipleSeriesRenderer.setYAxisMin(paramDouble3);
    paramXYMultipleSeriesRenderer.setYAxisMax(paramDouble4);
    paramXYMultipleSeriesRenderer.setAxesColor(paramInt1);
    paramXYMultipleSeriesRenderer.setXLabels(0);
    paramXYMultipleSeriesRenderer.setLabelsColor(paramInt2);
    paramXYMultipleSeriesRenderer.setAxisTitleTextSize(16.0F);
    paramXYMultipleSeriesRenderer.setChartTitleTextSize(20.0F);
    paramXYMultipleSeriesRenderer.setLabelsTextSize(15.0F);
    paramXYMultipleSeriesRenderer.setLegendTextSize(15.0F);
    paramXYMultipleSeriesRenderer.setChartValuesTextSize(20.0F);
    paramXYMultipleSeriesRenderer.setXLabelsAngle(-20.0F);
    if (this.mark == 2)
      paramXYMultipleSeriesRenderer.getSeriesRendererAt(0).setDisplayChartValues(true);
    while (true)
    {
      paramXYMultipleSeriesRenderer.setPanEnabled(false, false);
      return;
      if (this.mark == 1)
      {
        paramXYMultipleSeriesRenderer.getSeriesRendererAt(0).setDisplayChartValues(true);
        continue;
      }
      paramXYMultipleSeriesRenderer.getSeriesRendererAt(0).setDisplayChartValues(true);
      paramXYMultipleSeriesRenderer.getSeriesRendererAt(1).setDisplayChartValues(true);
    }
  }

  private void setRenderer(XYMultipleSeriesRenderer paramXYMultipleSeriesRenderer, int[] paramArrayOfInt, PointStyle[] paramArrayOfPointStyle)
  {
    paramXYMultipleSeriesRenderer.setAxisTitleTextSize(16.0F);
    paramXYMultipleSeriesRenderer.setChartTitleTextSize(20.0F);
    paramXYMultipleSeriesRenderer.setLabelsTextSize(15.0F);
    paramXYMultipleSeriesRenderer.setLegendTextSize(15.0F);
    paramXYMultipleSeriesRenderer.setPointSize(5.0F);
    paramXYMultipleSeriesRenderer.setMargins(new int[] { 20, 30, 15, 20 });
    int i = paramArrayOfInt.length;
    for (int j = 0; ; j++)
    {
      if (j >= i)
        return;
      XYSeriesRenderer localXYSeriesRenderer = new XYSeriesRenderer();
      localXYSeriesRenderer.setColor(paramArrayOfInt[j]);
      localXYSeriesRenderer.setPointStyle(paramArrayOfPointStyle[j]);
      localXYSeriesRenderer.setDisplayChartValuesDistance(30);
      paramXYMultipleSeriesRenderer.addSeriesRenderer(localXYSeriesRenderer);
    }
  }

  public void ensureUi()
  {
    ((ImageButton)findViewById(2131230765)).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        VisitorvolumeReportAct.this.onBackPressed();
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
          VisitorvolumeReportAct.this.mStateHolder.startTask(VisitorvolumeReportAct.this);
        }
      });
      ((Button)this.mLayoutEmpty.findViewById(2131230992)).setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramView)
        {
          VisitorvolumeReportAct.this.onBackPressed();
        }
      });
      this.mLayoutEmpty.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
      return;
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

  public void lineChart()
  {
    ArrayList localArrayList;
    int i;
    XYMultipleSeriesRenderer localXYMultipleSeriesRenderer;
    int i1;
    if (this.mark == 2)
    {
      this.titles = new String[] { "安装量" };
      this.colors = new int[] { -16776961 };
      PointStyle[] arrayOfPointStyle1 = new PointStyle[1];
      arrayOfPointStyle1[0] = PointStyle.DIAMOND;
      this.styles = arrayOfPointStyle1;
      localArrayList = new ArrayList();
      i = 0;
      int j = this.titles.length;
      if (i < j)
        break label472;
      localXYMultipleSeriesRenderer = buildRenderer(this.colors, this.styles);
      int n = localXYMultipleSeriesRenderer.getSeriesRendererCount();
      i1 = 0;
      label98: if (i1 < n)
        break label539;
      if (this.s == 1)
        break label559;
      setChartSettings(localXYMultipleSeriesRenderer, "", "", "", 0.5D, 0.5D + this.mShops.getItems().size(), 0.0D, this.c, -3355444, -3355444);
    }
    int i2;
    while (true)
    {
      i2 = 0;
      int i3 = this.mShops.getItems().size();
      if (i2 < i3)
        break label595;
      localXYMultipleSeriesRenderer.setXLabels(0);
      localXYMultipleSeriesRenderer.setYLabels(10);
      localXYMultipleSeriesRenderer.setShowGrid(true);
      localXYMultipleSeriesRenderer.setXLabelsAlign(Paint.Align.CENTER);
      localXYMultipleSeriesRenderer.setYLabelsAlign(Paint.Align.RIGHT);
      localXYMultipleSeriesRenderer.setZoomButtonsVisible(true);
      localXYMultipleSeriesRenderer.setPanLimits(new double[] { -10.0D, 20.0D, -10.0D, 40.0D });
      localXYMultipleSeriesRenderer.setZoomLimits(new double[] { -10.0D, 20.0D, -10.0D, 40.0D });
      this.mChartView = ChartFactory.getLineChartView(this, buildDataset(this.titles, localArrayList, this.values), localXYMultipleSeriesRenderer);
      this.mChartView.setBackgroundColor(-16777216);
      this.layout_report.removeAllViews();
      this.layout_report.addView(this.mChartView, new ViewGroup.LayoutParams(-1, -2));
      return;
      if (this.mark == 1)
      {
        this.titles = new String[] { "访问量" };
        this.colors = new int[] { -65536 };
        PointStyle[] arrayOfPointStyle2 = new PointStyle[1];
        arrayOfPointStyle2[0] = PointStyle.CIRCLE;
        this.styles = arrayOfPointStyle2;
        break;
      }
      this.titles = new String[] { "访问量", "安装量" };
      this.colors = new int[] { -65536, -16776961 };
      PointStyle[] arrayOfPointStyle3 = new PointStyle[2];
      arrayOfPointStyle3[0] = PointStyle.CIRCLE;
      arrayOfPointStyle3[1] = PointStyle.DIAMOND;
      this.styles = arrayOfPointStyle3;
      break;
      label472: double[] arrayOfDouble = new double[this.mShops.getItems().size()];
      localArrayList.add(arrayOfDouble);
      for (int k = 1; ; k++)
      {
        int m = this.mShops.getItems().size();
        if (k > m)
        {
          i++;
          break;
        }
        arrayOfDouble[(k - 1)] = k;
      }
      label539: ((XYSeriesRenderer)localXYMultipleSeriesRenderer.getSeriesRendererAt(i1)).setFillPoints(true);
      i1++;
      break label98;
      label559: setChartSettings(localXYMultipleSeriesRenderer, "", "", "", 0.5D, 24.5D, 0.0D, this.c, -3355444, -3355444);
    }
    label595: if (this.s == 1)
    {
      SimpleDateFormat localSimpleDateFormat1 = new SimpleDateFormat("HH:mm");
      localSimpleDateFormat1.setTimeZone(TimeZone.getTimeZone("GMT"));
      long l1 = Long.parseLong(((VisitorvolumeReport)this.mShops.getItems().get(i2)).getTime());
      Date localDate1 = new Date(l1);
      String str1 = localSimpleDateFormat1.format(localDate1);
      localXYMultipleSeriesRenderer.addTextLabel(i2 + 1, str1);
    }
    while (true)
    {
      i2++;
      break;
      SimpleDateFormat localSimpleDateFormat2 = new SimpleDateFormat("yyyy/MM/dd");
      long l2 = Long.parseLong(((VisitorvolumeReport)this.mShops.getItems().get(i2)).getTime());
      Date localDate2 = new Date(l2);
      String str2 = localSimpleDateFormat2.format(localDate2);
      localXYMultipleSeriesRenderer.addTextLabel(i2 + 1, str2);
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    requestWindowFeature(1);
    getQueryTitle();
    setContentView(2130903079);
    super.onCreate(paramBundle);
    this.contexts = this;
    label188: label254: String[] arrayOfString1;
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
        break label434;
      this.btn_Street.setVisibility(8);
      ensureUi();
      String str = this.mPrefs.getString("key_GlobalZoneId", null);
      if (((str == null) || (str.length() != 12)) && ((PreferencesUtils.getSubZone() == null) || (PreferencesUtils.getSubZone().size() <= 0)))
        break label446;
      this.flag = true;
      this.mHandler.sendEmptyMessageDelayed(4, 50L);
      this.btn_title.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramView)
        {
          VisitorvolumeReportAct.this.mSpinner.performClick();
        }
      });
      this.btn_Street.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramView)
        {
          VisitorvolumeReportAct.this.Spinner_Street.performClick();
        }
      });
      arrayOfString1 = getResources().getStringArray(2131034123);
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
              VisitorvolumeReportAct.this.mark = 0;
              VisitorvolumeReportAct.this.txt_title.setText(((String)this.val$list.get(0)).toString());
              if (VisitorvolumeReportAct.this.flag)
                VisitorvolumeReportAct.this.mStateHolder.startTask(VisitorvolumeReportAct.this);
            }
            do
              while (true)
              {
                return;
                if (paramInt == 1)
                {
                  VisitorvolumeReportAct.this.mark = 1;
                  VisitorvolumeReportAct.this.txt_title.setText(((String)this.val$list.get(1)).toString());
                  if (!VisitorvolumeReportAct.this.flag)
                    continue;
                  VisitorvolumeReportAct.this.mStateHolder.startTask(VisitorvolumeReportAct.this);
                  return;
                }
                if (paramInt != 2)
                  break;
                VisitorvolumeReportAct.this.mark = 2;
                VisitorvolumeReportAct.this.txt_title.setText(((String)this.val$list.get(2)).toString());
                if (!VisitorvolumeReportAct.this.flag)
                  continue;
                VisitorvolumeReportAct.this.mStateHolder.startTask(VisitorvolumeReportAct.this);
                return;
              }
            while (paramInt != 3);
            VisitorvolumeReportAct.this.mark = 3;
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
              VisitorvolumeReportAct.this.txt_Street.setText(this.val$streenItme[0].toString());
              VisitorvolumeReportAct.this.STREET_NO = 1;
              if (VisitorvolumeReportAct.this.flag)
                VisitorvolumeReportAct.this.mStateHolder.startTask(VisitorvolumeReportAct.this);
            }
            do
            {
              return;
              VisitorvolumeReportAct.this.flag = true;
              return;
            }
            while (paramInt != 1);
            VisitorvolumeReportAct.this.txt_Street.setText(this.val$streenItme[1].toString());
            VisitorvolumeReportAct.this.STREET_NO = 2;
            VisitorvolumeReportAct.this.mStateHolder.startTask(VisitorvolumeReportAct.this);
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
        label434: this.btn_Street.setVisibility(8);
        break label188;
        label446: this.flag = false;
        this.mHandler.sendEmptyMessageDelayed(3, 10L);
        break label254;
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

    public GetZoneTask(VisitorvolumeReportAct arg2)
    {
    }

    protected Boolean doInBackground(Void[] paramArrayOfVoid)
    {
      Server localServer = ((HomeApplication)VisitorvolumeReportAct.this.getApplication()).getServer();
      try
      {
        String str = VisitorvolumeReportAct.this.mPrefs.getString("key_GlobalZoneId", null);
        Group localGroup1 = localServer.getZone(VisitorvolumeReportAct.this.contexts, str);
        bool = false;
        Iterator localIterator;
        if (localGroup1 != null)
        {
          int i = localGroup1.size();
          bool = false;
          if (i > 0)
          {
            VisitorvolumeReportAct.this.userSubZones = localGroup1;
            if ((str == null) || (str.length() != 6))
              break label199;
            Group localGroup2 = localServer.getAllComm(VisitorvolumeReportAct.this.contexts);
            if ((localGroup2 != null) && (localGroup2.size() > 0))
              localIterator = localGroup2.iterator();
          }
        }
        while (true)
        {
          if (!localIterator.hasNext())
          {
            PreferencesUtils.setSubZone(VisitorvolumeReportAct.this.userSubZones);
            bool = true;
            return Boolean.valueOf(bool);
          }
          Zone localZone = (Zone)localIterator.next();
          VisitorvolumeReportAct.this.userSubZones.add(localZone);
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
          label199: PreferencesUtils.setSubZone(VisitorvolumeReportAct.this.userSubZones);
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
        Toast.makeText(VisitorvolumeReportAct.this, 2131296363, 1).show();
        return;
      }
      ReportDataSource.setCategory(PreferencesUtils.getSubZone());
      VisitorvolumeReportAct.this.getFilterFragment().onDataChanged(0);
    }

    protected void onPreExecute()
    {
    }
  }

  public class StateHolder
  {
    private boolean mRanOnce = false;
    private VisitorvolumeReportAct.TaskShops mTaskShops;

    public StateHolder()
    {
      VisitorvolumeReportAct.this.mIsRunningTask = false;
      VisitorvolumeReportAct.this.mShops = new VisitorvolumeReports();
    }

    public void cancel()
    {
      if (VisitorvolumeReportAct.this.mIsRunningTask);
      try
      {
        if (this.mTaskShops != null)
          this.mTaskShops.cancel(true);
        VisitorvolumeReportAct.this.mIsRunningTask = false;
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
      return VisitorvolumeReportAct.this.mIsRunningTask;
    }

    public boolean getRanOnce()
    {
      return this.mRanOnce;
    }

    public VisitorvolumeReports getShops()
    {
      return VisitorvolumeReportAct.this.mShops;
    }

    VisitorvolumeReportAct.TaskShops getTaskShops()
    {
      return this.mTaskShops;
    }

    public void setActivity(VisitorvolumeReportAct paramVisitorvolumeReportAct)
    {
      if (VisitorvolumeReportAct.this.mIsRunningTask)
        this.mTaskShops.setActivity(paramVisitorvolumeReportAct);
    }

    public void setIsRunningTask(boolean paramBoolean)
    {
      VisitorvolumeReportAct.this.mIsRunningTask = paramBoolean;
    }

    public void setRanOnce(boolean paramBoolean)
    {
      this.mRanOnce = paramBoolean;
    }

    public void startTask(VisitorvolumeReportAct paramVisitorvolumeReportAct)
    {
      if (!VisitorvolumeReportAct.this.mIsRunningTask)
      {
        VisitorvolumeReportAct.this.setProgressBarIndeterminateVisibility(true);
        this.mTaskShops = new VisitorvolumeReportAct.TaskShops(VisitorvolumeReportAct.this, paramVisitorvolumeReportAct);
        AsyncTaskUtils.execute(this.mTaskShops);
        VisitorvolumeReportAct.this.mIsRunningTask = true;
      }
    }
  }

  public class TaskShops extends AsyncTask<Void, Void, VisitorvolumeReports>
  {
    private VisitorvolumeReportAct mActivity;
    private Exception mException;
    private HomeApplication mHomeApplication;

    public TaskShops(VisitorvolumeReportAct arg2)
    {
      Object localObject;
      this.mHomeApplication = ((HomeApplication)localObject.getApplication());
      this.mActivity = localObject;
    }

    private VisitorvolumeReports shops()
      throws ServerException, IOException
    {
      ReportDataSource localReportDataSource = VisitorvolumeReportAct.this.getFilterFragment().getReportDataSource();
      VisitorvolumeReportAct.this.s = ReportDataSource.toDays(localReportDataSource.curRange().intId());
      VisitorvolumeReportAct.this.category = localReportDataSource.curCategory().id();
      if (VisitorvolumeReportAct.this.category.equals("0"))
        VisitorvolumeReportAct.this.category = VisitorvolumeReportAct.this.userZoneId;
      VisitorvolumeReports localVisitorvolumeReports = this.mHomeApplication.getServer().VisitorvolumeReport1(VisitorvolumeReportAct.this.contexts, ReportDataSource.toDays(localReportDataSource.curRange().intId()), VisitorvolumeReportAct.this.category);
      Log.d("***", ReportDataSource.toDays(localReportDataSource.curRange().intId()));
      return localVisitorvolumeReports;
    }

    public VisitorvolumeReports doInBackground(Void[] paramArrayOfVoid)
    {
      try
      {
        VisitorvolumeReports localVisitorvolumeReports = shops();
        return localVisitorvolumeReports;
      }
      catch (Exception localException)
      {
        this.mException = localException;
        localException.printStackTrace();
      }
      return null;
    }

    protected void onPostExecute(VisitorvolumeReports paramVisitorvolumeReports)
    {
      if (this.mActivity != null)
        this.mActivity.onTaskComplete(paramVisitorvolumeReports, this.mException);
    }

    protected void onPreExecute()
    {
      VisitorvolumeReportAct.this.setLoadingView();
    }

    public void setActivity(VisitorvolumeReportAct paramVisitorvolumeReportAct)
    {
      this.mActivity = paramVisitorvolumeReportAct;
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.act.VisitorvolumeReportAct
 * JD-Core Version:    0.6.0
 */