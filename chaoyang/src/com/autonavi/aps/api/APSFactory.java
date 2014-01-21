package com.autonavi.aps.api;

import android.content.Context;

public class APSFactory
{
  private static IAPS a = null;

  public static IAPS getInstance(Context paramContext)
  {
    APSYUNPINGTAI localAPSYUNPINGTAI = APSYUNPINGTAI.getInstance(paramContext);
    a = localAPSYUNPINGTAI;
    return localAPSYUNPINGTAI;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.autonavi.aps.api.APSFactory
 * JD-Core Version:    0.6.0
 */