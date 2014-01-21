package com.autonavi.aps.api;

public abstract interface IAPS
{
  public abstract Location getCurrentLocation(android.location.Location paramLocation);

  public abstract String getVersion();

  public abstract void onDestroy();

  public abstract void setKey(String paramString);

  public abstract void setLicence(String paramString);

  public abstract void setOpenGps(boolean paramBoolean);

  public abstract void setOpenSystemNetworkLocation(boolean paramBoolean);

  public abstract void setPackageName(String paramString);

  public abstract void setProductName(String paramString);
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.autonavi.aps.api.IAPS
 * JD-Core Version:    0.6.0
 */