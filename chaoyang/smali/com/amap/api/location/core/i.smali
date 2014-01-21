.class public Lcom/amap/api/location/core/i;
.super Lcom/amap/api/location/core/k;
.source "LocTansServerHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/location/core/k",
        "<",
        "Lcom/amap/api/location/core/GeoPoint$b;",
        "Lcom/amap/api/location/core/GeoPoint$b;",
        ">;"
    }
.end annotation


# instance fields
.field private i:Lcom/amap/api/location/core/GeoPoint$b;


# direct methods
.method public constructor <init>(Lcom/amap/api/location/core/GeoPoint$b;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amap/api/location/core/k;-><init>(Ljava/lang/Object;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lcom/amap/api/location/core/i;->i:Lcom/amap/api/location/core/GeoPoint$b;

    .line 31
    return-void
.end method


# virtual methods
.method public a()Lcom/amap/api/location/core/GeoPoint$b;
    .locals 6

    .prologue
    .line 34
    iget-object v0, p0, Lcom/amap/api/location/core/i;->i:Lcom/amap/api/location/core/GeoPoint$b;

    iget-wide v0, v0, Lcom/amap/api/location/core/GeoPoint$b;->a:D

    iget-object v2, p0, Lcom/amap/api/location/core/i;->i:Lcom/amap/api/location/core/GeoPoint$b;

    iget-wide v2, v2, Lcom/amap/api/location/core/GeoPoint$b;->b:D

    invoke-static {v0, v1, v2, v3}, Lcom/a/a/a;->a(DD)[D

    move-result-object v0

    .line 35
    new-instance v1, Lcom/amap/api/location/core/GeoPoint$b;

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    const/4 v4, 0x1

    aget-wide v4, v0, v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amap/api/location/core/GeoPoint$b;-><init>(DD)V

    .line 36
    return-object v1
.end method
