package com.cymobile.ymwork.server;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

public class NullDiskCache
  implements DiskCache
{
  public void cleanup()
  {
  }

  public void clear()
  {
  }

  public boolean exists(String paramString)
  {
    return false;
  }

  public File getFile(String paramString)
  {
    return null;
  }

  public InputStream getInputStream(String paramString)
    throws IOException
  {
    throw new FileNotFoundException();
  }

  public void invalidate(String paramString)
  {
  }

  public void store(String paramString, InputStream paramInputStream)
  {
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.server.NullDiskCache
 * JD-Core Version:    0.6.0
 */