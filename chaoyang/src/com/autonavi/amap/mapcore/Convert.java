package com.autonavi.amap.mapcore;

import java.io.ByteArrayOutputStream;

public class Convert
{
  public static final String bytesToHexString(byte[] paramArrayOfByte)
  {
    StringBuffer localStringBuffer = new StringBuffer(paramArrayOfByte.length);
    for (int i = 0; i < paramArrayOfByte.length; i++)
    {
      String str = Integer.toHexString(0xFF & paramArrayOfByte[i]);
      if (str.length() < 2)
        localStringBuffer.append(0);
      localStringBuffer.append(str.toUpperCase());
    }
    return localStringBuffer.toString();
  }

  public static void convert1bString(byte[] paramArrayOfByte, int paramInt, a parama)
  {
    try
    {
      parama.a = paramArrayOfByte[paramInt];
      parama.b = new String(paramArrayOfByte, paramInt + 1, parama.a, "UTF-8");
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      parama.a = 0;
      parama.b = "";
    }
  }

  public static void convert2bString(byte[] paramArrayOfByte, int paramInt, a parama)
  {
    try
    {
      parama.a = getShort(paramArrayOfByte, paramInt);
      parama.b = new String(paramArrayOfByte, paramInt + 2, parama.a, "UTF-8");
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      parama.a = 0;
      parama.b = "";
    }
  }

  public static double convertDouble(byte[] paramArrayOfByte, int paramInt)
  {
    long l = 0L;
    for (int i = 0; i < 8; i++)
      l += ((0xFF & paramArrayOfByte[(i + paramInt)]) << i * 8);
    return Double.longBitsToDouble(l);
  }

  public static byte[] convertInt(int paramInt)
  {
    byte[] arrayOfByte = new byte[4];
    arrayOfByte[0] = (byte)(paramInt & 0xFF);
    arrayOfByte[1] = (byte)(0xFF & paramInt >> 8);
    arrayOfByte[2] = (byte)(0xFF & paramInt >> 16);
    arrayOfByte[3] = (byte)(0xFF & paramInt >> 24);
    return arrayOfByte;
  }

  public static byte[] convertShort(int paramInt)
  {
    byte[] arrayOfByte = new byte[2];
    arrayOfByte[0] = (byte)(paramInt & 0xFF);
    arrayOfByte[1] = (byte)(0xFF & paramInt >> 8);
    return arrayOfByte;
  }

  public static byte[] copyString(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    byte[] arrayOfByte = new byte[paramInt2];
    System.arraycopy(paramArrayOfByte, paramInt1, arrayOfByte, 0, paramInt2);
    return arrayOfByte;
  }

  public static byte[] covertBytes(byte paramByte)
  {
    return new byte[] { paramByte };
  }

  public static byte[] get1BString(String paramString)
  {
    try
    {
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
      byte[] arrayOfByte1 = paramString.getBytes("UTF-8");
      byte[] arrayOfByte2 = new byte[1];
      arrayOfByte2[0] = (byte)arrayOfByte1.length;
      localByteArrayOutputStream.write(arrayOfByte2);
      localByteArrayOutputStream.write(arrayOfByte1);
      byte[] arrayOfByte3 = localByteArrayOutputStream.toByteArray();
      return arrayOfByte3;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return new byte[1];
  }

  public static byte[] get2BString(String paramString)
  {
    try
    {
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
      byte[] arrayOfByte1 = paramString.getBytes("UTF-8");
      localByteArrayOutputStream.write(convertShort(arrayOfByte1.length));
      localByteArrayOutputStream.write(arrayOfByte1);
      byte[] arrayOfByte2 = localByteArrayOutputStream.toByteArray();
      return arrayOfByte2;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return new byte[1];
  }

  public static boolean getBit(byte paramByte, int paramInt)
  {
    return paramByte << 32 - paramInt >>> 32 - paramInt >>> paramInt - 1 > 0;
  }

  public static byte[] getDouble(double paramDouble)
  {
    byte[] arrayOfByte = new byte[8];
    String str1 = Long.toHexString(Double.doubleToLongBits(paramDouble));
    for (int i = 0; i < 8; i++)
    {
      String str2 = str1.substring(i * 2, 2 + i * 2);
      arrayOfByte[(7 - i)] = (byte)Integer.parseInt(str2, 16);
    }
    return arrayOfByte;
  }

  public static int getInt(byte[] paramArrayOfByte, int paramInt)
  {
    int i = 0xFF & paramArrayOfByte[(paramInt + 3)];
    int j = 0xFF & paramArrayOfByte[(paramInt + 2)];
    int k = 0xFF & paramArrayOfByte[(paramInt + 1)];
    int m = 0xFF & paramArrayOfByte[(paramInt + 0)];
    return (i << 24) + (j << 16) + (k << 8) + (m << 0);
  }

  public static int getNum(byte paramByte, int paramInt1, int paramInt2)
  {
    return paramByte << -1 + (32 - paramInt2) >>> -1 + (32 - paramInt2) >>> paramInt1;
  }

  public static int getNum(short paramShort, int paramInt1, int paramInt2)
  {
    return paramShort << 32 - paramInt2 >>> 32 - paramInt2 >>> paramInt1 - 1;
  }

  public static short getShort(byte[] paramArrayOfByte, int paramInt)
  {
    int i = 0xFF & paramArrayOfByte[(paramInt + 1)];
    int j = 0xFF & paramArrayOfByte[(paramInt + 0)];
    return (short)((i << 8) + (j << 0));
  }

  public static String getString(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    try
    {
      String str = new String(paramArrayOfByte, paramInt1, paramInt2, "UTF-8");
      return str;
    }
    catch (Exception localException)
    {
    }
    return "";
  }

  public static byte[] getSubBytes(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    byte[] arrayOfByte = new byte[paramInt2];
    System.arraycopy(paramArrayOfByte, paramInt1, arrayOfByte, 0, paramInt2);
    return arrayOfByte;
  }

  public static int getUShort(byte[] paramArrayOfByte, int paramInt)
  {
    int i = 0xFF & paramArrayOfByte[(paramInt + 1)];
    int j = 0xFF & paramArrayOfByte[(paramInt + 0)];
    return (i << 8) + (j << 0);
  }

  public static void moveArray(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2, int paramInt3)
  {
    byte[] arrayOfByte = new byte[paramInt3];
    System.arraycopy(paramArrayOfByte1, paramInt1, arrayOfByte, 0, paramInt3);
    System.arraycopy(arrayOfByte, 0, paramArrayOfByte2, paramInt2, paramInt3);
  }

  public static void writeInt(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    System.arraycopy(convertInt(paramInt2), 0, paramArrayOfByte, paramInt1, 4);
  }

  public static void writeShort(byte[] paramArrayOfByte, int paramInt, short paramShort)
  {
    System.arraycopy(convertShort(paramShort), 0, paramArrayOfByte, paramInt, 2);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.autonavi.amap.mapcore.Convert
 * JD-Core Version:    0.6.0
 */