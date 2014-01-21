.class Lcom/amap/api/a/ai;
.super Ljava/lang/Object;
.source "ProjectionDelegateImp.java"

# interfaces
.implements Lcom/amap/api/a/u;


# instance fields
.field private a:Lcom/amap/api/a/n;


# direct methods
.method public constructor <init>(Lcom/amap/api/a/n;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/amap/api/a/ai;->a:Lcom/amap/api/a/n;

    .line 18
    return-void
.end method


# virtual methods
.method public a(Lcom/amap/api/maps/model/LatLng;)Landroid/graphics/Point;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 29
    new-instance v5, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v5}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 30
    iget-object v0, p0, Lcom/amap/api/a/ai;->a:Lcom/amap/api/a/n;

    iget-wide v1, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v3, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-interface/range {v0 .. v5}, Lcom/amap/api/a/n;->b(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 32
    new-instance v0, Landroid/graphics/Point;

    iget v1, v5, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v2, v5, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public a(Landroid/graphics/Point;)Lcom/amap/api/maps/model/LatLng;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 22
    new-instance v0, Lcom/autonavi/amap/mapcore/DPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/DPoint;-><init>()V

    .line 23
    iget-object v1, p0, Lcom/amap/api/a/ai;->a:Lcom/amap/api/a/n;

    iget v2, p1, Landroid/graphics/Point;->x:I

    iget v3, p1, Landroid/graphics/Point;->y:I

    invoke-interface {v1, v2, v3, v0}, Lcom/amap/api/a/n;->a(IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 24
    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v4, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    return-object v1
.end method

.method public a()Lcom/amap/api/maps/model/VisibleRegion;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 37
    iget-object v0, p0, Lcom/amap/api/a/ai;->a:Lcom/amap/api/a/n;

    invoke-interface {v0}, Lcom/amap/api/a/n;->g()I

    move-result v0

    .line 38
    iget-object v1, p0, Lcom/amap/api/a/ai;->a:Lcom/amap/api/a/n;

    invoke-interface {v1}, Lcom/amap/api/a/n;->h()I

    move-result v2

    .line 39
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v5, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/amap/api/a/ai;->a(Landroid/graphics/Point;)Lcom/amap/api/maps/model/LatLng;

    move-result-object v3

    .line 40
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v0, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/amap/api/a/ai;->a(Landroid/graphics/Point;)Lcom/amap/api/maps/model/LatLng;

    move-result-object v4

    .line 41
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v5, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/amap/api/a/ai;->a(Landroid/graphics/Point;)Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    .line 42
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v0, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v5}, Lcom/amap/api/a/ai;->a(Landroid/graphics/Point;)Lcom/amap/api/maps/model/LatLng;

    move-result-object v2

    .line 43
    invoke-static {}, Lcom/amap/api/maps/model/LatLngBounds;->builder()Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->build()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object v5

    .line 45
    new-instance v0, Lcom/amap/api/maps/model/VisibleRegion;

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/maps/model/VisibleRegion;-><init>(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLngBounds;)V

    return-object v0
.end method
