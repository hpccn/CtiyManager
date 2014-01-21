package com.cymobile.ymwork.utils;

public class Base64Coder
{
  private static char[] map1 = new char[64];
  private static byte[] map2;

  static
  {
    int i = 65;
    int j = 0;
    int m;
    label22: int i1;
    label33: int i4;
    if (i > 90)
    {
      m = 97;
      if (m <= 122)
        break label126;
      i1 = 48;
      if (i1 <= 57)
        break label155;
      char[] arrayOfChar4 = map1;
      int i3 = j + 1;
      arrayOfChar4[j] = '+';
      char[] arrayOfChar5 = map1;
      (i3 + 1);
      arrayOfChar5[i3] = '/';
      map2 = new byte[''];
      i4 = 0;
      label84: if (i4 < map2.length)
        break label184;
    }
    for (int i5 = 0; ; i5++)
    {
      if (i5 >= 64)
      {
        return;
        char[] arrayOfChar1 = map1;
        int k = j + 1;
        arrayOfChar1[j] = i;
        i = (char)(i + 1);
        j = k;
        break;
        label126: char[] arrayOfChar2 = map1;
        int n = j + 1;
        arrayOfChar2[j] = m;
        m = (char)(m + 1);
        j = n;
        break label22;
        label155: char[] arrayOfChar3 = map1;
        int i2 = j + 1;
        arrayOfChar3[j] = i1;
        i1 = (char)(i1 + 1);
        j = i2;
        break label33;
        label184: map2[i4] = -1;
        i4++;
        break label84;
      }
      map2[map1[i5]] = (byte)i5;
    }
  }

  public static byte[] decode(String paramString)
  {
    return decode(paramString.toCharArray());
  }

  public static byte[] decode(char[] paramArrayOfChar)
  {
    int i = paramArrayOfChar.length;
    if (i % 4 != 0)
      throw new IllegalArgumentException("Length of Base64 encoded input string is not a multiple of 4.");
    do
      i--;
    while ((i > 0) && (paramArrayOfChar[(i - 1)] == '='));
    int j = i * 3 / 4;
    byte[] arrayOfByte = new byte[j];
    int k = 0;
    int m = 0;
    if (m >= i)
      return arrayOfByte;
    int n = m + 1;
    int i1 = paramArrayOfChar[m];
    int i2 = n + 1;
    int i3 = paramArrayOfChar[n];
    int i4;
    int i6;
    int i5;
    if (i2 < i)
    {
      int i16 = i2 + 1;
      i4 = paramArrayOfChar[i2];
      i2 = i16;
      if (i2 >= i)
        break label169;
      i6 = i2 + 1;
      i5 = paramArrayOfChar[i2];
    }
    while (true)
    {
      if ((i1 <= 127) && (i3 <= 127) && (i4 <= 127) && (i5 <= 127))
        break label180;
      throw new IllegalArgumentException("Illegal character in Base64 encoded data.");
      i4 = 65;
      break;
      label169: i5 = 65;
      i6 = i2;
    }
    label180: int i7 = map2[i1];
    int i8 = map2[i3];
    int i9 = map2[i4];
    int i10 = map2[i5];
    if ((i7 < 0) || (i8 < 0) || (i9 < 0) || (i10 < 0))
      throw new IllegalArgumentException("Illegal character in Base64 encoded data.");
    int i11 = i7 << 2 | i8 >>> 4;
    int i12 = (i8 & 0xF) << 4 | i9 >>> 2;
    int i13 = i10 | (i9 & 0x3) << 6;
    int i14 = k + 1;
    arrayOfByte[k] = (byte)i11;
    if (i14 < j)
    {
      k = i14 + 1;
      arrayOfByte[i14] = (byte)i12;
    }
    while (true)
    {
      if (k < j)
      {
        int i15 = k + 1;
        arrayOfByte[k] = (byte)i13;
        k = i15;
        m = i6;
        break;
      }
      m = i6;
      break;
      k = i14;
    }
  }

  public static String decodeString(String paramString)
  {
    return new String(decode(paramString));
  }

  public static char[] encode(byte[] paramArrayOfByte)
  {
    return encode(paramArrayOfByte, paramArrayOfByte.length);
  }

  public static char[] encode(byte[] paramArrayOfByte, int paramInt)
  {
    int i = (2 + paramInt * 4) / 3;
    char[] arrayOfChar = new char[4 * ((paramInt + 2) / 3)];
    int j = 0;
    int k = 0;
    if (k >= paramInt)
      return arrayOfChar;
    int m = k + 1;
    int n = 0xFF & paramArrayOfByte[k];
    int i1;
    int i2;
    label70: int i3;
    int i4;
    label92: int i8;
    int i11;
    label179: int i12;
    if (m < paramInt)
    {
      i1 = m + 1;
      i2 = 0xFF & paramArrayOfByte[m];
      if (i1 >= paramInt)
        break label234;
      i3 = i1 + 1;
      i4 = 0xFF & paramArrayOfByte[i1];
      int i5 = n >>> 2;
      int i6 = (n & 0x3) << 4 | i2 >>> 4;
      int i7 = (i2 & 0xF) << 2 | i4 >>> 6;
      i8 = i4 & 0x3F;
      int i9 = j + 1;
      arrayOfChar[j] = map1[i5];
      int i10 = i9 + 1;
      arrayOfChar[i9] = map1[i6];
      if (i10 >= i)
        break label244;
      i11 = map1[i7];
      arrayOfChar[i10] = i11;
      i12 = i10 + 1;
      if (i12 >= i)
        break label251;
    }
    label234: label244: label251: for (int i13 = map1[i8]; ; i13 = 61)
    {
      arrayOfChar[i12] = i13;
      j = i12 + 1;
      k = i3;
      break;
      i1 = m;
      i2 = 0;
      break label70;
      i3 = i1;
      i4 = 0;
      break label92;
      i11 = 61;
      break label179;
    }
  }

  public static String encodeString(String paramString)
  {
    return new String(encode(paramString.getBytes()));
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.utils.Base64Coder
 * JD-Core Version:    0.6.0
 */