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
import com.cymobile.ymwork.types.User;
import com.cymobile.ymwork.types.Zone;
import com.cymobile.ymwork.utils.AsyncTaskUtils;

public class UserEditActivity extends Activity
{
  public static final String Extra_userMobile = "Extra_userMobile";
  private static final int Msg_intent_resetSpinner = 11;
  private static final int Msg_intent_resetUser = 12;
  private static final String TAG = "UserEditActivity";
  private Context contexts;
  private EditText descText;
  User editedUser;
  Handler handler = new UIHandler();
  private CheckBox isadmincheckbox;
  private AsyncTask<Void, Void, String> mEditTask;
  private AsyncTask<Void, Void, Boolean> mGetZoneTask;
  private LinearLayout mLayoutHeader;
  private ProgressDialog mLoadZoneDialog;
  private SharedPreferences mPrefs;
  private ProgressDialog mProgressDialog;
  private AsyncTask<Void, Void, User> mUserDetailTask;
  private EditText passwordEditText;
  private EditText phoneEditText;
  private EditText repasswordEditText;
  Button rightEditbtn;
  String userMobile;
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
        UserEditActivity.this.onBackPressed();
      }
    });
    this.rightEditbtn = ((Button)findViewById(2131230768));
    this.rightEditbtn.setText(2131296367);
    this.rightEditbtn.setEnabled(false);
    ((TextView)findViewById(2131230767)).setText(2131296366);
    Button localButton = (Button)findViewById(2131230792);
    2 local2 = new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        UserEditActivity.this.mEditTask = new UserEditActivity.EditTask(UserEditActivity.this, null);
        AsyncTaskUtils.execute(UserEditActivity.this.mEditTask);
      }
    };
    localButton.setOnClickListener(local2);
    this.rightEditbtn.setOnClickListener(local2);
    this.usernameEditText = ((EditText)findViewById(2131230728));
    this.phoneEditText = ((EditText)findViewById(2131230729));
    this.passwordEditText = ((EditText)findViewById(2131230731));
    this.repasswordEditText = ((EditText)findViewById(2131230732));
    this.isadmincheckbox = ((CheckBox)findViewById(2131230733));
    this.descText = ((EditText)findViewById(2131230734));
    this.zoneSpinner = ((Spinner)findViewById(2131230730));
    this.zoneSpinner.setOnTouchListener(new View.OnTouchListener()
    {
      public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
      {
        ((InputMethodManager)UserEditActivity.this.getApplicationContext().getSystemService("input_method")).hideSoftInputFromWindow(UserEditActivity.this.usernameEditText.getWindowToken(), 0);
        return false;
      }
    });
    this.phoneEditText.setEnabled(false);
    this.phoneEditText.setClickable(false);
    4 local4 = new TextWatcher(localButton)
    {
      private boolean passwdsEquals()
      {
        return (passwordEditTextFieldIsValid()) && (repasswordEditTextFieldIsValid()) && (UserEditActivity.this.passwordEditText.getText().toString().equals(UserEditActivity.this.repasswordEditText.getText().toString()));
      }

      private boolean passwordEditTextFieldIsValid()
      {
        return (!TextUtils.isEmpty(UserEditActivity.this.passwordEditText.getText())) && (UserEditActivity.this.passwordEditText.getText().toString().length() > 5) && (UserEditActivity.this.passwordEditText.getText().toString().length() < 21);
      }

      private boolean phoneNumberEditTextFieldIsValid()
      {
        return !TextUtils.isEmpty(UserEditActivity.this.phoneEditText.getText());
      }

      private boolean repasswordEditTextFieldIsValid()
      {
        return (!TextUtils.isEmpty(UserEditActivity.this.repasswordEditText.getText())) && (UserEditActivity.this.repasswordEditText.getText().toString().length() > 5) && (UserEditActivity.this.repasswordEditText.getText().toString().length() < 21);
      }

      private boolean usernameEditTextFieldIsValid()
      {
        return !TextUtils.isEmpty(UserEditActivity.this.usernameEditText.getText());
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
          UserEditActivity.this.rightEditbtn.setEnabled(bool);
          this.val$editButton.setEnabled(bool);
          return;
        }
      }
    };
    5 local5 = new View.OnFocusChangeListener()
    {
      private boolean passwdsEquals()
      {
        return (passwordEditTextFieldIsValid()) && (repasswordEditTextFieldIsValid()) && (UserEditActivity.this.passwordEditText.getText().toString().equals(UserEditActivity.this.repasswordEditText.getText().toString()));
      }

      private boolean passwordEditTextFieldIsValid()
      {
        return (!TextUtils.isEmpty(UserEditActivity.this.passwordEditText.getText())) && (UserEditActivity.this.passwordEditText.getText().toString().length() > 5) && (UserEditActivity.this.passwordEditText.getText().toString().length() < 21);
      }

      private boolean repasswordEditTextFieldIsValid()
      {
        return (!TextUtils.isEmpty(UserEditActivity.this.repasswordEditText.getText())) && (UserEditActivity.this.repasswordEditText.getText().toString().length() > 5) && (UserEditActivity.this.repasswordEditText.getText().toString().length() < 21);
      }

      public void onFocusChange(View paramView, boolean paramBoolean)
      {
        if (!paramBoolean);
        try
        {
          EditText localEditText = (EditText)paramView;
          if (TextUtils.isEmpty(localEditText.getText()))
            Toast.makeText(UserEditActivity.this, 2131296356, 0).show();
          while (true)
          {
            if ((passwordEditTextFieldIsValid()) && (repasswordEditTextFieldIsValid()) && (!passwdsEquals()))
              Toast.makeText(UserEditActivity.this, 2131296355, 0).show();
            return;
            if ((localEditText.getText().toString().length() >= 6) && (localEditText.getText().length() <= 21))
              continue;
            Toast.makeText(UserEditActivity.this, 2131296357, 0).show();
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
      if ((PreferencesUtils.getSubZone() != null) && (PreferencesUtils.getSubZone().size() > 0))
        resetZoneSpinner();
    while (true)
    {
      this.mUserDetailTask = new UserDetailTask(null);
      AsyncTaskUtils.execute(this.mUserDetailTask);
      return;
      resetZoneSpinner();
      this.mGetZoneTask = new GetZoneTask(null);
      AsyncTaskUtils.execute(this.mGetZoneTask);
      continue;
      resetZoneSpinner();
    }
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
      if (this.editedUser != null)
        setUserZone(this.editedUser.getZoneid());
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
  }

  public void onResume()
  {
    super.onResume();
    if (!this.mPrefs.getBoolean("Pref_key_GlobalIsAdmin", false))
    {
      finish();
      return;
    }
    if (getIntent().getExtras().containsKey("Extra_userMobile"))
    {
      this.userMobile = getIntent().getExtras().getString("Extra_userMobile");
      setContentView(2130903058);
      this.userZone = this.mPrefs.getString("key_GlobalZoneId", null);
      this.mLayoutHeader = ((LinearLayout)findViewById(2131230830));
      ensureUi();
      return;
    }
    finish();
  }

  void setUser()
  {
    if (this.editedUser != null)
    {
      this.usernameEditText.setText(this.editedUser.getUserName());
      this.phoneEditText.setText(this.editedUser.getMobile());
      this.passwordEditText.setText(this.editedUser.getPassword());
      this.repasswordEditText.setText(this.editedUser.getPassword());
      this.isadmincheckbox.setChecked(this.editedUser.isAdmin());
      this.descText.setText(this.editedUser.getDesc());
      setUserZone(this.editedUser.getZoneid());
    }
  }

  void setUserZone(String paramString)
  {
    Group localGroup = PreferencesUtils.getSubZone();
    int i = -1;
    if ((localGroup != null) && (localGroup.size() > 0));
    for (int j = 0; ; j++)
    {
      if (j >= localGroup.size());
      while (true)
      {
        if (i < 0)
          break label75;
        this.zoneSpinner.setSelection(i + 1);
        return;
        if (!((Zone)localGroup.get(j)).getZoneid().equals(paramString))
          break;
        i = j;
      }
    }
    label75: this.zoneSpinner.setSelection(0);
  }

  private class EditTask extends AsyncTask<Void, Void, String>
  {
    private Exception mReason;

    private EditTask()
    {
    }

    protected String doInBackground(Void[] paramArrayOfVoid)
    {
      HomeApplication localHomeApplication = (HomeApplication)UserEditActivity.this.getApplication();
      Server localServer = localHomeApplication.getServer();
      try
      {
        String str1 = UserEditActivity.this.usernameEditText.getText().toString();
        String str2 = UserEditActivity.this.phoneEditText.getText().toString();
        String str3 = UserEditActivity.this.passwordEditText.getText().toString();
        boolean bool = UserEditActivity.this.isadmincheckbox.isChecked();
        String str4 = UserEditActivity.this.descText.getText().toString();
        Server.Location localLocation = localHomeApplication.getLastKnownLocation();
        String str5 = UserEditActivity.this.mPrefs.getString("key_GlobalZoneId", null);
        String str6 = UserEditActivity.this.mPrefs.getString("key_GlobalZoneName", null);
        int i = UserEditActivity.this.zoneSpinner.getSelectedItemPosition();
        if (i > 0)
        {
          Zone localZone = (Zone)PreferencesUtils.getSubZone().get(i - 1);
          str5 = localZone.getZoneid();
          str6 = localZone.getZoneName();
        }
        CommonResult localCommonResult = localServer.userUpdate(UserEditActivity.this.contexts, "", str2, str1, str3, str5, str6, bool, str4, localLocation);
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
      UserEditActivity.this.dismissProgressDialog();
    }

    protected void onPostExecute(String paramString)
    {
      UserEditActivity.this.dismissProgressDialog();
      if (this.mReason != null)
      {
        if ((this.mReason != null) && ((this.mReason instanceof ServerException)))
        {
          ServerException localServerException = (ServerException)this.mReason;
          int i = localServerException.getErrorCode();
          if ((i > 0) && (i == 66))
          {
            Toast.makeText(UserEditActivity.this, localServerException.getMessage(), 1).show();
            return;
          }
          if ((i > 0) && (i == 30))
          {
            Toast.makeText(UserEditActivity.this, 2131296360, 1).show();
            return;
          }
          Toast.makeText(UserEditActivity.this, 2131296350, 1).show();
          return;
        }
        Toast.makeText(UserEditActivity.this, 2131296350, 1).show();
        return;
      }
      if ((paramString != null) && (paramString.equals("success")))
      {
        Toast.makeText(UserEditActivity.this, UserEditActivity.this.getString(2131296369), 1).show();
        Intent localIntent = new Intent(UserEditActivity.this, UserListActivity.class);
        localIntent.setFlags(67108864);
        UserEditActivity.this.startActivity(localIntent);
        return;
      }
      Toast.makeText(UserEditActivity.this, 2131296350, 1).show();
    }

    protected void onPreExecute()
    {
      UserEditActivity.this.showProgressDialog();
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
      Server localServer = ((HomeApplication)UserEditActivity.this.getApplication()).getServer();
      try
      {
        String str = UserEditActivity.this.mPrefs.getString("key_GlobalZoneId", null);
        Group localGroup = localServer.getZone(UserEditActivity.this.contexts, str);
        bool = false;
        if (localGroup != null)
        {
          int i = localGroup.size();
          bool = false;
          if (i > 0)
          {
            UserEditActivity.this.userSubZones = localGroup;
            PreferencesUtils.setSubZone(UserEditActivity.this.userSubZones);
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
      UserEditActivity.this.dismissLoadZoneDialog();
    }

    protected void onPostExecute(Boolean paramBoolean)
    {
      UserEditActivity.this.dismissLoadZoneDialog();
      if ((this.mReason != null) || (paramBoolean == null) || (!paramBoolean.booleanValue()))
      {
        Toast.makeText(UserEditActivity.this, 2131296363, 1).show();
        UserEditActivity.this.finish();
        return;
      }
      UserEditActivity.this.handler.sendEmptyMessage(11);
    }

    protected void onPreExecute()
    {
      UserEditActivity.this.showLoadZoneDialog();
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
        UserEditActivity.this.resetZoneSpinner();
      do
        return;
      while (paramMessage.what != 12);
      UserEditActivity.this.setUser();
    }
  }

  private class UserDetailTask extends AsyncTask<Void, Void, User>
  {
    private Exception mReason;

    private UserDetailTask()
    {
    }

    protected User doInBackground(Void[] paramArrayOfVoid)
    {
      Server localServer = ((HomeApplication)UserEditActivity.this.getApplication()).getServer();
      try
      {
        User localUser = localServer.userDetail(UserEditActivity.this.contexts, UserEditActivity.this.userMobile);
        if (localUser != null)
        {
          String str = localUser.getMobile();
          if (str != null)
            return localUser;
        }
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
      UserEditActivity.this.dismissLoadZoneDialog();
    }

    protected void onPostExecute(User paramUser)
    {
      UserEditActivity.this.dismissLoadZoneDialog();
      if ((this.mReason != null) || (paramUser == null))
      {
        Toast.makeText(UserEditActivity.this, 2131296363, 1).show();
        UserEditActivity.this.finish();
        return;
      }
      UserEditActivity.this.editedUser = paramUser;
      UserEditActivity.this.handler.sendEmptyMessage(12);
    }

    protected void onPreExecute()
    {
      UserEditActivity.this.showLoadZoneDialog();
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.act.UserEditActivity
 * JD-Core Version:    0.6.0
 */