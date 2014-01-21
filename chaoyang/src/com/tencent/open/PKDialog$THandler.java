package com.tencent.open;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;

class PKDialog$THandler extends Handler
{
  private PKDialog.OnTimeListener mL;

  public PKDialog$THandler(PKDialog.OnTimeListener paramOnTimeListener, Looper paramLooper)
  {
    super(paramLooper);
    this.mL = paramOnTimeListener;
  }

  public void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    case 4:
    default:
    case 1:
    case 2:
    case 3:
    case 5:
    }
    do
    {
      do
      {
        return;
        PKDialog.OnTimeListener.access$700(this.mL, (String)paramMessage.obj);
        return;
        this.mL.onCancel();
        return;
      }
      while ((PKDialog.access$400() == null) || (PKDialog.access$400().get() == null));
      PKDialog.access$800((Context)PKDialog.access$400().get(), (String)paramMessage.obj);
      return;
    }
    while ((PKDialog.access$400() == null) || (PKDialog.access$400().get() == null));
    PKDialog.access$900((Context)PKDialog.access$400().get(), (String)paramMessage.obj);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.tencent.open.PKDialog.THandler
 * JD-Core Version:    0.6.0
 */