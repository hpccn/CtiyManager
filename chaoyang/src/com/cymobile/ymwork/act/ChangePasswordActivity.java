package com.cymobile.ymwork.act;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.cymobile.ymwork.HomeApplication;
import com.cymobile.ymwork.SettingBase;
import com.cymobile.ymwork.server.Server;
import com.cymobile.ymwork.server.Server.Location;
import com.cymobile.ymwork.server.error.ServerException;
import com.cymobile.ymwork.types.CommonResult;
import com.cymobile.ymwork.utils.AsyncTaskUtils;

public class ChangePasswordActivity extends Activity
{
  private static final String TAG = "ChangePasswordActivity";
  private Context contexts;
  Handler handler = new UIHandler();
  private AsyncTask<Void, Void, String> mChangeTask;
  private AsyncTask<Void, Void, Boolean> mGetZoneTask;
  private LinearLayout mLayoutHeader;
  private SharedPreferences mPrefs;
  private ProgressDialog mProgressDialog;
  private EditText oldpasswordEditText;
  private EditText passwordEditText;
  private EditText repasswordEditText;

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
    ((ImageButton)findViewById(2131230765)).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        ChangePasswordActivity.this.onBackPressed();
      }
    });
    Button localButton1 = (Button)findViewById(2131230768);
    localButton1.setText(2131296382);
    localButton1.setEnabled(false);
    ((TextView)findViewById(2131230767)).setText(2131296381);
    Button localButton2 = (Button)findViewById(2131230764);
    2 local2 = new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        ChangePasswordActivity.this.mChangeTask = new ChangePasswordActivity.ChangeTask(ChangePasswordActivity.this, null);
        AsyncTaskUtils.execute(ChangePasswordActivity.this.mChangeTask);
      }
    };
    localButton2.setOnClickListener(local2);
    localButton1.setOnClickListener(local2);
    this.oldpasswordEditText = ((EditText)findViewById(2131230763));
    this.passwordEditText = ((EditText)findViewById(2131230731));
    this.repasswordEditText = ((EditText)findViewById(2131230732));
    3 local3 = new TextWatcher(localButton1, localButton2)
    {
      private boolean oldPasswordEditTextFieldIsValid()
      {
        String str = ChangePasswordActivity.this.mPrefs.getString("key_GlobalUserPasswd", null);
        return (!TextUtils.isEmpty(ChangePasswordActivity.this.oldpasswordEditText.getText())) && (str.equals(ChangePasswordActivity.this.oldpasswordEditText.getText().toString()));
      }

      private boolean passwdsEquals()
      {
        return (passwordEditTextFieldIsValid()) && (repasswordEditTextFieldIsValid()) && (ChangePasswordActivity.this.passwordEditText.getText().toString().equals(ChangePasswordActivity.this.repasswordEditText.getText().toString()));
      }

      private boolean passwordEditTextFieldIsValid()
      {
        return (!TextUtils.isEmpty(ChangePasswordActivity.this.passwordEditText.getText())) && (ChangePasswordActivity.this.passwordEditText.getText().toString().length() > 5) && (ChangePasswordActivity.this.passwordEditText.getText().toString().length() < 21);
      }

      private boolean repasswordEditTextFieldIsValid()
      {
        return (!TextUtils.isEmpty(ChangePasswordActivity.this.repasswordEditText.getText())) && (ChangePasswordActivity.this.repasswordEditText.getText().toString().length() > 5) && (ChangePasswordActivity.this.repasswordEditText.getText().toString().length() < 21);
      }

      public void afterTextChanged(Editable paramEditable)
      {
      }

      public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
      {
      }

      public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
      {
        if ((oldPasswordEditTextFieldIsValid()) && (passwordEditTextFieldIsValid()) && (repasswordEditTextFieldIsValid()) && (passwdsEquals()));
        for (boolean bool = true; ; bool = false)
        {
          this.val$rightbtn.setEnabled(bool);
          this.val$changeButton.setEnabled(bool);
          return;
        }
      }
    };
    4 local4 = new View.OnFocusChangeListener()
    {
      private boolean passwdsEquals()
      {
        return (passwordEditTextFieldIsValid()) && (repasswordEditTextFieldIsValid()) && (ChangePasswordActivity.this.passwordEditText.getText().toString().equals(ChangePasswordActivity.this.repasswordEditText.getText().toString()));
      }

      private boolean passwordEditTextFieldIsValid()
      {
        return (!TextUtils.isEmpty(ChangePasswordActivity.this.passwordEditText.getText())) && (ChangePasswordActivity.this.passwordEditText.getText().toString().length() > 5) && (ChangePasswordActivity.this.passwordEditText.getText().toString().length() < 21);
      }

      private boolean repasswordEditTextFieldIsValid()
      {
        return (!TextUtils.isEmpty(ChangePasswordActivity.this.repasswordEditText.getText())) && (ChangePasswordActivity.this.repasswordEditText.getText().toString().length() > 5) && (ChangePasswordActivity.this.repasswordEditText.getText().toString().length() < 21);
      }

      public void onFocusChange(View paramView, boolean paramBoolean)
      {
        if (!paramBoolean);
        try
        {
          EditText localEditText = (EditText)paramView;
          if (TextUtils.isEmpty(localEditText.getText()))
            Toast.makeText(ChangePasswordActivity.this, 2131296356, 0).show();
          while (true)
          {
            if ((passwordEditTextFieldIsValid()) && (repasswordEditTextFieldIsValid()) && (!passwdsEquals()))
              Toast.makeText(ChangePasswordActivity.this, 2131296355, 0).show();
            return;
            if ((localEditText.getText().toString().length() >= 6) && (localEditText.getText().length() <= 21))
              continue;
            Toast.makeText(ChangePasswordActivity.this, 2131296357, 0).show();
          }
        }
        catch (Exception localException)
        {
          while (true)
            localException.printStackTrace();
        }
      }
    };
    this.oldpasswordEditText.addTextChangedListener(local3);
    this.passwordEditText.addTextChangedListener(local3);
    this.repasswordEditText.addTextChangedListener(local3);
    5 local5 = new View.OnFocusChangeListener()
    {
      private boolean oldPasswordEditTextFieldIsValid()
      {
        String str = ChangePasswordActivity.this.mPrefs.getString("key_GlobalUserPasswd", null);
        return (!TextUtils.isEmpty(ChangePasswordActivity.this.oldpasswordEditText.getText())) && (str.equals(ChangePasswordActivity.this.oldpasswordEditText.getText().toString()));
      }

      public void onFocusChange(View paramView, boolean paramBoolean)
      {
        if (!paramBoolean);
        try
        {
          EditText localEditText = (EditText)paramView;
          if (TextUtils.isEmpty(localEditText.getText()))
            Toast.makeText(ChangePasswordActivity.this, 2131296356, 0).show();
          while (true)
          {
            if (!oldPasswordEditTextFieldIsValid())
              Toast.makeText(ChangePasswordActivity.this, 2131296385, 0).show();
            return;
            if ((localEditText.getText().toString().length() >= 6) && (localEditText.getText().length() <= 21))
              continue;
            Toast.makeText(ChangePasswordActivity.this, 2131296357, 0).show();
          }
        }
        catch (Exception localException)
        {
          while (true)
            localException.printStackTrace();
        }
      }
    };
    this.oldpasswordEditText.setOnFocusChangeListener(local5);
    this.passwordEditText.setOnFocusChangeListener(local4);
    this.repasswordEditText.setOnFocusChangeListener(local4);
  }

  private ProgressDialog showProgressDialog()
  {
    if (this.mProgressDialog == null)
    {
      ProgressDialog localProgressDialog = new ProgressDialog(this);
      localProgressDialog.setTitle(2131296381);
      localProgressDialog.setMessage(getString(2131296359));
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
    this.mPrefs = getSharedPreferences(SettingBase.class.getName(), 2);
    this.contexts = this;
    if (!this.mPrefs.getBoolean("Pref_key_GlobalIsAdmin", false))
    {
      finish();
      return;
    }
    setContentView(2130903046);
    this.mLayoutHeader = ((LinearLayout)findViewById(2131230830));
    ensureUi();
  }

  private class ChangeTask extends AsyncTask<Void, Void, String>
  {
    private Exception mReason;

    private ChangeTask()
    {
    }

    protected String doInBackground(Void[] paramArrayOfVoid)
    {
      HomeApplication localHomeApplication = (HomeApplication)ChangePasswordActivity.this.getApplication();
      Server localServer = localHomeApplication.getServer();
      try
      {
        String str1 = ChangePasswordActivity.this.oldpasswordEditText.getText().toString();
        String str2 = ChangePasswordActivity.this.mPrefs.getString("key_newGlobalUserPhone", "");
        String str3 = ChangePasswordActivity.this.passwordEditText.getText().toString();
        Server.Location localLocation = localHomeApplication.getLastKnownLocation();
        CommonResult localCommonResult = localServer.changePasswd(ChangePasswordActivity.this.contexts, str2, str1, str3, localLocation);
        Object localObject = null;
        if (localCommonResult != null)
        {
          String str4 = localCommonResult.getResult();
          localObject = str4;
        }
        return localObject;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        this.mReason = localException;
      }
      return null;
    }

    protected void onCancelled()
    {
      ChangePasswordActivity.this.dismissProgressDialog();
    }

    protected void onPostExecute(String paramString)
    {
      ChangePasswordActivity.this.dismissProgressDialog();
      if (this.mReason != null)
      {
        if ((this.mReason != null) && ((this.mReason instanceof ServerException)))
        {
          ServerException localServerException = (ServerException)this.mReason;
          int i = localServerException.getErrorCode();
          if ((i > 0) && (i == 66))
          {
            Toast.makeText(ChangePasswordActivity.this, localServerException.getMessage(), 1).show();
            return;
          }
          if ((i > 0) && (i == 30))
          {
            Toast.makeText(ChangePasswordActivity.this, 2131296360, 1).show();
            return;
          }
          Toast.makeText(ChangePasswordActivity.this, 2131296350, 1).show();
          return;
        }
        Toast.makeText(ChangePasswordActivity.this, 2131296350, 1).show();
        return;
      }
      if ((paramString != null) && (paramString.equals("success")))
      {
        Toast.makeText(ChangePasswordActivity.this, ChangePasswordActivity.this.getString(2131296386), 1).show();
        SharedPreferences.Editor localEditor = ChangePasswordActivity.this.mPrefs.edit();
        localEditor.putString("key_GlobalUserPasswd", ChangePasswordActivity.this.passwordEditText.getText().toString());
        localEditor.commit();
        ChangePasswordActivity.this.onBackPressed();
        return;
      }
      Toast.makeText(ChangePasswordActivity.this, 2131296350, 1).show();
    }

    protected void onPreExecute()
    {
      ChangePasswordActivity.this.showProgressDialog();
    }
  }

  class UIHandler extends Handler
  {
    UIHandler()
    {
    }

    public void handleMessage(Message paramMessage)
    {
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.act.ChangePasswordActivity
 * JD-Core Version:    0.6.0
 */