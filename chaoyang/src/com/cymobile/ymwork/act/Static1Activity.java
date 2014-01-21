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

public class Static1Activity extends Activity
{
  public static final boolean DEBUG = true;
  public static final String TAG = "Static1Activity";
  private SharedPreferences mPrefs;
  Button shopClass1;
  Button shopClass2;

  private void ensureUi()
  {
    ImageButton localImageButton = (ImageButton)findViewById(2131230765);
    localImageButton.setVisibility(0);
    localImageButton.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        Static1Activity.this.onBackPressed();
      }
    });
    ((Button)findViewById(2131230768)).setVisibility(8);
    ((TextView)findViewById(2131230767)).setText("消防安全-统计分析");
    this.shopClass1 = ((Button)findViewById(2131230747));
    this.shopClass2 = ((Button)findViewById(2131230748));
    this.shopClass1.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        Intent localIntent = new Intent(Static1Activity.this, NewBuildingReportAct.class);
        Static1Activity.this.startActivity(localIntent);
      }
    });
    this.shopClass2.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        Intent localIntent = new Intent(Static1Activity.this, ConstrustionFieldReportAct.class);
        Static1Activity.this.startActivity(localIntent);
      }
    });
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903107);
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
 * Qualified Name:     com.cymobile.ymwork.act.Static1Activity
 * JD-Core Version:    0.6.0
 */