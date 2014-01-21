package com.tencent.plus;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;

public class DensityUtil
{
  public static int dip2px(Context paramContext, float paramFloat)
  {
    return (int)(0.5F + paramFloat * paramContext.getResources().getDisplayMetrics().density);
  }

  public static int px2dip(Context paramContext, float paramFloat)
  {
    return (int)(0.5F + paramFloat / paramContext.getResources().getDisplayMetrics().density);
  }

  public static int px2sp(Context paramContext, float paramFloat)
  {
    return (int)(0.5F + paramFloat / paramContext.getResources().getDisplayMetrics().scaledDensity);
  }

  public static int sp2px(Context paramContext, float paramFloat)
  {
    return (int)(0.5F + paramFloat * paramContext.getResources().getDisplayMetrics().scaledDensity);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.tencent.plus.DensityUtil
 * JD-Core Version:    0.6.0
 */