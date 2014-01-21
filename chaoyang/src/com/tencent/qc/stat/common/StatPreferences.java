package com.tencent.qc.stat.common;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;

public class StatPreferences
{
  private static SharedPreferences a = null;

  public static long a(Context paramContext, String paramString, long paramLong)
  {
    String str = "qc_" + paramString;
    return a(paramContext).getLong(str, paramLong);
  }

  static SharedPreferences a(Context paramContext)
  {
    if (a == null)
      a = PreferenceManager.getDefaultSharedPreferences(paramContext);
    return a;
  }

  public static void b(Context paramContext, String paramString, long paramLong)
  {
    String str = "qc_" + paramString;
    SharedPreferences.Editor localEditor = a(paramContext).edit();
    localEditor.putLong(str, paramLong);
    localEditor.commit();
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.tencent.qc.stat.common.StatPreferences
 * JD-Core Version:    0.6.0
 */