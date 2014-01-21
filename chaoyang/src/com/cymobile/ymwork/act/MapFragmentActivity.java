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
import com.cymobile.ymwork.types.Building;
import com.cymobile.ymwork.types.Group;
import com.cymobile.ymwork.types.UserArea;
import com.cymobile.ymwork.utils.AsyncTaskUtils;
import java.util.List;

public class MapFragmentActivity extends FragmentActivity
{
  private static final int DIALOG_SHOW_HANDLING_PROGRESS = 12;
  private static final int DIALOG_SHOW_LOCATING_PROGRESS = 20;
  private static final int MESSAGE_USE_DEFAULT_LOCATION = 101;
  private static final int MSG_LoadDone = 10;
  private static final int MSG_PageLoadDone = 2;
  private static final int POSITION_TIME_OUT = 10000;
  private static final String TAG = "MapFragmentActivity";
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
  Context contexts;
  int currentPageCount = 0;
  private int days = 1;
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
      MapFragmentActivity.this.mHandler.sendMessage(localMessage);
    }

    public void onLocationChanged(AMapLocation paramAMapLocation)
    {
      Message localMessage = new Message();
      localMessage.obj = paramAMapLocation;
      MapFragmentActivity.this.mHandler.sendMessage(localMessage);
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
          if (MapFragmentActivity.this.bd == null);
          try
          {
            MapFragmentActivity.this.mapFragment = new MapDetailFragment();
            MapFragmentActivity.this.getSupportFragmentManager().beginTransaction().add(2131230736, MapFragmentActivity.this.mapFragment).commit();
            localTextView = (TextView)MapFragmentActivity.this.findViewById(2131230767);
            if (MapFragmentActivity.this.AreaName == null)
              MapFragmentActivity.this.AreaName = "";
            if (MapFragmentActivity.this.shops.getNumber() == 0)
              if (MapFragmentActivity.classid == 0)
              {
                localTextView.setText("新增建筑");
                MapFragmentActivity.this.resetPaginate();
                return;
              }
          }
          catch (Exception localException3)
          {
            while (true)
            {
              TextView localTextView;
              localException3.printStackTrace();
              continue;
              if (MapFragmentActivity.classid == 1)
              {
                localTextView.setText("疑似新增建筑");
                continue;
              }
              if (MapFragmentActivity.classid != 2)
                continue;
              localTextView.setText("公众举报违建");
              continue;
              if (MapFragmentActivity.classid == 0)
              {
                localTextView.setText("新增建筑【共" + MapFragmentActivity.this.shops.getNumber() + "件】");
                continue;
              }
              if (MapFragmentActivity.classid == 1)
              {
                localTextView.setText("疑似新增建筑【共" + MapFragmentActivity.this.shops.getNumber() + "件】");
                continue;
              }
              if (MapFragmentActivity.classid != 2)
                continue;
              localTextView.setText("公众举报违建【共" + MapFragmentActivity.this.shops.getNumber() + "件】");
            }
          }
        case 2:
          MapFragmentActivity.this.mapFragment.setUpMap();
          MapFragmentActivity.this.resetPaginate();
          return;
        case 101:
        }
        if (MapFragmentActivity.this.mLocation == null)
        {
          float f2 = MapFragmentActivity.this.aMap.getCameraPosition().zoom;
          MapFragmentActivity.this.aMap.animateCamera(CameraUpdateFactory.newLatLngZoom(new LatLng(39.922837000000001D, 116.443398D), f2));
          if (MapFragmentActivity.this.isProgressShowing)
          {
            MapFragmentActivity.this.dismissDialog(20);
            MapFragmentActivity.this.isProgressShowing = false;
          }
        }
        try
        {
          MapFragmentActivity.this.managerProxy.removeUpdates(MapFragmentActivity.this.listener);
          return;
        }
        catch (Exception localException2)
        {
          localException2.printStackTrace();
          return;
        }
      }
      MapFragmentActivity.this.mLocation = ((Location)paramMessage.obj);
      float f1 = MapFragmentActivity.this.aMap.getCameraPosition().zoom;
      MapFragmentActivity.this.aMap.animateCamera(CameraUpdateFactory.newLatLngZoom(new LatLng(MapFragmentActivity.this.mLocation.getLatitude(), MapFragmentActivity.this.mLocation.getLongitude()), f1));
      if (MapFragmentActivity.this.isProgressShowing)
      {
        MapFragmentActivity.this.dismissDialog(20);
        MapFragmentActivity.this.isProgressShowing = false;
      }
      try
      {
        MapFragmentActivity.this.managerProxy.removeUpdates(MapFragmentActivity.this.listener);
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
  MapDetailFragment mapFragment;
  private boolean mapNormal = true;
  ImageView right_to_button;
  private double shoplat = 0.0D;
  private double shoplng = 0.0D;
  private Group<Building> shops = new Group();
  TextView showpaginate;
  String userZoneId;
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
        MapFragmentActivity.this.onBackPressed();
      }
    });
    this.backImageView = ((ImageView)findViewById(2131230743));
    this.centerView = ((ImageView)findViewById(2131230744));
    this.backImageView.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        MapFragmentActivity.this.centerView.setVisibility(0);
        if (MapFragmentActivity.this.mLocation != null)
        {
          float f = MapFragmentActivity.this.aMap.getCameraPosition().zoom;
          MapFragmentActivity.this.aMap.animateCamera(CameraUpdateFactory.newLatLngZoom(new LatLng(MapFragmentActivity.this.mLocation.getLatitude(), MapFragmentActivity.this.mLocation.getLongitude()), f));
          if (MapFragmentActivity.this.isProgressShowing)
          {
            MapFragmentActivity.this.dismissDialog(20);
            MapFragmentActivity.this.isProgressShowing = false;
          }
          return;
        }
        MapFragmentActivity.this.startLocating();
        MapFragmentActivity.this.doLocating();
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
        ImageButton localImageButton = (ImageButton)MapFragmentActivity.this.findViewById(2131230745);
        if ((MapFragmentActivity.this.mapFragment != null) && (MapFragmentActivity.this.mapFragment.getMap() != null))
        {
          if (MapFragmentActivity.this.mapNormal)
          {
            MapFragmentActivity.this.mapNormal = false;
            MapFragmentActivity.this.mapFragment.getMap().setMapType(2);
            localImageButton.setBackgroundResource(2130837849);
          }
        }
        else
          return;
        MapFragmentActivity.this.mapNormal = true;
        MapFragmentActivity.this.mapFragment.getMap().setMapType(1);
        MapFragmentActivity.this.mapFragment.getMap().setTrafficEnabled(true);
        localImageButton.setBackgroundResource(2130837848);
      }
    });
    Button localButton = (Button)findViewById(2131230769);
    localButton.setText("列表模式");
    localButton.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        Intent localIntent = new Intent(MapFragmentActivity.this, NearbySearchActivity.class);
        localIntent.putExtra("Intent_ClassId", MapFragmentActivity.classid);
        if (MapFragmentActivity.this.zoneId != null)
          localIntent.putExtra("Intent_ZoneId", MapFragmentActivity.this.zoneId);
        localIntent.putExtra("Intent_Days", MapFragmentActivity.this.days);
        MapFragmentActivity.this.startActivity(localIntent);
        MapFragmentActivity.this.finish();
      }
    });
    TextView localTextView = (TextView)findViewById(2131230767);
    if (classid == 0)
      localTextView.setText("最新新增建筑");
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
        localTextView.setText("最新疑似新增建筑");
        continue;
      }
      if (classid != 2)
        continue;
      localTextView.setText("最新公众举报违建");
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

  public Group<Building> getBuildings()
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

  public Group<Building> getShops()
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
      if (getIntent().getExtras().containsKey("Intent_ZoneId"));
      for (this.zoneId = getIntent().getExtras().getString("Intent_ZoneId"); ; this.zoneId = this.mPrefs.getString("key_GlobalZoneId", null))
      {
        if (getIntent().getExtras().containsKey("Intent_Days"))
          this.days = getIntent().getExtras().getInt("Intent_Days");
        this.mHomeApplication = ((HomeApplication)getApplication());
        this.userZoneId = this.mPrefs.getString("key_GlobalZoneId", null);
        this.circleProgressBar = ((ProgressBar)findViewById(2131230738));
        this.circleProgressBar.setIndeterminate(false);
        this.circleProgressBar.setMax(100);
        this.bd = paramBundle;
        DownloadTask localDownloadTask = new DownloadTask();
        Integer[] arrayOfInteger = new Integer[1];
        arrayOfInteger[0] = Integer.valueOf(100);
        AsyncTaskUtils.execute(localDownloadTask, arrayOfInteger);
        return;
      }
    }
    finish();
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
          MapFragmentActivity.this.managerProxy.removeUpdates(MapFragmentActivity.this.listener);
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
          if (MapFragmentActivity.this.isLocateTaskRunning)
            MapFragmentActivity.this.locateTask.cancel(true);
        }
      });
    }
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
      if (MapFragmentActivity.this.circleProgressBar != null)
        MapFragmentActivity.this.circleProgressBar.setVisibility(0);
      Server localServer = MapFragmentActivity.this.mHomeApplication.getServer();
      try
      {
        UserArea localUserArea2 = localServer.UserAreas(MapFragmentActivity.this.contexts, "0", MapFragmentActivity.this.zoneId);
        localUserArea1 = localUserArea2;
        if (localUserArea1 != null)
        {
          MapFragmentActivity.this.Bianjie = localUserArea1.getBIANJIE();
          MapFragmentActivity.this.CenterPoint = (String.valueOf(localUserArea1.getGEOX()) + "," + String.valueOf(localUserArea1.getGEOY()));
          MapFragmentActivity.this.Bounds = (String.valueOf(localUserArea1.getLEFTDOWNX()) + "," + String.valueOf(localUserArea1.getLEFTDOWNY()) + "," + String.valueOf(localUserArea1.geRIGHTUPX()) + "," + String.valueOf(localUserArea1.getRIGHTUPY()));
          MapFragmentActivity.this.AreaName = localUserArea1.getAreaName();
        }
      }
      catch (Exception localException1)
      {
        try
        {
          int i = SettingBase.getListNum(MapFragmentActivity.this.mPrefs);
          if (i < 0)
            i = 1000000;
          Group localGroup = localServer.buildings(MapFragmentActivity.this.contexts, MapFragmentActivity.classid, MapFragmentActivity.this.userZoneId, MapFragmentActivity.this.days, MapFragmentActivity.this.zoneId, "timeup", 0, i, null);
          if (localGroup != null)
            MapFragmentActivity.this.shops = localGroup;
          return Boolean.valueOf(true);
          localException1 = localException1;
          localException1.printStackTrace();
          UserArea localUserArea1 = null;
        }
        catch (Exception localException2)
        {
          localException2.printStackTrace();
        }
      }
      return Boolean.valueOf(false);
    }

    protected void onPostExecute(Boolean paramBoolean)
    {
      super.onPostExecute(paramBoolean);
      if (paramBoolean.booleanValue())
        MapFragmentActivity.this.mHandler.sendEmptyMessage(10);
      while (true)
      {
        MapFragmentActivity.this.circleProgressBar.setVisibility(8);
        return;
        Toast.makeText(MapFragmentActivity.this, 2131296402, 0).show();
      }
    }

    protected void onPreExecute()
    {
      super.onPreExecute();
      MapFragmentActivity.this.circleProgressBar.setIndeterminate(true);
    }

    protected void onProgressUpdate(Integer[] paramArrayOfInteger)
    {
      super.onProgressUpdate(paramArrayOfInteger);
    }
  }

  public class LocatingTask extends AsyncTask<Void, Void, List<Address>>
  {
    private Exception ex;
    private MapFragmentActivity mActivity;

    public LocatingTask(MapFragmentActivity arg2)
    {
      Object localObject;
      this.mActivity = localObject;
    }

    protected List<Address> doInBackground(Void[] paramArrayOfVoid)
    {
      LatLngBounds localLatLngBounds = MapFragmentActivity.this.aMap.getProjection().getVisibleRegion().latLngBounds;
      LatLng localLatLng1 = localLatLngBounds.northeast;
      LatLng localLatLng2 = localLatLngBounds.southwest;
      MapFragmentActivity.this.shoplat = ((localLatLng1.latitude + localLatLng2.latitude) / 2.0D);
      MapFragmentActivity.this.shoplng = ((localLatLng1.longitude + localLatLng2.longitude) / 2.0D);
      Log.i("MapFragmentActivity", "Lat:" + MapFragmentActivity.this.shoplat + ",Lng:" + MapFragmentActivity.this.shoplng);
      Geocoder localGeocoder = new Geocoder(MapFragmentActivity.this);
      try
      {
        List localList = localGeocoder.getFromLocation(MapFragmentActivity.this.shoplat, MapFragmentActivity.this.shoplng, 1);
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
      if (MapFragmentActivity.this.circleProgressBar != null)
        MapFragmentActivity.this.runOnUiThread(new Runnable()
        {
          public void run()
          {
            MapFragmentActivity.this.circleProgressBar.setVisibility(0);
          }
        });
      Server localServer = MapFragmentActivity.this.mHomeApplication.getServer();
      int i;
      try
      {
        i = SettingBase.getListNum(MapFragmentActivity.this.mPrefs);
        if (i < 0)
          i = 1000000;
        MapFragmentActivity localMapFragmentActivity2;
        for (MapFragmentActivity.this.currentPageCount = 0; ; localMapFragmentActivity2.currentPageCount = (i + localMapFragmentActivity2.currentPageCount))
        {
          Group localGroup = localServer.buildings(MapFragmentActivity.this.contexts, MapFragmentActivity.classid, MapFragmentActivity.this.userZoneId, MapFragmentActivity.this.days, MapFragmentActivity.this.zoneId, "timeup", MapFragmentActivity.this.currentPageCount, i, null);
          if (localGroup != null)
            MapFragmentActivity.this.shops = localGroup;
          return Boolean.valueOf(true);
          if ((paramArrayOfBoolean == null) || (paramArrayOfBoolean.length <= 0) || (!paramArrayOfBoolean[0].booleanValue()))
            break;
          localMapFragmentActivity2 = MapFragmentActivity.this;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return Boolean.valueOf(false);
      }
      MapFragmentActivity localMapFragmentActivity1 = MapFragmentActivity.this;
      if (MapFragmentActivity.this.currentPageCount - i >= 0);
      for (int j = MapFragmentActivity.this.currentPageCount - i; ; j = 0)
      {
        localMapFragmentActivity1.currentPageCount = j;
        break;
      }
    }

    protected void onPostExecute(Boolean paramBoolean)
    {
      super.onPostExecute(paramBoolean);
      if (paramBoolean.booleanValue())
        MapFragmentActivity.this.mHandler.sendEmptyMessage(2);
      while (true)
      {
        MapFragmentActivity.this.circleProgressBar.setVisibility(8);
        return;
        Toast.makeText(MapFragmentActivity.this, 2131296402, 0).show();
      }
    }

    protected void onPreExecute()
    {
      super.onPreExecute();
      MapFragmentActivity.this.circleProgressBar.setIndeterminate(true);
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
      MapFragmentActivity.PaganiteTask localPaganiteTask = new MapFragmentActivity.PaganiteTask(MapFragmentActivity.this);
      Boolean[] arrayOfBoolean = new Boolean[1];
      arrayOfBoolean[0] = Boolean.valueOf(this.forward);
      AsyncTaskUtils.execute(localPaganiteTask, arrayOfBoolean);
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.act.MapFragmentActivity
 * JD-Core Version:    0.6.0
 */