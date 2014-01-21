package com.amap.api.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.amap.api.a.b.b;
import com.amap.api.a.b.g;

public final class CameraPosition
  implements Parcelable
{
  public static final CameraPositionCreator CREATOR = new CameraPositionCreator();
  public final float bearing;
  public final LatLng target;
  public final float tilt;
  public final float zoom;

  public CameraPosition(LatLng paramLatLng, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    b.a(paramLatLng, "CameraPosition 位置不能为null ");
    this.target = paramLatLng;
    this.zoom = g.b(paramFloat1);
    this.tilt = g.a(paramFloat2);
    if (paramFloat3 <= 0.0D)
      paramFloat3 = 360.0F + paramFloat3 % 360.0F;
    this.bearing = (paramFloat3 % 360.0F);
  }

  public static Builder builder()
  {
    return new Builder();
  }

  public static Builder builder(CameraPosition paramCameraPosition)
  {
    return new Builder(paramCameraPosition);
  }

  public static final CameraPosition fromLatLngZoom(LatLng paramLatLng, float paramFloat)
  {
    return new CameraPosition(paramLatLng, paramFloat, 0.0F, 0.0F);
  }

  public int describeContents()
  {
    return 0;
  }

  public boolean equals(Object paramObject)
  {
    if (this == paramObject);
    CameraPosition localCameraPosition;
    do
    {
      return true;
      if (!(paramObject instanceof CameraPosition))
        return false;
      localCameraPosition = (CameraPosition)paramObject;
    }
    while ((this.target.equals(localCameraPosition.target)) && (Float.floatToIntBits(this.zoom) == Float.floatToIntBits(localCameraPosition.zoom)) && (Float.floatToIntBits(this.tilt) == Float.floatToIntBits(localCameraPosition.tilt)) && (Float.floatToIntBits(this.bearing) == Float.floatToIntBits(localCameraPosition.bearing)));
    return false;
  }

  public int hashCode()
  {
    return super.hashCode();
  }

  public String toString()
  {
    String[] arrayOfString = new String[4];
    arrayOfString[0] = g.a("target", this.target);
    arrayOfString[1] = g.a("zoom", Float.valueOf(this.zoom));
    arrayOfString[2] = g.a("tilt", Float.valueOf(this.tilt));
    arrayOfString[3] = g.a("bearing", Float.valueOf(this.bearing));
    return g.a(arrayOfString);
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeFloat(this.bearing);
    paramParcel.writeFloat((float)this.target.latitude);
    paramParcel.writeFloat((float)this.target.longitude);
    paramParcel.writeFloat(this.tilt);
    paramParcel.writeFloat(this.zoom);
  }

  public static final class Builder
  {
    private LatLng a;
    private float b;
    private float c;
    private float d;

    public Builder()
    {
    }

    public Builder(CameraPosition paramCameraPosition)
    {
      target(paramCameraPosition.target).bearing(paramCameraPosition.bearing).tilt(paramCameraPosition.tilt).zoom(paramCameraPosition.zoom);
    }

    public Builder bearing(float paramFloat)
    {
      this.d = paramFloat;
      return this;
    }

    public CameraPosition build()
    {
      b.a(this.a);
      return new CameraPosition(this.a, this.b, this.c, this.d);
    }

    public Builder target(LatLng paramLatLng)
    {
      this.a = paramLatLng;
      return this;
    }

    public Builder tilt(float paramFloat)
    {
      this.c = paramFloat;
      return this;
    }

    public Builder zoom(float paramFloat)
    {
      this.b = paramFloat;
      return this;
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.maps.model.CameraPosition
 * JD-Core Version:    0.6.0
 */