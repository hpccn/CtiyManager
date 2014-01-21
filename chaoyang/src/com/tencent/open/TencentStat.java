package com.tencent.open;

import com.tencent.qc.stat.StatConfig;
import com.tencent.qc.stat.StatService;

public class TencentStat
{
  public static void a(TContext paramTContext, String paramString)
  {
    b(paramTContext);
    StatService.b(paramString);
  }

  public static void a(TContext paramTContext, String paramString, String[] paramArrayOfString)
  {
    b(paramTContext);
    StatService.a(paramTContext.f(), paramString, paramArrayOfString);
  }

  public static boolean a(TContext paramTContext)
  {
    return OpenConfig.a(paramTContext.f(), paramTContext.d()).c("Common_ta_enable");
  }

  public static void b(TContext paramTContext)
  {
    if (a(paramTContext))
    {
      StatConfig.a(true);
      return;
    }
    StatConfig.a(false);
  }

  public static void b(TContext paramTContext, String paramString)
  {
    b(paramTContext);
    if (paramString != null)
      StatService.a(paramTContext.f(), paramString);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.tencent.open.TencentStat
 * JD-Core Version:    0.6.0
 */