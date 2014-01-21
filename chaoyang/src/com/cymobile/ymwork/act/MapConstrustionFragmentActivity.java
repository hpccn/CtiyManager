package com.cymobile.ymwork.act;

import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.location.Address;
import android.location.Location;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import com.amap.api.location.AMapLocation;
import com.amap.api.location.AMapLocationListener;
import com.amap.api.location.LocationManagerProxy;
import com.amap.api.maps.AMap;
import com.amap.api.maps.CameraUpdateFactory;
import com.amap.api.maps.Projection;
import com.amap.api.maps.SupportMapFragment;
import com.amap.api.maps.UiSettings;
import com.amap.api.maps.model.CameraPosition;
import com.amap.api.maps.model.LatLng;
import com.amap.api.maps.model.LatLngBounds;
import com.amap.api.maps.model.VisibleRegion;
import com.amap.api.search.core.AMapException;
import com.amap.api.search.geocoder.Geocoder;
import com.cymobile.ymwork.HomeApplication;
import com.cymobile.ymwork.SettingBase;
import com.cymobile.ymwork.server.Server;
import com.cymobile.ymwork.types.ConstrustionField;
import com.cymobile.ymwork.types.Group;
import com.cymobile.ymwork.types.UserArea;
import com.cymobile.ymwork.utils.AsyncTaskUtils;
import java.util.List;

public class MapConstrustionFragmentActivity extends FragmentActivity
{
  private static final int DIALOG_SHOW_HANDLING_PROGRESS = 12;
  private static final int DIALOG_SHOW_LOCATING_PROGRESS = 20;
  public static final String Intent_ClassId = "Intent_ClassId";
  private static final int MESSAGE_USE_DEFAULT_LOCATION = 101;
  private static final int MSG_LoadDone = 10;
  private static final int MSG_PageLoadDone = 2;
  private static final int POSITION_TIME_OUT = 10000;
  private static final String TAG = "MapConstrustionFragmentActivity";
  private static int classid = 0;
  private String AreaName = "";
  private String Bianjie = "";
  private String Bounds = "";
  private String CenterPoint = "";
  private AMap aMap;
  private ImageView backImageView;
  private Bundle bd;
  private ImageView centerView;
  private ProgressBar circleProgressBar;
  private TextView commonTitle;
  Context contexts;
  int currentPageCount = 0;
  private int days = 1;
  private boolean flag = false;
  HomeApplication homeApplication = null;
  private boolean isLocateTaskRunning = false;
  private boolean isProgressShowing = false;
  private boolean isSubmitTaskRunning = false;
  ImageView left_to_button;
  AMapLocationListener listener = new AMapLocationListener()
  {
    public void onLocationChanged(Location paramLocation)
    {
      Message localMessage = new Message();
      localMessage.obj = paramLocation;
      MapConstrustionFragmentActivity.this.mHandler.sendMessage(localMessage);
    }

    public void onLocationChanged(AMapLocation paramAMapLocation)
    {
      Message localMessage = new Message();
      localMessage.obj = paramAMapLocation;
      MapConstrustionFragmentActivity.this.mHandler.sendMessage(localMessage);
    }

    public void onProviderDisabled(String paramString)
    {
    }

    public void onProviderEnabled(String paramString)
    {
    }

    public void onStatusChanged(String paramString, int paramInt, Bundle paramBundle)
    {
    }
  };
  private LocatingTask locateTask;
  private boolean locating = false;
  Handler mHandler = new Handler()
  {
    public void handleMessage(Message paramMessage)
    {
      super.handleMessage(paramMessage);
      if (paramMessage.what != 0)
      {
        switch (paramMessage.what)
        {
        default:
          return;
        case 10:
          if (MapConstrustionFragmentActivity.this.bd == null);
          try
          {
            MapConstrustionFragmentActivity.this.mapFragment = new MapConstrustionDetailFragment();
            MapConstrustionFragmentActivity.this.getSupportFragmentManager().beginTransaction().add(2131230736, MapConstrustionFragmentActivity.this.mapFragment).commit();
            MapConstrustionFragmentActivity.this.commonTitle = ((TextView)MapConstrustionFragmentActivity.this.findViewById(2131230767));
            MapConstrustionFragmentActivity.this.commonTitle.setText("");
            if (MapConstrustionFragmentActivity.this.AreaName == null)
              MapConstrustionFragmentActivity.this.AreaName = "";
            if (MapConstrustionFragmentActivity.this.shops.getNumber() == 0)
              if (MapConstrustionFragmentActivity.classid == 0)
              {
                MapConstrustionFragmentActivity.this.commonTitle.setText("新增建筑");
                MapConstrustionFragmentActivity.this.resetPaginate();
                return;
              }
          }
          catch (Exception localException3)
          {
            while (true)
            {
              localException3.printStackTrace();
              continue;
              if (MapConstrustionFragmentActivity.classid == 1)
              {
                MapConstrustionFragmentActivity.this.commonTitle.setText("疑似新增建筑");
                continue;
              }
              if (MapConstrustionFragmentActivity.classid == 2)
              {
                MapConstrustionFragmentActivity.this.commonTitle.setText("公众举报违建");
                continue;
              }
              if (MapConstrustionFragmentActivity.classid == 3)
              {
                MapConstrustionFragmentActivity.this.commonTitle.setText("土方工地");
                continue;
              }
              if (MapConstrustionFragmentActivity.classid == 4)
              {
                if (MapConstrustionFragmentActivity.this.mark.equals("1"))
                {
                  MapConstrustionFragmentActivity.this.commonTitle.setText("重点单位消防隐患");
                  continue;
                }
                if (MapConstrustionFragmentActivity.this.mark.equals("2"))
                {
                  MapConstrustionFragmentActivity.this.commonTitle.setText("一般单位消防隐患");
                  continue;
                }
                MapConstrustionFragmentActivity.this.commonTitle.setText("消防隐患");
                continue;
              }
              if (MapConstrustionFragmentActivity.classid == 5)
              {
                MapConstrustionFragmentActivity.this.commonTitle.setText("公众举报投诉");
                continue;
              }
              if (MapConstrustionFragmentActivity.classid == 8)
              {
                MapConstrustionFragmentActivity.this.commonTitle.setText("预防煤气中毒安全");
                continue;
              }
              if (MapConstrustionFragmentActivity.classid == 9)
              {
                MapConstrustionFragmentActivity.this.commonTitle.setText("违法建设");
                continue;
              }
              if (MapConstrustionFragmentActivity.classid == 10)
              {
                MapConstrustionFragmentActivity.this.commonTitle.setText("出租房屋");
                continue;
              }
              if (MapConstrustionFragmentActivity.classid == 11)
              {
                MapConstrustionFragmentActivity.this.commonTitle.setText("人口管理");
                continue;
              }
              if (MapConstrustionFragmentActivity.classid == 12)
              {
                MapConstrustionFragmentActivity.this.commonTitle.setText("食品安全");
                continue;
              }
              if (MapConstrustionFragmentActivity.classid == 13)
              {
                MapConstrustionFragmentActivity.this.commonTitle.setText("证照资质");
                continue;
              }
              if (MapConstrustionFragmentActivity.classid != 14)
                continue;
              MapConstrustionFragmentActivity.this.commonTitle.setText("其他");
              continue;
              if (MapConstrustionFragmentActivity.classid == 0)
              {
                MapConstrustionFragmentActivity.this.commonTitle.setText("新增建筑【共" + MapConstrustionFragmentActivity.this.shops.getNumber() + "件】");
                continue;
              }
              if (MapConstrustionFragmentActivity.classid == 1)
              {
                MapConstrustionFragmentActivity.this.commonTitle.setText("疑似新增建筑【共" + MapConstrustionFragmentActivity.this.shops.getNumber() + "件】");
                continue;
              }
              if (MapConstrustionFragmentActivity.classid == 2)
              {
                MapConstrustionFragmentActivity.this.commonTitle.setText("公众举报违建【共" + MapConstrustionFragmentActivity.this.shops.getNumber() + "件】");
                continue;
              }
              if (MapConstrustionFragmentActivity.classid == 3)
              {
                MapConstrustionFragmentActivity.this.commonTitle.setText("土方工地【共" + MapConstrustionFragmentActivity.this.shops.getNumber() + "件】");
                continue;
              }
              if (MapConstrustionFragmentActivity.classid == 4)
              {
                if (MapConstrustionFragmentActivity.this.mark.equals("1"))
                {
                  MapConstrustionFragmentActivity.this.commonTitle.setText("重点单位消防隐患【共" + MapConstrustionFragmentActivity.this.shops.getNumber() + "件】");
                  continue;
                }
                if (MapConstrustionFragmentActivity.this.mark.equals("2"))
                {
                  MapConstrustionFragmentActivity.this.commonTitle.setText("一般单位消防隐患【共" + MapConstrustionFragmentActivity.this.shops.getNumber() + "件】");
                  continue;
                }
                MapConstrustionFragmentActivity.this.commonTitle.setText("消防隐患【共" + MapConstrustionFragmentActivity.this.shops.getNumber() + "件】");
                continue;
              }
              if (MapConstrustionFragmentActivity.classid == 5)
              {
                MapConstrustionFragmentActivity.this.commonTitle.setText("公众举报投诉【共" + MapConstrustionFragmentActivity.this.shops.getNumber() + "件】");
                continue;
              }
              if (MapConstrustionFragmentActivity.classid == 8)
              {
                MapConstrustionFragmentActivity.this.commonTitle.setText("预防煤气中毒安全【共" + MapConstrustionFragmentActivity.this.shops.getNumber() + "件】");
                continue;
              }
              if (MapConstrustionFragmentActivity.classid == 9)
              {
                MapConstrustionFragmentActivity.this.commonTitle.setText("违法建设【共" + MapConstrustionFragmentActivity.this.shops.getNumber() + "件】");
                continue;
              }
              if (MapConstrustionFragmentActivity.classid == 10)
              {
                MapConstrustionFragmentActivity.this.commonTitle.setText("出租房屋【共" + MapConstrustionFragmentActivity.this.shops.getNumber() + "件】");
                continue;
              }
              if (MapConstrustionFragmentActivity.classid == 11)
              {
                MapConstrustionFragmentActivity.this.commonTitle.setText("人口管理【共" + MapConstrustionFragmentActivity.this.shops.getNumber() + "件】");
                continue;
              }
              if (MapConstrustionFragmentActivity.classid == 12)
              {
                MapConstrustionFragmentActivity.this.commonTitle.setText("食品安全【共" + MapConstrustionFragmentActivity.this.shops.getNumber() + "件】");
                continue;
              }
              if (MapConstrustionFragmentActivity.classid == 13)
              {
                MapConstrustionFragmentActivity.this.commonTitle.setText("证照资质【共" + MapConstrustionFragmentActivity.this.shops.getNumber() + "件】");
                continue;
              }
              if (MapConstrustionFragmentActivity.classid != 14)
                continue;
              MapConstrustionFragmentActivity.this.commonTitle.setText("其他【共" + MapConstrustionFragmentActivity.this.shops.getNumber() + "件】");
            }
          }
        case 2:
          MapConstrustionFragmentActivity.this.mapFragment.setUpMap();
          MapConstrustionFragmentActivity.this.resetPaginate();
          return;
        case 101:
        }
        if (MapConstrustionFragmentActivity.this.mLocation == null)
        {
          float f2 = MapConstrustionFragmentActivity.this.aMap.getCameraPosition().zoom;
          MapConstrustionFragmentActivity.this.aMap.animateCamera(CameraUpdateFactory.newLatLngZoom(new LatLng(39.922837000000001D, 116.443398D), f2));
          if (MapConstrustionFragmentActivity.this.isProgressShowing)
          {
            MapConstrustionFragmentActivity.this.dismissDialog(20);
            MapConstrustionFragmentActivity.this.isProgressShowing = false;
          }
        }
        try
        {
          MapConstrustionFragmentActivity.this.managerProxy.removeUpdates(MapConstrustionFragmentActivity.this.listener);
          return;
        }
        catch (Exception localException2)
        {
          localException2.printStackTrace();
          return;
        }
      }
      MapConstrustionFragmentActivity.this.mLocation = ((Location)paramMessage.obj);
      float f1 = MapConstrustionFragmentActivity.this.aMap.getCameraPosition().zoom;
      MapConstrustionFragmentActivity.this.aMap.animateCamera(CameraUpdateFactory.newLatLngZoom(new LatLng(MapConstrustionFragmentActivity.this.mLocation.getLatitude(), MapConstrustionFragmentActivity.this.mLocation.getLongitude()), f1));
      if (MapConstrustionFragmentActivity.this.isProgressShowing)
      {
        MapConstrustionFragmentActivity.this.dismissDialog(20);
        MapConstrustionFragmentActivity.this.isProgressShowing = false;
      }
      try
      {
        MapConstrustionFragmentActivity.this.managerProxy.removeUpdates(MapConstrustionFragmentActivity.this.listener);
        return;
      }
      catch (Exception localException1)
      {
        localException1.printStackTrace();
      }
    }
  };
  private HomeApplication mHomeApplication;
  private Location mLocation = null;
  SharedPreferences mPrefs;
  private LocationManagerProxy managerProxy;
  MapConstrustionDetailFragment mapFragment;
  private boolean mapNormal = true;
  private String mark = "";
  ImageView right_to_button;
  private double shoplat = 0.0D;
  private double shoplng = 0.0D;
  private Group<ConstrustionField> shops = new Group();
  TextView showpaginate;
  private TextView title;
  String userZoneId;
  String userZoneName;
  private String zoneId = null;

  private void doLocating()
  {
    if (!this.isProgressShowing)
    {
      showDialog(20);
      this.isProgressShowing = true;
    }
    this.mHandler.sendEmptyMessageDelayed(101, 10000L);
    this.locating = true;
  }

  private void ensureUi()
  {
    ((ImageButton)findViewById(2131230765)).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        MapConstrustionFragmentActivity.this.onBackPressed();
      }
    });
    this.backImageView = ((ImageView)findViewById(2131230743));
    this.centerView = ((ImageView)findViewById(2131230744));
    this.backImageView.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        MapConstrustionFragmentActivity.this.centerView.setVisibility(0);
        if (MapConstrustionFragmentActivity.this.mLocation != null)
        {
          float f = MapConstrustionFragmentActivity.this.aMap.getCameraPosition().zoom;
          MapConstrustionFragmentActivity.this.aMap.animateCamera(CameraUpdateFactory.newLatLngZoom(new LatLng(MapConstrustionFragmentActivity.this.mLocation.getLatitude(), MapConstrustionFragmentActivity.this.mLocation.getLongitude()), f));
          if (MapConstrustionFragmentActivity.this.isProgressShowing)
          {
            MapConstrustionFragmentActivity.this.dismissDialog(20);
            MapConstrustionFragmentActivity.this.isProgressShowing = false;
          }
          return;
        }
        MapConstrustionFragmentActivity.this.startLocating();
        MapConstrustionFragmentActivity.this.doLocating();
      }
    });
    if (this.aMap == null)
    {
      this.aMap = ((SupportMapFragment)getSupportFragmentManager().findFragmentById(2131230737)).getMap();
      this.managerProxy = LocationManagerProxy.getInstance(this);
      if (this.aMap != null)
        this.aMap.getUiSettings().setZoomControlsEnabled(true);
    }
    ((ImageButton)findViewById(2131230745)).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        ImageButton localImageButton = (ImageButton)MapConstrustionFragmentActivity.this.findViewById(2131230745);
        if ((MapConstrustionFragmentActivity.this.mapFragment != null) && (MapConstrustionFragmentActivity.this.mapFragment.getMap() != null))
        {
          if (MapConstrustionFragmentActivity.this.mapNormal)
          {
            MapConstrustionFragmentActivity.this.mapNormal = false;
            MapConstrustionFragmentActivity.this.mapFragment.getMap().setMapType(2);
            localImageButton.setBackgroundResource(2130837849);
          }
        }
        else
          return;
        MapConstrustionFragmentActivity.this.mapNormal = true;
        MapConstrustionFragmentActivity.this.mapFragment.getMap().setMapType(1);
        MapConstrustionFragmentActivity.this.mapFragment.getMap().setTrafficEnabled(true);
        localImageButton.setBackgroundResource(2130837848);
      }
    });
    Button localButton = (Button)findViewById(2131230769);
    localButton.setText("列表模式");
    localButton.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        Intent localIntent;
        if (MapConstrustionFragmentActivity.classid == 3)
        {
          localIntent = new Intent(MapConstrustionFragmentActivity.this, MainClassConstrustionFieldAct.class);
          if (!MapConstrustionFragmentActivity.this.flag)
            break label183;
          localIntent = new Intent(MapConstrustionFragmentActivity.this, MainClassFireServiceAct.class);
          localIntent.putExtra("userZoneId", MapConstrustionFragmentActivity.this.userZoneId);
          localIntent.putExtra("userZoneName", MapConstrustionFragmentActivity.this.userZoneName);
        }
        while (true)
        {
          localIntent.putExtra("Intent_ClassId", MapConstrustionFragmentActivity.classid);
          localIntent.putExtra("Intent_Days", MapConstrustionFragmentActivity.this.days);
          MapConstrustionFragmentActivity.this.startActivity(localIntent);
          MapConstrustionFragmentActivity.this.finish();
          return;
          if ((MapConstrustionFragmentActivity.classid == 4) || (MapConstrustionFragmentActivity.classid == 6) || (MapConstrustionFragmentActivity.classid == 7))
          {
            localIntent = new Intent(MapConstrustionFragmentActivity.this, MainClassFireServiceAct.class);
            break;
          }
          int i = MapConstrustionFragmentActivity.classid;
          localIntent = null;
          if (i != 5)
            break;
          localIntent = new Intent(MapConstrustionFragmentActivity.this, MainClassPublicReportAct.class);
          break;
          label183: if (MapConstrustionFragmentActivity.this.zoneId != null)
            localIntent.putExtra("Intent_ZoneId", MapConstrustionFragmentActivity.this.zoneId);
          localIntent.putExtra("EM", MapConstrustionFragmentActivity.this.mark);
        }
      }
    });
    this.title = ((TextView)findViewById(2131230767));
    this.title.setText("");
    if (classid == 0)
      this.title.setText("最新新增建筑");
    LinearLayout localLinearLayout;
    while (true)
    {
      if (SettingBase.getListNum(this.mPrefs) > 0)
      {
        this.showpaginate = ((TextView)findViewById(2131230741));
        this.showpaginate.setText("1-" + SettingBase.getListNum(this.mPrefs) + "条");
        this.left_to_button = ((ImageButton)findViewById(2131230740));
        this.right_to_button = ((ImageButton)findViewById(2131230742));
        PaginateListener localPaginateListener1 = new PaginateListener(false);
        this.left_to_button.setOnClickListener(localPaginateListener1);
        PaginateListener localPaginateListener2 = new PaginateListener(true);
        this.right_to_button = ((ImageButton)findViewById(2131230742));
        this.right_to_button.setOnClickListener(localPaginateListener2);
        this.left_to_button.setVisibility(8);
        this.right_to_button.setVisibility(8);
      }
      int i = SettingBase.getListNum(this.mPrefs);
      localLinearLayout = (LinearLayout)findViewById(2131230739);
      if (i >= 0)
        break;
      localLinearLayout.setVisibility(8);
      return;
      if (classid == 1)
      {
        this.title.setText("最新疑似新增建筑");
        continue;
      }
      if (classid == 2)
      {
        this.title.setText("最新公众举报违建");
        continue;
      }
      if (classid == 3)
      {
        this.title.setText("最新土方工地");
        continue;
      }
      if (classid == 4)
      {
        if (this.mark.equals("1"))
        {
          this.title.setText("最新重点单位消防隐患");
          continue;
        }
        if (this.mark.equals("2"))
        {
          this.title.setText("最新一般单位消防隐患");
          continue;
        }
        this.title.setText("最新消防隐患");
        continue;
      }
      if (classid == 5)
      {
        this.title.setText("最新公众举报投诉");
        continue;
      }
      if (classid == 8)
      {
        this.title.setText("最新预防煤气中毒安全");
        continue;
      }
      if (classid == 9)
      {
        this.title.setText("最新违法建设");
        continue;
      }
      if (classid == 10)
      {
        this.title.setText("最新出租房屋");
        continue;
      }
      if (classid == 11)
      {
        this.title.setText("最新人口管理");
        continue;
      }
      if (classid == 12)
      {
        this.title.setText("最新食品安全");
        continue;
      }
      if (classid == 13)
      {
        this.title.setText("最新证照资质");
        continue;
      }
      if (classid != 14)
        continue;
      this.title.setText("其他");
    }
    localLinearLayout.setVisibility(0);
  }

  private void preLocateTask()
  {
    showDialog(12);
  }

  private void resetPaginate()
  {
    int i = SettingBase.getListNum(this.mPrefs);
    if (i < 0)
      return;
    if (this.shops != null)
    {
      if (this.shops.getNumber() == 0)
      {
        this.showpaginate.setText("没有案件");
        this.left_to_button.setVisibility(8);
        this.right_to_button.setVisibility(8);
        return;
      }
      if (this.shops.getNumber() > i)
      {
        if (i + this.currentPageCount > this.shops.getNumber())
        {
          this.showpaginate.setText(1 + this.currentPageCount + "-" + this.shops.getNumber() + "条");
          if (this.currentPageCount > 0)
            this.left_to_button.setVisibility(0);
          while (true)
          {
            this.right_to_button.setVisibility(8);
            return;
            this.left_to_button.setVisibility(8);
          }
        }
        this.showpaginate.setText(1 + this.currentPageCount + "-" + (i + this.currentPageCount) + "条");
        this.right_to_button.setVisibility(0);
        if (this.currentPageCount > 0)
        {
          this.left_to_button.setVisibility(0);
          return;
        }
        this.left_to_button.setVisibility(8);
        return;
      }
      this.showpaginate.setText("1-" + this.shops.getNumber() + "条");
      this.left_to_button.setVisibility(8);
      this.right_to_button.setVisibility(8);
      return;
    }
    this.showpaginate.setText("没有案件");
    this.left_to_button.setVisibility(8);
    this.right_to_button.setVisibility(8);
  }

  private void startLocating()
  {
    if (this.managerProxy.isProviderEnabled("lbs"))
      this.managerProxy.requestLocationUpdates("lbs", 2000L, 10.0F, this.listener);
  }

  public String getBianjie()
  {
    return this.Bianjie;
  }

  public String getBounds()
  {
    return this.Bounds;
  }

  public Group<ConstrustionField> getBuildings()
  {
    return this.shops;
  }

  public String getCenterPoint()
  {
    return this.CenterPoint;
  }

  public int getClassId()
  {
    return classid;
  }

  public Group<ConstrustionField> getShops()
  {
    return this.shops;
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903042);
    this.contexts = this;
    this.homeApplication = ((HomeApplication)getApplication());
    this.mPrefs = getSharedPreferences(SettingBase.class.getName(), 2);
    ensureUi();
    if (getIntent().getExtras().containsKey("Intent_ClassId"))
    {
      classid = getIntent().getExtras().getInt("Intent_ClassId");
      if (getIntent().getExtras().containsKey("Intent_ZoneId"))
      {
        this.zoneId = getIntent().getExtras().getString("Intent_ZoneId");
        if (getIntent().getExtras().containsKey("Intent_Days"))
          this.days = getIntent().getExtras().getInt("Intent_Days");
        if ((getIntent() == null) || (getIntent().getExtras() == null) || (getIntent().getExtras().getString("userZoneId") == null) || (getIntent().getExtras().getString("userZoneName") == null))
          break label387;
        this.flag = true;
        this.userZoneId = getIntent().getExtras().getString("userZoneId");
        this.userZoneName = getIntent().getExtras().getString("userZoneName");
      }
    }
    while (true)
    {
      if (((classid == 4) || (classid == 6) || (classid == 7)) && (!this.flag))
        this.mark = getIntent().getExtras().getString("EM");
      this.mHomeApplication = ((HomeApplication)getApplication());
      this.circleProgressBar = ((ProgressBar)findViewById(2131230738));
      this.circleProgressBar.setIndeterminate(false);
      this.circleProgressBar.setMax(100);
      this.bd = paramBundle;
      DownloadTask localDownloadTask = new DownloadTask();
      Integer[] arrayOfInteger = new Integer[1];
      arrayOfInteger[0] = Integer.valueOf(100);
      AsyncTaskUtils.execute(localDownloadTask, arrayOfInteger);
      return;
      this.zoneId = this.mPrefs.getString("key_GlobalZoneId", null);
      break;
      finish();
      return;
      label387: this.userZoneId = this.mPrefs.getString("key_GlobalZoneId", null);
    }
  }

  protected Dialog onCreateDialog(int paramInt)
  {
    switch (paramInt)
    {
    default:
    case 20:
    case 12:
    }
    while (true)
    {
      return super.onCreateDialog(paramInt);
      ProgressDialog localProgressDialog2 = new ProgressDialog(this);
      localProgressDialog2.setMessage(getResources().getString(2131296263));
      localProgressDialog2.setOnCancelListener(new DialogInterface.OnCancelListener()
      {
        public void onCancel(DialogInterface paramDialogInterface)
        {
          paramDialogInterface.dismiss();
          MapConstrustionFragmentActivity.this.managerProxy.removeUpdates(MapConstrustionFragmentActivity.this.listener);
        }
      });
      return localProgressDialog2;
      ProgressDialog localProgressDialog1 = new ProgressDialog(this);
      localProgressDialog1.setMessage(getResources().getString(2131296290));
      localProgressDialog1.setOnCancelListener(new DialogInterface.OnCancelListener()
      {
        public void onCancel(DialogInterface paramDialogInterface)
        {
          paramDialogInterface.dismiss();
          if (MapConstrustionFragmentActivity.this.isLocateTaskRunning)
            MapConstrustionFragmentActivity.this.locateTask.cancel(true);
        }
      });
    }
  }

  protected void onResume()
  {
    super.onResume();
    this.title.setText("");
  }

  public void setBounds(String paramString)
  {
    this.Bounds = paramString;
  }

  class DownloadTask extends AsyncTask<Integer, Integer, Boolean>
  {
    DownloadTask()
    {
    }

    protected Boolean doInBackground(Integer[] paramArrayOfInteger)
    {
      if (MapConstrustionFragmentActivity.this.circleProgressBar != null)
        MapConstrustionFragmentActivity.this.circleProgressBar.setVisibility(0);
      Server localServer = MapConstrustionFragmentActivity.this.mHomeApplication.getServer();
      try
      {
        UserArea localUserArea2 = localServer.UserAreas(MapConstrustionFragmentActivity.this.contexts, "0", MapConstrustionFragmentActivity.this.zoneId);
        localUserArea1 = localUserArea2;
        if (localUserArea1 != null)
        {
          MapConstrustionFragmentActivity.this.Bianjie = localUserArea1.getBIANJIE();
          MapConstrustionFragmentActivity.this.CenterPoint = (String.valueOf(localUserArea1.getGEOX()) + "," + String.valueOf(localUserArea1.getGEOY()));
          MapConstrustionFragmentActivity.this.Bounds = (String.valueOf(localUserArea1.getLEFTDOWNX()) + "," + String.valueOf(localUserArea1.getLEFTDOWNY()) + "," + String.valueOf(localUserArea1.geRIGHTUPX()) + "," + String.valueOf(localUserArea1.getRIGHTUPY()));
          MapConstrustionFragmentActivity.this.AreaName = localUserArea1.getAreaName();
        }
      }
      catch (Exception localException1)
      {
        try
        {
          UserArea localUserArea1;
          int i = SettingBase.getListNum(MapConstrustionFragmentActivity.this.mPrefs);
          if (i < 0)
            i = 1000000;
          Group localGroup1;
          if ((MapConstrustionFragmentActivity.classid == 4) || (MapConstrustionFragmentActivity.classid == 6) || (MapConstrustionFragmentActivity.classid == 7))
            localGroup1 = localServer.construstionfield(MapConstrustionFragmentActivity.this.contexts, MapConstrustionFragmentActivity.classid, MapConstrustionFragmentActivity.this.userZoneId, MapConstrustionFragmentActivity.this.days, MapConstrustionFragmentActivity.this.zoneId, "timeup", 0, i, null, null, MapConstrustionFragmentActivity.this.mark);
          Group localGroup2;
          for (Object localObject = localGroup1; ; localObject = localGroup2)
          {
            if (localObject != null)
              MapConstrustionFragmentActivity.this.shops = ((Group)localObject);
            return Boolean.valueOf(true);
            localException1 = localException1;
            localException1.printStackTrace();
            localUserArea1 = null;
            break;
            localGroup2 = localServer.Extra18(MapConstrustionFragmentActivity.this.contexts, MapConstrustionFragmentActivity.classid, MapConstrustionFragmentActivity.this.userZoneId, MapConstrustionFragmentActivity.this.days, MapConstrustionFragmentActivity.this.zoneId, "timeup", 0, i, null, null, null);
          }
        }
        catch (Exception localException2)
        {
          localException2.printStackTrace();
        }
      }
      return (Boolean)Boolean.valueOf(false);
    }

    protected void onPostExecute(Boolean paramBoolean)
    {
      super.onPostExecute(paramBoolean);
      if (paramBoolean.booleanValue())
        MapConstrustionFragmentActivity.this.mHandler.sendEmptyMessage(10);
      while (true)
      {
        MapConstrustionFragmentActivity.this.circleProgressBar.setVisibility(8);
        return;
        Toast.makeText(MapConstrustionFragmentActivity.this, 2131296402, 0).show();
      }
    }

    protected void onPreExecute()
    {
      super.onPreExecute();
      MapConstrustionFragmentActivity.this.circleProgressBar.setIndeterminate(true);
    }

    protected void onProgressUpdate(Integer[] paramArrayOfInteger)
    {
      super.onProgressUpdate(paramArrayOfInteger);
    }
  }

  public class LocatingTask extends AsyncTask<Void, Void, List<Address>>
  {
    private Exception ex;
    private MapConstrustionFragmentActivity mActivity;

    public LocatingTask(MapConstrustionFragmentActivity arg2)
    {
      Object localObject;
      this.mActivity = localObject;
    }

    protected List<Address> doInBackground(Void[] paramArrayOfVoid)
    {
      LatLngBounds localLatLngBounds = MapConstrustionFragmentActivity.this.aMap.getProjection().getVisibleRegion().latLngBounds;
      LatLng localLatLng1 = localLatLngBounds.northeast;
      LatLng localLatLng2 = localLatLngBounds.southwest;
      MapConstrustionFragmentActivity.this.shoplat = ((localLatLng1.latitude + localLatLng2.latitude) / 2.0D);
      MapConstrustionFragmentActivity.this.shoplng = ((localLatLng1.longitude + localLatLng2.longitude) / 2.0D);
      Log.i("MapConstrustionFragmentActivity", "Lat:" + MapConstrustionFragmentActivity.this.shoplat + ",Lng:" + MapConstrustionFragmentActivity.this.shoplng);
      Geocoder localGeocoder = new Geocoder(MapConstrustionFragmentActivity.this);
      try
      {
        List localList = localGeocoder.getFromLocation(MapConstrustionFragmentActivity.this.shoplat, MapConstrustionFragmentActivity.this.shoplng, 1);
        return localList;
      }
      catch (AMapException localAMapException)
      {
        localAMapException.printStackTrace();
        this.ex = localAMapException;
      }
      return null;
    }

    protected void onPreExecute()
    {
      super.onPreExecute();
      this.mActivity.preLocateTask();
    }
  }

  class PaganiteTask extends AsyncTask<Boolean, Integer, Boolean>
  {
    PaganiteTask()
    {
    }

    protected Boolean doInBackground(Boolean[] paramArrayOfBoolean)
    {
      if (MapConstrustionFragmentActivity.this.circleProgressBar != null)
        MapConstrustionFragmentActivity.this.runOnUiThread(new Runnable()
        {
          public void run()
          {
            MapConstrustionFragmentActivity.this.circleProgressBar.setVisibility(0);
          }
        });
      Server localServer = MapConstrustionFragmentActivity.this.mHomeApplication.getServer();
      int i;
      Object localObject;
      try
      {
        i = SettingBase.getListNum(MapConstrustionFragmentActivity.this.mPrefs);
        if (i < 0)
          i = 1000000;
        label149: MapConstrustionFragmentActivity localMapConstrustionFragmentActivity2;
        for (MapConstrustionFragmentActivity.this.currentPageCount = 0; ; localMapConstrustionFragmentActivity2.currentPageCount = (i + localMapConstrustionFragmentActivity2.currentPageCount))
        {
          if ((MapConstrustionFragmentActivity.classid != 4) && (MapConstrustionFragmentActivity.classid != 6) && (MapConstrustionFragmentActivity.classid != 7))
            break label259;
          Group localGroup1 = localServer.construstionfield(MapConstrustionFragmentActivity.this.contexts, MapConstrustionFragmentActivity.classid, MapConstrustionFragmentActivity.this.userZoneId, MapConstrustionFragmentActivity.this.days, MapConstrustionFragmentActivity.this.zoneId, "timeup", MapConstrustionFragmentActivity.this.currentPageCount, i, null, null, MapConstrustionFragmentActivity.this.mark);
          localObject = localGroup1;
          if (localObject != null)
            MapConstrustionFragmentActivity.this.shops = ((Group)localObject);
          return Boolean.valueOf(true);
          if ((paramArrayOfBoolean == null) || (paramArrayOfBoolean.length <= 0) || (!paramArrayOfBoolean[0].booleanValue()))
            break;
          localMapConstrustionFragmentActivity2 = MapConstrustionFragmentActivity.this;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return Boolean.valueOf(false);
      }
      MapConstrustionFragmentActivity localMapConstrustionFragmentActivity1 = MapConstrustionFragmentActivity.this;
      if (MapConstrustionFragmentActivity.this.currentPageCount - i >= 0);
      for (int j = MapConstrustionFragmentActivity.this.currentPageCount - i; ; j = 0)
      {
        localMapConstrustionFragmentActivity1.currentPageCount = j;
        break;
        label259: Group localGroup2 = localServer.Extra18(MapConstrustionFragmentActivity.this.contexts, MapConstrustionFragmentActivity.classid, MapConstrustionFragmentActivity.this.userZoneId, MapConstrustionFragmentActivity.this.days, MapConstrustionFragmentActivity.this.zoneId, "timeup", MapConstrustionFragmentActivity.this.currentPageCount, i, null, null, null);
        localObject = localGroup2;
        break label149;
      }
    }

    protected void onPostExecute(Boolean paramBoolean)
    {
      super.onPostExecute(paramBoolean);
      if (paramBoolean.booleanValue())
        MapConstrustionFragmentActivity.this.mHandler.sendEmptyMessage(2);
      while (true)
      {
        MapConstrustionFragmentActivity.this.circleProgressBar.setVisibility(8);
        return;
        Toast.makeText(MapConstrustionFragmentActivity.this, 2131296402, 0).show();
      }
    }

    protected void onPreExecute()
    {
      super.onPreExecute();
      MapConstrustionFragmentActivity.this.circleProgressBar.setIndeterminate(true);
    }

    protected void onProgressUpdate(Integer[] paramArrayOfInteger)
    {
      super.onProgressUpdate(paramArrayOfInteger);
    }
  }

  class PaginateListener
    implements View.OnClickListener
  {
    boolean forward = true;

    PaginateListener(boolean arg2)
    {
      boolean bool;
      this.forward = bool;
    }

    public void onClick(View paramView)
    {
      MapConstrustionFragmentActivity.PaganiteTask localPaganiteTask = new MapConstrustionFragmentActivity.PaganiteTask(MapConstrustionFragmentActivity.this);
      Boolean[] arrayOfBoolean = new Boolean[1];
      arrayOfBoolean[0] = Boolean.valueOf(this.forward);
      AsyncTaskUtils.execute(localPaganiteTask, arrayOfBoolean);
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.act.MapConstrustionFragmentActivity
 * JD-Core Version:    0.6.0
 */