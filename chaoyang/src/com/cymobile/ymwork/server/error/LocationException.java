package com.cymobile.ymwork.server.error;

public class LocationException extends ServerException
{
  private static final long serialVersionUID = 1L;

  public LocationException()
  {
    super("Unable to determine your location.");
  }

  public LocationException(String paramString)
  {
    super(paramString);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.server.error.LocationException
 * JD-Core Version:    0.6.0
 */