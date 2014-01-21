package com.cymobile.ymwork.act;

import android.app.Activity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.TextView;
import com.cymobile.ymwork.SettingBase;

public class StaticActivity extends Activity
{
  public static final boolean DEBUG = true;
  public static final String TAG = "StaticActivity";
  private SharedPreferences mPrefs;
  Button shopClass1;
  Button shopClass2;
  Button shopClass3;
  public Button shopClass31;
  Button shopClass32;
  Button shopClass4;

  private void ensureUi()
  {
    ImageButton localImageButton = (ImageButton)findViewById(2131230765);
    localImageButton.setVisibility(8);
    localImageButton.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
      }
    });
    ((Button)findViewById(2131230768)).setVisibility(8);
    ((TextView)findViewById(2131230767)).setText(2131296272);
    this.shopClass1 = ((Button)findViewById(2131230747));
    this.shopClass2 = ((Button)findViewById(2131230748));
    this.shopClass3 = ((Button)findViewById(2131230749));
    this.shopClass31 = ((Button)findViewById(2131230999));
    this.shopClass4 = ((Button)findViewById(2131230750));
    String str = this.mPrefs.getString("key_newGlobalUserPhone", null);
    if (((str != null) && (str.equals("13910611195"))) || (str.equals("18601097192")) || (str.equals("13900000000")))
      this.shopClass31.setVisibility(0);
    while (true)
    {
      this.shopClass1.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramView)
        {
          Intent localIntent = new Intent(StaticActivity.this, NewBuildingReportAct.class);
          StaticActivity.this.startActivity(localIntent);
        }
      });
      this.shopClass2.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramView)
        {
          Intent localIntent = new Intent(StaticActivity.this, ConstrustionFieldReportAct.class);
          StaticActivity.this.startActivity(localIntent);
        }
      });
      this.shopClass3.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramView)
        {
          Intent localIntent = new Intent(StaticActivity.this, FireServiceReportAct.class);
          StaticActivity.this.startActivity(localIntent);
        }
      });
      this.shopClass31.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramView)
        {
          Intent localIntent = new Intent(StaticActivity.this, VisitorvolumeReportAct.class);
          StaticActivity.this.startActivity(localIntent);
        }
      });
      this.shopClass4.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramView)
        {
          Intent localIntent = new Intent(StaticActivity.this, PublicReportAct.class);
          StaticActivity.this.startActivity(localIntent);
        }
      });
      return;
      this.shopClass31.setVisibility(4);
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903108);
    this.mPrefs = getSharedPreferences(SettingBase.class.getName(), 2);
    ensureUi();
  }

  public void onDestroy()
  {
    super.onDestroy();
  }

  public void onPause()
  {
    super.onPause();
  }

  public void onResume()
  {
    super.onResume();
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.act.StaticActivity
 * JD-Core Version:    0.6.0
 */