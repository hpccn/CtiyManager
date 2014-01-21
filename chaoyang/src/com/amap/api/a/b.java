package com.amap.api.a;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.location.Location;
import android.opengl.GLSurfaceView;
import android.opengl.GLSurfaceView.Renderer;
import android.os.Handler;
import android.os.Message;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.util.Log;
import android.view.GestureDetector;
import android.view.GestureDetector.OnDoubleTapListener;
import android.view.GestureDetector.OnGestureListener;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.ScaleGestureDetector.OnScaleGestureListener;
import android.view.SurfaceHolder;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.amap.api.a.a.c.a;
import com.amap.api.maps.AMap.CancelableCallback;
import com.amap.api.maps.AMap.InfoWindowAdapter;
import com.amap.api.maps.AMap.OnCameraChangeListener;
import com.amap.api.maps.AMap.OnInfoWindowClickListener;
import com.amap.api.maps.AMap.OnMapClickListener;
import com.amap.api.maps.AMap.OnMapLoadedListener;
import com.amap.api.maps.AMap.OnMapLongClickListener;
import com.amap.api.maps.AMap.OnMarkerClickListener;
import com.amap.api.maps.AMap.OnMarkerDragListener;
import com.amap.api.maps.AMap.OnMyLocationChangeListener;
import com.amap.api.maps.LocationSource;
import com.amap.api.maps.model.BitmapDescriptor;
import com.amap.api.maps.model.CameraPosition;
import com.amap.api.maps.model.CameraPosition.Builder;
import com.amap.api.maps.model.CircleOptions;
import com.amap.api.maps.model.LatLng;
import com.amap.api.maps.model.LatLngBounds;
import com.amap.api.maps.model.Marker;
import com.amap.api.maps.model.MarkerOptions;
import com.amap.api.maps.model.PolygonOptions;
import com.amap.api.maps.model.PolylineOptions;
import com.autonavi.amap.mapcore.DPoint;
import com.autonavi.amap.mapcore.FPoint;
import com.autonavi.amap.mapcore.IPoint;
import com.autonavi.amap.mapcore.MapCore;
import com.autonavi.amap.mapcore.MapProjection;
import java.net.HttpURLConnection;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

class b extends GLSurfaceView
  implements GLSurfaceView.Renderer, n
{
  private AMap.OnMapLongClickListener A;
  private AMap.OnInfoWindowClickListener B;
  private AMap.InfoWindowAdapter C;
  private View D;
  private Marker E;
  private u F;
  private w G;
  private LocationSource H;
  private Rect I = new Rect();
  private boolean J = true;
  private boolean K = false;
  private e L;
  private com.amap.api.a.a.b M;
  private ae N;
  private f O = new f();
  private g P;
  private int Q = 0;
  private int R = 0;
  private AMap.CancelableCallback S = null;
  private Drawable T = null;
  private Location U;
  private final int[] V = { 10000000, 5000000, 2000000, 1000000, 500000, 200000, 100000, 50000, 30000, 20000, 10000, 5000, 2000, 1000, 500, 200, 100, 50, 25, 10, 5 };
  private boolean W = false;
  private boolean X = false;
  private boolean Y = false;
  private boolean Z = false;
  aa a = new aa();
  private Marker aa = null;
  private int ab = 0;
  private boolean ac = false;
  private Thread ad = new c(this);
  am b;
  boolean c = false;
  m d = new m();
  Handler e = new d(this);
  private int f = 1;
  private MapCore g;
  private Context h;
  private a i = null;
  private MapProjection j;
  private GestureDetector k;
  private ScaleGestureDetector l;
  private com.amap.api.a.a.c m;
  private SurfaceHolder n = null;
  private ac o;
  private ab p;
  private al q;
  private x r;
  private j s;
  private aj t;
  private AMap.OnMyLocationChangeListener u;
  private AMap.OnMarkerClickListener v;
  private AMap.OnMarkerDragListener w;
  private AMap.OnMapLoadedListener x;
  private AMap.OnCameraChangeListener y;
  private AMap.OnMapClickListener z;

  public b(Context paramContext)
  {
    this(paramContext, null);
    y.a = paramContext;
    this.h = paramContext;
    this.n = getHolder();
    this.n.addCallback(this);
  }

  public b(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.h = paramContext;
    this.g = new MapCore(paramContext);
    this.i = new a(this);
    this.g.setMapCallback(this.i);
    this.g.setParameter(1001, 0, 0, 0, 0);
    this.j = this.g.getMapstate();
    this.a.a(h.a(new LatLng(39.924216000000001D, 116.39786530000001D), 10.0F, 0.0F, 0.0F));
    this.F = new ai(this);
    this.L = new e(this);
    this.G = new ak(this);
    this.k = new GestureDetector(paramContext, new c(null));
    this.k.setOnDoubleTapListener(new b(null));
    this.k.setIsLongpressEnabled(true);
    this.l = new ScaleGestureDetector(paramContext, new e(null));
    this.m = new com.amap.api.a.a.c(paramContext, new d(null));
    this.M = new com.amap.api.a.a.b(paramContext, new a(null));
    this.o = new ac(paramContext, this);
    ViewGroup.LayoutParams localLayoutParams = new ViewGroup.LayoutParams(-1, -1);
    this.o.addView(this, 0, localLayoutParams);
    this.p = new ab(this.h, paramAttributeSet, this);
    ac.a locala1 = new ac.a(localLayoutParams);
    this.o.addView(this.p, locala1);
    this.q = new al(this.h);
    this.o.addView(this.q, localLayoutParams);
    this.t = new aj(this.h, this);
    this.o.addView(this.t, localLayoutParams);
    this.b = new am(this.h, this.a, this);
    ac.a locala2 = new ac.a(-2, -2, new LatLng(0.0D, 0.0D), 0, 0, 83);
    this.o.addView(this.b, locala2);
    ac.a locala3 = new ac.a(-2, -2, new LatLng(0.0D, 0.0D), 0, 0, 83);
    this.r = new x(this.h, this.a, this);
    this.o.addView(this.r, locala3);
    try
    {
      if (!s().d())
        this.r.setVisibility(8);
      ac.a locala4 = new ac.a(-2, -2, new LatLng(0.0D, 0.0D), 0, 0, 51);
      this.s = new j(this.h, this.a, this);
      this.o.addView(this.s, locala4);
      this.s.setVisibility(8);
      this.P = new g(paramContext, new AccelerateDecelerateInterpolator());
      setRenderer(this);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      while (true)
        localRemoteException.printStackTrace();
    }
  }

  private CameraPosition A()
  {
    LatLng localLatLng = z();
    return CameraPosition.builder().target(localLatLng).bearing(this.j.getMapAngle()).tilt(this.j.getCameraHeaderAngle()).zoom(this.j.getMapZoomer()).build();
  }

  private void B()
  {
    this.X = false;
    this.Y = false;
    this.Z = false;
    if ((this.w != null) && (this.aa != null))
    {
      this.w.onMarkerDragEnd(this.aa);
      this.aa = null;
    }
  }

  private void a(MotionEvent paramMotionEvent)
  {
    if ((this.Z) && (this.aa != null))
    {
      int i1 = (int)paramMotionEvent.getX();
      int i2 = (int)(paramMotionEvent.getY() - 60.0F);
      DPoint localDPoint = new DPoint();
      a(i1, i2, localDPoint);
      LatLng localLatLng = new LatLng(localDPoint.y, localDPoint.x);
      this.aa.setPosition(localLatLng);
      this.w.onMarkerDrag(this.aa);
    }
  }

  private LatLng z()
  {
    DPoint localDPoint = new DPoint();
    IPoint localIPoint = new IPoint();
    this.j.getGeoCenter(localIPoint);
    MapProjection.geo2LonLat(localIPoint.x, localIPoint.y, localDPoint);
    return new LatLng(localDPoint.y, localDPoint.x);
  }

  public float a(float paramFloat)
    throws RemoteException
  {
    return com.amap.api.a.b.g.b(paramFloat);
  }

  public o a(CircleOptions paramCircleOptions)
    throws RemoteException
  {
    i locali = new i(this);
    locali.b(paramCircleOptions.getFillColor());
    locali.a(paramCircleOptions.getCenter());
    locali.a(paramCircleOptions.isVisible());
    locali.b(paramCircleOptions.getStrokeWidth());
    locali.a(paramCircleOptions.getZIndex());
    locali.a(paramCircleOptions.getStrokeColor());
    locali.a(paramCircleOptions.getRadius());
    this.d.a(locali);
    return locali;
  }

  public s a(PolygonOptions paramPolygonOptions)
    throws RemoteException
  {
    ag localag = new ag(this);
    localag.a(paramPolygonOptions.getFillColor());
    localag.a(paramPolygonOptions.getPoints());
    localag.a(paramPolygonOptions.isVisible());
    localag.b(paramPolygonOptions.getStrokeWidth());
    localag.a(paramPolygonOptions.getZIndex());
    localag.b(paramPolygonOptions.getStrokeColor());
    this.d.a(localag);
    return localag;
  }

  public t a(PolylineOptions paramPolylineOptions)
    throws RemoteException
  {
    ah localah = new ah(this);
    localah.a(paramPolylineOptions.getColor());
    localah.a(paramPolylineOptions.getPoints());
    localah.a(paramPolylineOptions.isVisible());
    localah.b(paramPolylineOptions.getWidth());
    localah.a(paramPolylineOptions.getZIndex());
    this.d.a(localah);
    return localah;
  }

  public Marker a(MarkerOptions paramMarkerOptions)
    throws RemoteException
  {
    ad localad = new ad(paramMarkerOptions, this.p);
    this.p.a(localad);
    return new Marker(localad);
  }

  public MapCore a()
  {
    return this.g;
  }

  public void a(double paramDouble1, double paramDouble2, IPoint paramIPoint)
  {
    MapProjection.lonlat2Geo(paramDouble2, paramDouble1, paramIPoint);
  }

  public void a(int paramInt)
    throws RemoteException
  {
    if (paramInt == 2)
    {
      this.f = 2011;
      this.a.a(new z(2011).a(true));
      this.q.a(true);
      return;
    }
    this.a.a(new z(2011).a(false));
    this.q.a(false);
  }

  public void a(int paramInt1, int paramInt2, DPoint paramDPoint)
  {
    FPoint localFPoint = new FPoint();
    this.j.win2Map(paramInt1, paramInt2, localFPoint);
    IPoint localIPoint = new IPoint();
    this.j.map2Geo(localFPoint.x, localFPoint.y, localIPoint);
    MapProjection.geo2LonLat(localIPoint.x, localIPoint.y, paramDPoint);
  }

  public void a(int paramInt1, int paramInt2, FPoint paramFPoint)
  {
    this.j.geo2Map(paramInt2, paramInt1, paramFPoint);
  }

  public void a(int paramInt1, int paramInt2, IPoint paramIPoint)
  {
    FPoint localFPoint = new FPoint();
    this.j.win2Map(paramInt1, paramInt2, localFPoint);
    this.j.map2Geo(localFPoint.x, localFPoint.y, paramIPoint);
  }

  void a(long paramLong)
  {
    this.e.postDelayed(new Runnable()
    {
      public void run()
      {
        b.a(b.this).setVisibility(8);
      }
    }
    , paramLong);
  }

  public void a(Location paramLocation)
  {
    if (paramLocation == null)
      return;
    LatLng localLatLng = new LatLng(paramLocation.getLatitude(), paramLocation.getLongitude());
    try
    {
      if ((!q()) || (this.H == null))
      {
        this.N.a();
        this.N = null;
        return;
      }
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
    }
    while (true)
    {
      this.N.a(localLatLng, paramLocation.getAccuracy());
      if ((this.u != null) && ((this.U == null) || (this.U.getBearing() != paramLocation.getBearing()) || (this.U.getAccuracy() != paramLocation.getAccuracy()) || (this.U.getLatitude() != paramLocation.getLatitude()) || (this.U.getLongitude() != paramLocation.getLongitude())))
        this.u.onMyLocationChange(paramLocation);
      this.U = new Location(paramLocation);
      return;
      if (this.N != null)
        continue;
      this.N = new ae(this);
      if (localLatLng == null)
        continue;
      a(h.a(localLatLng, this.j.getMapZoomer()));
    }
  }

  public void a(h paramh)
    throws RemoteException
  {
    if (paramh.a == h.a.n)
      if ((getWidth() <= 0) || (getHeight() <= 0))
        break label42;
    label42: for (boolean bool = true; ; bool = false)
    {
      com.amap.api.a.b.b.a(bool, "the map must have a size");
      this.a.a(paramh);
      return;
    }
  }

  public void a(h paramh, long paramLong, AMap.CancelableCallback paramCancelableCallback)
    throws RemoteException
  {
    boolean bool;
    if (paramh.a == h.a.n)
    {
      if ((getWidth() <= 0) || (getHeight() <= 0))
        break label109;
      bool = true;
    }
    while (true)
    {
      com.amap.api.a.b.b.a(bool, "the map must have a size");
      if (!this.P.a())
      {
        this.P.a(true);
        if (this.S != null)
          this.S.onCancel();
      }
      this.S = paramCancelableCallback;
      if (paramh.a != h.a.l)
        break;
      if ((paramh.b == 0.0F) && (paramh.c == 0.0F))
      {
        this.S = null;
        return;
        label109: bool = false;
        continue;
      }
      IPoint localIPoint8 = new IPoint();
      this.j.getGeoCenter(localIPoint8);
      IPoint localIPoint9 = new IPoint();
      a(getWidth() / 2 + (int)paramh.b, getHeight() / 2 + (int)paramh.c, localIPoint9);
      this.P.a(localIPoint8.x, localIPoint8.y, this.j.getMapZoomer(), this.j.getMapAngle(), this.j.getCameraHeaderAngle(), localIPoint9.x - localIPoint8.x, localIPoint9.y - localIPoint8.y, 0.0F, 0.0F, 0.0F, paramLong);
      return;
    }
    if (paramh.a == h.a.b)
    {
      float f14 = this.j.getMapZoomer();
      float f15 = com.amap.api.a.b.g.b(1.0F + f14) - f14;
      if (f15 == 0.0F)
      {
        this.S = null;
        return;
      }
      IPoint localIPoint7 = new IPoint();
      this.j.getGeoCenter(localIPoint7);
      this.P.a(localIPoint7.x, localIPoint7.y, f14, this.j.getMapAngle(), this.j.getCameraHeaderAngle(), 0, 0, f15, 0.0F, 0.0F, paramLong);
      return;
    }
    if (paramh.a == h.a.i)
    {
      float f12 = this.j.getMapZoomer();
      float f13 = com.amap.api.a.b.g.b(f12 - 1.0F) - f12;
      if (f13 == 0.0F)
      {
        this.S = null;
        return;
      }
      IPoint localIPoint6 = new IPoint();
      this.j.getGeoCenter(localIPoint6);
      this.P.a(localIPoint6.x, localIPoint6.y, f12, this.j.getMapAngle(), this.j.getCameraHeaderAngle(), 0, 0, f13, 0.0F, 0.0F, paramLong);
      return;
    }
    if (paramh.a == h.a.j)
    {
      float f10 = this.j.getMapZoomer();
      float f11 = com.amap.api.a.b.g.b(paramh.d) - f10;
      if (f11 == 0.0F)
      {
        this.S = null;
        return;
      }
      IPoint localIPoint5 = new IPoint();
      this.j.getGeoCenter(localIPoint5);
      this.P.a(localIPoint5.x, localIPoint5.y, f10, this.j.getMapAngle(), this.j.getCameraHeaderAngle(), 0, 0, f11, 0.0F, 0.0F, paramLong);
      return;
    }
    if (paramh.a == h.a.k)
    {
      float f7 = paramh.e;
      float f8 = this.j.getMapZoomer();
      float f9 = com.amap.api.a.b.g.b(f8 + f7) - f8;
      if (f9 == 0.0F)
      {
        this.S = null;
        return;
      }
      Point localPoint = paramh.m;
      IPoint localIPoint3 = new IPoint();
      this.j.getGeoCenter(localIPoint3);
      int i3 = 0;
      int i4 = 0;
      if (localPoint != null)
      {
        IPoint localIPoint4 = new IPoint();
        a(localPoint.x, localPoint.y, localIPoint4);
        i3 = (int)(localIPoint4.x + (localIPoint3.x - localIPoint4.x) / Math.pow(2.0D, f7));
        i4 = (int)(localIPoint4.y + (localIPoint3.y - localIPoint4.y) / Math.pow(2.0D, f7));
      }
      this.P.a(localIPoint3.x, localIPoint3.y, f8, this.j.getMapAngle(), this.j.getCameraHeaderAngle(), i3, i4, f9, 0.0F, 0.0F, paramLong);
      return;
    }
    if (paramh.a == h.a.m)
    {
      IPoint localIPoint1 = new IPoint();
      this.j.getGeoCenter(localIPoint1);
      IPoint localIPoint2 = new IPoint();
      CameraPosition localCameraPosition = paramh.h;
      MapProjection.lonlat2Geo(localCameraPosition.target.longitude, localCameraPosition.target.latitude, localIPoint2);
      float f1 = this.j.getMapZoomer();
      int i1 = localIPoint2.x - localIPoint1.x;
      int i2 = localIPoint2.y - localIPoint1.y;
      float f2 = com.amap.api.a.b.g.b(localCameraPosition.zoom) - f1;
      float f3 = this.j.getMapAngle();
      float f4 = localCameraPosition.bearing - f3;
      float f5 = this.j.getCameraHeaderAngle();
      float f6 = com.amap.api.a.b.g.a(localCameraPosition.tilt) - f5;
      if ((i1 == 0) && (i2 == 0) && (f2 == 0.0F) && (f4 == 0.0F) && (f6 == 0.0F))
      {
        this.S = null;
        return;
      }
      this.P.a(localIPoint1.x, localIPoint1.y, f1, f3, f5, i1, i2, f2, f4, f6, paramLong);
      return;
    }
    this.S = null;
    this.a.a(paramh);
  }

  public void a(h paramh, AMap.CancelableCallback paramCancelableCallback)
    throws RemoteException
  {
    a(paramh, 250L, paramCancelableCallback);
  }

  public void a(q paramq)
  {
    if (paramq == null);
    do
      return;
    while (((paramq.f() == null) && (paramq.g() == null)) || (this.C == null));
    w();
    Marker localMarker = new Marker(paramq);
    this.D = this.C.getInfoWindow(localMarker);
    try
    {
      if (this.T == null)
        this.T = af.a(this.h, "infowindow_bg.9.png");
      if (this.D == null)
        this.D = this.C.getInfoContents(localMarker);
      if (this.D != null)
      {
        if (this.D.getBackground() == null)
          this.D.setBackgroundDrawable(this.T);
        FPoint localFPoint = paramq.e();
        ac.a locala = new ac.a(-2, -2, paramq.c(), -(int)localFPoint.x + paramq.h().getWidth() / 2, 2 + -(int)localFPoint.y, 81);
        this.E = localMarker;
        this.o.addView(this.D, locala);
        return;
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        continue;
        LinearLayout localLinearLayout = new LinearLayout(this.h);
        localLinearLayout.setBackgroundDrawable(this.T);
        TextView localTextView1 = new TextView(this.h);
        localTextView1.setText(paramq.f());
        localTextView1.setTextColor(-16777216);
        TextView localTextView2 = new TextView(this.h);
        localTextView2.setTextColor(-16777216);
        localTextView2.setText(paramq.g());
        localLinearLayout.setOrientation(1);
        localLinearLayout.addView(localTextView1);
        localLinearLayout.addView(localTextView2);
        this.D = localLinearLayout;
      }
    }
  }

  public void a(AMap.InfoWindowAdapter paramInfoWindowAdapter)
    throws RemoteException
  {
    this.C = paramInfoWindowAdapter;
  }

  public void a(AMap.OnCameraChangeListener paramOnCameraChangeListener)
    throws RemoteException
  {
    this.y = paramOnCameraChangeListener;
  }

  public void a(AMap.OnInfoWindowClickListener paramOnInfoWindowClickListener)
    throws RemoteException
  {
    this.B = paramOnInfoWindowClickListener;
  }

  public void a(AMap.OnMapClickListener paramOnMapClickListener)
    throws RemoteException
  {
    this.z = paramOnMapClickListener;
  }

  public void a(AMap.OnMapLoadedListener paramOnMapLoadedListener)
    throws RemoteException
  {
    this.x = paramOnMapLoadedListener;
  }

  public void a(AMap.OnMapLongClickListener paramOnMapLongClickListener)
    throws RemoteException
  {
    this.A = paramOnMapLongClickListener;
  }

  public void a(AMap.OnMarkerClickListener paramOnMarkerClickListener)
    throws RemoteException
  {
    this.v = paramOnMarkerClickListener;
  }

  public void a(AMap.OnMarkerDragListener paramOnMarkerDragListener)
    throws RemoteException
  {
    this.w = paramOnMarkerDragListener;
  }

  public void a(AMap.OnMyLocationChangeListener paramOnMyLocationChangeListener)
  {
    this.u = paramOnMyLocationChangeListener;
  }

  public void a(LocationSource paramLocationSource)
    throws RemoteException
  {
    this.H = paramLocationSource;
    if (paramLocationSource != null)
    {
      this.r.a(true);
      return;
    }
    this.r.a(false);
  }

  void a(CameraPosition paramCameraPosition)
  {
    Message localMessage = new Message();
    localMessage.what = 10;
    localMessage.obj = paramCameraPosition;
    this.e.sendMessage(localMessage);
  }

  void a(LatLngBounds paramLatLngBounds, int paramInt1, int paramInt2, int paramInt3)
  {
    IPoint localIPoint1 = new IPoint();
    MapProjection.lonlat2Geo((paramLatLngBounds.northeast.longitude + paramLatLngBounds.southwest.longitude) / 2.0D, (paramLatLngBounds.northeast.latitude + paramLatLngBounds.southwest.latitude) / 2.0D, localIPoint1);
    h localh1 = h.a(localIPoint1, this.j.getMapZoomer(), 0.0F, 0.0F);
    localh1.o = true;
    this.a.a(localh1);
    try
    {
      Thread.sleep(41L);
      f1 = this.j.getMapZoomer();
      IPoint localIPoint2 = new IPoint();
      IPoint localIPoint3 = new IPoint();
      b(paramLatLngBounds.northeast.latitude, paramLatLngBounds.northeast.longitude, localIPoint2);
      b(paramLatLngBounds.southwest.latitude, paramLatLngBounds.southwest.longitude, localIPoint3);
      int i1 = localIPoint2.x - localIPoint3.x;
      int i2 = localIPoint3.y - localIPoint2.y;
      f2 = Math.max(i1 / (paramInt1 - paramInt3 * 2), i2 / (paramInt2 - paramInt3 * 2));
      if (f2 > 1.0F)
      {
        f3 = com.amap.api.a.b.g.b(f1 - com.amap.api.a.b.g.c(f2));
        h localh2 = h.a(f3);
        this.a.a(localh2);
        return;
      }
    }
    catch (InterruptedException localInterruptedException)
    {
      while (true)
      {
        float f1;
        float f2;
        localInterruptedException.printStackTrace();
        continue;
        if (f2 < 0.5D)
        {
          f3 = com.amap.api.a.b.g.b(f1 + com.amap.api.a.b.g.c(1.0F / f2) - 1.0F);
          continue;
        }
        float f3 = f1;
      }
    }
  }

  public void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.b.setVisibility(0);
      return;
    }
    this.b.setVisibility(8);
  }

  public boolean a(String paramString)
    throws RemoteException
  {
    return this.d.c(paramString);
  }

  public MapProjection b()
  {
    if (this.j == null)
      this.j = this.g.getMapstate();
    return this.j;
  }

  public void b(double paramDouble1, double paramDouble2, IPoint paramIPoint)
  {
    IPoint localIPoint = new IPoint();
    FPoint localFPoint = new FPoint();
    MapProjection.lonlat2Geo(paramDouble2, paramDouble1, localIPoint);
    this.j.geo2Map(localIPoint.x, localIPoint.y, localFPoint);
    this.j.map2Win(localFPoint.x, localFPoint.y, paramIPoint);
    paramIPoint.y = (getHeight() - paramIPoint.y);
  }

  public void b(int paramInt1, int paramInt2, DPoint paramDPoint)
  {
    MapProjection.geo2LonLat(paramInt1, paramInt2, paramDPoint);
  }

  public void b(h paramh)
    throws RemoteException
  {
    a(paramh, null);
  }

  public void b(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.r.setVisibility(0);
      return;
    }
    this.r.setVisibility(8);
  }

  public boolean b(q paramq)
  {
    if ((this.E != null) && (this.D != null))
      return this.E.getId().equals(paramq.d());
    return false;
  }

  public boolean b(String paramString)
  {
    try
    {
      q localq2 = this.p.a(paramString);
      localq1 = localq2;
      if (localq1 != null)
        return this.p.b(localq1);
    }
    catch (RemoteException localRemoteException)
    {
      while (true)
      {
        localRemoteException.printStackTrace();
        q localq1 = null;
      }
    }
    return false;
  }

  public void c()
  {
    try
    {
      this.b.a();
      this.t.a();
      this.q.a();
      this.r.a();
      this.s.a();
      this.d.b();
      this.p.d();
      if (f.d != null)
        f.d.disconnect();
      if (this.ad != null)
        this.ad.interrupt();
      if (this.i != null)
        this.i.OnMapDestory(this.g);
      if (this.T != null)
        this.T.setCallback(null);
      this.o.removeAllViews();
      w();
      this.o = null;
      this.b = null;
      this.t = null;
      this.i = null;
      this.g = null;
      this.a = null;
      this.a = null;
      this.e = null;
      this.U = null;
      this.ad = null;
      this.d = null;
      this.p = null;
      this.T = null;
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public void c(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      float f1 = this.j.getMapAngle();
      float f2 = this.j.getCameraHeaderAngle();
      if ((f1 != 0.0F) || (f2 != 0.0F))
      {
        this.s.setVisibility(0);
        this.s.b();
      }
      return;
    }
    this.s.setVisibility(8);
  }

  void d()
  {
    this.e.obtainMessage(14).sendToTarget();
  }

  public void d(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.t.setVisibility(0);
      e();
      return;
    }
    this.t.a("");
    this.t.a(0);
    this.t.setVisibility(8);
  }

  void e()
  {
    this.e.sendEmptyMessage(15);
  }

  public void e(boolean paramBoolean)
    throws RemoteException
  {
    this.W = paramBoolean;
    this.a.a(new z(2).a(paramBoolean));
  }

  void f()
  {
    int i1 = getWidth();
    DPoint localDPoint1 = new DPoint();
    DPoint localDPoint2 = new DPoint();
    a(0, 0, localDPoint1);
    a(i1, 0, localDPoint2);
    double d1 = com.amap.api.a.b.g.a(new LatLng(localDPoint1.y, localDPoint1.x), new LatLng(localDPoint2.y, localDPoint2.x));
    int i2 = (int)this.j.getMapZoomer();
    int i3 = (int)(i1 * this.V[i2] / d1);
    String str = com.amap.api.a.b.g.b(this.V[i2]);
    this.t.a(i3);
    this.t.a(str);
    this.t.invalidate();
  }

  public void f(boolean paramBoolean)
    throws RemoteException
  {
    if (this.H != null)
      if (paramBoolean)
      {
        this.H.activate(this.L);
        this.r.a(true);
        if (!paramBoolean)
          break label81;
        this.r.setVisibility(0);
      }
    while (true)
    {
      this.J = paramBoolean;
      return;
      this.H.deactivate();
      this.r.a(false);
      break;
      this.r.a(false);
      break;
      label81: this.r.setVisibility(8);
    }
  }

  public int g()
  {
    return this.I.width();
  }

  public int h()
  {
    return this.I.height();
  }

  public void i()
  {
    if ((this.D != null) && (this.E != null))
    {
      ac.a locala = (ac.a)this.D.getLayoutParams();
      if (locala != null)
        locala.b = this.E.getPosition();
      this.o.a();
    }
  }

  public CameraPosition j()
    throws RemoteException
  {
    return A();
  }

  public float k()
  {
    return 20.0F;
  }

  public float l()
  {
    return 4.0F;
  }

  public void m()
    throws RemoteException
  {
    if (!this.P.a())
    {
      this.P.a(true);
      if (this.S != null)
        this.S.onCancel();
      this.S = null;
    }
  }

  public void n()
    throws RemoteException
  {
    try
    {
      w();
      this.d.a();
      this.p.b();
      return;
    }
    catch (Exception localException)
    {
      Log.d("amapApi", "AMapDelegateImpGLSurfaceView clear erro" + localException.getMessage());
    }
  }

  public int o()
    throws RemoteException
  {
    return this.f;
  }

  public void onDrawFrame(GL10 paramGL10)
  {
    this.g.setGL(paramGL10);
    this.g.drawFrame(paramGL10);
    this.d.a(paramGL10);
    this.p.a(paramGL10);
    if (!this.P.a())
      this.e.sendEmptyMessage(13);
    if (!this.K)
    {
      if (this.x != null)
        this.x.onMapLoaded();
      this.K = true;
    }
  }

  public void onSurfaceChanged(GL10 paramGL10, int paramInt1, int paramInt2)
  {
    this.I = new Rect(0, 0, paramInt1, paramInt2);
    this.g.setGL(paramGL10);
    this.g.surfaceChange(paramGL10, paramInt1, paramInt2);
    this.g.setInternaltexture(com.amap.api.a.b.g.a(this.h, "bk.pvr"), 1);
    this.g.setInternaltexture(com.amap.api.a.b.g.a(this.h, "icon.pvr"), 0);
    this.g.setInternaltexture(com.amap.api.a.b.g.a(this.h, "roadarrow.pvr"), 2);
    this.g.setInternaltexture(com.amap.api.a.b.g.a(this.h, "LineRound.pvr"), 3);
    this.g.setParameter(2050, 3, 0, 0, 0);
  }

  public void onSurfaceCreated(GL10 paramGL10, EGLConfig paramEGLConfig)
  {
    this.g.setGL(paramGL10);
    this.g.setStyleData(com.amap.api.a.b.g.a(this.h, "style_hv3.data"), 0);
    this.g.setStyleData(com.amap.api.a.b.g.a(this.h, "style_shv3.data"), 1);
    this.g.surfaceCreate(paramGL10);
    if (!this.c);
    try
    {
      this.ad.setName("AuthThread");
      this.ad.start();
      this.c = true;
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    this.k.onTouchEvent(paramMotionEvent);
    this.l.onTouchEvent(paramMotionEvent);
    this.m.a(paramMotionEvent);
    this.M.a(paramMotionEvent);
    super.onTouchEvent(paramMotionEvent);
    if (paramMotionEvent.getAction() == 2)
      a(paramMotionEvent);
    if (paramMotionEvent.getAction() == 1)
      B();
    return true;
  }

  public boolean p()
    throws RemoteException
  {
    return this.W;
  }

  public boolean q()
    throws RemoteException
  {
    return this.J;
  }

  public Location r()
    throws RemoteException
  {
    if (this.H != null)
      return this.L.a;
    return null;
  }

  public w s()
    throws RemoteException
  {
    return this.G;
  }

  public void setZOrderOnTop(boolean paramBoolean)
  {
    super.setZOrderOnTop(paramBoolean);
  }

  public u t()
    throws RemoteException
  {
    return this.F;
  }

  public AMap.OnCameraChangeListener u()
    throws RemoteException
  {
    return this.y;
  }

  public View v()
    throws RemoteException
  {
    return this.o;
  }

  public void w()
  {
    if (this.D != null)
    {
      this.D.clearFocus();
      this.o.removeView(this.D);
      Drawable localDrawable = this.D.getBackground();
      if (localDrawable != null)
        localDrawable.setCallback(null);
      this.D = null;
    }
    this.E = null;
  }

  public float x()
  {
    return this.j.getMapZoomer();
  }

  int y()
  {
    return this.q.c();
  }

  private class a
    implements com.amap.api.a.a.b.a
  {
    Float a = null;
    Float b = null;
    float c;
    h d = h.c(this.c);
    private float f;
    private float g;
    private float h;
    private float i;
    private float j;

    private a()
    {
    }

    public void a(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5)
    {
      this.f = paramFloat2;
      this.h = paramFloat3;
      this.g = paramFloat4;
      this.i = paramFloat5;
      this.j = ((this.i - this.h) / (this.g - this.f));
      this.a = null;
      this.b = null;
    }

    public boolean a(MotionEvent paramMotionEvent, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
    {
      try
      {
        boolean bool = b.d(b.this).g();
        if (!bool)
          return true;
      }
      catch (RemoteException localRemoteException)
      {
        localRemoteException.printStackTrace();
        return true;
      }
      if (this.b == null)
        this.b = Float.valueOf(paramFloat4);
      if (this.a == null)
        this.a = Float.valueOf(paramFloat2);
      float f1 = this.h - paramFloat2;
      float f2 = this.i - paramFloat4;
      float f3 = this.f - paramFloat1;
      float f4 = this.g - paramFloat3;
      float f5 = (paramFloat4 - paramFloat2) / (paramFloat3 - paramFloat1);
      if ((Math.abs(this.j - f5) < 0.2D) && (((f1 > 0.0F) && (f2 > 0.0F)) || ((f1 < 0.0F) && (f2 < 0.0F) && (((f3 >= 0.0F) && (f4 >= 0.0F)) || ((f3 <= 0.0F) && (f4 <= 0.0F))))))
      {
        float f6 = (this.a.floatValue() - paramFloat2) / 4.0F;
        b.d(b.this, true);
        this.c = (b.e(b.this).getCameraHeaderAngle() - f6);
        this.d.f = this.c;
        b.this.a.a(this.d);
        this.a = Float.valueOf(paramFloat2);
        this.b = Float.valueOf(paramFloat4);
        return true;
      }
      return false;
    }
  }

  private class b
    implements GestureDetector.OnDoubleTapListener
  {
    private b()
    {
    }

    public boolean onDoubleTap(MotionEvent paramMotionEvent)
    {
      try
      {
        boolean bool = b.d(b.this).f();
        if (!bool)
          return true;
      }
      catch (RemoteException localRemoteException)
      {
        do
          localRemoteException.printStackTrace();
        while ((b.p(b.this) > 1) || (b.e(b.this).getMapZoomer() == b.this.k()));
        float f1 = paramMotionEvent.getX();
        float f2 = paramMotionEvent.getY();
        h localh = h.a(1.0F, new Point((int)f1, (int)f2));
        b.this.a.a(localh);
      }
      return true;
    }

    public boolean onDoubleTapEvent(MotionEvent paramMotionEvent)
    {
      return false;
    }

    public boolean onSingleTapConfirmed(MotionEvent paramMotionEvent)
    {
      return false;
    }
  }

  private class c
    implements GestureDetector.OnGestureListener
  {
    FPoint a = new FPoint();
    IPoint b = new IPoint();
    h c = h.a(this.b);

    private c()
    {
    }

    public boolean onDown(MotionEvent paramMotionEvent)
    {
      if (!b.g(b.this).a())
      {
        b.g(b.this).a(true);
        if (b.h(b.this) != null)
          b.h(b.this).onCancel();
        b.a(b.this, null);
      }
      b.a(b.this, 0);
      this.a.x = paramMotionEvent.getX();
      this.a.y = paramMotionEvent.getY();
      return true;
    }

    public boolean onFling(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
    {
      try
      {
        boolean bool = b.d(b.this).e();
        if (!bool)
          return true;
      }
      catch (RemoteException localRemoteException)
      {
        do
          localRemoteException.printStackTrace();
        while ((b.i(b.this).b()) || (paramMotionEvent1.getEventTime() - b.i(b.this).c() < 30L));
        int i = b.this.g();
        int j = b.this.h();
        int k = i * 2;
        int m = j * 2;
        b.b(b.this, i / 2);
        b.c(b.this, j / 2);
        b.a(b.this, null);
        b.g(b.this).a(b.j(b.this), b.k(b.this), 3 * (int)(-paramFloat1) / 5, 3 * (int)(-paramFloat2) / 5, -k, k, -m, m);
      }
      return true;
    }

    public void onLongPress(MotionEvent paramMotionEvent)
    {
      if (b.l(b.this) != null)
      {
        DPoint localDPoint1 = new DPoint();
        b.this.a((int)paramMotionEvent.getX(), (int)paramMotionEvent.getY(), localDPoint1);
        b.l(b.this).onMapLongClick(new LatLng(localDPoint1.y, localDPoint1.x));
        b.b(b.this, true);
      }
      q localq = b.m(b.this).a(paramMotionEvent);
      if ((b.n(b.this) != null) && (localq != null) && (localq.i()))
      {
        b.a(b.this, new Marker(localq));
        LatLng localLatLng1 = b.o(b.this).getPosition();
        IPoint localIPoint = new IPoint();
        b.this.b(localLatLng1.latitude, localLatLng1.longitude, localIPoint);
        localIPoint.y = (-60 + localIPoint.y);
        DPoint localDPoint2 = new DPoint();
        b.this.a(localIPoint.x, localIPoint.y, localDPoint2);
        LatLng localLatLng2 = new LatLng(localDPoint2.y, localDPoint2.x);
        b.o(b.this).setPosition(localLatLng2);
        b.n(b.this).onMarkerDragStart(b.o(b.this));
        b.c(b.this, true);
      }
    }

    public boolean onScroll(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
    {
      if (((!b.g(b.this).a()) && (b.g(b.this).j() == 1)) || (b.i(b.this).b()) || (paramMotionEvent2.getEventTime() - b.i(b.this).c() < 30L));
      while (true)
      {
        return true;
        if (paramMotionEvent2.getPointerCount() >= 2)
          continue;
        try
        {
          boolean bool = b.d(b.this).e();
          if ((!bool) || (b.p(b.this) > 1))
            continue;
          float f1 = this.a.x;
          float f2 = this.a.y;
          float f3 = f1 - paramFloat1;
          float f4 = f2 - paramFloat2;
          FPoint localFPoint1 = new FPoint();
          FPoint localFPoint2 = new FPoint();
          FPoint localFPoint3 = new FPoint();
          b.e(b.this).win2Map((int)f1, (int)f2, localFPoint1);
          b.e(b.this).win2Map((int)f3, (int)f4, localFPoint2);
          float f5 = localFPoint2.x - localFPoint1.x;
          float f6 = localFPoint2.y - localFPoint1.y;
          b.e(b.this).getMapCenter(localFPoint3);
          b.e(b.this).map2Geo(localFPoint3.x - f5, localFPoint3.y - f6, this.b);
          this.c.p = this.b;
          b.this.a.a(this.c);
          return true;
        }
        catch (RemoteException localRemoteException)
        {
          while (true)
            localRemoteException.printStackTrace();
        }
      }
    }

    public void onShowPress(MotionEvent paramMotionEvent)
    {
    }

    public boolean onSingleTapUp(MotionEvent paramMotionEvent)
    {
      if (b.q(b.this))
        b.b(b.this, false);
      do
        while (true)
        {
          return true;
          try
          {
            if (b.r(b.this) != null)
            {
              Rect localRect = new Rect(b.r(b.this).getLeft(), b.r(b.this).getTop(), b.r(b.this).getRight(), b.r(b.this).getBottom());
              if ((b.m(b.this).a(localRect, (int)paramMotionEvent.getX(), (int)paramMotionEvent.getY())) && (b.s(b.this) != null))
              {
                q localq2 = b.m(b.this).c();
                if (!localq2.m())
                  continue;
                Marker localMarker2 = new Marker(localq2);
                b.s(b.this).onInfoWindowClick(localMarker2);
                return true;
              }
            }
          }
          catch (Exception localException)
          {
            localException.printStackTrace();
            return true;
          }
          if (b.m(b.this).b(paramMotionEvent))
          {
            q localq1 = b.m(b.this).c();
            if ((!localq1.m()) || (localq1 == null))
              continue;
            Marker localMarker1 = new Marker(localq1);
            if (b.t(b.this) != null)
            {
              boolean bool = b.t(b.this).onMarkerClick(localMarker1);
              if (bool);
            }
            try
            {
              b.this.a(localq1);
              LatLng localLatLng = localq1.c();
              IPoint localIPoint = new IPoint();
              b.this.a(localLatLng.latitude, localLatLng.longitude, localIPoint);
              b.this.a(h.a(localIPoint));
              b.m(b.this).c(localq1);
              return true;
            }
            catch (RemoteException localRemoteException)
            {
              while (true)
                localRemoteException.printStackTrace();
            }
          }
        }
      while (b.u(b.this) == null);
      DPoint localDPoint = new DPoint();
      b.this.a((int)paramMotionEvent.getX(), (int)paramMotionEvent.getY(), localDPoint);
      b.u(b.this).onMapClick(new LatLng(localDPoint.y, localDPoint.x));
      return true;
    }
  }

  private class d
    implements c.a
  {
    boolean a = false;
    float b;
    float c;
    h d = h.d(this.c);

    private d()
    {
    }

    public boolean a(com.amap.api.a.a.c paramc)
    {
      boolean bool = true;
      if (b.b(b.this))
        bool = false;
      float f;
      do
      {
        return bool;
        f = paramc.b();
        this.b = (f + this.b);
      }
      while ((!this.a) && (Math.abs(this.b) <= 30.0F) && (Math.abs(this.b) <= 350.0F));
      this.a = bool;
      this.c = (f + b.e(b.this).getMapAngle());
      this.d.g = this.c;
      b.this.a.a(this.d);
      this.b = 0.0F;
      return bool;
    }

    public boolean b(com.amap.api.a.a.c paramc)
    {
      try
      {
        boolean bool = b.d(b.this).h();
        if (!bool)
          return false;
      }
      catch (RemoteException localRemoteException)
      {
        do
        {
          localRemoteException.printStackTrace();
          this.a = false;
          this.b = 0.0F;
          b.a(b.this, 2);
        }
        while ((b.b(b.this)) || (b.this.getWidth() / 4 >= paramc.c()));
      }
      return true;
    }

    public void c(com.amap.api.a.a.c paramc)
    {
      this.a = false;
      this.b = 0.0F;
      b.f(b.this);
    }
  }

  private class e
    implements ScaleGestureDetector.OnScaleGestureListener
  {
    private float b = 0.0F;

    private e()
    {
    }

    public boolean onScale(ScaleGestureDetector paramScaleGestureDetector)
    {
      if (b.b(b.this));
      float f;
      do
      {
        return false;
        f = paramScaleGestureDetector.getScaleFactor();
      }
      while ((!b.c(b.this)) && (f <= 1.08D) && (f >= 0.92D));
      b.a(b.this, true);
      b.this.a.a(h.a(this.b + (f - 1.0F)));
      return false;
    }

    public boolean onScaleBegin(ScaleGestureDetector paramScaleGestureDetector)
    {
      try
      {
        boolean bool = b.d(b.this).f();
        if (!bool)
          return false;
      }
      catch (RemoteException localRemoteException)
      {
        do
        {
          localRemoteException.printStackTrace();
          b.a(b.this, 2);
        }
        while (b.b(b.this));
        b.a(b.this, false);
        this.b = b.e(b.this).getMapZoomer();
      }
      return true;
    }

    public void onScaleEnd(ScaleGestureDetector paramScaleGestureDetector)
    {
      this.b = 0.0F;
      float f = paramScaleGestureDetector.getScaleFactor();
      if ((f < 1.03D) && (f > 0.97D) && (!b.c(b.this)) && (!b.b(b.this)))
        b.this.a.a(h.c());
      b.f(b.this);
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.a.b
 * JD-Core Version:    0.6.0
 */