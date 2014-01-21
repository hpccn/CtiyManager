package com.cymobile.ymwork.act;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
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

public class LoginActivity extends Activity
{
  public static final boolean DEBUG = true;
  public static final String Intent_backClass = "Intent_backClass";
  public static final String TAG = "LoginActivity";
  private Class backClass = null;
  private String[] backExtra = null;
  private Context contexts;
  MyReceiver loginReceiver;
  private LinearLayout mLayoutHeader;
  private AsyncTask<Void, Void, Boolean> mLoginTask;
  private TextView mNewAccountTextView;
  private EditText mPasswordEditText;
  private EditText mPhoneUsernameEditText;
  private SharedPreferences mPrefs;
  private ProgressDialog mProgressDialog;

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
    ((Button)findViewById(2131230768)).setVisibility(4);
    ((TextView)findViewById(2131230767)).setText(2131296323);
    Button localButton = (Button)findViewById(2131230815);
    localButton.setOnClickListener(new OnViewClickListener());
    this.mPhoneUsernameEditText = ((EditText)findViewById(2131230729));
    this.mPasswordEditText = ((EditText)findViewById(2131230731));
    1 local1 = new TextWatcher(localButton)
    {
      public void afterTextChanged(Editable paramEditable)
      {
      }

      public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
      {
      }

      public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
      {
        Button localButton = this.val$loginButton;
        if ((LoginActivity.this.phoneNumberEditTextFieldIsValid()) && (LoginActivity.this.passwordEditTextFieldIsValid()));
        for (boolean bool = true; ; bool = false)
        {
          localButton.setEnabled(bool);
          return;
        }
      }
    };
    if ((phoneNumberEditTextFieldIsValid()) && (passwordEditTextFieldIsValid()));
    for (boolean bool = true; ; bool = false)
    {
      localButton.setEnabled(bool);
      this.mPhoneUsernameEditText.addTextChangedListener(local1);
      this.mPasswordEditText.addTextChangedListener(local1);
      return;
    }
  }

  private ProgressDialog showProgressDialog()
  {
    if (this.mProgressDialog == null)
    {
      ProgressDialog localProgressDialog = new ProgressDialog(this);
      localProgressDialog.setTitle(2131296323);
      localProgressDialog.setMessage(getString(2131296324));
      localProgressDialog.setIndeterminate(true);
      localProgressDialog.setCancelable(true);
      this.mProgressDialog = localProgressDialog;
    }
    this.mProgressDialog.show();
    return this.mProgressDialog;
  }

  public void forgetPassword(View paramView)
  {
    startActivity(new Intent(this, ForgetPasswordActivity.class));
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    finish();
  }

  public void onDestroy()
  {
    super.onDestroy();
    try
    {
      unregisterReceiver(this.loginReceiver);
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
    finish();
  }

  public Object onRetainNonConfigurationInstance()
  {
    Log.d("LoginActivity", "onRetainNonConfigurationInstance()");
    if (this.mLoginTask != null)
      this.mLoginTask.cancel(true);
    return this.mLoginTask;
  }

  public boolean passwordEditTextFieldIsValid()
  {
    return !TextUtils.isEmpty(this.mPasswordEditText.getText());
  }

  public boolean phoneNumberEditTextFieldIsValid()
  {
    return !TextUtils.isEmpty(this.mPhoneUsernameEditText.getText());
  }

  private class LoginTask extends AsyncTask<Void, Void, Boolean>
  {
    private Exception mReason;

    private LoginTask()
    {
    }

    protected Boolean doInBackground(Void[] paramArrayOfVoid)
    {
      Log.d("LoginActivity", "doInBackground()");
      SharedPreferences localSharedPreferences = LoginActivity.this.getSharedPreferences(SettingBase.class.getName(), 2);
      SharedPreferences.Editor localEditor = localSharedPreferences.edit();
      HomeApplication localHomeApplication = (HomeApplication)LoginActivity.this.getApplication();
      Server localServer = localHomeApplication.getServer();
      String str1;
      String str2;
      Server.Location localLocation;
      boolean bool;
      try
      {
        str1 = LoginActivity.this.mPhoneUsernameEditText.getText().toString();
        str2 = LoginActivity.this.mPasswordEditText.getText().toString();
        localLocation = localHomeApplication.getLastKnownLocation();
        if ((str1 != null) && (str1.equals("13901234567")))
        {
          bool = false;
          if (!bool)
            break label213;
          if (!TextUtils.isEmpty(PreferencesUtils.getUserId(localSharedPreferences)))
            break label208;
          throw new ServerException(LoginActivity.this.getResources().getString(2131296325), "", 66);
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        Log.d("LoginActivity", "Caught Exception logging in.", localException);
        this.mReason = localException;
        PreferencesUtils.logoutUser(localServer, localEditor);
      }
      while (true)
      {
        return Boolean.valueOf(false);
        bool = PreferencesUtils.loginUser(LoginActivity.this.contexts, localServer, str1, str2, localLocation, localEditor);
        break;
        label208: return Boolean.valueOf(true);
        label213: Log.i("LoginActivity", "Login failed");
      }
    }

    protected void onCancelled()
    {
      LoginActivity.this.dismissProgressDialog();
    }

    protected void onPostExecute(Boolean paramBoolean)
    {
      Log.d("LoginActivity", "onPostExecute(): " + paramBoolean);
      LoginActivity.this.dismissProgressDialog();
      if (this.mReason != null)
      {
        LoginActivity.this.sendBroadcast(new Intent("com.cymobile.ymwork.intent.action.LOGGED_OUT"));
        if ((this.mReason != null) && ((this.mReason instanceof ServerException)))
        {
          ServerException localServerException = (ServerException)this.mReason;
          int i = localServerException.getErrorCode();
          if ((i > 0) && (i == 66))
          {
            Toast.makeText(LoginActivity.this, localServerException.getMessage(), 1).show();
            return;
          }
          if ((i > 0) && (i == 20))
          {
            Toast.makeText(LoginActivity.this, 2131296354, 1).show();
            return;
          }
          Toast.makeText(LoginActivity.this, 2131296353, 1).show();
          return;
        }
        Toast.makeText(LoginActivity.this, 2131296353, 1).show();
        return;
      }
      if (paramBoolean.booleanValue())
      {
        LoginActivity.this.sendBroadcast(new Intent("com.cymobile.ymwork.intent.action.LOGGED_IN"));
        Toast.makeText(LoginActivity.this, LoginActivity.this.getString(2131296326), 1).show();
        SharedPreferences.Editor localEditor = LoginActivity.this.mPrefs.edit();
        localEditor.putBoolean("Pref__new_key_isLogined", true);
        localEditor.commit();
        return;
      }
      LoginActivity.this.sendBroadcast(new Intent("com.cymobile.ymwork.intent.action.LOGGED_OUT"));
      Toast.makeText(LoginActivity.this, 2131296353, 1).show();
    }

    protected void onPreExecute()
    {
      Log.d("LoginActivity", "onPreExecute()");
      LoginActivity.this.showProgressDialog();
    }
  }

  public class MyReceiver extends BroadcastReceiver
  {
    public MyReceiver()
    {
    }

    public void onReceive(Context paramContext, Intent paramIntent)
    {
      if ((LoginActivity.this.mProgressDialog != null) && (LoginActivity.this.mProgressDialog.isShowing()))
        LoginActivity.this.mProgressDialog.dismiss();
      Toast.makeText(LoginActivity.this, LoginActivity.this.getString(2131296326), 1).show();
      Intent localIntent1;
      int i;
      if (LoginActivity.this.backClass != null)
      {
        localIntent1 = new Intent(LoginActivity.this, LoginActivity.this.backClass);
        if ((LoginActivity.this.backExtra != null) && (LoginActivity.this.backExtra.length > 0))
        {
          i = 0;
          if (i < LoginActivity.this.backExtra.length);
        }
        else
        {
          localIntent1.setFlags(67108864);
          LoginActivity.this.startActivity(localIntent1);
        }
      }
      while (true)
      {
        LoginActivity.this.finish();
        return;
        localIntent1.putExtra(LoginActivity.this.backExtra[i], LoginActivity.this.backExtra[(i + 1)]);
        i += 2;
        break;
        Intent localIntent2 = new Intent(LoginActivity.this, MainActivityGroup.class);
        localIntent2.setFlags(67108864);
        LoginActivity.this.startActivity(localIntent2);
      }
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
      case 2131230815:
      }
      try
      {
        Button localButton = (Button)LoginActivity.this.findViewById(2131230815);
        ((InputMethodManager)LoginActivity.this.getSystemService("input_method")).hideSoftInputFromWindow(localButton.getWindowToken(), 0);
        LoginActivity.this.mLoginTask = new LoginActivity.LoginTask(LoginActivity.this, null);
        AsyncTaskUtils.execute(LoginActivity.this.mLoginTask);
        return;
      }
      catch (Exception localException)
      {
        while (true)
          localException.printStackTrace();
      }
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.act.LoginActivity
 * JD-Core Version:    0.6.0
 */