package com.autonavi.amap.mapcore;

import java.util.ArrayList;
import java.util.Hashtable;

public class VTMCDataCache
{
  public static final int MAXSIZE = 500;
  public static final int MAX_EXPIREDTIME = 10;
  private static VTMCDataCache instance;
  static Hashtable<String, e> vtmcHs = new Hashtable();
  static ArrayList<String> vtmcList = new ArrayList();

  public static VTMCDataCache getInstance()
  {
    if (instance == null)
      instance = new VTMCDataCache();
    return instance;
  }

  public e GetData(String paramString)
  {
    e locale = (e)vtmcHs.get(paramString);
    if (locale != null)
    {
      if ((int)(System.currentTimeMillis() / 1000L) - locale.c > 10)
        locale = null;
      return locale;
    }
    return null;
  }

  public void putData(String paramString, byte[] paramArrayOfByte)
  {
    e locale = new e(paramString, paramArrayOfByte);
    if (vtmcList.size() > 500)
    {
      vtmcHs.remove(vtmcList.get(0));
      vtmcList.remove(0);
    }
    vtmcHs.put(paramString, locale);
    vtmcList.add(paramString);
  }

  public void reset()
  {
    vtmcHs.clear();
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.autonavi.amap.mapcore.VTMCDataCache
 * JD-Core Version:    0.6.0
 */