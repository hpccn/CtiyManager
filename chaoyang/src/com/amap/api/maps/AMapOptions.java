package com.amap.api.maps;

import android.os.Parcel;
import android.os.Parcelable;
import com.amap.api.maps.model.CameraPosition;

public class AMapOptions
  implements Parcelable
{
  public static final AMapOptionsCreator CREATOR = new AMapOptionsCreator();
  private int a = 1;
  private boolean b = true;
  private boolean c = true;
  private boolean d = true;
  private boolean e = true;
  private boolean f = true;
  private boolean g = false;
  private CameraPosition h;
  private boolean i = false;
  private boolean j = false;

  public AMapOptions camera(CameraPosition paramCameraPosition)
  {
    this.h = paramCameraPosition;
    return this;
  }

  public AMapOptions compassEnabled(boolean paramBoolean)
  {
    this.i = paramBoolean;
    return this;
  }

  public int describeContents()
  {
    return 0;
  }

  public CameraPosition getCamera()
  {
    return this.h;
  }

  public Boolean getCompassEnabled()
  {
    return Boolean.valueOf(this.i);
  }

  public int getMapType()
  {
    return this.a;
  }

  public Boolean getRotateGesturesEnabled()
  {
    return Boolean.valueOf(this.b);
  }

  public Boolean getScaleControlsEnabled()
  {
    return Boolean.valueOf(this.j);
  }

  public Boolean getScrollGesturesEnabled()
  {
    return Boolean.valueOf(this.c);
  }

  public Boolean getTiltGesturesEnabled()
  {
    return Boolean.valueOf(this.d);
  }

  public Boolean getZOrderOnTop()
  {
    return Boolean.valueOf(this.g);
  }

  public Boolean getZoomControlsEnabled()
  {
    return Boolean.valueOf(this.f);
  }

  public Boolean getZoomGesturesEnabled()
  {
    return Boolean.valueOf(this.e);
  }

  public AMapOptions mapType(int paramInt)
  {
    this.a = paramInt;
    return this;
  }

  public AMapOptions rotateGesturesEnabled(boolean paramBoolean)
  {
    this.b = paramBoolean;
    return this;
  }

  public AMapOptions scaleControlsEnabled(boolean paramBoolean)
  {
    this.j = paramBoolean;
    return this;
  }

  public AMapOptions scrollGesturesEnabled(boolean paramBoolean)
  {
    this.c = paramBoolean;
    return this;
  }

  public AMapOptions tiltGesturesEnabled(boolean paramBoolean)
  {
    this.d = paramBoolean;
    return this;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(this.h, paramInt);
    paramParcel.writeInt(this.a);
    boolean[] arrayOfBoolean = new boolean[8];
    arrayOfBoolean[0] = this.b;
    arrayOfBoolean[1] = this.c;
    arrayOfBoolean[2] = this.d;
    arrayOfBoolean[3] = this.e;
    arrayOfBoolean[4] = this.f;
    arrayOfBoolean[5] = this.g;
    arrayOfBoolean[6] = this.i;
    arrayOfBoolean[7] = this.j;
    paramParcel.writeBooleanArray(arrayOfBoolean);
  }

  public AMapOptions zOrderOnTop(boolean paramBoolean)
  {
    this.g = paramBoolean;
    return this;
  }

  public AMapOptions zoomControlsEnabled(boolean paramBoolean)
  {
    this.f = paramBoolean;
    return this;
  }

  public AMapOptions zoomGesturesEnabled(boolean paramBoolean)
  {
    this.e = paramBoolean;
    return this;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.maps.AMapOptions
 * JD-Core Version:    0.6.0
 */