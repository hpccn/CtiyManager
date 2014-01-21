package com.tencent.open;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import java.lang.ref.WeakReference;

class TDialog$THandler extends Handler
{
  private TDialog.OnTimeListener mL;

  public TDialog$THandler(TDialog.OnTimeListener paramOnTimeListener, Looper paramLooper)
  {
    super(paramLooper);
    this.mL = paramOnTimeListener;
  }

  public void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    }
    do
    {
      do
      {
        do
        {
          return;
          TDialog.OnTimeListener.access$000(this.mL, (String)paramMessage.obj);
          return;
          this.mL.onCancel();
          return;
        }
        while ((TDialog.a() == null) || (TDialog.a().get() == null));
        TDialog.a((Context)TDialog.a().get(), (String)paramMessage.obj);
        return;
      }
      while ((TDialog.b() == null) || (TDialog.b().get() == null));
      ((View)TDialog.b().get()).setVisibility(8);
      return;
    }
    while ((TDialog.a() == null) || (TDialog.a().get() == null));
    TDialog.b((Context)TDialog.a().get(), (String)paramMessage.obj);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.tencent.open.TDialog.THandler
 * JD-Core Version:    0.6.0
 */