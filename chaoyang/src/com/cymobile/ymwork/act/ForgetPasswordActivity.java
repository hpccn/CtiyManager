package com.cymobile.ymwork.act;

import android.app.Activity;
import android.content.Context;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.Editable;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;
import com.cymobile.ymwork.HomeApplication;
import com.cymobile.ymwork.server.Server;
import com.cymobile.ymwork.types.CommonResult;
import com.cymobile.ymwork.utils.AsyncTaskUtils;

public class ForgetPasswordActivity extends Activity
{
  private static final int MESSAGE_EMAIL_EXIST = 0;
  private static final int MESSAGE_NOT_EXIST = 1;
  private Context contexts;
  private Handler mHandler = new Handler()
  {
    public void handleMessage(Message paramMessage)
    {
      switch (paramMessage.what)
      {
      default:
        return;
      case 0:
        Toast.makeText(ForgetPasswordActivity.this, 2131296442, 0).show();
        ForgetPasswordActivity.this.finish();
        return;
      case 1:
      }
      Toast.makeText(ForgetPasswordActivity.this, 2131296443, 0).show();
    }
  };
  private EditText moeText;

  private void postTask(CommonResult paramCommonResult, Exception paramException)
  {
    if ((paramCommonResult != null) && (paramCommonResult.getResult().equals("1")))
    {
      this.mHandler.sendEmptyMessage(0);
      return;
    }
    this.mHandler.sendEmptyMessage(1);
  }

  private void preTask()
  {
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903063);
    this.contexts = this;
    this.moeText = ((EditText)findViewById(2131230796));
    ((Button)findViewById(2131230797)).setEnabled(true);
  }

  public void submit(View paramView)
  {
    String str = this.moeText.getText().toString();
    if ((str != null) && (!str.equals(" ")))
      AsyncTaskUtils.execute(new ForgetPasswordTask(this));
  }

  public class ForgetPasswordTask extends AsyncTask<Void, Void, CommonResult>
  {
    Exception ex;
    ForgetPasswordActivity mActivity;

    public ForgetPasswordTask(ForgetPasswordActivity arg2)
    {
      Object localObject;
      this.mActivity = localObject;
    }

    protected CommonResult doInBackground(Void[] paramArrayOfVoid)
    {
      Server localServer = ((HomeApplication)ForgetPasswordActivity.this.getApplication()).getServer();
      try
      {
        CommonResult localCommonResult = localServer.forgetPassword(ForgetPasswordActivity.this.contexts, ForgetPasswordActivity.this.moeText.getText().toString());
        return localCommonResult;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        this.ex = localException;
      }
      return null;
    }

    protected void onPostExecute(CommonResult paramCommonResult)
    {
      super.onPostExecute(paramCommonResult);
      this.mActivity.postTask(paramCommonResult, this.ex);
    }

    protected void onPreExecute()
    {
      super.onPreExecute();
      this.mActivity.preTask();
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.act.ForgetPasswordActivity
 * JD-Core Version:    0.6.0
 */