package com.tencent.qc.stat.common;

import java.io.File;

class a
{
  private static int a = -1;

  public static boolean a()
  {
    if (a == 1)
      return true;
    if (a == 0)
      return false;
    String[] arrayOfString = { "/bin", "/system/bin/", "/system/xbin/", "/system/sbin/", "/sbin/", "/vendor/bin/" };
    for (int i = 0; ; i++)
      try
      {
        if (i < arrayOfString.length)
        {
          File localFile = new File(arrayOfString[i] + "su");
          if ((localFile == null) || (!localFile.exists()))
            continue;
          a = 1;
          return true;
        }
      }
      catch (Exception localException)
      {
        a = 0;
        return false;
      }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.tencent.qc.stat.common.a
 * JD-Core Version:    0.6.0
 */