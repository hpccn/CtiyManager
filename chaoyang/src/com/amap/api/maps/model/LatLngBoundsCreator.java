package com.amap.api.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;

public class LatLngBoundsCreator
  implements Parcelable.Creator<LatLngBounds>
{
  public static final int CONTENT_DESCRIPTION;

  static void a(LatLngBounds paramLatLngBounds, Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(paramLatLngBounds.a());
    paramParcel.writeParcelable(paramLatLngBounds.southwest, paramInt);
    paramParcel.writeParcelable(paramLatLngBounds.northeast, paramInt);
  }

  // ERROR //
  public LatLngBounds createFromParcel(Parcel paramParcel)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 44	android/os/Parcel:readInt	()I
    //   4: istore_2
    //   5: aload_1
    //   6: ldc 17
    //   8: invokevirtual 50	java/lang/Class:getClassLoader	()Ljava/lang/ClassLoader;
    //   11: invokevirtual 54	android/os/Parcel:readParcelable	(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
    //   14: checkcast 56	com/amap/api/maps/model/LatLng
    //   17: astore 5
    //   19: aload_1
    //   20: ldc 17
    //   22: invokevirtual 50	java/lang/Class:getClassLoader	()Ljava/lang/ClassLoader;
    //   25: invokevirtual 54	android/os/Parcel:readParcelable	(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
    //   28: checkcast 56	com/amap/api/maps/model/LatLng
    //   31: astore 6
    //   33: new 17	com/amap/api/maps/model/LatLngBounds
    //   36: dup
    //   37: iload_2
    //   38: aload 5
    //   40: aload 6
    //   42: invokespecial 59	com/amap/api/maps/model/LatLngBounds:<init>	(ILcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)V
    //   45: areturn
    //   46: astore_3
    //   47: aload_3
    //   48: astore 4
    //   50: aconst_null
    //   51: astore 5
    //   53: aload 4
    //   55: invokevirtual 62	android/os/BadParcelableException:printStackTrace	()V
    //   58: aconst_null
    //   59: astore 6
    //   61: goto -28 -> 33
    //   64: astore 4
    //   66: goto -13 -> 53
    //
    // Exception table:
    //   from	to	target	type
    //   5	19	46	android/os/BadParcelableException
    //   19	33	64	android/os/BadParcelableException
  }

  public LatLngBounds[] newArray(int paramInt)
  {
    return new LatLngBounds[paramInt];
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.maps.model.LatLngBoundsCreator
 * JD-Core Version:    0.6.0
 */