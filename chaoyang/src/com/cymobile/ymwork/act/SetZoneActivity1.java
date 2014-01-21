package com.cymobile.ymwork.act;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;
import com.cymobile.ymwork.HomeApplication;
import com.cymobile.ymwork.ISystemService;
import com.cymobile.ymwork.ISystemService.Stub;
import com.cymobile.ymwork.SettingBase;
import com.cymobile.ymwork.SystemService;
import com.cymobile.ymwork.preference.PreferencesUtils;
import com.cymobile.ymwork.server.Server;
import com.cymobile.ymwork.types.Group;
import com.cymobile.ymwork.types.Zone;
import com.cymobile.ymwork.utils.AsyncTaskUtils;

public class SetZoneActivity1 extends Activity
{
  private static final int Dialog_networkproblem = 11;
  private static final int Msg_intent_resetCommunitySpinner = 12;
  private static final int Msg_intent_resetStreetSpinner = 11;
  private static final String TAG = "SetZoneActivity1";
  private Spinner communityZoneSpinner;
  Group<Zone> communityZones;
  private Context contexts;
  Handler handler = new UIHandler();
  public ISystemService iSystemService;
  private AsyncTask<Void, Void, Boolean> mGetCommunityZoneTask;
  private AsyncTask<Void, Void, Boolean> mGetZoneTask;
  SharedPreferences mPrefs;
  private ProgressDialog mProgressDialog;
  private final ServiceConnection serviceConnection = new ServiceConnection()
  {
    public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
    {
      SetZoneActivity1.this.iSystemService = ISystemService.Stub.asInterface(paramIBinder);
    }

    public void onServiceDisconnected(ComponentName paramComponentName)
    {
      SetZoneActivity1.this.iSystemService = null;
    }
  };
  private Spinner streetZoneSpinner;
  Group<Zone> streetZones;
  int zoneIntent = 1;

  private void clearNumbers()
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

  private void dismissProgressDialog()
  {
    try
    {
      this.mProgressDialog.dismiss();
      return;
    }
    catch (Exception localException)
    {
    }
  }

  private void ensureUi()
  {
    ((ImageButton)findViewById(2131230765)).setVisibility(4);
    Button localButton = (Button)findViewById(2131230768);
    localButton.setText(2131296483);
    localButton.setVisibility(0);
    localButton.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        Intent localIntent = new Intent(SetZoneActivity1.this, SetZoneActivity.class);
        SetZoneActivity1.this.startActivity(localIntent);
        SetZoneActivity1.this.finish();
      }
    });
    ((TextView)findViewById(2131230767)).setText(2131296448);
    ((Button)findViewById(2131230931)).setEnabled(false);
    this.streetZoneSpinner = ((Spinner)findViewById(2131230933));
    this.streetZoneSpinner.setOnTouchListener(new View.OnTouchListener()
    {
      public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
      {
        ((InputMethodManager)SetZoneActivity1.this.getApplicationContext().getSystemService("input_method")).hideSoftInputFromWindow(SetZoneActivity1.this.streetZoneSpinner.getWindowToken(), 0);
        return false;
      }
    });
    this.communityZoneSpinner = ((Spinner)findViewById(2131230935));
    if (this.zoneIntent == 1)
      if ((PreferencesUtils.getStreetZone() != null) && (PreferencesUtils.getStreetZone().size() > 0))
        resetStreetZoneSpinner();
    while (true)
    {
      this.streetZoneSpinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener()
      {
        public void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
        {
          if (SetZoneActivity1.this.zoneIntent == 2)
            SetZoneActivity1.this.requestCommunitySpinner();
        }

        public void onNothingSelected(AdapterView<?> paramAdapterView)
        {
        }
      });
      this.communityZoneSpinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener()
      {
        public void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
        {
        }

        public void onNothingSelected(AdapterView<?> paramAdapterView)
        {
        }
      });
      return;
      resetStreetZoneSpinner();
      this.mGetZoneTask = new GetStreetZoneTask();
      showProgressDialog();
      AsyncTaskUtils.execute(this.mGetZoneTask);
      continue;
      if (this.zoneIntent != 2)
        continue;
      if ((PreferencesUtils.getStreetZone() != null) && (PreferencesUtils.getStreetZone().size() > 0))
      {
        resetStreetZoneSpinner();
        continue;
      }
      resetStreetZoneSpinner();
      this.mGetZoneTask = new GetStreetZoneTask();
      showProgressDialog();
      AsyncTaskUtils.execute(this.mGetZoneTask);
    }
  }

  private void gotoRigster()
  {
    startActivity(new Intent(this, RegisterActivity.class));
    finish();
  }

  private void requestCommunitySpinner()
  {
    showProgressDialog();
    this.mGetCommunityZoneTask = new GetCommunityZoneTask();
    AsyncTaskUtils.execute(this.mGetCommunityZoneTask);
  }

  private void resetCommunityZoneSpinner()
  {
    if (this.zoneIntent == 2)
    {
      String[] arrayOfString;
      if ((this.communityZones == null) || (this.communityZones.size() == 0))
        arrayOfString = new String[0];
      while (true)
      {
        Spinner localSpinner = (Spinner)findViewById(2131230935);
        localSpinner.setAdapter(new ArrayAdapter(this, 2130903111, arrayOfString));
        if ((this.communityZones != null) && (this.communityZones.size() > 0))
        {
          localSpinner.setSelection(0);
          ((Button)findViewById(2131230931)).setEnabled(true);
        }
        return;
        arrayOfString = new String[this.communityZones.size()];
        for (int i = 0; i < this.communityZones.size(); i++)
          arrayOfString[i] = ((Zone)this.communityZones.get(i)).getZoneName();
      }
    }
    Log.i("SetZoneActivity1", "Error");
  }

  private void resetStreetZoneSpinner()
  {
    Group localGroup = PreferencesUtils.getStreetZone();
    String[] arrayOfString;
    if ((localGroup == null) || (localGroup.size() == 0))
    {
      arrayOfString = new String[0];
      Spinner localSpinner = (Spinner)findViewById(2131230933);
      localSpinner.setAdapter(new ArrayAdapter(this, 2130903111, arrayOfString));
      if ((localGroup != null) && (localGroup.size() > 0))
      {
        localSpinner.setSelection(0);
        if (this.zoneIntent != 1)
          break label152;
        ((Button)findViewById(2131230931)).setEnabled(true);
      }
    }
    label152: 
    do
      try
      {
        this.streetZoneSpinner.postDelayed(new Runnable()
        {
          public void run()
          {
            if (!SetZoneActivity1.this.isFinishing())
              SetZoneActivity1.this.streetZoneSpinner.performClick();
          }
        }
        , 300L);
        return;
        arrayOfString = new String[localGroup.size()];
        for (int i = 0; i < localGroup.size(); i++)
          arrayOfString[i] = ((Zone)localGroup.get(i)).getZoneName();
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return;
      }
    while (this.zoneIntent != 2);
    ((LinearLayout)findViewById(2131230934)).setVisibility(0);
    requestCommunitySpinner();
  }

  private ProgressDialog showProgressDialog()
  {
    if (this.mProgressDialog == null)
    {
      ProgressDialog localProgressDialog = new ProgressDialog(this);
      localProgressDialog.setTitle(2131296364);
      localProgressDialog.setMessage(getString(2131296365));
      localProgressDialog.setIndeterminate(true);
      localProgressDialog.setCancelable(true);
      this.mProgressDialog = localProgressDialog;
    }
    this.mProgressDialog.show();
    return this.mProgressDialog;
  }

  public void cancel(View paramView)
  {
    onBackPressed();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903093);
    this.mPrefs = getSharedPreferences(SettingBase.class.getName(), 2);
    this.contexts = this;
    if (getIntent() != null)
    {
      Intent localIntent = getIntent();
      if ((localIntent.getExtras() != null) && (localIntent.getExtras().containsKey("Intent_zone")))
        this.zoneIntent = localIntent.getIntExtra("Intent_zone", 1);
    }
    ensureUi();
  }

  protected Dialog onCreateDialog(int paramInt)
  {
    if (paramInt == 11)
    {
      AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
      localBuilder.setMessage(2131296363);
      localBuilder.setTitle(2131296484);
      localBuilder.setPositiveButton(2131296280, new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramDialogInterface, int paramInt)
        {
          paramDialogInterface.dismiss();
          SetZoneActivity1.this.finish();
        }
      });
      return localBuilder.create();
    }
    return this.mProgressDialog;
  }

  public void onResume()
  {
    super.onResume();
    Intent localIntent = new Intent(this, SystemService.class);
    startService(localIntent);
    getApplicationContext().bindService(localIntent, this.serviceConnection, 1);
  }

  public void submit(View paramView)
  {
    if (this.zoneIntent == 1)
    {
      int j = this.streetZoneSpinner.getSelectedItemPosition();
      if ((PreferencesUtils.getStreetZone() != null) && (PreferencesUtils.getStreetZone().size() > j))
      {
        SharedPreferences.Editor localEditor2 = this.mPrefs.edit();
        localEditor2.putString("key_GlobalZoneId", ((Zone)PreferencesUtils.getStreetZone().get(j)).getZoneid());
        localEditor2.putString("key_GlobalZoneName", ((Zone)PreferencesUtils.getStreetZone().get(j)).getZoneName());
        localEditor2.commit();
        PreferencesUtils.emptySubZone();
        if (this.iSystemService != null)
          clearNumbers();
        gotoRigster();
      }
    }
    else if (this.zoneIntent == 2)
    {
      PreferencesUtils.auotLoginSuper(this.mPrefs);
      int i = this.communityZoneSpinner.getSelectedItemPosition();
      if ((this.communityZones == null) || (this.communityZones.size() <= i))
        break label263;
      SharedPreferences.Editor localEditor1 = this.mPrefs.edit();
      localEditor1.putString("key_GlobalZoneId", ((Zone)this.communityZones.get(i)).getZoneid());
      localEditor1.putString("key_GlobalZoneName", ((Zone)this.communityZones.get(i)).getZoneName());
      localEditor1.commit();
      PreferencesUtils.emptySubZone();
    }
    while (true)
    {
      if (this.iSystemService != null)
        clearNumbers();
      gotoRigster();
      return;
      Log.i("SetZoneActivity1", "error 1");
      break;
      label263: Log.i("SetZoneActivity1", "error 1");
    }
  }

  private class GetCommunityZoneTask extends AsyncTask<Void, Void, Boolean>
  {
    private Exception mReason;

    public GetCommunityZoneTask()
    {
    }

    protected Boolean doInBackground(Void[] paramArrayOfVoid)
    {
      Server localServer = ((HomeApplication)SetZoneActivity1.this.getApplication()).getServer();
      try
      {
        int i = SetZoneActivity1.this.streetZoneSpinner.getSelectedItemPosition();
        if ((PreferencesUtils.getStreetZone() != null) && (PreferencesUtils.getStreetZone().size() > i))
        {
          String str = ((Zone)PreferencesUtils.getStreetZone().get(i)).getZoneid();
          Group localGroup = localServer.getZone(SetZoneActivity1.this.contexts, str);
          bool = false;
          if (localGroup != null)
          {
            int j = localGroup.size();
            bool = false;
            if (j > 0)
            {
              SetZoneActivity1.this.communityZones = localGroup;
              bool = true;
            }
          }
          return Boolean.valueOf(bool);
        }
        throw new Exception("wrong");
      }
      catch (Exception localException)
      {
        while (true)
        {
          localException.printStackTrace();
          this.mReason = localException;
          boolean bool = false;
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
        Toast.makeText(SetZoneActivity1.this, 2131296363, 1).show();
        SetZoneActivity1.this.finish();
        return;
      }
      SetZoneActivity1.this.handler.sendEmptyMessage(12);
    }

    protected void onPreExecute()
    {
    }
  }

  private class GetStreetZoneTask extends AsyncTask<Void, Void, Boolean>
  {
    private Exception mReason;

    public GetStreetZoneTask()
    {
    }

    protected Boolean doInBackground(Void[] paramArrayOfVoid)
    {
      Server localServer = ((HomeApplication)SetZoneActivity1.this.getApplication()).getServer();
      try
      {
        Group localGroup = localServer.getZone(SetZoneActivity1.this.contexts, "110105");
        bool = false;
        if (localGroup != null)
        {
          int i = localGroup.size();
          bool = false;
          if (i > 0)
          {
            SetZoneActivity1.this.streetZones = localGroup;
            PreferencesUtils.setStreetZone(SetZoneActivity1.this.streetZones);
            bool = true;
          }
        }
        return Boolean.valueOf(bool);
      }
      catch (Exception localException)
      {
        while (true)
        {
          localException.printStackTrace();
          this.mReason = localException;
          boolean bool = false;
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
        SetZoneActivity1.this.showDialog(11);
        return;
      }
      SetZoneActivity1.this.handler.sendEmptyMessage(11);
    }

    protected void onPreExecute()
    {
    }
  }

  class UIHandler extends Handler
  {
    UIHandler()
    {
    }

    public void handleMessage(Message paramMessage)
    {
      if (paramMessage.what == 11)
      {
        SetZoneActivity1.this.resetStreetZoneSpinner();
        SetZoneActivity1.this.dismissProgressDialog();
      }
      do
        return;
      while (paramMessage.what != 12);
      SetZoneActivity1.this.resetCommunityZoneSpinner();
      SetZoneActivity1.this.dismissProgressDialog();
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.act.SetZoneActivity1
 * JD-Core Version:    0.6.0
 */