package com.amap.api.maps;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.amap.api.maps.model.CameraPosition;

public class AMapOptionsCreator
  implements Parcelable.Creator<AMapOptions>
{
  public AMapOptions createFromParcel(Parcel paramParcel)
  {
    AMapOptions localAMapOptions = new AMapOptions();
    CameraPosition localCameraPosition = (CameraPosition)paramParcel.readParcelable(CameraPosition.class.getClassLoader());
    localAMapOptions.mapType(paramParcel.readInt());
    localAMapOptions.camera(localCameraPosition);
    boolean[] arrayOfBoolean = paramParcel.createBooleanArray();
    if ((arrayOfBoolean != null) && (arrayOfBoolean.length >= 6))
    {
      localAMapOptions.rotateGesturesEnabled(arrayOfBoolean[0]);
      localAMapOptions.scrollGesturesEnabled(arrayOfBoolean[1]);
      localAMapOptions.tiltGesturesEnabled(arrayOfBoolean[2]);
      localAMapOptions.zoomGesturesEnabled(arrayOfBoolean[3]);
      localAMapOptions.zoomControlsEnabled(arrayOfBoolean[4]);
      localAMapOptions.zOrderOnTop(arrayOfBoolean[5]);
      localAMapOptions.compassEnabled(arrayOfBoolean[6]);
      localAMapOptions.scaleControlsEnabled(arrayOfBoolean[7]);
    }
    return localAMapOptions;
  }

  public AMapOptions[] newArray(int paramInt)
  {
    return new AMapOptions[paramInt];
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.maps.AMapOptionsCreator
 * JD-Core Version:    0.6.0
 */