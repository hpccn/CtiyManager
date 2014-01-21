package com.cymobile.ymwork.act;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.cymobile.ymwork.HomeApplication;
import com.cymobile.ymwork.SettingBase;
import com.cymobile.ymwork.preference.PreferencesUtils;
import com.cymobile.ymwork.server.Server;
import com.cymobile.ymwork.server.Server.Location;
import com.cymobile.ymwork.server.error.ServerException;
import com.cymobile.ymwork.utils.AsyncTaskUtils;

public class RegisterActivity extends Activity
{
  public static final boolean DEBUG = true;
  public static final String TAG = "RegisterActivity";
  private Context contexts;
  private EditText mCompanyEditText;
  private LinearLayout mLayoutHeader;
  private TextView mNewAccountTextView;
  private EditText mPhoneUsernameEditText;
  private SharedPreferences mPrefs;
  private ProgressDialog mProgressDialog;
  private AsyncTask<Void, Void, Boolean> mRegisterTask;
  private EditText mTitleEditText;
  private EditText mUsernameEditText;
  MyReceiver registerReceiver;

  private void dismissProgressDialog()
  {
    try
    {
      this.mProgressDialog.dismiss();
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
    }
  }

  private void ensureUi()
  {
    ((ImageButton)findViewById(2131230765)).setVisibility(4);
    Button localButton1 = (Button)findViewById(2131230768);
    localButton1.setText(2131296483);
    localButton1.setVisibility(0);
    localButton1.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        Intent localIntent = new Intent(RegisterActivity.this, SetZoneActivity.class);
        RegisterActivity.this.startActivity(localIntent);
        RegisterActivity.this.finish();
      }
    });
    ((TextView)findViewById(2131230767)).setText(2131296474);
    Button localButton2 = (Button)findViewById(2131230912);
    localButton2.setOnClickListener(new OnViewClickListener());
    this.mPhoneUsernameEditText = ((EditText)findViewById(2131230729));
    this.mUsernameEditText = ((EditText)findViewById(2131230728));
    this.mCompanyEditText = ((EditText)findViewById(2131230910));
    this.mTitleEditText = ((EditText)findViewById(2131230911));
    2 local2 = new TextWatcher(localButton2)
    {
      public void afterTextChanged(Editable paramEditable)
      {
      }

      public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
      {
      }

      public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
      {
        Button localButton = this.val$registerButton;
        if ((RegisterActivity.this.phoneNumberEditTextFieldIsValid()) && (RegisterActivity.this.userNameEditTextFieldIsValid()));
        for (boolean bool = true; ; bool = false)
        {
          localButton.setEnabled(bool);
          return;
        }
      }
    };
    if ((phoneNumberEditTextFieldIsValid()) && (userNameEditTextFieldIsValid()));
    for (boolean bool = true; ; bool = false)
    {
      localButton2.setEnabled(bool);
      this.mPhoneUsernameEditText.addTextChangedListener(local2);
      this.mUsernameEditText.addTextChangedListener(local2);
      return;
    }
  }

  private ProgressDialog showProgressDialog()
  {
    if (this.mProgressDialog == null)
    {
      ProgressDialog localProgressDialog = new ProgressDialog(this);
      localProgressDialog.setTitle(2131296474);
      localProgressDialog.setMessage(getString(2131296475));
      localProgressDialog.setIndeterminate(true);
      localProgressDialog.setCancelable(true);
      this.mProgressDialog = localProgressDialog;
    }
    this.mProgressDialog.show();
    return this.mProgressDialog;
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    this.contexts = this;
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("com.cymobile.ymwork.intent.action.LOGGED_IN");
    this.registerReceiver = new MyReceiver();
    registerReceiver(this.registerReceiver, localIntentFilter);
    this.mPrefs = getSharedPreferences(SettingBase.class.getName(), 2);
    String str = this.mPrefs.getString("key_newGlobalUserPhone", null);
    if ((str != null) && (str.length() > 0))
      sendBroadcast(new Intent("com.cymobile.ymwork.intent.action.LOGGED_IN"));
    do
    {
      return;
      setContentView(2130903086);
      this.mLayoutHeader = ((LinearLayout)findViewById(2131230830));
      ensureUi();
      this.mRegisterTask = ((RegisterTask)getLastNonConfigurationInstance());
    }
    while ((this.mRegisterTask == null) || (!this.mRegisterTask.isCancelled()));
    Log.d("RegisterActivity", "registerTask previously cancelled, trying again.");
    this.mRegisterTask = new RegisterTask(null).execute(new Void[0]);
  }

  public void onDestroy()
  {
    super.onDestroy();
    try
    {
      unregisterReceiver(this.registerReceiver);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public void onPause()
  {
    super.onPause();
  }

  public void onResume()
  {
    super.onResume();
  }

  public Object onRetainNonConfigurationInstance()
  {
    Log.d("RegisterActivity", "onRetainNonConfigurationInstance()");
    if (this.mRegisterTask != null)
      this.mRegisterTask.cancel(true);
    return this.mRegisterTask;
  }

  public boolean phoneNumberEditTextFieldIsValid()
  {
    return !TextUtils.isEmpty(this.mPhoneUsernameEditText.getText());
  }

  public boolean userNameEditTextFieldIsValid()
  {
    return !TextUtils.isEmpty(this.mUsernameEditText.getText());
  }

  public class MyReceiver extends BroadcastReceiver
  {
    public MyReceiver()
    {
    }

    public void onReceive(Context paramContext, Intent paramIntent)
    {
      if ((RegisterActivity.this.mProgressDialog != null) && (RegisterActivity.this.mProgressDialog.isShowing()))
        RegisterActivity.this.mProgressDialog.dismiss();
      Toast.makeText(RegisterActivity.this, RegisterActivity.this.getString(2131296326), 1).show();
      SharedPreferences.Editor localEditor = RegisterActivity.this.mPrefs.edit();
      localEditor.putBoolean("Pref__new_key_isLogined", true);
      localEditor.commit();
      Intent localIntent = new Intent(RegisterActivity.this, MainActivityGroup.class);
      localIntent.setFlags(67108864);
      RegisterActivity.this.startActivity(localIntent);
      RegisterActivity.this.finish();
    }
  }

  public class OnViewClickListener
    implements View.OnClickListener
  {
    public OnViewClickListener()
    {
    }

    public void onClick(View paramView)
    {
      switch (paramView.getId())
      {
      case 2131230765:
      default:
        return;
      case 2131230912:
      }
      try
      {
        Button localButton = (Button)RegisterActivity.this.findViewById(2131230912);
        ((InputMethodManager)RegisterActivity.this.getSystemService("input_method")).hideSoftInputFromWindow(localButton.getWindowToken(), 0);
        RegisterActivity.this.mRegisterTask = new RegisterActivity.RegisterTask(RegisterActivity.this, null);
        AsyncTaskUtils.execute(RegisterActivity.this.mRegisterTask);
        return;
      }
      catch (Exception localException)
      {
        while (true)
          localException.printStackTrace();
      }
    }
  }

  private class RegisterTask extends AsyncTask<Void, Void, Boolean>
  {
    private Exception mReason;

    private RegisterTask()
    {
    }

    protected Boolean doInBackground(Void[] paramArrayOfVoid)
    {
      Log.d("RegisterActivity", "doInBackground()");
      boolean bool = false;
      SharedPreferences localSharedPreferences = RegisterActivity.this.getSharedPreferences(SettingBase.class.getName(), 2);
      SharedPreferences.Editor localEditor = localSharedPreferences.edit();
      HomeApplication localHomeApplication = (HomeApplication)RegisterActivity.this.getApplication();
      Server localServer = localHomeApplication.getServer();
      try
      {
        String str1 = RegisterActivity.this.mPhoneUsernameEditText.getText().toString();
        String str2 = RegisterActivity.this.mUsernameEditText.getText().toString();
        String str3 = RegisterActivity.this.mCompanyEditText.getText().toString();
        String str4 = RegisterActivity.this.mTitleEditText.getText().toString();
        Server.Location localLocation = localHomeApplication.getLastKnownLocation();
        bool = PreferencesUtils.register(RegisterActivity.this.contexts, localServer, str1, str2, str3, str4, localSharedPreferences.getString("key_GlobalZoneId", ""), localSharedPreferences.getString("key_GlobalZoneName", ""), localLocation, localEditor);
        if (bool)
          if (TextUtils.isEmpty(PreferencesUtils.getUserId(localSharedPreferences)))
            throw new ServerException(RegisterActivity.this.getResources().getString(2131296476), "", 66);
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        Log.d("RegisterActivity", "Caught Exception logging in.", localException);
        this.mReason = localException;
      }
      while (true)
      {
        return Boolean.valueOf(bool);
        return Boolean.valueOf(true);
        Log.i("RegisterActivity", "register failed");
      }
    }

    protected void onCancelled()
    {
      RegisterActivity.this.dismissProgressDialog();
    }

    protected void onPostExecute(Boolean paramBoolean)
    {
      Log.d("RegisterActivity", "onPostExecute(): " + paramBoolean);
      RegisterActivity.this.dismissProgressDialog();
      if (this.mReason != null)
      {
        RegisterActivity.this.sendBroadcast(new Intent("com.cymobile.ymwork.intent.action.LOGGED_OUT"));
        if ((this.mReason != null) && ((this.mReason instanceof ServerException)))
        {
          ServerException localServerException = (ServerException)this.mReason;
          int i = localServerException.getErrorCode();
          if ((i > 0) && (i == 66))
          {
            Toast.makeText(RegisterActivity.this, localServerException.getMessage(), 1).show();
            return;
          }
          if ((i > 0) && (i == 20))
          {
            Toast.makeText(RegisterActivity.this, 2131296477, 1).show();
            return;
          }
          Toast.makeText(RegisterActivity.this, 2131296478, 1).show();
          return;
        }
        Toast.makeText(RegisterActivity.this, 2131296478, 1).show();
        return;
      }
      if (paramBoolean.booleanValue())
      {
        RegisterActivity.this.sendBroadcast(new Intent("com.cymobile.ymwork.intent.action.LOGGED_IN"));
        Toast.makeText(RegisterActivity.this, RegisterActivity.this.getString(2131296326), 1).show();
        SharedPreferences.Editor localEditor = RegisterActivity.this.mPrefs.edit();
        localEditor.putBoolean("Pref__new_key_isLogined", true);
        localEditor.commit();
        return;
      }
      RegisterActivity.this.sendBroadcast(new Intent("com.cymobile.ymwork.intent.action.LOGGED_OUT"));
      Toast.makeText(RegisterActivity.this, 2131296353, 1).show();
    }

    protected void onPreExecute()
    {
      Log.d("RegisterActivity", "onPreExecute()");
      RegisterActivity.this.showProgressDialog();
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.act.RegisterActivity
 * JD-Core Version:    0.6.0
 */