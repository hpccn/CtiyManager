.class public final Lcom/amap/api/maps/CameraUpdateFactory;
.super Ljava/lang/Object;
.source "CameraUpdateFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newCameraPosition(Lcom/amap/api/maps/model/CameraPosition;)Lcom/amap/api/maps/CameraUpdate;
    .locals 2
    .parameter

    .prologue
    .line 113
    new-instance v0, Lcom/amap/api/maps/CameraUpdate;

    invoke-static {p0}, Lcom/amap/api/a/h;->a(Lcom/amap/api/maps/model/CameraPosition;)Lcom/amap/api/a/h;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/maps/CameraUpdate;-><init>(Lcom/amap/api/a/h;)V

    return-object v0
.end method

.method public static newLatLng(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/CameraUpdate;
    .locals 2
    .parameter

    .prologue
    .line 126
    new-instance v0, Lcom/amap/api/maps/CameraUpdate;

    invoke-static {p0}, Lcom/amap/api/a/h;->a(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/a/h;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/maps/CameraUpdate;-><init>(Lcom/amap/api/a/h;)V

    return-object v0
.end method

.method public static newLatLngBounds(Lcom/amap/api/maps/model/LatLngBounds;I)Lcom/amap/api/maps/CameraUpdate;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 145
    new-instance v0, Lcom/amap/api/maps/CameraUpdate;

    invoke-static {p0, p1}, Lcom/amap/api/a/h;->a(Lcom/amap/api/maps/model/LatLngBounds;I)Lcom/amap/api/a/h;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/maps/CameraUpdate;-><init>(Lcom/amap/api/a/h;)V

    return-object v0
.end method

.method public static newLatLngBounds(Lcom/amap/api/maps/model/LatLngBounds;III)Lcom/amap/api/maps/CameraUpdate;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 151
    new-instance v0, Lcom/amap/api/maps/CameraUpdate;

    invoke-static {p0, p1, p2, p3}, Lcom/amap/api/a/h;->a(Lcom/amap/api/maps/model/LatLngBounds;III)Lcom/amap/api/a/h;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/maps/CameraUpdate;-><init>(Lcom/amap/api/a/h;)V

    return-object v0
.end method

.method public static newLatLngZoom(Lcom/amap/api/maps/model/LatLng;F)Lcom/amap/api/maps/CameraUpdate;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 140
    new-instance v0, Lcom/amap/api/maps/CameraUpdate;

    invoke-static {p0, p1}, Lcom/amap/api/a/h;->a(Lcom/amap/api/maps/model/LatLng;F)Lcom/amap/api/a/h;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/maps/CameraUpdate;-><init>(Lcom/amap/api/a/h;)V

    return-object v0
.end method

.method public static scrollBy(FF)Lcom/amap/api/maps/CameraUpdate;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 60
    new-instance v0, Lcom/amap/api/maps/CameraUpdate;

    invoke-static {p0, p1}, Lcom/amap/api/a/h;->a(FF)Lcom/amap/api/a/h;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/maps/CameraUpdate;-><init>(Lcom/amap/api/a/h;)V

    return-object v0
.end method

.method public static zoomBy(F)Lcom/amap/api/maps/CameraUpdate;
    .locals 2
    .parameter

    .prologue
    .line 84
    new-instance v0, Lcom/amap/api/maps/CameraUpdate;

    invoke-static {p0}, Lcom/amap/api/a/h;->b(F)Lcom/amap/api/a/h;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/maps/CameraUpdate;-><init>(Lcom/amap/api/a/h;)V

    return-object v0
.end method

.method public static zoomBy(FLandroid/graphics/Point;)Lcom/amap/api/maps/CameraUpdate;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 101
    new-instance v0, Lcom/amap/api/maps/CameraUpdate;

    invoke-static {p0, p1}, Lcom/amap/api/a/h;->a(FLandroid/graphics/Point;)Lcom/amap/api/a/h;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/maps/CameraUpdate;-><init>(Lcom/amap/api/a/h;)V

    return-object v0
.end method

.method public static zoomIn()Lcom/amap/api/maps/CameraUpdate;
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lcom/amap/api/maps/CameraUpdate;

    invoke-static {}, Lcom/amap/api/a/h;->b()Lcom/amap/api/a/h;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/maps/CameraUpdate;-><init>(Lcom/amap/api/a/h;)V

    return-object v0
.end method

.method public static zoomOut()Lcom/amap/api/maps/CameraUpdate;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lcom/amap/api/maps/CameraUpdate;

    invoke-static {}, Lcom/amap/api/a/h;->c()Lcom/amap/api/a/h;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/maps/CameraUpdate;-><init>(Lcom/amap/api/a/h;)V

    return-object v0
.end method

.method public static zoomTo(F)Lcom/amap/api/maps/CameraUpdate;
    .locals 2
    .parameter

    .prologue
    .line 72
    new-instance v0, Lcom/amap/api/maps/CameraUpdate;

    invoke-static {p0}, Lcom/amap/api/a/h;->a(F)Lcom/amap/api/a/h;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/maps/CameraUpdate;-><init>(Lcom/amap/api/a/h;)V

    return-object v0
.end method
