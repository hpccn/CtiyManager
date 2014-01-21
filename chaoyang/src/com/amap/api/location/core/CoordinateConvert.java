package com.amap.api.location.core;

import com.a.a.a;

public class CoordinateConvert
{
  public static GeoPoint fromGpsToAMap(double paramDouble1, double paramDouble2)
  {
    double[] arrayOfDouble = a.a(paramDouble2, paramDouble1);
    return new GeoPoint((int)(1000000.0D * arrayOfDouble[1]), (int)(1000000.0D * arrayOfDouble[0]));
  }

  public static double[] fromSeveralGpsToAMap(String paramString)
  {
    String[] arrayOfString = paramString.split(",");
    int i = arrayOfString.length;
    double[] arrayOfDouble1 = new double[i];
    for (int j = 0; j < i / 2; j++)
    {
      double[] arrayOfDouble2 = a.a(Double.parseDouble(arrayOfString[(j * 2)]), Double.parseDouble(arrayOfString[(1 + j * 2)]));
      arrayOfDouble1[(j * 2)] = arrayOfDouble2[0];
      arrayOfDouble1[(1 + j * 2)] = arrayOfDouble2[1];
    }
    return arrayOfDouble1;
  }

  public static double[] fromSeveralGpsToAMap(double[] paramArrayOfDouble)
  {
    int i = paramArrayOfDouble.length;
    double[] arrayOfDouble1 = new double[i];
    for (int j = 0; j < i / 2; j++)
    {
      double[] arrayOfDouble2 = a.a(paramArrayOfDouble[(j * 2)], paramArrayOfDouble[(1 + j * 2)]);
      arrayOfDouble1[(j * 2)] = arrayOfDouble2[0];
      arrayOfDouble1[(1 + j * 2)] = arrayOfDouble2[1];
    }
    return arrayOfDouble1;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.location.core.CoordinateConvert
 * JD-Core Version:    0.6.0
 */