package com.amap.api.search.poisearch;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class a
  implements Parcelable.Creator<PoiItem>
{
  public PoiItem a(Parcel paramParcel)
  {
    return new PoiItem(paramParcel, null);
  }

  public PoiItem[] a(int paramInt)
  {
    return new PoiItem[paramInt];
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.search.poisearch.a
 * JD-Core Version:    0.6.0
 */