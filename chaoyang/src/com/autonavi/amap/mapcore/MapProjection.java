package com.autonavi.amap.mapcore;

public class MapProjection
{
  private boolean m_bNewInstance = false;
  int native_instance = 0;

  static
  {
    try
    {
      System.loadLibrary("amapv3");
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public MapProjection(int paramInt)
  {
    this.native_instance = paramInt;
    this.m_bNewInstance = false;
  }

  public MapProjection(MapCore paramMapCore)
  {
    this.native_instance = nativeCreate(paramMapCore.getInstanceHandle());
    this.m_bNewInstance = true;
  }

  public static void geo2LonLat(int paramInt1, int paramInt2, DPoint paramDPoint)
  {
    nativeGeo2LonLat(paramInt1, paramInt2, paramDPoint);
  }

  public static void lonlat2Geo(double paramDouble1, double paramDouble2, IPoint paramIPoint)
  {
    nativeLonLat2Geo(paramDouble1, paramDouble2, paramIPoint);
  }

  private static native int nativeCreate(int paramInt);

  private static native void nativeDestroy(int paramInt);

  private static native void nativeGeo2LonLat(int paramInt1, int paramInt2, DPoint paramDPoint);

  private static native void nativeGeo2Map(int paramInt1, int paramInt2, int paramInt3, FPoint paramFPoint);

  private static native void nativeGetBound(int paramInt, IPoint paramIPoint);

  private static native float nativeGetCameraHeaderAngle(int paramInt);

  private static native void nativeGetCenterMap(int paramInt, FPoint paramFPoint);

  private static native void nativeGetGeoCenter(int paramInt, IPoint paramIPoint);

  private static native float nativeGetMapAngle(int paramInt);

  private static native void nativeGetMapCenter(int paramInt, FPoint paramFPoint);

  private static native float nativeGetMapLenWithWin(int paramInt1, int paramInt2);

  private static native float nativeGetMapLenWithWinbyY(int paramInt1, int paramInt2, int paramInt3);

  private static native float nativeGetMapZoomer(int paramInt);

  private static native void nativeLonLat2Geo(double paramDouble1, double paramDouble2, IPoint paramIPoint);

  private static native void nativeMap2Geo(int paramInt, float paramFloat1, float paramFloat2, IPoint paramIPoint);

  private static native void nativeMap2Win(int paramInt, float paramFloat1, float paramFloat2, IPoint paramIPoint);

  private static native void nativeSetCameraHeaderAngle(int paramInt, float paramFloat);

  private static native void nativeSetCenterWithMap(int paramInt, float paramFloat1, float paramFloat2);

  private static native void nativeSetGeoCenter(int paramInt1, int paramInt2, int paramInt3);

  private static native void nativeSetMapAngle(int paramInt, float paramFloat);

  private static native void nativeSetMapCenter(int paramInt, float paramFloat1, float paramFloat2);

  private static native void nativeSetMapZoomer(int paramInt, float paramFloat);

  private static native void nativeWin2Map(int paramInt1, int paramInt2, int paramInt3, FPoint paramFPoint);

  public void finalize()
    throws Throwable
  {
    if (this.m_bNewInstance)
      nativeDestroy(this.native_instance);
  }

  public void geo2Map(int paramInt1, int paramInt2, FPoint paramFPoint)
  {
    nativeGeo2Map(this.native_instance, paramInt1, paramInt2, paramFPoint);
  }

  public void getBound(IPoint paramIPoint)
  {
    nativeGetBound(this.native_instance, paramIPoint);
  }

  public float getCameraHeaderAngle()
  {
    return nativeGetCameraHeaderAngle(this.native_instance);
  }

  public void getCenterMap(FPoint paramFPoint)
  {
    nativeGetCenterMap(this.native_instance, paramFPoint);
  }

  public void getGeoCenter(IPoint paramIPoint)
  {
    nativeGetGeoCenter(this.native_instance, paramIPoint);
  }

  int getInstanceHandle()
  {
    return this.native_instance;
  }

  public float getMapAngle()
  {
    return nativeGetMapAngle(this.native_instance);
  }

  public void getMapCenter(FPoint paramFPoint)
  {
    nativeGetMapCenter(this.native_instance, paramFPoint);
  }

  public float getMapLenWithWin(int paramInt)
  {
    return nativeGetMapLenWithWin(this.native_instance, paramInt);
  }

  public float getMapLenWithWinbyY(int paramInt1, int paramInt2)
  {
    return nativeGetMapLenWithWinbyY(this.native_instance, paramInt1, paramInt2);
  }

  public float getMapZoomer()
  {
    return nativeGetMapZoomer(this.native_instance);
  }

  public void map2Geo(float paramFloat1, float paramFloat2, IPoint paramIPoint)
  {
    nativeMap2Geo(this.native_instance, paramFloat1, paramFloat2, paramIPoint);
  }

  public void map2Win(float paramFloat1, float paramFloat2, IPoint paramIPoint)
  {
    nativeMap2Win(this.native_instance, paramFloat1, paramFloat2, paramIPoint);
  }

  public void setCameraHeaderAngle(float paramFloat)
  {
    nativeSetCameraHeaderAngle(this.native_instance, paramFloat);
  }

  public void setCenterWithMap(float paramFloat1, float paramFloat2)
  {
    nativeSetCenterWithMap(this.native_instance, paramFloat1, paramFloat2);
  }

  public void setGeoCenter(int paramInt1, int paramInt2)
  {
    nativeSetGeoCenter(this.native_instance, paramInt1, paramInt2);
  }

  public void setMapAngle(float paramFloat)
  {
    nativeSetMapAngle(this.native_instance, paramFloat);
  }

  public void setMapCenter(float paramFloat1, float paramFloat2)
  {
    nativeSetMapCenter(this.native_instance, paramFloat1, paramFloat2);
  }

  public void setMapZoomer(float paramFloat)
  {
    nativeSetMapZoomer(this.native_instance, paramFloat);
  }

  public void win2Map(int paramInt1, int paramInt2, FPoint paramFPoint)
  {
    nativeWin2Map(this.native_instance, paramInt1, paramInt2, paramFPoint);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.autonavi.amap.mapcore.MapProjection
 * JD-Core Version:    0.6.0
 */