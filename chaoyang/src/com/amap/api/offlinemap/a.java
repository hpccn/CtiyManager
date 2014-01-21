package com.amap.api.offlinemap;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;

public class a
{
  RandomAccessFile a;
  long b;

  public a()
    throws IOException
  {
    this("", 0L);
  }

  public a(String paramString, long paramLong)
    throws IOException
  {
    File localFile = new File(paramString);
    if (!localFile.exists())
      if (!localFile.getParentFile().exists())
        localFile.getParentFile().mkdirs();
    try
    {
      if (!localFile.exists())
        localFile.createNewFile();
      this.a = new RandomAccessFile(paramString, "rw");
      this.b = paramLong;
      this.a.seek(paramLong);
      return;
    }
    catch (IOException localIOException)
    {
      while (true)
        localIOException.printStackTrace();
    }
  }

  public int a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    monitorenter;
    try
    {
      this.a.write(paramArrayOfByte, paramInt1, paramInt2);
      return paramInt2;
    }
    catch (IOException localIOException)
    {
      while (true)
      {
        localIOException.printStackTrace();
        paramInt2 = -1;
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.offlinemap.a
 * JD-Core Version:    0.6.0
 */