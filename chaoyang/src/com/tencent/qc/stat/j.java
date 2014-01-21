package com.tencent.qc.stat;

class j
{
  private static int[] a = new int[256];
  private static int[] b = new int[256];

  public static byte[] a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    int i = 0;
    int j = paramArrayOfByte2.length;
    if ((j < 1) || (j > 256))
      throw new IllegalArgumentException("key must be between 1 and 256 bytes");
    for (int k = 0; k < 256; k++)
    {
      a[k] = k;
      b[k] = paramArrayOfByte2[(k % j)];
    }
    int m = 0;
    int n = 0;
    while (m < 256)
    {
      n = 0xFF & n + a[m] + b[m];
      int i5 = a[m];
      a[m] = a[n];
      a[n] = i5;
      m++;
    }
    byte[] arrayOfByte = new byte[paramArrayOfByte1.length];
    int i1 = 0;
    int i2 = 0;
    while (i < paramArrayOfByte1.length)
    {
      i2 = 0xFF & i2 + 1;
      i1 = 0xFF & i1 + a[i2];
      int i3 = a[i2];
      a[i2] = a[i1];
      a[i1] = i3;
      int i4 = 0xFF & a[i2] + a[i1];
      arrayOfByte[i] = (byte)(a[i4] ^ paramArrayOfByte1[i]);
      i++;
    }
    return arrayOfByte;
  }

  public static byte[] b(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    return a(paramArrayOfByte1, paramArrayOfByte2);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.tencent.qc.stat.j
 * JD-Core Version:    0.6.0
 */