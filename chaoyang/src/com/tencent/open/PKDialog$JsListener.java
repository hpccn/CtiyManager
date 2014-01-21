package com.tencent.open;

import android.os.Handler;
import android.os.Message;
import android.util.Log;

class PKDialog$JsListener
{
  private PKDialog$JsListener(PKDialog paramPKDialog)
  {
  }

  public void onCancel(String paramString)
  {
    PKDialog.access$200(this.this$0).obtainMessage(2, paramString).sendToTarget();
    this.this$0.dismiss();
  }

  public void onComplete(String paramString)
  {
    PKDialog.access$200(this.this$0).obtainMessage(1, paramString).sendToTarget();
    Log.e("onComplete", paramString);
    this.this$0.dismiss();
  }

  public void onLoad(String paramString)
  {
    PKDialog.access$200(this.this$0).obtainMessage(4, paramString).sendToTarget();
  }

  public void showMsg(String paramString)
  {
    PKDialog.access$200(this.this$0).obtainMessage(3, paramString).sendToTarget();
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.tencent.open.PKDialog.JsListener
 * JD-Core Version:    0.6.0
 */