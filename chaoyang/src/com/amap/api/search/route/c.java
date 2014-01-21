package com.amap.api.search.route;

import com.amap.api.search.core.AMapException;
import com.amap.api.search.core.g;
import java.io.InputStream;
import java.net.Proxy;
import java.util.ArrayList;

abstract class c extends d
{
  public c(e parame, Proxy paramProxy, String paramString1, String paramString2)
  {
    super(parame, paramProxy, paramString1, paramString2);
  }

  protected ArrayList<Route> a(InputStream paramInputStream)
    throws AMapException
  {
    return null;
  }

  protected void a(Route paramRoute)
  {
    for (int i = -1 + paramRoute.getStepCount(); i > 0; i--)
    {
      DriveSegment localDriveSegment2 = (DriveSegment)paramRoute.getStep(i);
      DriveSegment localDriveSegment3 = (DriveSegment)paramRoute.getStep(i - 1);
      localDriveSegment2.setActionCode(localDriveSegment3.getActionCode());
      localDriveSegment2.setActionDescription(localDriveSegment3.getActionDescription());
    }
    DriveSegment localDriveSegment1 = (DriveSegment)paramRoute.getStep(0);
    localDriveSegment1.setActionCode(-1);
    localDriveSegment1.setActionDescription("");
  }

  protected String e()
  {
    return g.a().b() + "/route/simple";
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.search.route.c
 * JD-Core Version:    0.6.0
 */