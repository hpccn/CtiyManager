package com.cymobile.ymwork.act;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.os.IBinder;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.ImageButton;
import android.widget.RadioButton;
import android.widget.TextView;
import com.cymobile.ymwork.ISystemService;
import com.cymobile.ymwork.ISystemService.Stub;
import com.cymobile.ymwork.SettingBase;
import com.cymobile.ymwork.SystemService;
import com.cymobile.ymwork.adapter.FilterDataSource;
import com.cymobile.ymwork.preference.PreferencesUtils;

public class SetZoneActivity extends Activity
{
  public static final String Intent_zone = "Intent_zone";
  private static final String TAG = "SetZoneActivity";
  public ISystemService iSystemService;
  SharedPreferences mPrefs;
  private final ServiceConnection serviceConnection = new ServiceConnection()
  {
    public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
    {
      SetZoneActivity.this.iSystemService = ISystemService.Stub.asInterface(paramIBinder);
    }

    public void onServiceDisconnected(ComponentName paramComponentName)
    {
      SetZoneActivity.this.iSystemService = null;
    }
  };

  private void ensureUi()
  {
    ((ImageButton)findViewById(2131230765)).setVisibility(4);
    ((Button)findViewById(2131230768)).setVisibility(4);
    ((TextView)findViewById(2131230767)).setText(2131296448);
    RadioButton localRadioButton1 = (RadioButton)findViewById(2131230928);
    RadioButton localRadioButton2 = (RadioButton)findViewById(2131230929);
    RadioButton localRadioButton3 = (RadioButton)findViewById(2131230930);
    Button localButton = (Button)findViewById(2131230931);
    localRadioButton1.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(localButton)
    {
      public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
      {
        if (paramBoolean)
        {
          this.val$setzone_submit_button.setText(2131296454);
          return;
        }
        this.val$setzone_submit_button.setText(2131296455);
      }
    });
    localButton.setOnClickListener(new View.OnClickListener(localRadioButton1, localRadioButton2, localRadioButton3)
    {
      public void onClick(View paramView)
      {
        if (this.val$wholezone.isChecked())
        {
          SetZoneActivity.this.setZoneWholeZone();
          if (SetZoneActivity.this.iSystemService != null)
            SetZoneActivity.this.readNumberFromService();
          SetZoneActivity.this.gotoRister();
        }
        do
        {
          return;
          if (!this.val$street.isChecked())
            continue;
          Intent localIntent1 = new Intent(SetZoneActivity.this, SetZoneActivity1.class);
          localIntent1.putExtra("Intent_zone", 1);
          SetZoneActivity.this.startActivity(localIntent1);
          SetZoneActivity.this.finish();
          return;
        }
        while (!this.val$community.isChecked());
        Intent localIntent2 = new Intent(SetZoneActivity.this, SetZoneActivity1.class);
        localIntent2.putExtra("Intent_zone", 2);
        SetZoneActivity.this.startActivity(localIntent2);
        SetZoneActivity.this.finish();
      }
    });
  }

  private void gotoRister()
  {
    startActivity(new Intent(this, RegisterActivity.class));
    finish();
  }

  private void readNumberFromService()
  {
    if (this.iSystemService != null);
    try
    {
      this.iSystemService.clearNumbers();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  private void setZoneWholeZone()
  {
    PreferencesUtils.emptySubZone();
    SharedPreferences.Editor localEditor = this.mPrefs.edit();
    localEditor.putString("key_GlobalZoneId", "110105");
    localEditor.putString("key_GlobalZoneName", "朝阳区");
    FilterDataSource.resetTOPCategory(Long.parseLong("110105"), "朝阳区");
    localEditor.commit();
  }

  public void cancel(View paramView)
  {
    onBackPressed();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903092);
    this.mPrefs = getSharedPreferences(SettingBase.class.getName(), 2);
    ensureUi();
  }

  public void onResume()
  {
    super.onResume();
    Intent localIntent = new Intent(this, SystemService.class);
    startService(localIntent);
    getApplicationContext().bindService(localIntent, this.serviceConnection, 1);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.act.SetZoneActivity
 * JD-Core Version:    0.6.0
 */