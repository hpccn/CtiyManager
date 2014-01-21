package com.tencent.plus;

import android.widget.Button;
import android.widget.ProgressBar;

class m
  implements Runnable
{
  m(h paramh)
  {
  }

  public void run()
  {
    ImageActivity.e(this.a.a).setEnabled(true);
    ImageActivity.e(this.a.a).setTextColor(-1);
    ImageActivity.f(this.a.a).setEnabled(true);
    ImageActivity.f(this.a.a).setTextColor(-1);
    ImageActivity.d(this.a.a).setVisibility(8);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.tencent.plus.m
 * JD-Core Version:    0.6.0
 */