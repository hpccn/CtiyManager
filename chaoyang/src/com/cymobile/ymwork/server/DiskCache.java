package com.cymobile.ymwork.server;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;

public abstract interface DiskCache
{
  public abstract void cleanup();

  public abstract void clear();

  public abstract boolean exists(String paramString);

  public abstract File getFile(String paramString);

  public abstract InputStream getInputStream(String paramString)
    throws IOException;

  public abstract void invalidate(String paramString);

  public abstract void store(String paramString, InputStream paramInputStream);
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.server.DiskCache
 * JD-Core Version:    0.6.0
 */