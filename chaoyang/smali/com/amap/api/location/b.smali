.class Lcom/amap/api/location/b;
.super Ljava/lang/Object;
.source "IAPSManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/location/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/location/a;


# direct methods
.method constructor <init>(Lcom/amap/api/location/a;)V
    .locals 0
    .parameter

    .prologue
    .line 346
    iput-object p1, p0, Lcom/amap/api/location/b;->a:Lcom/amap/api/location/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2
    .parameter

    .prologue
    .line 349
    iget-object v0, p0, Lcom/amap/api/location/b;->a:Lcom/amap/api/location/a;

    invoke-static {v0, p1}, Lcom/amap/api/location/a;->a(Lcom/amap/api/location/a;Landroid/location/Location;)Landroid/location/Location;

    .line 350
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/amap/api/location/a;->a(J)J

    .line 351
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 355
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 359
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 363
    return-void
.end method
