package com.tencent.open;

import android.content.Context;

public class TContext
{
  private String a;
  private String b;
  private long c = -1L;
  private String d;
  private Context e;

  public TContext(String paramString, Context paramContext)
  {
    this.a = paramString;
    a(paramContext);
  }

  public void a(Context paramContext)
  {
    this.e = paramContext;
  }

  public void a(String paramString)
  {
    this.d = paramString;
  }

  public void a(String paramString1, String paramString2)
  {
    this.c = 0L;
    this.b = null;
    if (paramString2 == null)
      paramString2 = "0";
    this.c = (System.currentTimeMillis() + 1000L * Long.parseLong(paramString2));
    this.b = paramString1;
  }

  public boolean a()
  {
    return (this.b != null) && (System.currentTimeMillis() < this.c);
  }

  public String b()
  {
    return this.b;
  }

  public String c()
  {
    return this.d;
  }

  public String d()
  {
    return this.a;
  }

  public long e()
  {
    return this.c;
  }

  public Context f()
  {
    return this.e;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.tencent.open.TContext
 * JD-Core Version:    0.6.0
 */