package com.tencent.open;

import android.app.Activity;
import android.os.Bundle;
import com.tencent.tauth.IUiListener;
import java.lang.ref.WeakReference;

class k
{
  public IUiListener a;
  public Bundle b;
  public String c;
  public WeakReference d;

  public k(Activity paramActivity, String paramString, Bundle paramBundle, IUiListener paramIUiListener)
  {
    this.d = new WeakReference(paramActivity);
    this.c = paramString;
    this.b = paramBundle;
    this.a = paramIUiListener;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.tencent.open.k
 * JD-Core Version:    0.6.0
 */