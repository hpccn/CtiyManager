.class public Lcom/autonavi/amap/mapcore/MapCore;
.super Ljava/lang/Object;
.source "MapCore.java"


# static fields
.field public static final AM_DATA_BASEMAP:I = 0x0

.field public static final AM_DATA_BMP_BASEMAP:I = 0x2

.field public static final AM_DATA_GEO_BUILDING:I = 0x1

.field public static final AM_DATA_MODEL:I = 0x6

.field public static final AM_DATA_SATELLITE:I = 0x3

.field public static final AM_DATA_SCREEN:I = 0x5

.field public static final AM_DATA_VEC_TMC:I = 0x4

.field public static final MAPRENDER_BASEMAPBEGIN:I = 0x1

.field public static final MAPRENDER_BUILDINGBEGIN:I = 0x2

.field public static final MAPRENDER_ENTER:I = 0x0

.field public static final MAPRENDER_LABELSBEGIN:I = 0x3

.field public static final MAPRENDER_NOMORENEEDRENDER:I = 0x5

.field public static final MAPRENDER_RENDEROVER:I = 0x4

.field public static final TEXTURE_BACKGROUND:I = 0x1

.field public static final TEXTURE_ICON:I = 0x0

.field public static final TEXTURE_ROADARROW:I = 0x2

.field public static final TEXTURE_ROADROUND:I = 0x3


# instance fields
.field mGL:Ljavax/microedition/khronos/opengles/GL10;

.field private mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

.field native_instance:I

.field public view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    :try_start_0
    const-string v0, "amapv3"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v1, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:I

    .line 44
    iput-object v1, p0, Lcom/autonavi/amap/mapcore/MapCore;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    .line 47
    invoke-static {p1}, Lcom/amap/api/a/b/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-static {v0}, Lcom/autonavi/amap/mapcore/MapCore;->nativeNewInstance(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:I

    .line 49
    return-void
.end method

.method private OnMapDataRequired(I[Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 156
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

    invoke-interface {v0, p0, p1, p2}, Lcom/autonavi/amap/mapcore/IMapCallback;->OnMapDataRequired(Lcom/autonavi/amap/mapcore/MapCore;I[Ljava/lang/String;)V

    .line 160
    :cond_0
    return-void
.end method

.method private OnMapDestory()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/MapCore;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v1, p0}, Lcom/autonavi/amap/mapcore/IMapCallback;->OnMapDestory(Ljavax/microedition/khronos/opengles/GL10;Lcom/autonavi/amap/mapcore/MapCore;)V

    .line 148
    :cond_0
    return-void
.end method

.method private OnMapLabelsRequired([II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 163
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

    invoke-interface {v0, p0, p1, p2}, Lcom/autonavi/amap/mapcore/IMapCallback;->OnMapLabelsRequired(Lcom/autonavi/amap/mapcore/MapCore;[II)V

    .line 166
    :cond_0
    return-void
.end method

.method private OnMapProcessEvent()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

    invoke-interface {v0, p0}, Lcom/autonavi/amap/mapcore/IMapCallback;->OnMapProcessEvent(Lcom/autonavi/amap/mapcore/MapCore;)V

    .line 142
    :cond_0
    return-void
.end method

.method private OnMapReferencechanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 174
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

    invoke-interface {v0, p0, p1, p2}, Lcom/autonavi/amap/mapcore/IMapCallback;->OnMapReferencechanged(Lcom/autonavi/amap/mapcore/MapCore;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_0
    return-void
.end method

.method private OnMapSufaceChanged(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/MapCore;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v1, p0, p1, p2}, Lcom/autonavi/amap/mapcore/IMapCallback;->OnMapSufaceChanged(Ljavax/microedition/khronos/opengles/GL10;Lcom/autonavi/amap/mapcore/MapCore;II)V

    .line 135
    :cond_0
    return-void
.end method

.method private OnMapSurfaceCreate()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/MapCore;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v1, p0}, Lcom/autonavi/amap/mapcore/IMapCallback;->OnMapSurfaceCreate(Ljavax/microedition/khronos/opengles/GL10;Lcom/autonavi/amap/mapcore/MapCore;)V

    .line 121
    :cond_0
    return-void
.end method

.method private OnMapSurfaceRenderer(I)V
    .locals 2
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/MapCore;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v1, p0, p1}, Lcom/autonavi/amap/mapcore/IMapCallback;->OnMapSurfaceRenderer(Ljavax/microedition/khronos/opengles/GL10;Lcom/autonavi/amap/mapcore/MapCore;I)V

    .line 128
    :cond_0
    return-void
.end method

.method private static native nativeDestroy(I)V
.end method

.method private static native nativeGetMapstate(I)I
.end method

.method private static native nativeNewInstance(Ljava/lang/String;)I
.end method

.method private static native nativePutCharbitmap(II[B)V
.end method

.method private static native nativePutMapdata(II[B)V
.end method

.method private static native nativeSetInternaltexture(I[BI)V
.end method

.method private static native nativeSetMapstate(II)V
.end method

.method private static native nativeSetStyleData(I[BI)V
.end method

.method private static native nativeSetparameter(IIIIII)V
.end method

.method private static native nativeSurfaceChange(ILcom/autonavi/amap/mapcore/MapCore;II)V
.end method

.method private static native nativeSurfaceCreate(ILcom/autonavi/amap/mapcore/MapCore;)V
.end method

.method private static native nativeSurfaceRenderMap(ILcom/autonavi/amap/mapcore/MapCore;)V
.end method


# virtual methods
.method public destroy()V
    .locals 4

    .prologue
    .line 188
    :try_start_0
    iget v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:I

    if-eqz v0, :cond_0

    .line 190
    iget v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:I

    invoke-static {v0}, Lcom/autonavi/amap/mapcore/MapCore;->nativeDestroy(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 192
    :catch_0
    move-exception v0

    .line 193
    const-string v1, "minimap"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finalize erro:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public drawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .parameter

    .prologue
    .line 69
    iget v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:I

    invoke-static {v0, p0}, Lcom/autonavi/amap/mapcore/MapCore;->nativeSurfaceRenderMap(ILcom/autonavi/amap/mapcore/MapCore;)V

    .line 70
    return-void
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/MapCore;->destroy()V

    .line 184
    return-void
.end method

.method public getInstanceHandle()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:I

    return v0
.end method

.method public getMapstate()Lcom/autonavi/amap/mapcore/MapProjection;
    .locals 2

    .prologue
    .line 85
    iget v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:I

    invoke-static {v0}, Lcom/autonavi/amap/mapcore/MapCore;->nativeGetMapstate(I)I

    move-result v0

    .line 86
    new-instance v1, Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-direct {v1, v0}, Lcom/autonavi/amap/mapcore/MapProjection;-><init>(I)V

    return-object v1
.end method

.method public putCharbitmap(I[B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 111
    iget v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:I

    invoke-static {v0, p1, p2}, Lcom/autonavi/amap/mapcore/MapCore;->nativePutCharbitmap(II[B)V

    .line 112
    return-void
.end method

.method public putMapData([BIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 100
    array-length v0, p1

    if-ne v0, p3, :cond_0

    if-nez p2, :cond_0

    .line 101
    iget v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:I

    invoke-static {v0, p4, p1}, Lcom/autonavi/amap/mapcore/MapCore;->nativePutMapdata(II[B)V

    .line 108
    :goto_0
    return-void

    .line 103
    :cond_0
    new-array v0, p3, [B

    .line 104
    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    iget v1, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:I

    invoke-static {v1, p4, v0}, Lcom/autonavi/amap/mapcore/MapCore;->nativePutMapdata(II[B)V

    goto :goto_0
.end method

.method public setGL(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/autonavi/amap/mapcore/MapCore;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    .line 53
    return-void
.end method

.method public setInternaltexture([BI)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 77
    iget v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:I

    invoke-static {v0, p1, p2}, Lcom/autonavi/amap/mapcore/MapCore;->nativeSetInternaltexture(I[BI)V

    .line 78
    return-void
.end method

.method public setMapCallback(Lcom/autonavi/amap/mapcore/IMapCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

    .line 57
    return-void
.end method

.method public setMapstate(Lcom/autonavi/amap/mapcore/MapProjection;)V
    .locals 2
    .parameter

    .prologue
    .line 90
    iget v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:I

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/MapProjection;->getInstanceHandle()I

    move-result v1

    invoke-static {v0, v1}, Lcom/autonavi/amap/mapcore/MapCore;->nativeSetMapstate(II)V

    .line 91
    return-void
.end method

.method public setParameter(IIIII)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    iget v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/autonavi/amap/mapcore/MapCore;->nativeSetparameter(IIIIII)V

    .line 97
    return-void
.end method

.method public setStyleData([BI)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 73
    iget v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:I

    invoke-static {v0, p1, p2}, Lcom/autonavi/amap/mapcore/MapCore;->nativeSetStyleData(I[BI)V

    .line 74
    return-void
.end method

.method public surfaceChange(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    iget v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:I

    invoke-static {v0, p0, p2, p3}, Lcom/autonavi/amap/mapcore/MapCore;->nativeSurfaceChange(ILcom/autonavi/amap/mapcore/MapCore;II)V

    .line 65
    return-void
.end method

.method public surfaceCreate(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .parameter

    .prologue
    .line 60
    iget v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:I

    invoke-static {v0, p0}, Lcom/autonavi/amap/mapcore/MapCore;->nativeSurfaceCreate(ILcom/autonavi/amap/mapcore/MapCore;)V

    .line 61
    return-void
.end method
