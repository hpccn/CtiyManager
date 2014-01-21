package com.autonavi.aps.api;

import android.net.wifi.WifiManager;

final class c extends Thread
{
  c(APSYUNPINGTAI paramAPSYUNPINGTAI)
  {
  }

  public final void run()
  {
    APSYUNPINGTAI.a().startScan();
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.autonavi.aps.api.c
 * JD-Core Version:    0.6.0
 */