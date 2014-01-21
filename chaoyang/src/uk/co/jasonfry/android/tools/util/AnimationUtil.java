package uk.co.jasonfry.android.tools.util;

public class AnimationUtil
{
  public static int quadraticOutEase(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    float f = paramFloat1 / paramFloat4;
    return (int)(paramFloat2 + f * -paramFloat3 * (f - 2.0F));
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     uk.co.jasonfry.android.tools.util.AnimationUtil
 * JD-Core Version:    0.6.0
 */