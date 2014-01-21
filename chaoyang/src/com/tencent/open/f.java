package com.tencent.open;

import android.content.Context;
import android.os.Bundle;

final class f extends Thread
{
  f(Context paramContext, Bundle paramBundle)
  {
  }

  public void run()
  {
    try
    {
      Util.a(this.a, "http://cgi.qplus.com/report/report", "GET", this.b);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.tencent.open.f
 * JD-Core Version:    0.6.0
 */