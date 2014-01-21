package com.amap.api.location.core;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

public class c
{
  public static int a = 2048;

  public static byte[] a(InputStream paramInputStream)
    throws IOException
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    byte[] arrayOfByte = new byte[a];
    while (true)
    {
      int i = paramInputStream.read(arrayOfByte, 0, a);
      if (i == -1)
        break;
      localByteArrayOutputStream.write(arrayOfByte, 0, i);
    }
    return localByteArrayOutputStream.toByteArray();
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.location.core.c
 * JD-Core Version:    0.6.0
 */