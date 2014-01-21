package com.cymobile.ymwork.utils;

import android.location.Location;
import com.cymobile.ymwork.server.Server.Location;

public class LocationUtils
{
  public static final Server.Location createShopLocation(Location paramLocation)
  {
    if (paramLocation == null)
      return new Server.Location(null, null, null, null, null);
    boolean bool1 = paramLocation.getLatitude() < 0.0D;
    String str1 = null;
    if (bool1)
      str1 = String.valueOf(paramLocation.getLatitude());
    boolean bool2 = paramLocation.getLongitude() < 0.0D;
    String str2 = null;
    if (bool2)
      str2 = String.valueOf(paramLocation.getLongitude());
    boolean bool3 = paramLocation.hasAccuracy();
    String str3 = null;
    if (bool3)
      str3 = String.valueOf(paramLocation.getAccuracy());
    boolean bool4 = paramLocation.hasAccuracy();
    String str4 = null;
    if (bool4)
      str4 = String.valueOf(paramLocation.hasAltitude());
    return new Server.Location(str1, str2, str3, null, str4);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.utils.LocationUtils
 * JD-Core Version:    0.6.0
 */