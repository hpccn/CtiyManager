package com.amap.api.a.b;

import com.autonavi.amap.mapcore.FPoint;
import java.util.List;

public class f
{
  static float a(FPoint[] paramArrayOfFPoint)
  {
    int i = paramArrayOfFPoint.length;
    float f = 0.0F;
    int j = i - 1;
    int m;
    for (int k = 0; k < i; k = m)
    {
      f += paramArrayOfFPoint[j].x * paramArrayOfFPoint[k].y - paramArrayOfFPoint[k].x * paramArrayOfFPoint[j].y;
      m = k + 1;
      j = k;
    }
    return 0.5F * f;
  }

  static boolean a(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, float paramFloat7, float paramFloat8)
  {
    float f1 = paramFloat5 - paramFloat3;
    float f2 = paramFloat6 - paramFloat4;
    float f3 = paramFloat1 - paramFloat5;
    float f4 = paramFloat2 - paramFloat6;
    float f5 = paramFloat3 - paramFloat1;
    float f6 = paramFloat4 - paramFloat2;
    float f7 = paramFloat7 - paramFloat1;
    float f8 = paramFloat8 - paramFloat2;
    float f9 = paramFloat7 - paramFloat3;
    float f10 = paramFloat8 - paramFloat4;
    float f11 = paramFloat7 - paramFloat5;
    float f12 = paramFloat8 - paramFloat6;
    float f13 = f1 * f10 - f2 * f9;
    float f14 = f5 * f8 - f6 * f7;
    float f15 = f3 * f12 - f4 * f11;
    return (f13 >= 0.0F) && (f15 >= 0.0F) && (f14 >= 0.0F);
  }

  static boolean a(FPoint[] paramArrayOfFPoint, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[] paramArrayOfInt)
  {
    float f1 = paramArrayOfFPoint[paramArrayOfInt[paramInt1]].x;
    float f2 = paramArrayOfFPoint[paramArrayOfInt[paramInt1]].y;
    float f3 = paramArrayOfFPoint[paramArrayOfInt[paramInt2]].x;
    float f4 = paramArrayOfFPoint[paramArrayOfInt[paramInt2]].y;
    float f5 = paramArrayOfFPoint[paramArrayOfInt[paramInt3]].x;
    float f6 = paramArrayOfFPoint[paramArrayOfInt[paramInt3]].y;
    if (1.0E-10F > (f3 - f1) * (f6 - f2) - (f4 - f2) * (f5 - f1))
      return false;
    int i = 0;
    if (i < paramInt4)
    {
      if ((i == paramInt1) || (i == paramInt2) || (i == paramInt3));
      do
      {
        i++;
        break;
      }
      while (!a(f1, f2, f3, f4, f5, f6, paramArrayOfFPoint[paramArrayOfInt[i]].x, paramArrayOfFPoint[paramArrayOfInt[i]].y));
      return false;
    }
    return true;
  }

  public static boolean a(FPoint[] paramArrayOfFPoint, List<FPoint> paramList)
  {
    int i = paramArrayOfFPoint.length;
    if (i < 3);
    int k;
    int m;
    int n;
    int i1;
    int i2;
    int i4;
    while (true)
    {
      return false;
      int[] arrayOfInt = new int[i];
      if (0.0F < a(paramArrayOfFPoint))
        for (int i11 = 0; i11 < i; i11++)
          arrayOfInt[i11] = i11;
      for (int j = 0; j < i; j++)
        arrayOfInt[j] = (i - 1 - j);
      k = i * 2;
      m = i - 1;
      n = 0;
      if (i <= 2)
        break;
      i1 = k - 1;
      if (k <= 0)
        continue;
      if (i <= m)
        m = 0;
      i2 = m + 1;
      if (i <= i2)
        i2 = 0;
      int i3 = i2 + 1;
      if (i <= i3)
        i3 = 0;
      if (!a(paramArrayOfFPoint, m, i2, i3, i, arrayOfInt))
        break label267;
      int i6 = arrayOfInt[m];
      int i7 = arrayOfInt[i2];
      int i8 = arrayOfInt[i3];
      paramList.add(paramArrayOfFPoint[i6]);
      paramList.add(paramArrayOfFPoint[i7]);
      paramList.add(paramArrayOfFPoint[i8]);
      i4 = n + 1;
      int i9 = i2 + 1;
      int i10 = i2;
      while (i9 < i)
      {
        arrayOfInt[i10] = arrayOfInt[i9];
        i10++;
        i9++;
      }
      i--;
    }
    for (int i5 = i * 2; ; i5 = i1)
    {
      n = i4;
      k = i5;
      m = i2;
      break;
      return true;
      label267: i4 = n;
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.a.b.f
 * JD-Core Version:    0.6.0
 */