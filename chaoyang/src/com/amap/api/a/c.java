package com.amap.api.a;

import android.os.Handler;
import android.util.Log;
import com.amap.api.a.b.a;

class c extends Thread
{
  c(b paramb)
  {
  }

  public void run()
  {
    try
    {
      com.amap.api.a.b.c.a(b.v(this.a));
      b.w(this.a);
      f.a(b.v(this.a));
      interrupt();
      b.w(this.a);
      int i = f.a;
      b.w(this.a);
      if (i == 0)
        this.a.e.sendEmptyMessage(2);
      return;
    }
    catch (a locala)
    {
      interrupt();
      Log.i("AuthFailure", locala.a());
      locala.printStackTrace();
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.a.c
 * JD-Core Version:    0.6.0
 */