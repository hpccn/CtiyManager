package com.cymobile.ymwork.act;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.View.OnTouchListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;
import com.cymobile.ymwork.HomeApplication;
import com.cymobile.ymwork.SettingBase;
import com.cymobile.ymwork.preference.PreferencesUtils;
import com.cymobile.ymwork.server.Server;
import com.cymobile.ymwork.server.Server.Location;
import com.cymobile.ymwork.server.error.ServerException;
import com.cymobile.ymwork.types.CommonResult;
import com.cymobile.ymwork.types.Group;
import com.cymobile.ymwork.types.Zone;
import com.cymobile.ymwork.utils.AsyncTaskUtils;

public class UserAddActivity extends Activity
{
  private static final int Msg_intent_resetSpinner = 11;
  private static final String TAG = "UserAddActivity";
  private Context contexts;
  private EditText descEditText;
  Handler handler = new UIHandler();
  private CheckBox isadmincheckbox;
  private AsyncTask<Void, Void, String> mAddTask;
  private AsyncTask<Void, Void, Boolean> mGetZoneTask;
  private LinearLayout mLayoutHeader;
  private ProgressDialog mLoadZoneDialog;
  private SharedPreferences mPrefs;
  private ProgressDialog mProgressDialog;
  private EditText passwordEditText;
  private EditText phoneEditText;
  private EditText repasswordEditText;
  Group<Zone> userSubZones;
  String userZone;
  private EditText usernameEditText;
  private Spinner zoneSpinner;

  private void dismissLoadZoneDialog()
  {
    try
    {
      this.mLoadZoneDialog.dismiss();
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
    }
  }

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
        UserAddActivity.this.onBackPressed();
      }
    });
    Button localButton1 = (Button)findViewById(2131230768);
    localButton1.setText(2131296338);
    localButton1.setEnabled(false);
    ((TextView)findViewById(2131230767)).setText(2131296337);
    Button localButton2 = (Button)findViewById(2131230735);
    2 local2 = new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        UserAddActivity.this.mAddTask = new UserAddActivity.AddTask(UserAddActivity.this, null);
        AsyncTaskUtils.execute(UserAddActivity.this.mAddTask);
      }
    };
    localButton2.setOnClickListener(local2);
    localButton1.setOnClickListener(local2);
    this.usernameEditText = ((EditText)findViewById(2131230728));
    this.phoneEditText = ((EditText)findViewById(2131230729));
    this.passwordEditText = ((EditText)findViewById(2131230731));
    this.repasswordEditText = ((EditText)findViewById(2131230732));
    this.isadmincheckbox = ((CheckBox)findViewById(2131230733));
    this.descEditText = ((EditText)findViewById(2131230734));
    this.zoneSpinner = ((Spinner)findViewById(2131230730));
    this.zoneSpinner.setOnTouchListener(new View.OnTouchListener()
    {
      public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
      {
        ((InputMethodManager)UserAddActivity.this.getApplicationContext().getSystemService("input_method")).hideSoftInputFromWindow(UserAddActivity.this.usernameEditText.getWindowToken(), 0);
        return false;
      }
    });
    4 local4 = new TextWatcher(localButton1, localButton2)
    {
      private boolean passwdsEquals()
      {
        return (passwordEditTextFieldIsValid()) && (repasswordEditTextFieldIsValid()) && (UserAddActivity.this.passwordEditText.getText().toString().equals(UserAddActivity.this.repasswordEditText.getText().toString()));
      }

      private boolean passwordEditTextFieldIsValid()
      {
        return (!TextUtils.isEmpty(UserAddActivity.this.passwordEditText.getText())) && (UserAddActivity.this.passwordEditText.getText().toString().length() > 5) && (UserAddActivity.this.passwordEditText.getText().toString().length() < 21);
      }

      private boolean phoneNumberEditTextFieldIsValid()
      {
        return !TextUtils.isEmpty(UserAddActivity.this.phoneEditText.getText());
      }

      private boolean repasswordEditTextFieldIsValid()
      {
        return (!TextUtils.isEmpty(UserAddActivity.this.repasswordEditText.getText())) && (UserAddActivity.this.repasswordEditText.getText().toString().length() > 5) && (UserAddActivity.this.repasswordEditText.getText().toString().length() < 21);
      }

      private boolean usernameEditTextFieldIsValid()
      {
        return !TextUtils.isEmpty(UserAddActivity.this.usernameEditText.getText());
      }

      public void afterTextChanged(Editable paramEditable)
      {
      }

      public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
      {
      }

      public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
      {
        if ((usernameEditTextFieldIsValid()) && (phoneNumberEditTextFieldIsValid()) && (passwordEditTextFieldIsValid()) && (repasswordEditTextFieldIsValid()) && (passwdsEquals()));
        for (boolean bool = true; ; bool = false)
        {
          this.val$rightbtn.setEnabled(bool);
          this.val$addButton.setEnabled(bool);
          return;
        }
      }
    };
    5 local5 = new View.OnFocusChangeListener()
    {
      private boolean passwdsEquals()
      {
        return (passwordEditTextFieldIsValid()) && (repasswordEditTextFieldIsValid()) && (UserAddActivity.this.passwordEditText.getText().toString().equals(UserAddActivity.this.repasswordEditText.getText().toString()));
      }

      private boolean passwordEditTextFieldIsValid()
      {
        return (!TextUtils.isEmpty(UserAddActivity.this.passwordEditText.getText())) && (UserAddActivity.this.passwordEditText.getText().toString().length() > 5) && (UserAddActivity.this.passwordEditText.getText().toString().length() < 21);
      }

      private boolean repasswordEditTextFieldIsValid()
      {
        return (!TextUtils.isEmpty(UserAddActivity.this.repasswordEditText.getText())) && (UserAddActivity.this.repasswordEditText.getText().toString().length() > 5) && (UserAddActivity.this.repasswordEditText.getText().toString().length() < 21);
      }

      public void onFocusChange(View paramView, boolean paramBoolean)
      {
        if (!paramBoolean);
        try
        {
          EditText localEditText = (EditText)paramView;
          if (TextUtils.isEmpty(localEditText.getText()))
            Toast.makeText(UserAddActivity.this, 2131296356, 0).show();
          while (true)
          {
            if ((passwordEditTextFieldIsValid()) && (repasswordEditTextFieldIsValid()) && (!passwdsEquals()))
              Toast.makeText(UserAddActivity.this, 2131296355, 0).show();
            return;
            if ((localEditText.getText().toString().length() >= 6) && (localEditText.getText().length() <= 21))
              continue;
            Toast.makeText(UserAddActivity.this, 2131296357, 0).show();
          }
        }
        catch (Exception localException)
        {
          while (true)
            localException.printStackTrace();
        }
      }
    };
    this.usernameEditText.addTextChangedListener(local4);
    this.phoneEditText.addTextChangedListener(local4);
    this.passwordEditText.addTextChangedListener(local4);
    this.repasswordEditText.addTextChangedListener(local4);
    this.passwordEditText.setOnFocusChangeListener(local5);
    this.repasswordEditText.setOnFocusChangeListener(local5);
    if (((this.userZone != null) && (this.userZone.length() == 6)) || (this.userZone.length() == 9))
    {
      if ((PreferencesUtils.getSubZone() != null) && (PreferencesUtils.getSubZone().size() > 0))
      {
        resetZoneSpinner();
        return;
      }
      resetZoneSpinner();
      this.mGetZoneTask = new GetZoneTask(null);
      AsyncTaskUtils.execute(this.mGetZoneTask);
      return;
    }
    resetZoneSpinner();
  }

  private void resetZoneSpinner()
  {
    Group localGroup = PreferencesUtils.getSubZone();
    String str = this.mPrefs.getString("key_GlobalZoneName", null);
    String[] arrayOfString;
    if ((localGroup == null) || (localGroup.size() == 0))
      arrayOfString = new String[1];
    while (true)
    {
      arrayOfString[0] = str;
      Spinner localSpinner = (Spinner)findViewById(2131230730);
      localSpinner.setAdapter(new ArrayAdapter(this, 2130903111, arrayOfString));
      localSpinner.setSelection(0);
      return;
      arrayOfString = new String[1 + localGroup.size()];
      for (int i = 0; i < localGroup.size(); i++)
        arrayOfString[(i + 1)] = ((Zone)localGroup.get(i)).getZoneName();
    }
  }

  private ProgressDialog showLoadZoneDialog()
  {
    if (this.mLoadZoneDialog == null)
    {
      ProgressDialog localProgressDialog = new ProgressDialog(this);
      localProgressDialog.setTitle(2131296364);
      localProgressDialog.setMessage(getString(2131296365));
      localProgressDialog.setIndeterminate(true);
      localProgressDialog.setCancelable(true);
      this.mLoadZoneDialog = localProgressDialog;
    }
    this.mLoadZoneDialog.show();
    return this.mLoadZoneDialog;
  }

  private ProgressDialog showProgressDialog()
  {
    if (this.mProgressDialog == null)
    {
      ProgressDialog localProgressDialog = new ProgressDialog(this);
      localProgressDialog.setTitle(2131296358);
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
    setContentView(2130903041);
    this.userZone = this.mPrefs.getString("key_GlobalZoneId", null);
    this.mLayoutHeader = ((LinearLayout)findViewById(2131230830));
    ensureUi();
  }

  private class AddTask extends AsyncTask<Void, Void, String>
  {
    private Exception mReason;

    private AddTask()
    {
    }

    protected String doInBackground(Void[] paramArrayOfVoid)
    {
      HomeApplication localHomeApplication = (HomeApplication)UserAddActivity.this.getApplication();
      Server localServer = localHomeApplication.getServer();
      try
      {
        String str1 = UserAddActivity.this.usernameEditText.getText().toString();
        String str2 = UserAddActivity.this.phoneEditText.getText().toString();
        String str3 = UserAddActivity.this.passwordEditText.getText().toString();
        String str4 = UserAddActivity.this.descEditText.getText().toString();
        boolean bool = UserAddActivity.this.isadmincheckbox.isChecked();
        Server.Location localLocation = localHomeApplication.getLastKnownLocation();
        String str5 = UserAddActivity.this.mPrefs.getString("key_GlobalZoneId", null);
        String str6 = UserAddActivity.this.mPrefs.getString("key_GlobalZoneName", null);
        int i = UserAddActivity.this.zoneSpinner.getSelectedItemPosition();
        if (i > 0)
        {
          Zone localZone = (Zone)PreferencesUtils.getSubZone().get(i - 1);
          str5 = localZone.getZoneid();
          str6 = localZone.getZoneName();
        }
        CommonResult localCommonResult = localServer.addUser(UserAddActivity.this.contexts, str1, str2, str3, bool, str5, str6, str4, localLocation);
        Object localObject = null;
        if (localCommonResult != null)
        {
          String str7 = localCommonResult.getResult();
          localObject = str7;
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
      UserAddActivity.this.dismissProgressDialog();
    }

    protected void onPostExecute(String paramString)
    {
      UserAddActivity.this.dismissProgressDialog();
      if (this.mReason != null)
      {
        if ((this.mReason != null) && ((this.mReason instanceof ServerException)))
        {
          ServerException localServerException = (ServerException)this.mReason;
          int i = localServerException.getErrorCode();
          if ((i > 0) && (i == 66))
          {
            Toast.makeText(UserAddActivity.this, localServerException.getMessage(), 1).show();
            return;
          }
          if ((i > 0) && (i == 30))
          {
            Toast.makeText(UserAddActivity.this, 2131296360, 1).show();
            return;
          }
          if ((i > 0) && (i == 21))
          {
            Toast.makeText(UserAddActivity.this, 2131296361, 1).show();
            return;
          }
          Toast.makeText(UserAddActivity.this, 2131296350, 1).show();
          return;
        }
        Toast.makeText(UserAddActivity.this, 2131296350, 1).show();
        return;
      }
      if ((paramString != null) && (paramString.equals("success")))
      {
        Toast.makeText(UserAddActivity.this, UserAddActivity.this.getString(2131296362), 1).show();
        Intent localIntent = new Intent(UserAddActivity.this, UserAddActivity.class);
        localIntent.setFlags(67108864);
        UserAddActivity.this.startActivity(localIntent);
        return;
      }
      Toast.makeText(UserAddActivity.this, 2131296350, 1).show();
    }

    protected void onPreExecute()
    {
      UserAddActivity.this.showProgressDialog();
    }
  }

  private class GetZoneTask extends AsyncTask<Void, Void, Boolean>
  {
    private Exception mReason;

    private GetZoneTask()
    {
    }

    protected Boolean doInBackground(Void[] paramArrayOfVoid)
    {
      Server localServer = ((HomeApplication)UserAddActivity.this.getApplication()).getServer();
      try
      {
        String str = UserAddActivity.this.mPrefs.getString("key_GlobalZoneId", null);
        Group localGroup = localServer.getZone(UserAddActivity.this.contexts, str);
        bool = false;
        if (localGroup != null)
        {
          int i = localGroup.size();
          bool = false;
          if (i > 0)
          {
            UserAddActivity.this.userSubZones = localGroup;
            PreferencesUtils.setSubZone(UserAddActivity.this.userSubZones);
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
      UserAddActivity.this.showLoadZoneDialog();
    }

    protected void onPostExecute(Boolean paramBoolean)
    {
      UserAddActivity.this.dismissLoadZoneDialog();
      if ((this.mReason != null) || (paramBoolean == null) || (!paramBoolean.booleanValue()))
      {
        Toast.makeText(UserAddActivity.this, 2131296363, 1).show();
        return;
      }
      UserAddActivity.this.handler.sendEmptyMessage(11);
    }

    protected void onPreExecute()
    {
      UserAddActivity.this.showLoadZoneDialog();
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
        UserAddActivity.this.resetZoneSpinner();
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.act.UserAddActivity
 * JD-Core Version:    0.6.0
 */