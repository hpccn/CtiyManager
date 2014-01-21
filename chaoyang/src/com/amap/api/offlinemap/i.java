package com.amap.api.offlinemap;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

public class i
{
  public static void a(String paramString1, String paramString2)
  {
    try
    {
      ZipInputStream localZipInputStream = new ZipInputStream(new FileInputStream(paramString2));
      File localFile = new File(paramString1);
      localFile.mkdirs();
      a(localZipInputStream, localFile);
      localZipInputStream.close();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  private static void a(ZipInputStream paramZipInputStream, File paramFile)
    throws Exception
  {
    ZipEntry localZipEntry = paramZipInputStream.getNextEntry();
    if (localZipEntry != null)
    {
      String str = localZipEntry.getName();
      File localFile = new File(paramFile.getAbsolutePath() + "/" + str);
      if (localZipEntry.isDirectory())
      {
        localFile.mkdirs();
        a(paramZipInputStream, paramFile);
      }
      while (true)
      {
        localZipEntry = paramZipInputStream.getNextEntry();
        break;
        localFile.createNewFile();
        FileOutputStream localFileOutputStream = new FileOutputStream(localFile);
        byte[] arrayOfByte = new byte[2048];
        while (true)
        {
          int i = paramZipInputStream.read(arrayOfByte);
          if (i == -1)
            break;
          localFileOutputStream.write(arrayOfByte, 0, i);
        }
        localFileOutputStream.close();
      }
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.offlinemap.i
 * JD-Core Version:    0.6.0
 */