package com.amap.api.offlinemap;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;

class d extends Handler
{
  d(OfflineMapManager paramOfflineMapManager)
  {
  }

  public void handleMessage(Message paramMessage)
  {
    OfflineMapManager.a(this.a).onDownload(paramMessage.getData().getInt("status"), paramMessage.getData().getInt("completepercent"));
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.offlinemap.d
 * JD-Core Version:    0.6.0
 */