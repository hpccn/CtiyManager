package com.tencent.qc.stat.event;

import java.util.Arrays;
import java.util.Properties;

public class CustomEvent$Key
{
  String a;
  String[] b;
  Properties c = null;

  public boolean equals(Object paramObject)
  {
    if (this == paramObject);
    while (true)
    {
      return true;
      if (!(paramObject instanceof Key))
        break;
      Key localKey = (Key)paramObject;
      if ((this.a.equals(localKey.a)) && (Arrays.equals(this.b, localKey.b)));
      for (int i = 1; ; i = 0)
      {
        if (this.c == null)
          break label81;
        if ((i != 0) && (this.c.equals(localKey.c)))
          break;
        return false;
      }
      label81: if ((i == 0) || (localKey.c != null))
        return false;
    }
    return false;
  }

  public int hashCode()
  {
    String str = this.a;
    int i = 0;
    if (str != null)
      i = this.a.hashCode();
    if (this.b != null)
      i ^= Arrays.hashCode(this.b);
    if (this.c != null)
      i ^= this.c.hashCode();
    return i;
  }

  public String toString()
  {
    String str1 = this.a;
    String str2 = "";
    if ((this.b != null) && (this.b.length > 0))
    {
      String str3 = this.b[0];
      for (int i = 1; i < this.b.length; i++)
        str3 = str3 + "," + this.b[i];
      str2 = "[" + str3 + "]";
    }
    if ((this.c != null) && (this.c.size() > 0))
      str2 = str2 + this.c.toString();
    return str1 + str2;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.tencent.qc.stat.event.CustomEvent.Key
 * JD-Core Version:    0.6.0
 */