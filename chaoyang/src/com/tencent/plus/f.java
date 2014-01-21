package com.tencent.plus;

import android.view.View;
import android.view.View.OnClickListener;

class f
  implements View.OnClickListener
{
  f(ImageActivity paramImageActivity)
  {
  }

  public void onClick(View paramView)
  {
    long l = System.currentTimeMillis() - ImageActivity.i(this.a);
    this.a.a("10656", l);
    this.a.setResult(0);
    ImageActivity.j(this.a);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.tencent.plus.f
 * JD-Core Version:    0.6.0
 */