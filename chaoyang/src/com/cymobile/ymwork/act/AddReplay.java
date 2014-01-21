package com.cymobile.ymwork.act;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.TextView;
import android.widget.Toast;
import com.cymobile.ymwork.HomeApplication;
import com.cymobile.ymwork.SettingBase;
import com.cymobile.ymwork.server.Server;
import com.cymobile.ymwork.server.error.ServerException;
import com.cymobile.ymwork.types.CommonResult;
import com.cymobile.ymwork.utils.AsyncTaskUtils;

public class AddReplay extends Activity
{
  private static final int Dialog_confirm_Submit = 11;
  private Context contexts;
  HomeApplication homeApplication;
  private AsyncTask<Void, Void, String> mAddTask;
  private String mCaseid;
  private int mClassid;
  SharedPreferences mPrefs;
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

  private void initUI()
  {
    if (getIntent() != null)
      this.mCaseid = getIntent().getExtras().getString("caseid");
    try
    {
      this.mClassid = getIntent().getExtras().getInt("classid");
      ((ImageButton)findViewById(2131230765)).setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramView)
        {
          AddReplay.this.onBackPressed();
        }
      });
      ((TextView)findViewById(2131230767)).setText("添加批示");
      Button localButton1 = (Button)findViewById(2131230768);
      localButton1.setText("添加");
      localButton1.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramView)
        {
          AddReplay.this.mAddTask = new AddReplay.AddTask(AddReplay.this, null);
          AsyncTaskUtils.execute(AddReplay.this.mAddTask);
        }
      });
      ((TextView)findViewById(2131230723)).setText(this.mCaseid);
      ((Button)findViewById(2131230727)).setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramView)
        {
          AddReplay.this.showDialog(11);
        }
      });
      EditText localEditText1 = (EditText)findViewById(2131230724);
      EditText localEditText2 = (EditText)findViewById(2131230725);
      Button localButton2 = (Button)findViewById(2131230727);
      localButton2.setEnabled(false);
      localButton1.setEnabled(false);
      6 local6 = new TextWatcher(localButton2, localButton1, localEditText1, localEditText2)
      {
        private boolean detailEditTextFieldIsValid()
        {
          return !TextUtils.isEmpty(this.val$replydetails.getText());
        }

        private boolean resultEditTextFieldIsValid()
        {
          return !TextUtils.isEmpty(this.val$replyresult.getText());
        }

        public void afterTextChanged(Editable paramEditable)
        {
        }

        public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
        {
        }

        public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
        {
          if ((resultEditTextFieldIsValid()) && (detailEditTextFieldIsValid()));
          for (boolean bool = true; ; bool = false)
          {
            this.val$adddeplybutton.setEnabled(bool);
            this.val$rightbtn.setEnabled(bool);
            return;
          }
        }
      };
      localEditText1.addTextChangedListener(local6);
      localEditText2.addTextChangedListener(local6);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
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

  public void onCreate(Bundle paramBundle)
  {
    requestWindowFeature(1);
    requestWindowFeature(5);
    super.onCreate(paramBundle);
    this.mPrefs = getSharedPreferences(SettingBase.class.getName(), 2);
    setContentView(2130903040);
    this.contexts = this;
    initUI();
  }

  protected Dialog onCreateDialog(int paramInt)
  {
    if (paramInt == 11)
    {
      AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
      localBuilder.setMessage("确认提交吗？");
      localBuilder.setTitle("提示");
      localBuilder.setPositiveButton("确认", new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramDialogInterface, int paramInt)
        {
          AddReplay.this.mAddTask = new AddReplay.AddTask(AddReplay.this, null);
          AsyncTaskUtils.execute(AddReplay.this.mAddTask);
          paramDialogInterface.dismiss();
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
    return this.mProgressDialog;
  }

  private class AddTask extends AsyncTask<Void, Void, String>
  {
    private Exception mReason;

    private AddTask()
    {
    }

    protected String doInBackground(Void[] paramArrayOfVoid)
    {
      Server localServer = ((HomeApplication)AddReplay.this.getApplication()).getServer();
      try
      {
        String str1 = ((EditText)AddReplay.this.findViewById(2131230724)).getText().toString();
        String str2 = ((EditText)AddReplay.this.findViewById(2131230725)).getText().toString();
        String str3 = ((EditText)AddReplay.this.findViewById(2131230726)).getText().toString();
        String str4 = AddReplay.this.mPrefs.getString("key_GlobalZoneId", null);
        String str5 = AddReplay.this.mPrefs.getString("key_GlobalUserID", null);
        String str6 = AddReplay.this.mPrefs.getString("key_newGlobalUserPhone", null);
        CommonResult localCommonResult = localServer.addReply(AddReplay.this.contexts, AddReplay.this.mCaseid, AddReplay.this.mClassid, str6, str4, str5, str1, str2, str3);
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
      AddReplay.this.dismissProgressDialog();
    }

    protected void onPostExecute(String paramString)
    {
      AddReplay.this.dismissProgressDialog();
      if (this.mReason != null)
      {
        if ((this.mReason != null) && ((this.mReason instanceof ServerException)))
        {
          ServerException localServerException = (ServerException)this.mReason;
          int i = localServerException.getErrorCode();
          if ((i > 0) && (i == 66))
          {
            Toast.makeText(AddReplay.this, localServerException.getMessage(), 1).show();
            return;
          }
          if ((i > 0) && (i == 30))
          {
            Toast.makeText(AddReplay.this, 2131296360, 1).show();
            return;
          }
          if ((i > 0) && (i == 21))
          {
            Toast.makeText(AddReplay.this, 2131296361, 1).show();
            return;
          }
          Toast.makeText(AddReplay.this, 2131296350, 1).show();
          return;
        }
        Toast.makeText(AddReplay.this, 2131296350, 1).show();
        return;
      }
      if ((paramString != null) && (paramString.equals("success")))
      {
        Toast.makeText(AddReplay.this, AddReplay.this.getString(2131296362), 1).show();
        Intent localIntent = new Intent(AddReplay.this, ShopDetailsActivity.class);
        localIntent.putExtra("caseid", AddReplay.this.mCaseid);
        localIntent.putExtra("classid", AddReplay.this.mClassid);
        localIntent.setFlags(67108864);
        AddReplay.this.startActivity(localIntent);
        return;
      }
      Toast.makeText(AddReplay.this, 2131296350, 1).show();
    }

    protected void onPreExecute()
    {
      AddReplay.this.showProgressDialog();
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.act.AddReplay
 * JD-Core Version:    0.6.0
 */