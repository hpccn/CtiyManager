.class Lcom/amap/api/a/b$c;
.super Ljava/lang/Object;
.source "AMapDelegateImpGLSurfaceView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field a:Lcom/autonavi/amap/mapcore/FPoint;

.field b:Lcom/autonavi/amap/mapcore/IPoint;

.field c:Lcom/amap/api/a/h;

.field final synthetic d:Lcom/amap/api/a/b;


# direct methods
.method private constructor <init>(Lcom/amap/api/a/b;)V
    .locals 1
    .parameter

    .prologue
    .line 1275
    iput-object p1, p0, Lcom/amap/api/a/b$c;->d:Lcom/amap/api/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1276
    new-instance v0, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    iput-object v0, p0, Lcom/amap/api/a/b$c;->a:Lcom/autonavi/amap/mapcore/FPoint;

    .line 1404
    new-instance v0, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    iput-object v0, p0, Lcom/amap/api/a/b$c;->b:Lcom/autonavi/amap/mapcore/IPoint;

    .line 1405
    iget-object v0, p0, Lcom/amap/api/a/b$c;->b:Lcom/autonavi/amap/mapcore/IPoint;

    invoke-static {v0}, Lcom/amap/api/a/h;->a(Lcom/autonavi/amap/mapcore/IPoint;)Lcom/amap/api/a/h;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/a/b$c;->c:Lcom/amap/api/a/h;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/a/b;Lcom/amap/api/a/b$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1275
    invoke-direct {p0, p1}, Lcom/amap/api/a/b$c;-><init>(Lcom/amap/api/a/b;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1280
    iget-object v0, p0, Lcom/amap/api/a/b$c;->d:Lcom/amap/api/a/b;

    invoke-static {v0}, Lcom/amap/api/a/b;->g(Lcom/amap/api/a/b;)Lcom/amap/api/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/a/g;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1281
    iget-object v0, p0, Lcom/amap/api/a/b$c;->d:Lcom/amap/api/a/b;

    invoke-static {v0}, Lcom/amap/api/a/b;->g(Lcom/amap/api/a/b;)Lcom/amap/api/a/g;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/amap/api/a/g;->a(Z)V

    .line 1282
    iget-object v0, p0, Lcom/amap/api/a/b$c;->d:Lcom/amap/api/a/b;

    invoke-static {v0}, Lcom/amap/api/a/b;->h(Lcom/amap/api/a/b;)Lcom/amap/api/maps/AMap$CancelableCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1283
    iget-object v0, p0, Lcom/amap/api/a/b$c;->d:Lcom/amap/api/a/b;

    invoke-static {v0}, Lcom/amap/api/a/b;->h(Lcom/amap/api/a/b;)Lcom/amap/api/maps/AMap$CancelableCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/maps/AMap$CancelableCallback;->onCancel()V

    .line 1284
    :cond_0
    iget-object v0, p0, Lcom/amap/api/a/b$c;->d:Lcom/amap/api/a/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amap/api/a/b;->a(Lcom/amap/api/a/b;Lcom/amap/api/maps/AMap$CancelableCallback;)Lcom/amap/api/maps/AMap$CancelableCallback;

    .line 1286
    :cond_1
    iget-object v0, p0, Lcom/amap/api/a/b$c;->d:Lcom/amap/api/a/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amap/api/a/b;->a(Lcom/amap/api/a/b;I)I

    .line 1287
    iget-object v0, p0, Lcom/amap/api/a/b$c;->a:Lcom/autonavi/amap/mapcore/FPoint;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, v0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    .line 1288
    iget-object v0, p0, Lcom/amap/api/a/b$c;->a:Lcom/autonavi/amap/mapcore/FPoint;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v0, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    .line 1289
    return v2
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    .line 1296
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/a/b$c;->d:Lcom/amap/api/a/b;

    invoke-static {v0}, Lcom/amap/api/a/b;->d(Lcom/amap/api/a/b;)Lcom/amap/api/a/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/a/w;->e()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    .line 1319
    :cond_0
    :goto_0
    return v9

    .line 1299
    :catch_0
    move-exception v0

    .line 1300
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1303
    :cond_1
    iget-object v0, p0, Lcom/amap/api/a/b$c;->d:Lcom/amap/api/a/b;

    invoke-static {v0}, Lcom/amap/api/a/b;->i(Lcom/amap/api/a/b;)Lcom/amap/api/a/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/a/a/b;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/amap/api/a/b$c;->d:Lcom/amap/api/a/b;

    invoke-static {v2}, Lcom/amap/api/a/b;->i(Lcom/amap/api/a/b;)Lcom/amap/api/a/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/a/a/b;->c()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1e

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 1308
    iget-object v0, p0, Lcom/amap/api/a/b$c;->d:Lcom/amap/api/a/b;

    invoke-virtual {v0}, Lcom/amap/api/a/b;->g()I

    move-result v0

    .line 1309
    iget-object v1, p0, Lcom/amap/api/a/b$c;->d:Lcom/amap/api/a/b;

    invoke-virtual {v1}, Lcom/amap/api/a/b;->h()I

    move-result v1

    .line 1310
    mul-int/lit8 v6, v0, 0x2

    .line 1311
    mul-int/lit8 v8, v1, 0x2

    .line 1312
    iget-object v2, p0, Lcom/amap/api/a/b$c;->d:Lcom/amap/api/a/b;

    div-int/lit8 v0, v0, 0x2

    invoke-static {v2, v0}, Lcom/amap/api/a/b;->b(Lcom/amap/api/a/b;I)I

    .line 1313
    iget-object v0, p0, Lcom/amap/api/a/b$c;->d:Lcom/amap/api/a/b;

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/amap/api/a/b;->c(Lcom/amap/api/a/b;I)I

    .line 1314
    iget-object v0, p0, Lcom/amap/api/a/b$c;->d:Lcom/amap/api/a/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amap/api/a/b;->a(Lcom/amap/api/a/b;Lcom/amap/api/maps/AMap$CancelableCallback;)Lcom/amap/api/maps/AMap$CancelableCallback;

    .line 1315
    iget-object v0, p0, Lcom/amap/api/a/b$c;->d:Lcom/amap/api/a/b;

    invoke-static {v0}, Lcom/amap/api/a/b;->g(Lcom/amap/api/a/b;)Lcom/amap/api/a/g;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/a/b$c;->d:Lcom/amap/api/a/b;

    invoke-static {v1}, Lcom/amap/api/a/b;->j(Lcom/amap/api/a/b;)I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/a/b$c;->d:Lcom/amap/api/a/b;

    invoke-static {v2}, Lcom/amap/api/a/b;->k(Lcom/amap/api/a/b;)I

    move-result v2

    neg-float v3, p3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x5

    neg-float v4, p4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x5

    neg-int v5, v6

    neg-int v7, v8

    invoke-virtual/range {v0 .. v8}, Lcom/amap/api/a/g;->a(IIIIIIII)V

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    .line 1324
    iget-object v0, p0, Lcom/amap/api/a/b$c;->d:Lcom/amap/api/a/b;

    invoke-static {v0}, Lcom/amap/api/a/b;->l(Lcom/amap/api/a/b;)Lcom/amap/api/maps/AMap$OnMapLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1325
    new-instance v0, Lcom/autonavi/amap/mapcore/DPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/DPoint;-><init>()V

    .line 1326
    iget-object v1, p0, Lcom/amap/api/a/b$c;->d:Lcom/amap/api/a/b;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/amap/api/a/b;->a(IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 1327
    iget-object v1, p0, Lcom/amap/api/a/b$c;->d:Lcom/amap/api/a/b;

    invoke-static {v1}, Lcom/amap/api/a/b;->l(Lcom/amap/api/a/b;)Lcom/amap/api/maps/AMap$OnMapLongClickListener;

    move-result-object v1

    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    iget-wide v3, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v5, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-interface {v1, v2}, Lcom/amap/api/maps/AMap$OnMapLongClickListener;->onMapLongClick(Lcom/amap/api/maps/model/LatLng;)V

    .line 1328
    iget-object v0, p0, Lcom/amap/api/a/b$c;->d:Lcom/amap/api/a/b;

    invoke-static {v0, v7}, Lcom/amap/api/a/b;->b(Lcom/amap/api/a/b;Z)Z

    .line 1330
    :cond_0
    iget-object v0, p0, Lcom/amap/api/a/b$c;->d:Lcom/amap/api/a/b;

    invoke-static {v0}, Lcom/amap/api/a/b;->m(Lcom/amap/api/a/b;)Lcom/amap/api/a/ab;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amap/api/a/ab;->a(Landroid/view/MotionEvent;)Lcom/amap/api/a/q;

    move-result-object v0

    .line 1332
    iget-object v1, p0, Lcom/amap/api/a/b$c;->d:Lcom/amap/api/a/b;

    invoke-static {v1}, Lcom/amap/api/a/b;->n(Lcom/amap/api/a/b;)Lcom/amap/api/maps/AMap$OnMarkerDragListener;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/amap/api/a/q;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1334
    iget-object v1, p0, Lcom/amap/api/a/b$c;->d:Lcom/amap/api/a/b;

    new-instance v2, Lcom/amap/api/maps/model/Marker;

    invoke-direct {v2, v0}, Lcom/amap/api/maps/model/Marker;-><init>(Lcom/amap/api/a/q;)V

    invoke-static {v1, v2}, Lcom/amap/api/a/b;->a(Lcom/amap/api/a/b;Lcom/amap/api/maps/model/Marker;)Lcom/amap/api/maps/model/Marker;

    .line 1335
    iget-object v0, p0, Lcom/amap/api/a/b$c;->d:Lcom/amap/api/a/b;

    invoke-static {v0}, Lcom/amap/api/a/b;->o(Lcom/amap/api/a/b;)Lcom/amap/api/maps/model/Marker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v3

    .line 1336
    new-instance v5, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v5}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 1337
    iget-object v0, p0, Lcom/amap/api/a/b$c;->d:Lcom/amap/api/a/b;

    iget-wide v1, v3, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v3, v3, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/a/b;->b(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 1338
    iget v0, v5, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    add-int/lit8 v0, v0, -0x3c

    iput v0, v5, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    .line 1339
    new-instance v0, Lcom/autonavi/amap/mapcore/DPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/DPoint;-><init>()V

    .line 1340
    iget-object v1, p0, Lcom/amap/api/a/b$c;->d:Lcom/amap/api/a/b;

    iget v2, v5, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v3, v5, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/amap/api/a/b;->a(IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 1341
    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v4, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    .line 1342
    iget-object v0, p0, Lcom/amap/api/a/b$c;->d:Lcom/amap/api/a/b;

    invoke-static {v0}, Lcom/amap/api/a/b;->o(Lcom/amap/api/a/b;)Lcom/amap/api/maps/model/Marker;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Marker;->setPosition(Lcom/amap/api/maps/model/LatLng;)V

    .line 1343
    iget-object v0, p0, Lcom/amap/api/a/b$c;->d:Lcom/amap/api/a/b;

    invoke-static {v0}, Lcom/amap/api/a/b;->n(Lcom/amap/api/a/b;)Lcom/amap/api/maps/AMap$OnMarkerDragListener;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/a/b$c;->d:Lcom/amap/api/a/b;

    invoke-static {v1}, Lcom/amap/api/a/b;->o(Lcom/amap/api/a/b;)Lcom/amap/api/maps/model/Marker;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/maps/AMap$OnMarkerDragListener;->onMarkerDragStart(Lcom/amap/api/maps/model/Marker;)V

    .line 1344
    iget-object v0, p0, Lcom/amap/api/a/b$c;->d:Lcom/amap/api/a/b;

    invoke-static {v0, v7}, Lcom/amap/api/a/b;->c(Lcom/amap/api/a/b;Z)Z

    .line 1346
    :cond_1
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    .line 1354
    iget-object v0, p0, Lcom/amap/api/a/b$c;->d:Lcom/amap/api/a/b;

    invoke-static {v0}, Lcom/amap/api/a/b;->g(Lcom/amap/api/a/b;)Lcom/amap/api/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/a/g;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/a/b$c;->d:Lcom/amap/api/a/b;

    invoke-static {v0}, Lcom/amap/api/a/b;->g(Lcom/amap/api/a/b;)Lcom/amap/api/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/a/g;->j()I

    move-result v0

    if-eq v0, v8, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/amap/api/a/b$c;->d:Lcom/amap/api/a/b;

    invoke-static {v0}, Lcom/amap/api/a/b;->i(Lcom/amap/api/a/b;)Lcom/amap/api/a/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/a/a/b;->b()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/amap/api/a/b$c;->d:Lcom/amap/api/a/b;

    invoke-static {v2}, Lcom/amap/api/a/b;->i(Lcom/amap/api/a/b;)Lcom/amap/api/a/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/a/a/b;->c()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1e

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 1401
    :cond_1
    :goto_0
    return v8

    .line 1364
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 1368
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/a/b$c;->d:Lcom/amap/api/a/b;

    invoke-static {v0}, Lcom/amap/api/a/b;->d(Lcom/amap/api/a/b;)Lcom/amap/api/a/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/a/w;->e()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    .line 1375
    :goto_1
    iget-object v0, p0, Lcom/amap/api/a/b$c;->d:Lcom/amap/api/a/b;

    invoke-static {v0}, Lcom/amap/api/a/b;->p(Lcom/amap/api/a/b;)I

    move-result v0

    if-gt v0, v8, :cond_1

    .line 1378
    iget-object v0, p0, Lcom/amap/api/a/b$c;->a:Lcom/autonavi/amap/mapcore/FPoint;

    iget v0, v0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    .line 1379
    iget-object v1, p0, Lcom/amap/api/a/b$c;->a:Lcom/autonavi/amap/mapcore/FPoint;

    iget v1, v1, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    .line 1381
    sub-float v2, v0, p3

    .line 1382
    sub-float v3, v1, p4

    .line 1384
    new-instance v4, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v4}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    .line 1385
    new-instance v5, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v5}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    .line 1386
    new-instance v6, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v6}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    .line 1387
    iget-object v7, p0, Lcom/amap/api/a/b$c;->d:Lcom/amap/api/a/b;

    invoke-static {v7}, Lcom/amap/api/a/b;->e(Lcom/amap/api/a/b;)Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v7

    float-to-int v0, v0

    float-to-int v1, v1

    invoke-virtual {v7, v0, v1, v4}, Lcom/autonavi/amap/mapcore/MapProjection;->win2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    .line 1388
    iget-object v0, p0, Lcom/amap/api/a/b$c;->d:Lcom/amap/api/a/b;

    invoke-static {v0}, Lcom/amap/api/a/b;->e(Lcom/amap/api/a/b;)Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v0

    float-to-int v1, v2

    float-to-int v2, v3

    invoke-virtual {v0, v1, v2, v5}, Lcom/autonavi/amap/mapcore/MapProjection;->win2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    .line 1390
    iget v0, v5, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget v1, v4, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    sub-float/2addr v0, v1

    .line 1391
    iget v1, v5, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    iget v2, v4, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    sub-float/2addr v1, v2

    .line 1392
    iget-object v2, p0, Lcom/amap/api/a/b$c;->d:Lcom/amap/api/a/b;

    invoke-static {v2}, Lcom/amap/api/a/b;->e(Lcom/amap/api/a/b;)Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapCenter(Lcom/autonavi/amap/mapcore/FPoint;)V

    .line 1394
    iget-object v2, p0, Lcom/amap/api/a/b$c;->d:Lcom/amap/api/a/b;

    invoke-static {v2}, Lcom/amap/api/a/b;->e(Lcom/amap/api/a/b;)Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v2

    iget v3, v6, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    sub-float v0, v3, v0

    iget v3, v6, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    sub-float v1, v3, v1

    iget-object v3, p0, Lcom/amap/api/a/b$c;->b:Lcom/autonavi/amap/mapcore/IPoint;

    invoke-virtual {v2, v0, v1, v3}, Lcom/autonavi/amap/mapcore/MapProjection;->map2Geo(FFLcom/autonavi/amap/mapcore/IPoint;)V

    .line 1398
    iget-object v0, p0, Lcom/amap/api/a/b$c;->c:Lcom/amap/api/a/h;

    iget-object v1, p0, Lcom/amap/api/a/b$c;->b:Lcom/autonavi/amap/mapcore/IPoint;

    iput-object v1, v0, Lcom/amap/api/a/h;->p:Lcom/autonavi/amap/mapcore/IPoint;

    .line 1399
    iget-object v0, p0, Lcom/amap/api/a/b$c;->d:Lcom/amap/api/a/b;

    iget-object v0, v0, Lcom/amap/api/a/b;->a:Lcom/amap/api/a/aa;

    iget-object v1, p0, Lcom/amap/api/a/b$c;->c:Lcom/amap/api/a/h;

    invoke-virtual {v0, v1}, Lcom/amap/api/a/aa;->a(Lcom/amap/api/a/h;)V

    goto/16 :goto_0

    .line 1371
    :catch_0
    move-exception v0

    .line 1372
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter

    .prologue
    .line 1411
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    .line 1415
    iget-object v0, p0, Lcom/amap/api/a/b$c;->d:Lcom/amap/api/a/b;

    invoke-static {v0}, Lcom/amap/api/a/b;->q(Lcom/amap/api/a/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1416
    iget-object v0, p0, Lcom/amap/api/a/b$c;->d:Lcom/amap/api/a/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amap/api/a/b;->b(Lcom/amap/api/a/b;Z)Z

    .line 1476
    :cond_0
    :goto_0
    return v7

    .line 1422
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/a/b$c;->d:Lcom/amap/api/a/b;

    invoke-static {v0}, Lcom/amap/api/a/b;->r(Lcom/amap/api/a/b;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1425
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/amap/api/a/b$c;->d:Lcom/amap/api/a/b;

    invoke-static {v1}, Lcom/amap/api/a/b;->r(Lcom/amap/api/a/b;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/a/b$c;->d:Lcom/amap/api/a/b;

    invoke-static {v2}, Lcom/amap/api/a/b;->r(Lcom/amap/api/a/b;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/amap/api/a/b$c;->d:Lcom/amap/api/a/b;

    invoke-static {v3}, Lcom/amap/api/a/b;->r(Lcom/amap/api/a/b;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/amap/api/a/b$c;->d:Lcom/amap/api/a/b;

    invoke-static {v4}, Lcom/amap/api/a/b;->r(Lcom/amap/api/a/b;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1429
    iget-object v1, p0, Lcom/amap/api/a/b$c;->d:Lcom/amap/api/a/b;

    invoke-static {v1}, Lcom/amap/api/a/b;->m(Lcom/amap/api/a/b;)Lcom/amap/api/a/ab;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/amap/api/a/ab;->a(Landroid/graphics/Rect;II)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/a/b$c;->d:Lcom/amap/api/a/b;

    invoke-static {v0}, Lcom/amap/api/a/b;->s(Lcom/amap/api/a/b;)Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1431
    iget-object v0, p0, Lcom/amap/api/a/b$c;->d:Lcom/amap/api/a/b;

    invoke-static {v0}, Lcom/amap/api/a/b;->m(Lcom/amap/api/a/b;)Lcom/amap/api/a/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/a/ab;->c()Lcom/amap/api/a/q;

    move-result-object v0

    .line 1433
    invoke-interface {v0}, Lcom/amap/api/a/q;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1436
    new-instance v1, Lcom/amap/api/maps/model/Marker;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/Marker;-><init>(Lcom/amap/api/a/q;)V

    .line 1437
    iget-object v0, p0, Lcom/amap/api/a/b$c;->d:Lcom/amap/api/a/b;

    invoke-static {v0}, Lcom/amap/api/a/b;->s(Lcom/amap/api/a/b;)Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;->onInfoWindowClick(Lcom/amap/api/maps/model/Marker;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1472
    :catch_0
    move-exception v0

    .line 1473
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1441
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/a/b$c;->d:Lcom/amap/api/a/b;

    invoke-static {v0}, Lcom/amap/api/a/b;->m(Lcom/amap/api/a/b;)Lcom/amap/api/a/ab;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amap/api/a/ab;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1442
    if-eqz v0, :cond_4

    .line 1443
    iget-object v0, p0, Lcom/amap/api/a/b$c;->d:Lcom/amap/api/a/b;

    invoke-static {v0}, Lcom/amap/api/a/b;->m(Lcom/amap/api/a/b;)Lcom/amap/api/a/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/a/ab;->c()Lcom/amap/api/a/q;

    move-result-object v6

    .line 1444
    invoke-interface {v6}, Lcom/amap/api/a/q;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v6, :cond_0

    .line 1447
    new-instance v0, Lcom/amap/api/maps/model/Marker;

    invoke-direct {v0, v6}, Lcom/amap/api/maps/model/Marker;-><init>(Lcom/amap/api/a/q;)V

    .line 1448
    iget-object v1, p0, Lcom/amap/api/a/b$c;->d:Lcom/amap/api/a/b;

    invoke-static {v1}, Lcom/amap/api/a/b;->t(Lcom/amap/api/a/b;)Lcom/amap/api/maps/AMap$OnMarkerClickListener;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1449
    iget-object v1, p0, Lcom/amap/api/a/b$c;->d:Lcom/amap/api/a/b;

    invoke-static {v1}, Lcom/amap/api/a/b;->t(Lcom/amap/api/a/b;)Lcom/amap/api/maps/AMap$OnMarkerClickListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amap/api/maps/AMap$OnMarkerClickListener;->onMarkerClick(Lcom/amap/api/maps/model/Marker;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 1451
    if-nez v0, :cond_3

    .line 1453
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/a/b$c;->d:Lcom/amap/api/a/b;

    invoke-virtual {v0, v6}, Lcom/amap/api/a/b;->a(Lcom/amap/api/a/q;)V

    .line 1454
    invoke-interface {v6}, Lcom/amap/api/a/q;->c()Lcom/amap/api/maps/model/LatLng;

    move-result-object v3

    .line 1455
    new-instance v5, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v5}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 1456
    iget-object v0, p0, Lcom/amap/api/a/b$c;->d:Lcom/amap/api/a/b;

    iget-wide v1, v3, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v3, v3, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/a/b;->a(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 1457
    iget-object v0, p0, Lcom/amap/api/a/b$c;->d:Lcom/amap/api/a/b;

    invoke-static {v5}, Lcom/amap/api/a/h;->a(Lcom/autonavi/amap/mapcore/IPoint;)Lcom/amap/api/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/a/b;->a(Lcom/amap/api/a/h;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1464
    :cond_3
    :goto_1
    :try_start_3
    iget-object v0, p0, Lcom/amap/api/a/b$c;->d:Lcom/amap/api/a/b;

    invoke-static {v0}, Lcom/amap/api/a/b;->m(Lcom/amap/api/a/b;)Lcom/amap/api/a/ab;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/amap/api/a/ab;->c(Lcom/amap/api/a/q;)V

    goto/16 :goto_0

    .line 1459
    :catch_1
    move-exception v0

    .line 1460
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1467
    :cond_4
    iget-object v0, p0, Lcom/amap/api/a/b$c;->d:Lcom/amap/api/a/b;

    invoke-static {v0}, Lcom/amap/api/a/b;->u(Lcom/amap/api/a/b;)Lcom/amap/api/maps/AMap$OnMapClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1468
    new-instance v0, Lcom/autonavi/amap/mapcore/DPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/DPoint;-><init>()V

    .line 1469
    iget-object v1, p0, Lcom/amap/api/a/b$c;->d:Lcom/amap/api/a/b;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/amap/api/a/b;->a(IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 1470
    iget-object v1, p0, Lcom/amap/api/a/b$c;->d:Lcom/amap/api/a/b;

    invoke-static {v1}, Lcom/amap/api/a/b;->u(Lcom/amap/api/a/b;)Lcom/amap/api/maps/AMap$OnMapClickListener;

    move-result-object v1

    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    iget-wide v3, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v5, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-interface {v1, v2}, Lcom/amap/api/maps/AMap$OnMapClickListener;->onMapClick(Lcom/amap/api/maps/model/LatLng;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method
