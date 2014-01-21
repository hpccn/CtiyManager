.class Lcom/amap/api/a/a;
.super Lcom/autonavi/amap/mapcore/BaseMapCallImplement;
.source "AMapCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/a/a$2;
    }
.end annotation


# instance fields
.field a:Lcom/autonavi/amap/mapcore/IPoint;

.field b:F

.field c:F

.field d:F

.field e:Lcom/autonavi/amap/mapcore/IPoint;

.field private f:Lcom/amap/api/a/b;

.field private final g:Landroid/os/Handler;

.field private h:F


# direct methods
.method public constructor <init>(Lcom/amap/api/a/b;)V
    .locals 1
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;-><init>()V

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/amap/api/a/a;->g:Landroid/os/Handler;

    .line 54
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/amap/api/a/a;->h:F

    .line 105
    new-instance v0, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    iput-object v0, p0, Lcom/amap/api/a/a;->a:Lcom/autonavi/amap/mapcore/IPoint;

    .line 109
    new-instance v0, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    iput-object v0, p0, Lcom/amap/api/a/a;->e:Lcom/autonavi/amap/mapcore/IPoint;

    .line 34
    iput-object p1, p0, Lcom/amap/api/a/a;->f:Lcom/amap/api/a/b;

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/amap/api/a/a;)Lcom/amap/api/a/b;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/amap/api/a/a;->f:Lcom/amap/api/a/b;

    return-object v0
.end method

.method private b(Lcom/amap/api/a/h;)V
    .locals 21
    .parameter

    .prologue
    .line 165
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/a/a;->f:Lcom/amap/api/a/b;

    invoke-virtual {v3}, Lcom/amap/api/a/b;->b()Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v16

    .line 166
    invoke-virtual/range {v16 .. v16}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapAngle()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    invoke-virtual/range {v16 .. v16}, Lcom/autonavi/amap/mapcore/MapProjection;->getCameraHeaderAngle()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    .line 168
    :goto_0
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/amap/api/a/h;->i:Lcom/amap/api/maps/model/LatLngBounds;

    .line 169
    move-object/from16 v0, p1

    iget v0, v0, Lcom/amap/api/a/h;->k:I

    move/from16 v17, v0

    .line 170
    move-object/from16 v0, p1

    iget v0, v0, Lcom/amap/api/a/h;->l:I

    move/from16 v18, v0

    .line 171
    move-object/from16 v0, p1

    iget v0, v0, Lcom/amap/api/a/h;->j:I

    move/from16 v19, v0

    .line 172
    if-nez v3, :cond_4

    .line 173
    new-instance v20, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct/range {v20 .. v20}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 174
    iget-object v3, v12, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v3, v3, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v5, v12, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v5, v5, Lcom/amap/api/maps/model/LatLng;->longitude:D

    add-double/2addr v3, v5

    const-wide/high16 v5, 0x4000

    div-double/2addr v3, v5

    iget-object v5, v12, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v5, v5, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-object v7, v12, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v7, v7, Lcom/amap/api/maps/model/LatLng;->latitude:D

    add-double/2addr v5, v7

    const-wide/high16 v7, 0x4000

    div-double/2addr v5, v7

    move-object/from16 v0, v20

    invoke-static {v3, v4, v5, v6, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 179
    invoke-virtual/range {v16 .. v16}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapZoomer()F

    move-result v15

    .line 180
    new-instance v8, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v8}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 181
    new-instance v14, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v14}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 182
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/a/a;->f:Lcom/amap/api/a/b;

    iget-object v4, v12, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v4, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-object v6, v12, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v6, v6, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-virtual/range {v3 .. v8}, Lcom/amap/api/a/b;->b(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/amap/api/a/a;->f:Lcom/amap/api/a/b;

    iget-object v3, v12, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v10, v3, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-object v3, v12, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v12, v3, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-virtual/range {v9 .. v14}, Lcom/amap/api/a/b;->b(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 187
    iget v3, v8, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v4, v14, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    sub-int/2addr v3, v4

    .line 188
    iget v4, v14, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v5, v8, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int/2addr v4, v5

    .line 190
    if-nez v3, :cond_2

    if-nez v4, :cond_2

    .line 219
    :goto_1
    return-void

    .line 166
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 194
    :cond_2
    int-to-float v3, v3

    mul-int/lit8 v5, v19, 0x2

    sub-int v5, v17, v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    .line 196
    int-to-float v4, v4

    mul-int/lit8 v5, v19, 0x2

    sub-int v5, v18, v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 199
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 201
    const/high16 v4, 0x3f80

    cmpl-float v4, v3, v4

    if-lez v4, :cond_3

    .line 202
    invoke-static {v3}, Lcom/amap/api/a/b/g;->c(F)I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v15, v3

    .line 203
    invoke-static {v3}, Lcom/amap/api/a/b/g;->b(F)F

    move-result v3

    .line 209
    :goto_2
    move-object/from16 v0, v20

    iget v4, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    move-object/from16 v0, v20

    iget v5, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Lcom/autonavi/amap/mapcore/MapProjection;->setGeoCenter(II)V

    .line 210
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapZoomer(F)V

    goto :goto_1

    .line 204
    :cond_3
    float-to-double v4, v3

    const-wide/high16 v6, 0x3fe0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_5

    .line 205
    const/high16 v4, 0x3f80

    div-float v3, v4, v3

    invoke-static {v3}, Lcom/amap/api/a/b/g;->c(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v15

    const/high16 v4, 0x3f80

    sub-float/2addr v3, v4

    .line 207
    invoke-static {v3}, Lcom/amap/api/a/b/g;->b(F)F

    move-result v3

    goto :goto_2

    .line 213
    :cond_4
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 214
    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v12, v0, v1, v2}, Lcom/amap/api/a/h;->a(Lcom/amap/api/maps/model/LatLngBounds;III)Lcom/amap/api/a/h;

    move-result-object v4

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 216
    const/16 v4, 0xc

    iput v4, v3, Landroid/os/Message;->what:I

    .line 217
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amap/api/a/a;->f:Lcom/amap/api/a/b;

    iget-object v4, v4, Lcom/amap/api/a/b;->e:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_5
    move v3, v15

    goto :goto_2
.end method


# virtual methods
.method public OnMapDestory(Ljavax/microedition/khronos/opengles/GL10;Lcom/autonavi/amap/mapcore/MapCore;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 383
    invoke-super {p0, p2}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->OnMapDestory(Lcom/autonavi/amap/mapcore/MapCore;)V

    .line 384
    return-void
.end method

.method public OnMapLoaderError(I)V
    .locals 3
    .parameter

    .prologue
    .line 418
    const-string v0, "AMAPAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38 OnMapLoaderError code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const-string v0, "MapCore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnMapLoaderError="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x70

    invoke-static {v0, v1, v2}, Lcom/amap/api/a/b/e;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 421
    return-void
.end method

.method public OnMapProcessEvent(Lcom/autonavi/amap/mapcore/MapCore;)V
    .locals 12
    .parameter

    .prologue
    const/16 v1, 0x7da

    const/16 v11, 0x7db

    const/4 v3, 0x0

    .line 58
    iget-object v0, p0, Lcom/amap/api/a/a;->f:Lcom/amap/api/a/b;

    invoke-virtual {v0}, Lcom/amap/api/a/b;->x()F

    move-result v10

    .line 59
    invoke-virtual {p0, p1}, Lcom/amap/api/a/a;->a(Lcom/autonavi/amap/mapcore/MapCore;)V

    .line 61
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amap/api/a/a;->f:Lcom/amap/api/a/b;

    iget-object v0, v0, Lcom/amap/api/a/b;->a:Lcom/amap/api/a/aa;

    invoke-virtual {v0}, Lcom/amap/api/a/aa;->a()Lcom/amap/api/a/z;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 62
    iget v0, v6, Lcom/amap/api/a/z;->a:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 63
    invoke-virtual {v6}, Lcom/amap/api/a/z;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    const/4 v2, 0x4

    move-object v0, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/amap/mapcore/MapCore;->setParameter(IIIII)V

    .line 71
    :cond_1
    :goto_1
    iget v0, v6, Lcom/amap/api/a/z;->a:I

    if-ne v0, v11, :cond_0

    .line 72
    iget-boolean v0, v6, Lcom/amap/api/a/z;->b:Z

    if-eqz v0, :cond_3

    .line 73
    const/4 v6, 0x3

    move-object v4, p1

    move v5, v11

    move v7, v3

    move v8, v3

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/autonavi/amap/mapcore/MapCore;->setParameter(IIIII)V

    goto :goto_0

    :cond_2
    move-object v0, p1

    move v2, v3

    move v4, v3

    move v5, v3

    .line 67
    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/amap/mapcore/MapCore;->setParameter(IIIII)V

    goto :goto_1

    .line 78
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/a/a;->f:Lcom/amap/api/a/b;

    invoke-virtual {v0}, Lcom/amap/api/a/b;->o()I

    move-result v5

    .line 79
    const/4 v0, -0x1

    if-eq v5, v0, :cond_4

    .line 80
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Lcom/autonavi/amap/mapcore/MapCore;->setParameter(IIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 83
    :cond_4
    const/16 v5, 0x7db

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p1

    :try_start_1
    invoke-virtual/range {v4 .. v9}, Lcom/autonavi/amap/mapcore/MapCore;->setParameter(IIIII)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 93
    :cond_5
    iget-object v0, p0, Lcom/amap/api/a/a;->f:Lcom/amap/api/a/b;

    invoke-virtual {v0}, Lcom/amap/api/a/b;->b()Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/autonavi/amap/mapcore/MapCore;->setMapstate(Lcom/autonavi/amap/mapcore/MapProjection;)V

    .line 94
    iget v0, p0, Lcom/amap/api/a/a;->b:F

    iget-object v1, p0, Lcom/amap/api/a/a;->f:Lcom/amap/api/a/b;

    invoke-virtual {v1}, Lcom/amap/api/a/b;->l()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_6

    iget v0, p0, Lcom/amap/api/a/a;->h:F

    cmpl-float v0, v0, v10

    if-eqz v0, :cond_6

    .line 95
    iget-object v0, p0, Lcom/amap/api/a/a;->g:Landroid/os/Handler;

    new-instance v1, Lcom/amap/api/a/a$1;

    invoke-direct {v1, p0}, Lcom/amap/api/a/a$1;-><init>(Lcom/amap/api/a/a;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 102
    :cond_6
    iput v10, p0, Lcom/amap/api/a/a;->h:F

    .line 103
    return-void
.end method

.method public OnMapReferencechanged(Lcom/autonavi/amap/mapcore/MapCore;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 391
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/a/a;->f:Lcom/amap/api/a/b;

    invoke-virtual {v0}, Lcom/amap/api/a/b;->s()Lcom/amap/api/a/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/a/w;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/amap/api/a/a;->f:Lcom/amap/api/a/b;

    invoke-virtual {v0}, Lcom/amap/api/a/b;->d()V

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/amap/api/a/a;->f:Lcom/amap/api/a/b;

    invoke-virtual {v0}, Lcom/amap/api/a/b;->s()Lcom/amap/api/a/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/a/w;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 395
    iget-object v0, p0, Lcom/amap/api/a/a;->f:Lcom/amap/api/a/b;

    invoke-virtual {v0}, Lcom/amap/api/a/b;->e()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amap/api/a/a;->f:Lcom/amap/api/a/b;

    iget-object v0, v0, Lcom/amap/api/a/b;->d:Lcom/amap/api/a/m;

    invoke-virtual {v0}, Lcom/amap/api/a/m;->d()V

    .line 401
    return-void

    .line 397
    :catch_0
    move-exception v0

    .line 398
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public OnMapSufaceChanged(Ljavax/microedition/khronos/opengles/GL10;Lcom/autonavi/amap/mapcore/MapCore;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    return-void
.end method

.method public OnMapSurfaceCreate(Ljavax/microedition/khronos/opengles/GL10;Lcom/autonavi/amap/mapcore/MapCore;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-super {p0, p2}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->OnMapSurfaceCreate(Lcom/autonavi/amap/mapcore/MapCore;)V

    .line 40
    return-void
.end method

.method public OnMapSurfaceRenderer(Ljavax/microedition/khronos/opengles/GL10;Lcom/autonavi/amap/mapcore/MapCore;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    return-void
.end method

.method a(Lcom/amap/api/a/h;)V
    .locals 16
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 229
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amap/api/a/a;->f:Lcom/amap/api/a/b;

    invoke-virtual {v1}, Lcom/amap/api/a/b;->a()Lcom/autonavi/amap/mapcore/MapCore;

    move-result-object v1

    .line 231
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/a/a;->f:Lcom/amap/api/a/b;

    invoke-virtual {v2}, Lcom/amap/api/a/b;->b()Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v7

    .line 232
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/a/a;->f:Lcom/amap/api/a/b;

    move-object/from16 v0, p1

    iget v3, v0, Lcom/amap/api/a/h;->d:F

    invoke-virtual {v2, v3}, Lcom/amap/api/a/b;->a(F)F

    move-result v2

    move-object/from16 v0, p1

    iput v2, v0, Lcom/amap/api/a/h;->d:F

    .line 234
    move-object/from16 v0, p1

    iget v2, v0, Lcom/amap/api/a/h;->f:F

    invoke-static {v2}, Lcom/amap/api/a/b/g;->a(F)F

    move-result v2

    move-object/from16 v0, p1

    iput v2, v0, Lcom/amap/api/a/h;->f:F

    .line 236
    sget-object v2, Lcom/amap/api/a/a$2;->a:[I

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/amap/api/a/h;->a:Lcom/amap/api/a/h$a;

    invoke-virtual {v3}, Lcom/amap/api/a/h$a;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 376
    invoke-virtual {v1, v7}, Lcom/autonavi/amap/mapcore/MapCore;->setMapstate(Lcom/autonavi/amap/mapcore/MapProjection;)V

    .line 379
    :goto_0
    return-void

    .line 238
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/amap/api/a/h;->p:Lcom/autonavi/amap/mapcore/IPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/amap/api/a/h;->p:Lcom/autonavi/amap/mapcore/IPoint;

    iget v3, v3, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-virtual {v7, v2, v3}, Lcom/autonavi/amap/mapcore/MapProjection;->setGeoCenter(II)V

    .line 240
    invoke-virtual {v1, v7}, Lcom/autonavi/amap/mapcore/MapCore;->setMapstate(Lcom/autonavi/amap/mapcore/MapProjection;)V

    goto :goto_0

    .line 244
    :pswitch_1
    move-object/from16 v0, p1

    iget v2, v0, Lcom/amap/api/a/h;->g:F

    invoke-virtual {v7, v2}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapAngle(F)V

    .line 245
    invoke-virtual {v1, v7}, Lcom/autonavi/amap/mapcore/MapCore;->setMapstate(Lcom/autonavi/amap/mapcore/MapProjection;)V

    goto :goto_0

    .line 249
    :pswitch_2
    move-object/from16 v0, p1

    iget v2, v0, Lcom/amap/api/a/h;->f:F

    invoke-virtual {v7, v2}, Lcom/autonavi/amap/mapcore/MapProjection;->setCameraHeaderAngle(F)V

    .line 250
    invoke-virtual {v1, v7}, Lcom/autonavi/amap/mapcore/MapCore;->setMapstate(Lcom/autonavi/amap/mapcore/MapProjection;)V

    goto :goto_0

    .line 254
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/amap/api/a/h;->p:Lcom/autonavi/amap/mapcore/IPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/amap/api/a/h;->p:Lcom/autonavi/amap/mapcore/IPoint;

    iget v3, v3, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-virtual {v7, v2, v3}, Lcom/autonavi/amap/mapcore/MapProjection;->setGeoCenter(II)V

    .line 256
    move-object/from16 v0, p1

    iget v2, v0, Lcom/amap/api/a/h;->d:F

    invoke-virtual {v7, v2}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapZoomer(F)V

    .line 257
    invoke-virtual {v1, v7}, Lcom/autonavi/amap/mapcore/MapCore;->setMapstate(Lcom/autonavi/amap/mapcore/MapProjection;)V

    goto :goto_0

    .line 261
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/amap/api/a/h;->h:Lcom/amap/api/maps/model/CameraPosition;

    iget-object v2, v2, Lcom/amap/api/maps/model/CameraPosition;->target:Lcom/amap/api/maps/model/LatLng;

    .line 262
    new-instance v3, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v3}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 263
    iget-wide v4, v2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v8, v2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5, v8, v9, v3}, Lcom/autonavi/amap/mapcore/MapProjection;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 265
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/amap/api/a/h;->h:Lcom/amap/api/maps/model/CameraPosition;

    iget v2, v2, Lcom/amap/api/maps/model/CameraPosition;->zoom:F

    .line 266
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/amap/api/a/h;->h:Lcom/amap/api/maps/model/CameraPosition;

    iget v4, v4, Lcom/amap/api/maps/model/CameraPosition;->bearing:F

    .line 267
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/amap/api/a/h;->h:Lcom/amap/api/maps/model/CameraPosition;

    iget v5, v5, Lcom/amap/api/maps/model/CameraPosition;->tilt:F

    .line 269
    iget v6, v3, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v3, v3, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-virtual {v7, v6, v3}, Lcom/autonavi/amap/mapcore/MapProjection;->setGeoCenter(II)V

    .line 270
    invoke-virtual {v7, v2}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapZoomer(F)V

    .line 271
    invoke-virtual {v7, v4}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapAngle(F)V

    .line 272
    invoke-virtual {v7, v5}, Lcom/autonavi/amap/mapcore/MapProjection;->setCameraHeaderAngle(F)V

    .line 273
    invoke-virtual {v1, v7}, Lcom/autonavi/amap/mapcore/MapCore;->setMapstate(Lcom/autonavi/amap/mapcore/MapProjection;)V

    goto :goto_0

    .line 277
    :pswitch_5
    invoke-virtual {v7}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapZoomer()F

    move-result v2

    const/high16 v3, 0x3f80

    add-float/2addr v2, v3

    .line 278
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/a/a;->f:Lcom/amap/api/a/b;

    invoke-virtual {v3, v2}, Lcom/amap/api/a/b;->a(F)F

    move-result v2

    .line 279
    invoke-virtual {v7, v2}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapZoomer(F)V

    .line 280
    invoke-virtual {v1, v7}, Lcom/autonavi/amap/mapcore/MapCore;->setMapstate(Lcom/autonavi/amap/mapcore/MapProjection;)V

    goto/16 :goto_0

    .line 284
    :pswitch_6
    invoke-virtual {v7}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapZoomer()F

    move-result v2

    const/high16 v3, 0x3f80

    sub-float/2addr v2, v3

    .line 285
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/a/a;->f:Lcom/amap/api/a/b;

    invoke-virtual {v3, v2}, Lcom/amap/api/a/b;->a(F)F

    move-result v2

    .line 286
    invoke-virtual {v7, v2}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapZoomer(F)V

    .line 287
    invoke-virtual {v1, v7}, Lcom/autonavi/amap/mapcore/MapCore;->setMapstate(Lcom/autonavi/amap/mapcore/MapProjection;)V

    goto/16 :goto_0

    .line 291
    :pswitch_7
    move-object/from16 v0, p1

    iget v2, v0, Lcom/amap/api/a/h;->d:F

    .line 292
    invoke-virtual {v7, v2}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapZoomer(F)V

    .line 293
    invoke-virtual {v1, v7}, Lcom/autonavi/amap/mapcore/MapCore;->setMapstate(Lcom/autonavi/amap/mapcore/MapProjection;)V

    goto/16 :goto_0

    .line 297
    :pswitch_8
    move-object/from16 v0, p1

    iget v2, v0, Lcom/amap/api/a/h;->e:F

    .line 298
    invoke-virtual {v7}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapZoomer()F

    move-result v3

    add-float/2addr v3, v2

    .line 299
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/amap/api/a/h;->m:Landroid/graphics/Point;

    .line 301
    if-eqz v4, :cond_0

    .line 308
    new-instance v5, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v5}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 309
    new-instance v6, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v6}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 310
    invoke-virtual {v7, v6}, Lcom/autonavi/amap/mapcore/MapProjection;->getGeoCenter(Lcom/autonavi/amap/mapcore/IPoint;)V

    .line 311
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/amap/api/a/a;->f:Lcom/amap/api/a/b;

    iget v9, v4, Landroid/graphics/Point;->x:I

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v8, v9, v4, v5}, Lcom/amap/api/a/b;->a(IILcom/autonavi/amap/mapcore/IPoint;)V

    .line 312
    iget v4, v6, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v8, v5, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    sub-int/2addr v4, v8

    .line 313
    iget v6, v6, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v8, v5, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int/2addr v6, v8

    .line 314
    iget v8, v5, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    int-to-double v8, v8

    int-to-double v10, v4

    const-wide/high16 v12, 0x4000

    float-to-double v14, v2

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    div-double/2addr v10, v12

    add-double/2addr v8, v10

    double-to-int v4, v8

    .line 315
    iget v5, v5, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    int-to-double v8, v5

    int-to-double v5, v6

    const-wide/high16 v10, 0x4000

    float-to-double v12, v2

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    div-double/2addr v5, v10

    add-double/2addr v5, v8

    double-to-int v2, v5

    .line 316
    invoke-virtual {v7, v4, v2}, Lcom/autonavi/amap/mapcore/MapProjection;->setGeoCenter(II)V

    .line 317
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/a/a;->f:Lcom/amap/api/a/b;

    invoke-virtual {v2, v3}, Lcom/amap/api/a/b;->a(F)F

    move-result v2

    .line 318
    invoke-virtual {v7, v2}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapZoomer(F)V

    .line 323
    :goto_1
    invoke-virtual {v1, v7}, Lcom/autonavi/amap/mapcore/MapCore;->setMapstate(Lcom/autonavi/amap/mapcore/MapProjection;)V

    goto/16 :goto_0

    .line 320
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/a/a;->f:Lcom/amap/api/a/b;

    invoke-virtual {v2, v3}, Lcom/amap/api/a/b;->a(F)F

    move-result v2

    .line 321
    invoke-virtual {v7, v2}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapZoomer(F)V

    goto :goto_1

    .line 327
    :pswitch_9
    move-object/from16 v0, p1

    iget v2, v0, Lcom/amap/api/a/h;->b:F

    .line 328
    move-object/from16 v0, p1

    iget v3, v0, Lcom/amap/api/a/h;->c:F

    .line 329
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amap/api/a/a;->f:Lcom/amap/api/a/b;

    invoke-virtual {v4}, Lcom/amap/api/a/b;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v2, v4

    .line 330
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amap/api/a/a;->f:Lcom/amap/api/a/b;

    invoke-virtual {v4}, Lcom/amap/api/a/b;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 331
    new-instance v4, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v4}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 332
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amap/api/a/a;->f:Lcom/amap/api/a/b;

    float-to-int v2, v2

    float-to-int v3, v3

    invoke-virtual {v5, v2, v3, v4}, Lcom/amap/api/a/b;->a(IILcom/autonavi/amap/mapcore/IPoint;)V

    .line 333
    iget v2, v4, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v3, v4, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-virtual {v7, v2, v3}, Lcom/autonavi/amap/mapcore/MapProjection;->setGeoCenter(II)V

    .line 334
    invoke-virtual {v1, v7}, Lcom/autonavi/amap/mapcore/MapCore;->setMapstate(Lcom/autonavi/amap/mapcore/MapProjection;)V

    goto/16 :goto_0

    .line 338
    :pswitch_a
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/amap/api/a/h;->i:Lcom/amap/api/maps/model/LatLngBounds;

    .line 339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/a/a;->f:Lcom/amap/api/a/b;

    invoke-virtual {v2}, Lcom/amap/api/a/b;->getWidth()I

    move-result v2

    .line 340
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/a/a;->f:Lcom/amap/api/a/b;

    invoke-virtual {v3}, Lcom/amap/api/a/b;->getHeight()I

    move-result v3

    .line 341
    move-object/from16 v0, p1

    iget v4, v0, Lcom/amap/api/a/h;->j:I

    .line 342
    invoke-static {v1, v2, v3, v4}, Lcom/amap/api/a/h;->a(Lcom/amap/api/maps/model/LatLngBounds;III)Lcom/amap/api/a/h;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/amap/api/a/a;->b(Lcom/amap/api/a/h;)V

    goto/16 :goto_0

    .line 347
    :pswitch_b
    invoke-direct/range {p0 .. p1}, Lcom/amap/api/a/a;->b(Lcom/amap/api/a/h;)V

    goto/16 :goto_0

    .line 351
    :pswitch_c
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/amap/api/a/h;->p:Lcom/autonavi/amap/mapcore/IPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/amap/api/a/h;->p:Lcom/autonavi/amap/mapcore/IPoint;

    iget v3, v3, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-virtual {v7, v2, v3}, Lcom/autonavi/amap/mapcore/MapProjection;->setGeoCenter(II)V

    .line 353
    move-object/from16 v0, p1

    iget v2, v0, Lcom/amap/api/a/h;->d:F

    invoke-virtual {v7, v2}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapZoomer(F)V

    .line 354
    move-object/from16 v0, p1

    iget v2, v0, Lcom/amap/api/a/h;->g:F

    invoke-virtual {v7, v2}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapAngle(F)V

    .line 355
    move-object/from16 v0, p1

    iget v2, v0, Lcom/amap/api/a/h;->f:F

    invoke-virtual {v7, v2}, Lcom/autonavi/amap/mapcore/MapProjection;->setCameraHeaderAngle(F)V

    .line 356
    invoke-virtual {v1, v7}, Lcom/autonavi/amap/mapcore/MapCore;->setMapstate(Lcom/autonavi/amap/mapcore/MapProjection;)V

    goto/16 :goto_0

    .line 360
    :pswitch_d
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/amap/api/a/h;->n:Z

    if-eqz v2, :cond_1

    .line 361
    const/16 v2, 0x7db

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/autonavi/amap/mapcore/MapCore;->setParameter(IIIII)V

    .line 372
    :goto_2
    invoke-virtual {v1, v7}, Lcom/autonavi/amap/mapcore/MapCore;->setMapstate(Lcom/autonavi/amap/mapcore/MapProjection;)V

    goto/16 :goto_0

    .line 364
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/a/a;->f:Lcom/amap/api/a/b;

    invoke-virtual {v2}, Lcom/amap/api/a/b;->o()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 365
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/a/a;->f:Lcom/amap/api/a/b;

    invoke-virtual {v2}, Lcom/amap/api/a/b;->o()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/autonavi/amap/mapcore/MapCore;->setParameter(IIIII)V

    goto :goto_2

    .line 368
    :cond_2
    const/16 v2, 0x7db

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/autonavi/amap/mapcore/MapCore;->setParameter(IIIII)V

    goto :goto_2

    .line 236
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method a(Lcom/autonavi/amap/mapcore/MapCore;)V
    .locals 10
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/amap/api/a/a;->f:Lcom/amap/api/a/b;

    invoke-virtual {v0}, Lcom/amap/api/a/b;->b()Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v2

    .line 113
    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapZoomer()F

    move-result v3

    .line 114
    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapProjection;->getCameraHeaderAngle()F

    move-result v4

    .line 115
    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapAngle()F

    move-result v5

    .line 116
    iget-object v0, p0, Lcom/amap/api/a/a;->e:Lcom/autonavi/amap/mapcore/IPoint;

    invoke-virtual {v2, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->getGeoCenter(Lcom/autonavi/amap/mapcore/IPoint;)V

    .line 119
    const/4 v1, 0x0

    .line 120
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amap/api/a/a;->f:Lcom/amap/api/a/b;

    iget-object v0, v0, Lcom/amap/api/a/b;->a:Lcom/amap/api/a/aa;

    invoke-virtual {v0}, Lcom/amap/api/a/aa;->c()Lcom/amap/api/a/h;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 122
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/amap/api/a/a;->a(Lcom/amap/api/a/h;)V

    .line 123
    iget-boolean v0, v0, Lcom/amap/api/a/h;->o:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 161
    :cond_1
    :goto_1
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 131
    :cond_2
    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapZoomer()F

    move-result v0

    iput v0, p0, Lcom/amap/api/a/a;->b:F

    .line 132
    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapProjection;->getCameraHeaderAngle()F

    move-result v0

    iput v0, p0, Lcom/amap/api/a/a;->c:F

    .line 133
    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapAngle()F

    move-result v0

    iput v0, p0, Lcom/amap/api/a/a;->d:F

    .line 134
    iget-object v0, p0, Lcom/amap/api/a/a;->a:Lcom/autonavi/amap/mapcore/IPoint;

    invoke-virtual {v2, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->getGeoCenter(Lcom/autonavi/amap/mapcore/IPoint;)V

    .line 135
    iget v0, p0, Lcom/amap/api/a/a;->b:F

    cmpl-float v0, v3, v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/amap/api/a/a;->c:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_3

    iget v0, p0, Lcom/amap/api/a/a;->d:F

    cmpl-float v0, v0, v5

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/a/a;->a:Lcom/autonavi/amap/mapcore/IPoint;

    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget-object v2, p0, Lcom/amap/api/a/a;->e:Lcom/autonavi/amap/mapcore/IPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/amap/api/a/a;->a:Lcom/autonavi/amap/mapcore/IPoint;

    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget-object v2, p0, Lcom/amap/api/a/a;->e:Lcom/autonavi/amap/mapcore/IPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    if-eq v0, v2, :cond_7

    .line 137
    :cond_3
    const/4 v0, 0x1

    .line 141
    :goto_2
    if-eqz v0, :cond_4

    .line 142
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/a/a;->f:Lcom/amap/api/a/b;

    invoke-virtual {v0}, Lcom/amap/api/a/b;->u()Lcom/amap/api/maps/AMap$OnCameraChangeListener;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_4

    .line 145
    new-instance v0, Lcom/autonavi/amap/mapcore/DPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/DPoint;-><init>()V

    .line 146
    iget-object v1, p0, Lcom/amap/api/a/a;->a:Lcom/autonavi/amap/mapcore/IPoint;

    iget v1, v1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget-object v2, p0, Lcom/amap/api/a/a;->a:Lcom/autonavi/amap/mapcore/IPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-static {v1, v2, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->geo2LonLat(IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 147
    new-instance v1, Lcom/amap/api/maps/model/CameraPosition;

    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    iget-wide v6, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v8, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-direct {v2, v6, v7, v8, v9}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    iget v0, p0, Lcom/amap/api/a/a;->b:F

    iget v6, p0, Lcom/amap/api/a/a;->c:F

    iget v7, p0, Lcom/amap/api/a/a;->d:F

    invoke-direct {v1, v2, v0, v6, v7}, Lcom/amap/api/maps/model/CameraPosition;-><init>(Lcom/amap/api/maps/model/LatLng;FFF)V

    .line 149
    iget-object v0, p0, Lcom/amap/api/a/a;->f:Lcom/amap/api/a/b;

    invoke-virtual {v0, v1}, Lcom/amap/api/a/b;->a(Lcom/amap/api/maps/model/CameraPosition;)V

    .line 152
    :cond_4
    iget v0, p0, Lcom/amap/api/a/a;->c:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_5

    iget v0, p0, Lcom/amap/api/a/a;->d:F

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/amap/api/a/a;->f:Lcom/amap/api/a/b;

    invoke-virtual {v0}, Lcom/amap/api/a/b;->s()Lcom/amap/api/a/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/a/w;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 153
    iget-object v0, p0, Lcom/amap/api/a/a;->f:Lcom/amap/api/a/b;

    invoke-virtual {v0}, Lcom/amap/api/a/b;->d()V

    .line 155
    :cond_6
    iget v0, p0, Lcom/amap/api/a/a;->b:F

    cmpl-float v0, v3, v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/a/a;->f:Lcom/amap/api/a/b;

    invoke-virtual {v0}, Lcom/amap/api/a/b;->s()Lcom/amap/api/a/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/a/w;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/amap/api/a/a;->f:Lcom/amap/api/a/b;

    invoke-virtual {v0}, Lcom/amap/api/a/b;->e()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 158
    :catch_1
    move-exception v0

    .line 159
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1

    :cond_7
    move v0, v1

    goto :goto_2
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/amap/api/a/a;->f:Lcom/amap/api/a/b;

    invoke-virtual {v0}, Lcom/amap/api/a/b;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getMapSvrAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string v0, "http://m.amap.com"

    return-object v0
.end method

.method public isMapEngineValid()Z
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/amap/api/a/a;->f:Lcom/amap/api/a/b;

    invoke-virtual {v0}, Lcom/amap/api/a/b;->a()Lcom/autonavi/amap/mapcore/MapCore;

    move-result-object v0

    if-nez v0, :cond_0

    .line 411
    const/4 v0, 0x0

    .line 413
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
