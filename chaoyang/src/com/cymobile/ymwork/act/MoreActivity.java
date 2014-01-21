package com.cymobile.ymwork.act;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.cymobile.ymwork.HomeApplication;
import com.cymobile.ymwork.ISystemService;
import com.cymobile.ymwork.ISystemService.Stub;
import com.cymobile.ymwork.SettingBase;
import com.cymobile.ymwork.SystemService;

public class MoreActivity extends Activity
{
  private static final int Dialog_config_Listnum = 13;
  private static final int Dialog_config_Notif = 12;
  private static final int Dialog_confirm_Logout = 11;
  private static final String TAG = "MoreActivity";
  Handler handler;
  HomeApplication homeApplication;
  public ISystemService iSystemService;
  boolean isAdmin = false;
  SharedPreferences mPrefs;
  private ProgressDialog mProgressDialog;
  private BroadcastReceiver mRequestReceiver = new BroadcastReceiver()
  {
    public void onReceive(Context paramContext, Intent paramIntent)
    {
      if ((paramIntent == null) || (paramIntent.getAction() == null));
      do
        return;
      while ((paramIntent.getAction() == null) || (!paramIntent.getAction().equals("com.cymobile.ymwork.intent.action.versionfetchdone")));
      MoreActivity.this.dismissProgressDialog();
    }
  };
  private final ServiceConnection serviceConnection = new ServiceConnection()
  {
    public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
    {
      MoreActivity.this.iSystemService = ISystemService.Stub.asInterface(paramIBinder);
    }

    public void onServiceDisconnected(ComponentName paramComponentName)
    {
      MoreActivity.this.iSystemService = null;
    }
  };

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
    ((Button)findViewById(2131230768)).setVisibility(4);
    ((TextView)findViewById(2131230767)).setText(2131296327);
    this.isAdmin = this.mPrefs.getBoolean("Pref_key_GlobalIsAdmin", false);
    if (!this.isAdmin)
    {
      ((RelativeLayout)findViewById(2131230871)).setVisibility(8);
      ((RelativeLayout)findViewById(2131230873)).setVisibility(8);
    }
    RelativeLayout localRelativeLayout = (RelativeLayout)findViewById(2131230883);
    ((RelativeLayout)findViewById(2131230871)).setVisibility(8);
    ((RelativeLayout)findViewById(2131230873)).setVisibility(8);
    ((RelativeLayout)findViewById(2131230875)).setVisibility(8);
    if (this.homeApplication.isLogined())
    {
      localRelativeLayout.setVisibility(8);
      return;
    }
    localRelativeLayout.setVisibility(8);
  }

  private ProgressDialog showProgressDialog()
  {
    if (this.mProgressDialog == null)
    {
      ProgressDialog localProgressDialog = new ProgressDialog(getParent());
      localProgressDialog.setTitle(2131296410);
      localProgressDialog.setMessage(getString(2131296411));
      localProgressDialog.setIndeterminate(true);
      localProgressDialog.setCancelable(true);
      this.mProgressDialog = localProgressDialog;
    }
    this.mProgressDialog.show();
    return this.mProgressDialog;
  }

  public void addUser(View paramView)
  {
    startActivity(new Intent(this, UserAddActivity.class));
  }

  public void changepasswd(View paramView)
  {
    startActivity(new Intent(this, ChangePasswordActivity.class));
  }

  public void checkVersion(View paramView)
  {
    Log.i("MoreActivity", "checkVersion");
    if (this.iSystemService == null)
    {
      Toast.makeText(this, 2131296399, 0).show();
      return;
    }
    try
    {
      showProgressDialog();
      this.iSystemService.checkNewVersion();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
    }
  }

  public void configListNum(View paramView)
  {
    showDialog(13);
  }

  public void configNotification(View paramView)
  {
    showDialog(12);
  }

  public void listUser(View paramView)
  {
    startActivity(new Intent(this, UserListActivity.class));
  }

  public void logout(View paramView)
  {
    showDialog(11);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903078);
    this.mPrefs = getSharedPreferences(SettingBase.class.getName(), 2);
    this.homeApplication = ((HomeApplication)getApplication());
    Intent localIntent = new Intent(this, SystemService.class);
    startService(localIntent);
    getApplicationContext().bindService(localIntent, this.serviceConnection, 1);
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("com.cymobile.ymwork.intent.action.versionfetchdone");
    registerReceiver(this.mRequestReceiver, localIntentFilter);
    ensureUi();
  }

  protected Dialog onCreateDialog(int paramInt)
  {
    if (paramInt == 11)
    {
      AlertDialog.Builder localBuilder = new AlertDialog.Builder(getParent());
      localBuilder.setMessage("确认退出吗？");
      localBuilder.setTitle("提示");
      localBuilder.setPositiveButton("确认", new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramDialogInterface, int paramInt)
        {
          paramDialogInterface.dismiss();
          MoreActivity.this.homeApplication.logout();
          MoreActivity.this.sendBroadcast(new Intent("com.cymobile.ymwork.intent.action.LOGGED_OUT"));
          Intent localIntent = new Intent(MoreActivity.this, LoginActivity.class);
          localIntent.setFlags(67108864);
          MoreActivity.this.startActivity(localIntent);
          MoreActivity.this.finish();
        }
      });
      localBuilder.setNegativeButton("取消", new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramDialogInterface, int paramInt)
        {
          paramDialogInterface.dismiss();
        }
      });
      return localBuilder.create();
    }
    if (paramInt == 12)
    {
      int j = 3;
      String str = this.mPrefs.getString("pref_notif", "3");
      try
      {
        int m = Integer.valueOf(str).intValue();
        j = m;
        int k = j;
        return new AlertDialog.Builder(getParent()).setTitle("选择").setSingleChoiceItems(2131034118, j, new DialogInterface.OnClickListener(k)
        {
          public void onClick(DialogInterface paramDialogInterface, int paramInt)
          {
            if (paramInt != this.val$currentMethodFinal)
            {
              SharedPreferences.Editor localEditor = MoreActivity.this.mPrefs.edit();
              localEditor.putString("pref_notif", paramInt);
              localEditor.commit();
            }
            paramDialogInterface.dismiss();
          }
        }).create();
      }
      catch (NumberFormatException localNumberFormatException)
      {
        while (true)
          localNumberFormatException.printStackTrace();
      }
    }
    if (paramInt == 13)
    {
      int i = this.mPrefs.getInt("pref_listnum", 4);
      return new AlertDialog.Builder(getParent()).setTitle("选择").setSingleChoiceItems(2131034119, i, new DialogInterface.OnClickListener(i)
      {
        public void onClick(DialogInterface paramDialogInterface, int paramInt)
        {
          if (paramInt != this.val$currentListNumFinal)
          {
            SharedPreferences.Editor localEditor = MoreActivity.this.mPrefs.edit();
            localEditor.putInt("pref_listnum", paramInt);
            localEditor.commit();
          }
          paramDialogInterface.dismiss();
        }
      }).create();
    }
    return super.onCreateDialog(paramInt);
  }

  public void onDestroy()
  {
    super.onDestroy();
    try
    {
      getApplicationContext().unbindService(this.serviceConnection);
      unregisterReceiver(this.mRequestReceiver);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public void setZone(View paramView)
  {
    startActivity(new Intent(this, SetZoneActivity.class));
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.act.MoreActivity
 * JD-Core Version:    0.6.0
 */