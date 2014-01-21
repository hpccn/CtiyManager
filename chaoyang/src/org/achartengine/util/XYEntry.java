package org.achartengine.util;

import java.util.Map.Entry;

public class XYEntry<K, V>
  implements Map.Entry<K, V>
{
  private final K key;
  private V value;

  public XYEntry(K paramK, V paramV)
  {
    this.key = paramK;
    this.value = paramV;
  }

  public K getKey()
  {
    return this.key;
  }

  public V getValue()
  {
    return this.value;
  }

  public V setValue(V paramV)
  {
    this.value = paramV;
    return this.value;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     org.achartengine.util.XYEntry
 * JD-Core Version:    0.6.0
 */