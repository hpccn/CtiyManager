.class public final Lcom/amap/api/maps/AMap;
.super Ljava/lang/Object;
.source "AMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/maps/AMap$OnMapLoadedListener;,
        Lcom/amap/api/maps/AMap$OnMapClickListener;,
        Lcom/amap/api/maps/AMap$OnMapLongClickListener;,
        Lcom/amap/api/maps/AMap$OnCameraChangeListener;,
        Lcom/amap/api/maps/AMap$OnMarkerClickListener;,
        Lcom/amap/api/maps/AMap$OnMarkerDragListener;,
        Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;,
        Lcom/amap/api/maps/AMap$CancelableCallback;,
        Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;,
        Lcom/amap/api/maps/AMap$InfoWindowAdapter;
    }
.end annotation


# static fields
.field public static final MAP_TYPE_NORMAL:I = 0x1

.field public static final MAP_TYPE_SATELLITE:I = 0x2


# instance fields
.field private final a:Lcom/amap/api/a/n;

.field private b:Lcom/amap/api/maps/UiSettings;

.field private c:Lcom/amap/api/maps/Projection;


# direct methods
.method protected constructor <init>(Lcom/amap/api/a/n;)V
    .locals 0
    .parameter

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iput-object p1, p0, Lcom/amap/api/maps/AMap;->a:Lcom/amap/api/a/n;

    .line 208
    return-void
.end method


# virtual methods
.method a()Lcom/amap/api/a/n;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/amap/api/maps/AMap;->a:Lcom/amap/api/a/n;

    return-object v0
.end method

.method public final addCircle(Lcom/amap/api/maps/model/CircleOptions;)Lcom/amap/api/maps/model/Circle;
    .locals 2
    .parameter

    .prologue
    .line 337
    :try_start_0
    new-instance v0, Lcom/amap/api/maps/model/Circle;

    invoke-virtual {p0}, Lcom/amap/api/maps/AMap;->a()Lcom/amap/api/a/n;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/amap/api/a/n;->a(Lcom/amap/api/maps/model/CircleOptions;)Lcom/amap/api/a/o;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/maps/model/Circle;-><init>(Lcom/amap/api/a/o;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 338
    :catch_0
    move-exception v0

    .line 339
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final addMarker(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;
    .locals 2
    .parameter

    .prologue
    .line 374
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps/AMap;->a()Lcom/amap/api/a/n;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/a/n;->a(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 375
    :catch_0
    move-exception v0

    .line 376
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final addPolygon(Lcom/amap/api/maps/model/PolygonOptions;)Lcom/amap/api/maps/model/Polygon;
    .locals 2
    .parameter

    .prologue
    .line 353
    :try_start_0
    new-instance v0, Lcom/amap/api/maps/model/Polygon;

    invoke-virtual {p0}, Lcom/amap/api/maps/AMap;->a()Lcom/amap/api/a/n;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/amap/api/a/n;->a(Lcom/amap/api/maps/model/PolygonOptions;)Lcom/amap/api/a/s;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/maps/model/Polygon;-><init>(Lcom/amap/api/a/s;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 354
    :catch_0
    move-exception v0

    .line 355
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final addPolyline(Lcom/amap/api/maps/model/PolylineOptions;)Lcom/amap/api/maps/model/Polyline;
    .locals 2
    .parameter

    .prologue
    .line 322
    :try_start_0
    new-instance v0, Lcom/amap/api/maps/model/Polyline;

    invoke-virtual {p0}, Lcom/amap/api/maps/AMap;->a()Lcom/amap/api/a/n;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/amap/api/a/n;->a(Lcom/amap/api/maps/model/PolylineOptions;)Lcom/amap/api/a/t;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/maps/model/Polyline;-><init>(Lcom/amap/api/a/t;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 323
    :catch_0
    move-exception v0

    .line 324
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final animateCamera(Lcom/amap/api/maps/CameraUpdate;)V
    .locals 2
    .parameter

    .prologue
    .line 272
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps/AMap;->a()Lcom/amap/api/a/n;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/maps/CameraUpdate;->a()Lcom/amap/api/a/h;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/a/n;->b(Lcom/amap/api/a/h;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    return-void

    .line 274
    :catch_0
    move-exception v0

    .line 275
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final animateCamera(Lcom/amap/api/maps/CameraUpdate;JLcom/amap/api/maps/AMap$CancelableCallback;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 294
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    :try_start_0
    const-string v1, "durationMs must be positive"

    invoke-static {v0, v1}, Lcom/amap/api/a/b/b;->b(ZLjava/lang/Object;)V

    .line 296
    invoke-virtual {p0}, Lcom/amap/api/maps/AMap;->a()Lcom/amap/api/a/n;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/maps/CameraUpdate;->a()Lcom/amap/api/a/h;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/amap/api/a/n;->a(Lcom/amap/api/a/h;JLcom/amap/api/maps/AMap$CancelableCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    return-void

    .line 294
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 299
    :catch_0
    move-exception v0

    .line 300
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final animateCamera(Lcom/amap/api/maps/CameraUpdate;Lcom/amap/api/maps/AMap$CancelableCallback;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 282
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps/AMap;->a()Lcom/amap/api/a/n;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/maps/CameraUpdate;->a()Lcom/amap/api/a/h;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/amap/api/a/n;->a(Lcom/amap/api/a/h;Lcom/amap/api/maps/AMap$CancelableCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    return-void

    .line 286
    :catch_0
    move-exception v0

    .line 287
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final clear()V
    .locals 2

    .prologue
    .line 407
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps/AMap;->a()Lcom/amap/api/a/n;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/a/n;->n()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    return-void

    .line 408
    :catch_0
    move-exception v0

    .line 409
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;
    .locals 2

    .prologue
    .line 222
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps/AMap;->a()Lcom/amap/api/a/n;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/a/n;->j()Lcom/amap/api/maps/model/CameraPosition;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 223
    :catch_0
    move-exception v0

    .line 224
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getMapType()I
    .locals 2

    .prologue
    .line 421
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps/AMap;->a()Lcom/amap/api/a/n;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/a/n;->o()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 422
    :catch_0
    move-exception v0

    .line 423
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getMaxZoomLevel()F
    .locals 1

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/amap/api/maps/AMap;->a()Lcom/amap/api/a/n;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/a/n;->k()F

    move-result v0

    return v0
.end method

.method public final getMinZoomLevel()F
    .locals 1

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/amap/api/maps/AMap;->a()Lcom/amap/api/a/n;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/a/n;->l()F

    move-result v0

    return v0
.end method

.method public final getMyLocation()Landroid/location/Location;
    .locals 2

    .prologue
    .line 529
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps/AMap;->a()Lcom/amap/api/a/n;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/a/n;->r()Landroid/location/Location;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 530
    :catch_0
    move-exception v0

    .line 531
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getProjection()Lcom/amap/api/maps/Projection;
    .locals 2

    .prologue
    .line 577
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/AMap;->c:Lcom/amap/api/maps/Projection;

    if-nez v0, :cond_0

    .line 578
    new-instance v0, Lcom/amap/api/maps/Projection;

    invoke-virtual {p0}, Lcom/amap/api/maps/AMap;->a()Lcom/amap/api/a/n;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/a/n;->t()Lcom/amap/api/a/u;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/maps/Projection;-><init>(Lcom/amap/api/a/u;)V

    iput-object v0, p0, Lcom/amap/api/maps/AMap;->c:Lcom/amap/api/maps/Projection;

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/AMap;->c:Lcom/amap/api/maps/Projection;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 582
    :catch_0
    move-exception v0

    .line 583
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getUiSettings()Lcom/amap/api/maps/UiSettings;
    .locals 2

    .prologue
    .line 558
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/AMap;->b:Lcom/amap/api/maps/UiSettings;

    if-nez v0, :cond_0

    .line 559
    new-instance v0, Lcom/amap/api/maps/UiSettings;

    invoke-virtual {p0}, Lcom/amap/api/maps/AMap;->a()Lcom/amap/api/a/n;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/a/n;->s()Lcom/amap/api/a/w;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/maps/UiSettings;-><init>(Lcom/amap/api/a/w;)V

    iput-object v0, p0, Lcom/amap/api/maps/AMap;->b:Lcom/amap/api/maps/UiSettings;

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/AMap;->b:Lcom/amap/api/maps/UiSettings;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 563
    :catch_0
    move-exception v0

    .line 564
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final isMyLocationEnabled()Z
    .locals 2

    .prologue
    .line 495
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps/AMap;->a()Lcom/amap/api/a/n;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/a/n;->q()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 496
    :catch_0
    move-exception v0

    .line 497
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final isTrafficEnabled()Z
    .locals 2

    .prologue
    .line 451
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps/AMap;->a()Lcom/amap/api/a/n;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/a/n;->p()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 452
    :catch_0
    move-exception v0

    .line 453
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final moveCamera(Lcom/amap/api/maps/CameraUpdate;)V
    .locals 2
    .parameter

    .prologue
    .line 263
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps/AMap;->a()Lcom/amap/api/a/n;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/maps/CameraUpdate;->a()Lcom/amap/api/a/h;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/a/n;->a(Lcom/amap/api/a/h;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    return-void

    .line 265
    :catch_0
    move-exception v0

    .line 266
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setInfoWindowAdapter(Lcom/amap/api/maps/AMap$InfoWindowAdapter;)V
    .locals 2
    .parameter

    .prologue
    .line 713
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps/AMap;->a()Lcom/amap/api/a/n;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/a/n;->a(Lcom/amap/api/maps/AMap$InfoWindowAdapter;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 717
    return-void

    .line 714
    :catch_0
    move-exception v0

    .line 715
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setLocationSource(Lcom/amap/api/maps/LocationSource;)V
    .locals 2
    .parameter

    .prologue
    .line 544
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps/AMap;->a()Lcom/amap/api/a/n;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/a/n;->a(Lcom/amap/api/maps/LocationSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    return-void

    .line 545
    :catch_0
    move-exception v0

    .line 546
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setMapType(I)V
    .locals 2
    .parameter

    .prologue
    .line 437
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps/AMap;->a()Lcom/amap/api/a/n;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/a/n;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    return-void

    .line 438
    :catch_0
    move-exception v0

    .line 439
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setMyLocationEnabled(Z)V
    .locals 2
    .parameter

    .prologue
    .line 513
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps/AMap;->a()Lcom/amap/api/a/n;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/a/n;->f(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    return-void

    .line 514
    :catch_0
    move-exception v0

    .line 515
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setOnCameraChangeListener(Lcom/amap/api/maps/AMap$OnCameraChangeListener;)V
    .locals 2
    .parameter

    .prologue
    .line 597
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps/AMap;->a()Lcom/amap/api/a/n;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/a/n;->a(Lcom/amap/api/maps/AMap$OnCameraChangeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 601
    return-void

    .line 598
    :catch_0
    move-exception v0

    .line 599
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setOnInfoWindowClickListener(Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;)V
    .locals 2
    .parameter

    .prologue
    .line 693
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps/AMap;->a()Lcom/amap/api/a/n;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/a/n;->a(Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 697
    return-void

    .line 694
    :catch_0
    move-exception v0

    .line 695
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setOnMapClickListener(Lcom/amap/api/maps/AMap$OnMapClickListener;)V
    .locals 2
    .parameter

    .prologue
    .line 612
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps/AMap;->a()Lcom/amap/api/a/n;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/a/n;->a(Lcom/amap/api/maps/AMap$OnMapClickListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 616
    return-void

    .line 613
    :catch_0
    move-exception v0

    .line 614
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setOnMapLoadedListener(Lcom/amap/api/maps/AMap$OnMapLoadedListener;)V
    .locals 2
    .parameter

    .prologue
    .line 726
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps/AMap;->a()Lcom/amap/api/a/n;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/a/n;->a(Lcom/amap/api/maps/AMap$OnMapLoadedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 730
    return-void

    .line 727
    :catch_0
    move-exception v0

    .line 728
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setOnMapLongClickListener(Lcom/amap/api/maps/AMap$OnMapLongClickListener;)V
    .locals 2
    .parameter

    .prologue
    .line 645
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps/AMap;->a()Lcom/amap/api/a/n;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/a/n;->a(Lcom/amap/api/maps/AMap$OnMapLongClickListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 649
    return-void

    .line 646
    :catch_0
    move-exception v0

    .line 647
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setOnMarkerClickListener(Lcom/amap/api/maps/AMap$OnMarkerClickListener;)V
    .locals 2
    .parameter

    .prologue
    .line 662
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps/AMap;->a()Lcom/amap/api/a/n;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/a/n;->a(Lcom/amap/api/maps/AMap$OnMarkerClickListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 666
    return-void

    .line 663
    :catch_0
    move-exception v0

    .line 664
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setOnMarkerDragListener(Lcom/amap/api/maps/AMap$OnMarkerDragListener;)V
    .locals 2
    .parameter

    .prologue
    .line 676
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps/AMap;->a()Lcom/amap/api/a/n;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/a/n;->a(Lcom/amap/api/maps/AMap$OnMarkerDragListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 680
    return-void

    .line 677
    :catch_0
    move-exception v0

    .line 678
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setOnMyLocationChangeListener(Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;)V
    .locals 2
    .parameter

    .prologue
    .line 628
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps/AMap;->a()Lcom/amap/api/a/n;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/a/n;->a(Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    return-void

    .line 629
    :catch_0
    move-exception v0

    .line 630
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setTrafficEnabled(Z)V
    .locals 2
    .parameter

    .prologue
    .line 466
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps/AMap;->a()Lcom/amap/api/a/n;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/a/n;->e(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    return-void

    .line 467
    :catch_0
    move-exception v0

    .line 468
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final stopAnimation()V
    .locals 2

    .prologue
    .line 306
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps/AMap;->a()Lcom/amap/api/a/n;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/a/n;->m()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    return-void

    .line 307
    :catch_0
    move-exception v0

    .line 308
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
