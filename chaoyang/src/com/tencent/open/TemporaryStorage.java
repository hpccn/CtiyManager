package com.tencent.open;

import java.util.HashMap;

public class TemporaryStorage
{
  private static HashMap a = new HashMap();

  public static Object a(String paramString)
  {
    return a.remove(paramString);
  }

  public static Object a(String paramString, Object paramObject)
  {
    return a.put(paramString, paramObject);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.tencent.open.TemporaryStorage
 * JD-Core Version:    0.6.0
 */