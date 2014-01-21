package com.amap.api.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;

public class VisibleRegionCreator
  implements Parcelable.Creator<VisibleRegion>
{
  public static final int CONTENT_DESCRIPTION;

  static void a(VisibleRegion paramVisibleRegion, Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(paramVisibleRegion.a());
    paramParcel.writeParcelable(paramVisibleRegion.nearLeft, paramInt);
    paramParcel.writeParcelable(paramVisibleRegion.nearRight, paramInt);
    paramParcel.writeParcelable(paramVisibleRegion.farLeft, paramInt);
    paramParcel.writeParcelable(paramVisibleRegion.farRight, paramInt);
    paramParcel.writeParcelable(paramVisibleRegion.latLngBounds, paramInt);
  }

  // ERROR //
  public VisibleRegion createFromParcel(Parcel paramParcel)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 54	android/os/Parcel:readInt	()I
    //   4: istore_2
    //   5: aload_1
    //   6: ldc 56
    //   8: invokevirtual 62	java/lang/Class:getClassLoader	()Ljava/lang/ClassLoader;
    //   11: invokevirtual 66	android/os/Parcel:readParcelable	(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
    //   14: checkcast 56	com/amap/api/maps/model/LatLng
    //   17: astore 9
    //   19: aload_1
    //   20: ldc 56
    //   22: invokevirtual 62	java/lang/Class:getClassLoader	()Ljava/lang/ClassLoader;
    //   25: invokevirtual 66	android/os/Parcel:readParcelable	(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
    //   28: checkcast 56	com/amap/api/maps/model/LatLng
    //   31: astore 11
    //   33: aload_1
    //   34: ldc 56
    //   36: invokevirtual 62	java/lang/Class:getClassLoader	()Ljava/lang/ClassLoader;
    //   39: invokevirtual 66	android/os/Parcel:readParcelable	(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
    //   42: checkcast 56	com/amap/api/maps/model/LatLng
    //   45: astore 13
    //   47: aload_1
    //   48: ldc 56
    //   50: invokevirtual 62	java/lang/Class:getClassLoader	()Ljava/lang/ClassLoader;
    //   53: invokevirtual 66	android/os/Parcel:readParcelable	(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
    //   56: checkcast 56	com/amap/api/maps/model/LatLng
    //   59: astore 15
    //   61: aload_1
    //   62: ldc 68
    //   64: invokevirtual 62	java/lang/Class:getClassLoader	()Ljava/lang/ClassLoader;
    //   67: invokevirtual 66	android/os/Parcel:readParcelable	(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
    //   70: checkcast 68	com/amap/api/maps/model/LatLngBounds
    //   73: astore 17
    //   75: aload 17
    //   77: astore 8
    //   79: aload 15
    //   81: astore 4
    //   83: aload 13
    //   85: astore 5
    //   87: aload 11
    //   89: astore 6
    //   91: aload 9
    //   93: astore 7
    //   95: new 17	com/amap/api/maps/model/VisibleRegion
    //   98: dup
    //   99: iload_2
    //   100: aload 7
    //   102: aload 6
    //   104: aload 5
    //   106: aload 4
    //   108: aload 8
    //   110: invokespecial 71	com/amap/api/maps/model/VisibleRegion:<init>	(ILcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLngBounds;)V
    //   113: areturn
    //   114: astore_3
    //   115: aconst_null
    //   116: astore 4
    //   118: aconst_null
    //   119: astore 5
    //   121: aconst_null
    //   122: astore 6
    //   124: aconst_null
    //   125: astore 7
    //   127: aload_3
    //   128: invokevirtual 74	android/os/BadParcelableException:printStackTrace	()V
    //   131: aconst_null
    //   132: astore 8
    //   134: goto -39 -> 95
    //   137: astore 10
    //   139: aload 9
    //   141: astore 7
    //   143: aload 10
    //   145: astore_3
    //   146: aconst_null
    //   147: astore 6
    //   149: aconst_null
    //   150: astore 5
    //   152: aconst_null
    //   153: astore 4
    //   155: goto -28 -> 127
    //   158: astore 12
    //   160: aload 11
    //   162: astore 6
    //   164: aload 9
    //   166: astore 7
    //   168: aload 12
    //   170: astore_3
    //   171: aconst_null
    //   172: astore 5
    //   174: aconst_null
    //   175: astore 4
    //   177: goto -50 -> 127
    //   180: astore 14
    //   182: aload 13
    //   184: astore 5
    //   186: aload 11
    //   188: astore 6
    //   190: aload 9
    //   192: astore 7
    //   194: aload 14
    //   196: astore_3
    //   197: aconst_null
    //   198: astore 4
    //   200: goto -73 -> 127
    //   203: astore 16
    //   205: aload 15
    //   207: astore 4
    //   209: aload 13
    //   211: astore 5
    //   213: aload 11
    //   215: astore 6
    //   217: aload 9
    //   219: astore 7
    //   221: aload 16
    //   223: astore_3
    //   224: goto -97 -> 127
    //
    // Exception table:
    //   from	to	target	type
    //   5	19	114	android/os/BadParcelableException
    //   19	33	137	android/os/BadParcelableException
    //   33	47	158	android/os/BadParcelableException
    //   47	61	180	android/os/BadParcelableException
    //   61	75	203	android/os/BadParcelableException
  }

  public VisibleRegion[] newArray(int paramInt)
  {
    return new VisibleRegion[paramInt];
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.maps.model.VisibleRegionCreator
 * JD-Core Version:    0.6.0
 */