package com.tencent.open;

import android.os.Handler;
import android.os.Message;
import android.util.Log;

class TDialog$JsListener
{
  private TDialog$JsListener(TDialog paramTDialog)
  {
  }

  public void onAddShare(String paramString)
  {
    onComplete(paramString);
  }

  public void onCancel(String paramString)
  {
    TDialog.a(this.this$0).obtainMessage(2, paramString).sendToTarget();
    this.this$0.dismiss();
  }

  public void onCancelAddShare(int paramInt)
  {
    onCancel(null);
  }

  public void onCancelInvite()
  {
    onCancel(null);
  }

  public void onCancelLogin()
  {
    onCancel(null);
  }

  public void onComplete(String paramString)
  {
    TDialog.a(this.this$0).obtainMessage(1, paramString).sendToTarget();
    Log.e("onComplete", paramString);
    this.this$0.dismiss();
  }

  public void onInvite(String paramString)
  {
    onComplete(paramString);
  }

  public void onLoad(String paramString)
  {
    TDialog.a(this.this$0).obtainMessage(4, paramString).sendToTarget();
  }

  public void showMsg(String paramString)
  {
    TDialog.a(this.this$0).obtainMessage(3, paramString).sendToTarget();
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.tencent.open.TDialog.JsListener
 * JD-Core Version:    0.6.0
 */