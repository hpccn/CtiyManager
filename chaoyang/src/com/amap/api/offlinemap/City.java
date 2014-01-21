package com.amap.api.offlinemap;

public class City
  implements Comparable
{
  private String a;
  private String b;
  private String c;
  private String d;
  private String e;

  public int compareTo(Object paramObject)
  {
    String str = ((City)paramObject).d;
    int k;
    if (str.charAt(0) > this.d.charAt(0))
      k = -1;
    int i;
    int j;
    do
    {
      return k;
      i = str.charAt(0);
      j = this.d.charAt(0);
      k = 0;
    }
    while (i >= j);
    return 1;
  }

  public String getCity()
  {
    return this.b;
  }

  public String getCode()
  {
    return this.c;
  }

  public String getInitial()
  {
    return this.d;
  }

  public String getPinyin()
  {
    return this.e;
  }

  public String getProvince()
  {
    return this.a;
  }

  public void setCity(String paramString)
  {
    this.b = paramString;
  }

  public void setCode(String paramString)
  {
    this.c = paramString;
  }

  public void setInitial(String paramString)
  {
    this.d = paramString;
  }

  public void setPinyin(String paramString)
  {
    this.e = paramString;
  }

  public void setProvince(String paramString)
  {
    this.a = paramString;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.offlinemap.City
 * JD-Core Version:    0.6.0
 */