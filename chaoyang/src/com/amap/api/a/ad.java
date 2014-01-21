package com.amap.api.a;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.opengl.GLUtils;
import android.util.Log;
import com.amap.api.a.b.g;
import com.amap.api.maps.model.BitmapDescriptor;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.amap.api.maps.model.LatLng;
import com.amap.api.maps.model.MarkerOptions;
import com.autonavi.amap.mapcore.FPoint;
import com.autonavi.amap.mapcore.IPoint;
import com.autonavi.amap.mapcore.MapProjection;
import java.nio.FloatBuffer;
import javax.microedition.khronos.opengles.GL10;

class ad
  implements q
{
  private static int a = 0;
  private FloatBuffer b = null;
  private String c;
  private int d;
  private LatLng e;
  private String f;
  private String g;
  private BitmapDescriptor h;
  private float i = 0.5F;
  private float j = 1.0F;
  private boolean k = false;
  private boolean l = true;
  private ab m;
  private FloatBuffer n;
  private boolean o = false;

  public ad(MarkerOptions paramMarkerOptions, ab paramab)
  {
    this.m = paramab;
    this.e = paramMarkerOptions.getPosition();
    this.i = paramMarkerOptions.getAnchorU();
    this.j = paramMarkerOptions.getAnchorV();
    this.h = paramMarkerOptions.getIcon();
    this.l = paramMarkerOptions.isVisible();
    this.g = paramMarkerOptions.getSnippet();
    this.f = paramMarkerOptions.getTitle();
    this.k = paramMarkerOptions.isDraggable();
    this.c = d();
  }

  private void a(GL10 paramGL10, int paramInt, FloatBuffer paramFloatBuffer1, FloatBuffer paramFloatBuffer2)
  {
    if ((paramFloatBuffer1 == null) || (paramFloatBuffer2 == null))
      return;
    paramGL10.glColor4f(1.0F, 1.0F, 1.0F, 1.0F);
    paramGL10.glEnable(3553);
    paramGL10.glEnableClientState(32884);
    paramGL10.glEnableClientState(32888);
    paramGL10.glBindTexture(3553, paramInt);
    paramGL10.glVertexPointer(3, 5126, 0, paramFloatBuffer1);
    paramGL10.glTexCoordPointer(2, 5126, 0, paramFloatBuffer2);
    paramGL10.glDrawArrays(6, 0, 4);
    paramGL10.glDisableClientState(32884);
    paramGL10.glDisableClientState(32888);
    paramGL10.glDisable(3553);
  }

  private void a(GL10 paramGL10, int[] paramArrayOfInt, Bitmap paramBitmap)
  {
    paramGL10.glEnable(3553);
    paramGL10.glGenTextures(1, paramArrayOfInt, 0);
    paramGL10.glBindTexture(3553, paramArrayOfInt[0]);
    paramGL10.glTexParameterf(3553, 10241, 9729.0F);
    paramGL10.glTexParameterf(3553, 10240, 9729.0F);
    paramGL10.glTexParameterf(3553, 10242, 33071.0F);
    paramGL10.glTexParameterf(3553, 10243, 33071.0F);
    GLUtils.texImage2D(3553, 0, paramBitmap, 0);
    this.o = true;
    paramGL10.glDisable(3553);
  }

  private static String c(String paramString)
  {
    a = 1 + a;
    return paramString + a;
  }

  public void a(LatLng paramLatLng)
  {
    this.e = paramLatLng;
  }

  public void a(String paramString)
  {
    this.f = paramString;
  }

  public void a(GL10 paramGL10, n paramn)
  {
    if ((!this.l) || (c() == null) || (h() == null))
      return;
    if (!this.o)
    {
      int[] arrayOfInt = new int[1];
      a(paramGL10, arrayOfInt, h().getBitmap());
      this.d = arrayOfInt[0];
      t();
      return;
    }
    t();
    a(paramGL10, this.d, this.b, this.n);
  }

  public void a(boolean paramBoolean)
  {
    this.k = paramBoolean;
  }

  public boolean a()
  {
    return this.m.b(this);
  }

  public boolean a(q paramq)
  {
    return (equals(paramq)) || (paramq.d().equals(d()));
  }

  public Rect b()
  {
    IPoint localIPoint = q();
    return new Rect(localIPoint.x, localIPoint.y, localIPoint.x + this.h.getWidth(), localIPoint.y + this.h.getHeight());
  }

  public void b(String paramString)
  {
    this.g = paramString;
  }

  public void b(boolean paramBoolean)
  {
    this.l = paramBoolean;
  }

  public LatLng c()
  {
    return this.e;
  }

  public String d()
  {
    if (this.c == null)
      this.c = c("Marker");
    return this.c;
  }

  public FPoint e()
  {
    FPoint localFPoint = new FPoint();
    if (this.h != null)
    {
      localFPoint.x = (this.h.getWidth() * this.i);
      localFPoint.y = (this.h.getHeight() * this.j);
    }
    return localFPoint;
  }

  public String f()
  {
    return this.f;
  }

  public String g()
  {
    return this.g;
  }

  public BitmapDescriptor h()
  {
    if (this.h == null)
      this.h = BitmapDescriptorFactory.defaultMarker();
    return this.h;
  }

  public boolean i()
  {
    return this.k;
  }

  public void j()
  {
    if (!m())
      return;
    this.m.d(this);
  }

  public void k()
  {
    if (l())
      this.m.e(this);
  }

  public boolean l()
  {
    return this.m.f(this);
  }

  public boolean m()
  {
    return this.l;
  }

  public void n()
  {
    try
    {
      Bitmap localBitmap = this.h.getBitmap();
      if (localBitmap != null)
      {
        localBitmap.recycle();
        this.h = null;
      }
      if (this.n != null)
      {
        this.n.clear();
        this.n = null;
      }
      if (this.b != null)
      {
        this.b.clear();
        this.b = null;
      }
      this.e = null;
      return;
    }
    catch (Exception localException)
    {
      Log.d("destroy erro", "MarkerDelegateImp destroy");
    }
  }

  public int o()
  {
    return super.hashCode();
  }

  public IPoint p()
  {
    IPoint localIPoint = new IPoint();
    this.m.a().b(c().latitude, c().longitude, localIPoint);
    return localIPoint;
  }

  public IPoint q()
  {
    IPoint localIPoint = p();
    FPoint localFPoint = e();
    localIPoint.x = (int)(localIPoint.x - localFPoint.x);
    localIPoint.y = (int)(localIPoint.y - localFPoint.y);
    return localIPoint;
  }

  public float r()
  {
    return this.i;
  }

  public float s()
  {
    return this.j;
  }

  public void t()
  {
    if (this.m == null);
    n localn;
    MapProjection localMapProjection;
    int i1;
    int i2;
    int i3;
    int i4;
    do
    {
      LatLng localLatLng;
      do
      {
        return;
        localn = this.m.a();
        localLatLng = c();
      }
      while (localLatLng == null);
      localMapProjection = localn.b();
      IPoint localIPoint = new IPoint();
      localn.b(localLatLng.latitude, localLatLng.longitude, localIPoint);
      i1 = h().getWidth();
      i2 = h().getHeight();
      i3 = (int)(localIPoint.x - i1 * r());
      i4 = (int)(localIPoint.y + i2 * (1.0F - s()));
    }
    while ((i3 - i1 > localn.g()) || (i3 < 2 * -i1) || (i4 < 2 * -i2) || (i4 - i2 > localn.h()));
    int i5 = h().getWidth();
    int i6 = h().getHeight();
    int i7 = h().getBitmap().getHeight();
    int i8 = h().getBitmap().getWidth();
    float f1 = i5 / i8;
    float f2 = i6 / i7;
    if (this.n == null)
      this.n = g.a(new float[] { 0.0F, f2, f1, f2, f1, 0.0F, 0.0F, 0.0F });
    float[] arrayOfFloat = new float[12];
    FPoint localFPoint1 = new FPoint();
    localMapProjection.win2Map(i3, i4, localFPoint1);
    FPoint localFPoint2 = new FPoint();
    localMapProjection.win2Map(i3 + i1, i4, localFPoint2);
    FPoint localFPoint3 = new FPoint();
    localMapProjection.win2Map(i1 + i3, i4 - i2, localFPoint3);
    FPoint localFPoint4 = new FPoint();
    localMapProjection.win2Map(i3, i4 - i2, localFPoint4);
    arrayOfFloat[0] = localFPoint1.x;
    arrayOfFloat[1] = localFPoint1.y;
    arrayOfFloat[2] = 0.0F;
    arrayOfFloat[3] = localFPoint2.x;
    arrayOfFloat[4] = localFPoint2.y;
    arrayOfFloat[5] = 0.0F;
    arrayOfFloat[6] = localFPoint3.x;
    arrayOfFloat[7] = localFPoint3.y;
    arrayOfFloat[8] = 0.0F;
    arrayOfFloat[9] = localFPoint4.x;
    arrayOfFloat[10] = localFPoint4.y;
    arrayOfFloat[11] = 0.0F;
    if (this.b == null)
    {
      this.b = g.a(arrayOfFloat);
      return;
    }
    this.b = g.a(arrayOfFloat, this.b);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.a.ad
 * JD-Core Version:    0.6.0
 */