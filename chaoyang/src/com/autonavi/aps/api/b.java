package com.autonavi.aps.api;

import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;

final class b
  implements LocationListener
{
  public final void onLocationChanged(Location paramLocation)
  {
    if ((paramLocation != null) && (paramLocation.getProvider().equalsIgnoreCase("network")))
    {
      Utils.writeLogCat("receive system network provider location");
      APSYUNPINGTAI.b(paramLocation);
    }
  }

  public final void onProviderDisabled(String paramString)
  {
    if (paramString.equals("network"))
    {
      Utils.writeLogCat("system network provider disabled");
      APSYUNPINGTAI.b(null);
    }
  }

  public final void onProviderEnabled(String paramString)
  {
    if (paramString.equalsIgnoreCase("network"))
      Utils.writeLogCat("system network provider is enabled");
  }

  public final void onStatusChanged(String paramString, int paramInt, Bundle paramBundle)
  {
    if (paramString.equalsIgnoreCase("network"))
    {
      Utils.writeLogCat("system network provider status changed to " + String.valueOf(paramInt));
      if (paramInt == 0)
        APSYUNPINGTAI.b(null);
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.autonavi.aps.api.b
 * JD-Core Version:    0.6.0
 */