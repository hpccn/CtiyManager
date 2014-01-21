package com.tencent.plus;

import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.RelativeLayout;

class j
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  j(ImageActivity paramImageActivity)
  {
  }

  public void onGlobalLayout()
  {
    this.a.a.getViewTreeObserver().removeGlobalOnLayoutListener(this);
    ImageActivity.a(this.a, ImageActivity.a(this.a).a());
    ImageActivity.c(this.a).a(ImageActivity.b(this.a));
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.tencent.plus.j
 * JD-Core Version:    0.6.0
 */