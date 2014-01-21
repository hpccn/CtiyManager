package com.tencent.open.cgireport;

import android.util.Log;

public class reportItem
{
  private String a;
  private String b;
  private String c;
  private String d;
  private String e;
  private String f;
  private String g;

  public reportItem()
  {
    this.a = "";
    this.b = "";
    this.c = "";
    this.d = "";
    this.e = "";
    this.f = "";
    this.g = "";
  }

  public reportItem(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7)
  {
    this.a = (paramString1 + "");
    this.b = (paramString2 + "");
    this.c = (paramString3 + "");
    this.d = (paramString4 + "");
    this.e = (paramString5 + "");
    this.f = (paramString6 + "");
    this.g = (paramString7 + "");
    Log.i("report_debug", "reportItem apn=" + this.a + ",frequency=" + this.b + ",commandid=" + this.c + ",resultcode=" + this.d + "timecost" + this.e + ",reqsize=" + this.f + ",rspsize=" + this.g);
  }

  public String a()
  {
    return this.a;
  }

  public String b()
  {
    return this.b;
  }

  public String c()
  {
    return this.c;
  }

  public String d()
  {
    return this.d;
  }

  public String e()
  {
    return this.e;
  }

  public String f()
  {
    return this.g;
  }

  public String g()
  {
    return this.f;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.tencent.open.cgireport.reportItem
 * JD-Core Version:    0.6.0
 */