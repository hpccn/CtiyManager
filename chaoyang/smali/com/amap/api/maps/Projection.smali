.class public Lcom/amap/api/maps/Projection;
.super Ljava/lang/Object;
.source "Projection.java"


# instance fields
.field private final a:Lcom/amap/api/a/u;


# direct methods
.method constructor <init>(Lcom/amap/api/a/u;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/amap/api/maps/Projection;->a:Lcom/amap/api/a/u;

    .line 22
    return-void
.end method


# virtual methods
.method public fromScreenLocation(Landroid/graphics/Point;)Lcom/amap/api/maps/model/LatLng;
    .locals 2
    .parameter

    .prologue
    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/Projection;->a:Lcom/amap/api/a/u;

    invoke-interface {v0, p1}, Lcom/amap/api/a/u;->a(Landroid/graphics/Point;)Lcom/amap/api/maps/model/LatLng;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getVisibleRegion()Lcom/amap/api/maps/model/VisibleRegion;
    .locals 2

    .prologue
    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/Projection;->a:Lcom/amap/api/a/u;

    invoke-interface {v0}, Lcom/amap/api/a/u;->a()Lcom/amap/api/maps/model/VisibleRegion;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public toScreenLocation(Lcom/amap/api/maps/model/LatLng;)Landroid/graphics/Point;
    .locals 2
    .parameter

    .prologue
    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/Projection;->a:Lcom/amap/api/a/u;

    invoke-interface {v0, p1}, Lcom/amap/api/a/u;->a(Lcom/amap/api/maps/model/LatLng;)Landroid/graphics/Point;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
