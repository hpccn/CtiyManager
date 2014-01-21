package com.amap.api.maps.model;

import android.os.Parcel;
import android.os.Parcelable;

public final class MarkerOptions
  implements Parcelable
{
  public static final MarkerOptionsCreator CREATOR = new MarkerOptionsCreator();
  String a;
  private LatLng b;
  private String c;
  private String d;
  private BitmapDescriptor e;
  private float f = 0.5F;
  private float g = 1.0F;
  private boolean h = false;
  private boolean i = true;

  public MarkerOptions anchor(float paramFloat1, float paramFloat2)
  {
    this.f = paramFloat1;
    this.g = paramFloat2;
    return this;
  }

  public int describeContents()
  {
    return 0;
  }

  public MarkerOptions draggable(boolean paramBoolean)
  {
    this.h = paramBoolean;
    return this;
  }

  public float getAnchorU()
  {
    return this.f;
  }

  public float getAnchorV()
  {
    return this.g;
  }

  public BitmapDescriptor getIcon()
  {
    if (this.e == null)
      this.e = BitmapDescriptorFactory.defaultMarker();
    return this.e;
  }

  public LatLng getPosition()
  {
    return this.b;
  }

  public String getSnippet()
  {
    return this.d;
  }

  public String getTitle()
  {
    return this.c;
  }

  public MarkerOptions icon(BitmapDescriptor paramBitmapDescriptor)
  {
    this.e = paramBitmapDescriptor;
    return this;
  }

  public boolean isDraggable()
  {
    return this.h;
  }

  public boolean isVisible()
  {
    return this.i;
  }

  public MarkerOptions position(LatLng paramLatLng)
  {
    this.b = paramLatLng;
    return this;
  }

  public MarkerOptions snippet(String paramString)
  {
    this.d = paramString;
    return this;
  }

  public MarkerOptions title(String paramString)
  {
    this.c = paramString;
    return this;
  }

  public MarkerOptions visible(boolean paramBoolean)
  {
    this.i = paramBoolean;
    return this;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(this.b, paramInt);
    paramParcel.writeParcelable(this.e, paramInt);
    paramParcel.writeString(this.c);
    paramParcel.writeString(this.d);
    paramParcel.writeFloat(this.f);
    paramParcel.writeFloat(this.g);
    boolean[] arrayOfBoolean = new boolean[2];
    arrayOfBoolean[0] = this.i;
    arrayOfBoolean[1] = this.h;
    paramParcel.writeBooleanArray(arrayOfBoolean);
    paramParcel.writeString(this.a);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.maps.model.MarkerOptions
 * JD-Core Version:    0.6.0
 */