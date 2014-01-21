.class public Lcom/amap/api/location/c;
.super Ljava/lang/Object;
.source "LocationListenerProxy.java"

# interfaces
.implements Lcom/amap/api/location/AMapLocationListener;


# instance fields
.field private a:Lcom/amap/api/location/LocationManagerProxy;

.field private b:Lcom/amap/api/location/AMapLocationListener;


# direct methods
.method public constructor <init>(Lcom/amap/api/location/LocationManagerProxy;)V
    .locals 1
    .parameter

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/location/c;->b:Lcom/amap/api/location/AMapLocationListener;

    .line 11
    iput-object p1, p0, Lcom/amap/api/location/c;->a:Lcom/amap/api/location/LocationManagerProxy;

    .line 12
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/amap/api/location/LocationManagerProxy;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-virtual {v0, p0}, Lcom/amap/api/location/LocationManagerProxy;->removeUpdates(Lcom/amap/api/location/AMapLocationListener;)V

    .line 46
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/location/c;->b:Lcom/amap/api/location/AMapLocationListener;

    .line 47
    return-void
.end method

.method public a(Lcom/amap/api/location/AMapLocationListener;JF)Z
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 29
    const/4 v0, 0x0

    .line 30
    iput-object p1, p0, Lcom/amap/api/location/c;->b:Lcom/amap/api/location/AMapLocationListener;

    .line 31
    iget-object v1, p0, Lcom/amap/api/location/c;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-virtual {v1, v6}, Lcom/amap/api/location/LocationManagerProxy;->getProviders(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 32
    const-string v2, "gps"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "network"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/amap/api/location/LocationManagerProxy;

    move-wide v2, p2

    move v4, p4

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/location/LocationManagerProxy;->requestLocationUpdates(Ljava/lang/String;JFLcom/amap/api/location/AMapLocationListener;)V

    move v0, v6

    goto :goto_0

    .line 39
    :cond_2
    return v0
.end method

.method public a(Lcom/amap/api/location/AMapLocationListener;JFLjava/lang/String;)Z
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-object p1, p0, Lcom/amap/api/location/c;->b:Lcom/amap/api/location/AMapLocationListener;

    .line 19
    const-string v1, "lbs"

    invoke-virtual {v1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20
    const/4 v6, 0x1

    .line 21
    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/amap/api/location/LocationManagerProxy;

    move-object v1, p5

    move-wide v2, p2

    move v4, p4

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/location/LocationManagerProxy;->requestLocationUpdates(Ljava/lang/String;JFLcom/amap/api/location/AMapLocationListener;)V

    move v0, v6

    .line 24
    :cond_0
    return v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/amap/api/location/c;->b:Lcom/amap/api/location/AMapLocationListener;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/amap/api/location/c;->b:Lcom/amap/api/location/AMapLocationListener;

    invoke-interface {v0, p1}, Lcom/amap/api/location/AMapLocationListener;->onLocationChanged(Landroid/location/Location;)V

    .line 54
    :cond_0
    return-void
.end method

.method public onLocationChanged(Lcom/amap/api/location/AMapLocation;)V
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/amap/api/location/c;->b:Lcom/amap/api/location/AMapLocationListener;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/amap/api/location/c;->b:Lcom/amap/api/location/AMapLocationListener;

    invoke-interface {v0, p1}, Lcom/amap/api/location/AMapLocationListener;->onLocationChanged(Lcom/amap/api/location/AMapLocation;)V

    .line 83
    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/amap/api/location/c;->b:Lcom/amap/api/location/AMapLocationListener;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/amap/api/location/c;->b:Lcom/amap/api/location/AMapLocationListener;

    invoke-interface {v0, p1}, Lcom/amap/api/location/AMapLocationListener;->onProviderDisabled(Ljava/lang/String;)V

    .line 75
    :cond_0
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/amap/api/location/c;->b:Lcom/amap/api/location/AMapLocationListener;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/amap/api/location/c;->b:Lcom/amap/api/location/AMapLocationListener;

    invoke-interface {v0, p1}, Lcom/amap/api/location/AMapLocationListener;->onProviderEnabled(Ljava/lang/String;)V

    .line 68
    :cond_0
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/amap/api/location/c;->b:Lcom/amap/api/location/AMapLocationListener;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/amap/api/location/c;->b:Lcom/amap/api/location/AMapLocationListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/amap/api/location/AMapLocationListener;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 61
    :cond_0
    return-void
.end method
