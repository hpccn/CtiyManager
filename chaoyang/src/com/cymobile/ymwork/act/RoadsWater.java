package com.cymobile.ymwork.act;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.widget.LinearLayout;
import com.amap.api.location.LocationManagerProxy;
import com.amap.api.maps.AMap;
import com.amap.api.maps.SupportMapFragment;
import com.amap.api.maps.UiSettings;

public class RoadsWater extends FragmentActivity
{
  private static int classid = 0;
  private AMap aMap;
  private LocationManagerProxy managerProxy;

  private void ensureUi()
  {
    ((LinearLayout)findViewById(2131230739)).setVisibility(8);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903042);
    ensureUi();
    if (getIntent().getExtras().containsKey("Intent_ClassId"))
      classid = getIntent().getExtras().getInt("Intent_ClassId");
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
 * Qualified Name:     com.cymobile.ymwork.act.RoadsWater
 * JD-Core Version:    0.6.0
 */