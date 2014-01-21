package com.cymobile.ymwork.act;

import android.location.Location;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.amap.api.location.LocationManagerProxy;
import com.amap.api.maps.AMap;
import com.amap.api.maps.CameraUpdateFactory;
import com.amap.api.maps.SupportMapFragment;
import com.amap.api.maps.UiSettings;
import com.amap.api.maps.model.CameraPosition;
import com.amap.api.maps.model.LatLng;

public class RoadsWaterActivity extends FragmentActivity
{
  private static int classid = 0;
  public String Bianjie1 = "";
  public String Bounds1 = "";
  public String CenterPoint1 = "";
  private AMap aMap;
  private Location mLocation = null;
  private LocationManagerProxy managerProxy;
  MapDetailFragment mapFragment;
  private boolean mapNormal = true;

  private void ensureUi()
  {
    ((ImageButton)findViewById(2131230765)).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        RoadsWaterActivity.this.onBackPressed();
      }
    });
    ((ImageButton)findViewById(2131230768)).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        ImageButton localImageButton = (ImageButton)RoadsWaterActivity.this.findViewById(2131230768);
        if ((RoadsWaterActivity.this.mapFragment != null) && (RoadsWaterActivity.this.mapFragment.getMap() != null))
        {
          if (RoadsWaterActivity.this.mapNormal)
          {
            RoadsWaterActivity.this.mapNormal = false;
            RoadsWaterActivity.this.mapFragment.getMap().setMapType(2);
            localImageButton.setBackgroundResource(2130837849);
          }
        }
        else
          return;
        RoadsWaterActivity.this.mapNormal = true;
        RoadsWaterActivity.this.mapFragment.getMap().setMapType(1);
        localImageButton.setBackgroundResource(2130837848);
      }
    });
    if (this.mLocation != null)
    {
      float f = this.aMap.getCameraPosition().zoom;
      this.aMap.animateCamera(CameraUpdateFactory.newLatLngZoom(new LatLng(this.mLocation.getLatitude(), this.mLocation.getLongitude()), f));
    }
    ((LinearLayout)findViewById(2131230739)).setVisibility(8);
    ((TextView)findViewById(2131230767)).setText("最新道路积水【共24件】");
  }

  public String getBianjie1()
  {
    return this.Bianjie1;
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903042);
    ensureUi();
    if (this.aMap == null)
    {
      this.aMap = ((SupportMapFragment)getSupportFragmentManager().findFragmentById(2131230737)).getMap();
      this.managerProxy = LocationManagerProxy.getInstance(this);
      if (this.aMap != null)
        this.aMap.getUiSettings().setZoomControlsEnabled(false);
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.act.RoadsWaterActivity
 * JD-Core Version:    0.6.0
 */