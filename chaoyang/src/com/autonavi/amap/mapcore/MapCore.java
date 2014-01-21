package com.autonavi.amap.mapcore;

import android.content.Context;
import android.util.Log;
import android.view.View;
import com.amap.api.a.b.g;
import javax.microedition.khronos.opengles.GL10;

public class MapCore
{
  public static final int AM_DATA_BASEMAP = 0;
  public static final int AM_DATA_BMP_BASEMAP = 2;
  public static final int AM_DATA_GEO_BUILDING = 1;
  public static final int AM_DATA_MODEL = 6;
  public static final int AM_DATA_SATELLITE = 3;
  public static final int AM_DATA_SCREEN = 5;
  public static final int AM_DATA_VEC_TMC = 4;
  public static final int MAPRENDER_BASEMAPBEGIN = 1;
  public static final int MAPRENDER_BUILDINGBEGIN = 2;
  public static final int MAPRENDER_ENTER = 0;
  public static final int MAPRENDER_LABELSBEGIN = 3;
  public static final int MAPRENDER_NOMORENEEDRENDER = 5;
  public static final int MAPRENDER_RENDEROVER = 4;
  public static final int TEXTURE_BACKGROUND = 1;
  public static final int TEXTURE_ICON = 0;
  public static final int TEXTURE_ROADARROW = 2;
  public static final int TEXTURE_ROADROUND = 3;
  GL10 mGL = null;
  private IMapCallback mMapcallback = null;
  int native_instance = 0;
  public View view;

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

  public MapCore(Context paramContext)
  {
    this.native_instance = nativeNewInstance(g.a(paramContext));
  }

  private void OnMapDataRequired(int paramInt, String[] paramArrayOfString)
  {
    if (this.mMapcallback != null)
      this.mMapcallback.OnMapDataRequired(this, paramInt, paramArrayOfString);
  }

  private void OnMapDestory()
  {
    if (this.mMapcallback != null)
      this.mMapcallback.OnMapDestory(this.mGL, this);
  }

  private void OnMapLabelsRequired(int[] paramArrayOfInt, int paramInt)
  {
    if (this.mMapcallback != null)
      this.mMapcallback.OnMapLabelsRequired(this, paramArrayOfInt, paramInt);
  }

  private void OnMapProcessEvent()
  {
    if (this.mMapcallback != null)
      this.mMapcallback.OnMapProcessEvent(this);
  }

  private void OnMapReferencechanged(String paramString1, String paramString2)
  {
    if (this.mMapcallback != null)
      this.mMapcallback.OnMapReferencechanged(this, paramString1, paramString2);
  }

  private void OnMapSufaceChanged(int paramInt1, int paramInt2)
  {
    if (this.mMapcallback != null)
      this.mMapcallback.OnMapSufaceChanged(this.mGL, this, paramInt1, paramInt2);
  }

  private void OnMapSurfaceCreate()
  {
    if (this.mMapcallback != null)
      this.mMapcallback.OnMapSurfaceCreate(this.mGL, this);
  }

  private void OnMapSurfaceRenderer(int paramInt)
  {
    if (this.mMapcallback != null)
      this.mMapcallback.OnMapSurfaceRenderer(this.mGL, this, paramInt);
  }

  private static native void nativeDestroy(int paramInt);

  private static native int nativeGetMapstate(int paramInt);

  private static native int nativeNewInstance(String paramString);

  private static native void nativePutCharbitmap(int paramInt1, int paramInt2, byte[] paramArrayOfByte);

  private static native void nativePutMapdata(int paramInt1, int paramInt2, byte[] paramArrayOfByte);

  private static native void nativeSetInternaltexture(int paramInt1, byte[] paramArrayOfByte, int paramInt2);

  private static native void nativeSetMapstate(int paramInt1, int paramInt2);

  private static native void nativeSetStyleData(int paramInt1, byte[] paramArrayOfByte, int paramInt2);

  private static native void nativeSetparameter(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6);

  private static native void nativeSurfaceChange(int paramInt1, MapCore paramMapCore, int paramInt2, int paramInt3);

  private static native void nativeSurfaceCreate(int paramInt, MapCore paramMapCore);

  private static native void nativeSurfaceRenderMap(int paramInt, MapCore paramMapCore);

  public void destroy()
  {
    try
    {
      if (this.native_instance != 0)
        nativeDestroy(this.native_instance);
      return;
    }
    catch (Exception localException)
    {
      Log.d("minimap", "finalize erro:" + localException.getMessage());
    }
  }

  public void drawFrame(GL10 paramGL10)
  {
    nativeSurfaceRenderMap(this.native_instance, this);
  }

  protected void finalize()
  {
    destroy();
  }

  public int getInstanceHandle()
  {
    return this.native_instance;
  }

  public MapProjection getMapstate()
  {
    return new MapProjection(nativeGetMapstate(this.native_instance));
  }

  public void putCharbitmap(int paramInt, byte[] paramArrayOfByte)
  {
    nativePutCharbitmap(this.native_instance, paramInt, paramArrayOfByte);
  }

  public void putMapData(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3)
  {
    if ((paramArrayOfByte.length == paramInt2) && (paramInt1 == 0))
    {
      nativePutMapdata(this.native_instance, paramInt3, paramArrayOfByte);
      return;
    }
    byte[] arrayOfByte = new byte[paramInt2];
    System.arraycopy(paramArrayOfByte, paramInt1, arrayOfByte, 0, paramInt2);
    nativePutMapdata(this.native_instance, paramInt3, arrayOfByte);
  }

  public void setGL(GL10 paramGL10)
  {
    this.mGL = paramGL10;
  }

  public void setInternaltexture(byte[] paramArrayOfByte, int paramInt)
  {
    nativeSetInternaltexture(this.native_instance, paramArrayOfByte, paramInt);
  }

  public void setMapCallback(IMapCallback paramIMapCallback)
  {
    this.mMapcallback = paramIMapCallback;
  }

  public void setMapstate(MapProjection paramMapProjection)
  {
    nativeSetMapstate(this.native_instance, paramMapProjection.getInstanceHandle());
  }

  public void setParameter(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    nativeSetparameter(this.native_instance, paramInt1, paramInt2, paramInt3, paramInt4, paramInt5);
  }

  public void setStyleData(byte[] paramArrayOfByte, int paramInt)
  {
    nativeSetStyleData(this.native_instance, paramArrayOfByte, paramInt);
  }

  public void surfaceChange(GL10 paramGL10, int paramInt1, int paramInt2)
  {
    nativeSurfaceChange(this.native_instance, this, paramInt1, paramInt2);
  }

  public void surfaceCreate(GL10 paramGL10)
  {
    nativeSurfaceCreate(this.native_instance, this);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.autonavi.amap.mapcore.MapCore
 * JD-Core Version:    0.6.0
 */