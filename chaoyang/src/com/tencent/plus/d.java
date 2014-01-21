package com.tencent.plus;

class d
  implements Runnable
{
  d(TouchView paramTouchView)
  {
  }

  public void run()
  {
    try
    {
      Thread.sleep(300L);
      this.a.post(new c(this));
      TouchView.a(this.a, false);
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      while (true)
        localInterruptedException.printStackTrace();
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.tencent.plus.d
 * JD-Core Version:    0.6.0
 */