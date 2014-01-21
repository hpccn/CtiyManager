package com.tencent.open;

import java.util.HashMap;

public class BrowserAuth
{
  public static BrowserAuth a;
  private static int e;
  public HashMap b = new HashMap();
  public final String c = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";

  static
  {
    if (!BrowserAuth.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      d = bool;
      e = 0;
      return;
    }
  }

  public static BrowserAuth a()
  {
    if (a == null)
      a = new BrowserAuth();
    return a;
  }

  public static int b()
  {
    int i = 1 + e;
    e = i;
    return i;
  }

  private String b(String paramString1, String paramString2)
  {
    int i = 0;
    if ((!d) && (paramString1.length() % 2 != 0))
      throw new AssertionError();
    StringBuilder localStringBuilder = new StringBuilder();
    int j = paramString2.length();
    int k = paramString1.length() / 2;
    int m = 0;
    while (i < k)
    {
      localStringBuilder.append((char)(Integer.parseInt(paramString1.substring(i * 2, 2 + i * 2), 16) ^ paramString2.charAt(m)));
      m = (m + 1) % j;
      i++;
    }
    return localStringBuilder.toString();
  }

  public BrowserAuth.Auth a(String paramString)
  {
    return (BrowserAuth.Auth)this.b.get(paramString);
  }

  public String a(BrowserAuth.Auth paramAuth)
  {
    int i = b();
    try
    {
      this.b.put("" + i, paramAuth);
      return "" + i;
    }
    catch (Throwable localThrowable)
    {
      while (true)
        localThrowable.printStackTrace();
    }
  }

  public String a(String paramString1, String paramString2)
  {
    return b(paramString1, paramString2);
  }

  public void b(String paramString)
  {
    this.b.remove(paramString);
  }

  public String c()
  {
    int i = (int)Math.ceil(3.0D + 20.0D * Math.random());
    char[] arrayOfChar = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789".toCharArray();
    int j = arrayOfChar.length;
    StringBuffer localStringBuffer = new StringBuffer();
    for (int k = 0; k < i; k++)
      localStringBuffer.append(arrayOfChar[(int)(Math.random() * j)]);
    return localStringBuffer.toString();
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.tencent.open.BrowserAuth
 * JD-Core Version:    0.6.0
 */