package oauth.signpost;

import java.util.Map.Entry;

public class Parameter
  implements Map.Entry<String, String>
{
  private final String key;
  private String value;

  public Parameter(String paramString1, String paramString2)
  {
    this.key = paramString1;
    this.value = paramString2;
  }

  public boolean equals(Object paramObject)
  {
    if (this == paramObject);
    Parameter localParameter;
    do
      while (true)
      {
        return true;
        if (paramObject == null)
          return false;
        if (getClass() != paramObject.getClass())
          return false;
        localParameter = (Parameter)paramObject;
        if (this.key == null)
        {
          if (localParameter.key != null)
            return false;
        }
        else if (!this.key.equals(localParameter.key))
          return false;
        if (this.value != null)
          break;
        if (localParameter.value != null)
          return false;
      }
    while (this.value.equals(localParameter.value));
    return false;
  }

  public String getKey()
  {
    return this.key;
  }

  public String getValue()
  {
    return this.value;
  }

  public int hashCode()
  {
    int i;
    int j;
    int k;
    if (this.key == null)
    {
      i = 0;
      j = 31 * (i + 31);
      String str = this.value;
      k = 0;
      if (str != null)
        break label45;
    }
    while (true)
    {
      return j + k;
      i = this.key.hashCode();
      break;
      label45: k = this.value.hashCode();
    }
  }

  public String setValue(String paramString)
  {
    try
    {
      String str = this.value;
      return str;
    }
    finally
    {
      this.value = paramString;
    }
    throw localObject;
  }

  public String toString()
  {
    return getKey() + '=' + getValue();
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     oauth.signpost.Parameter
 * JD-Core Version:    0.6.0
 */