.class Lcom/amap/api/location/LocationManagerProxy$b;
.super Ljava/lang/Object;
.source "LocationManagerProxy.java"

# interfaces
.implements Lcom/amap/api/location/AMapLocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/location/LocationManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/location/LocationManagerProxy;


# direct methods
.method constructor <init>(Lcom/amap/api/location/LocationManagerProxy;)V
    .locals 0
    .parameter

    .prologue
    .line 382
    iput-object p1, p0, Lcom/amap/api/location/LocationManagerProxy$b;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 5
    .parameter

    .prologue
    .line 385
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy$b;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/api/location/LocationManagerProxy;->a(Lcom/amap/api/location/LocationManagerProxy;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy$b;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/api/location/LocationManagerProxy;->a(Lcom/amap/api/location/LocationManagerProxy;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy$b;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/api/location/LocationManagerProxy;->a(Lcom/amap/api/location/LocationManagerProxy;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 387
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 388
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 389
    const-string v4, "location"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 391
    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 393
    :try_start_0
    iget-object v3, p0, Lcom/amap/api/location/LocationManagerProxy$b;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v3}, Lcom/amap/api/location/LocationManagerProxy;->b(Lcom/amap/api/location/LocationManagerProxy;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 394
    :catch_0
    move-exception v0

    .line 395
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_0

    .line 399
    :cond_0
    return-void
.end method

.method public onLocationChanged(Lcom/amap/api/location/AMapLocation;)V
    .locals 5
    .parameter

    .prologue
    .line 416
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy$b;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/api/location/LocationManagerProxy;->a(Lcom/amap/api/location/LocationManagerProxy;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy$b;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/api/location/LocationManagerProxy;->a(Lcom/amap/api/location/LocationManagerProxy;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy$b;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/api/location/LocationManagerProxy;->a(Lcom/amap/api/location/LocationManagerProxy;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 418
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 419
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 420
    const-string v4, "location"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 422
    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 424
    :try_start_0
    iget-object v3, p0, Lcom/amap/api/location/LocationManagerProxy$b;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v3}, Lcom/amap/api/location/LocationManagerProxy;->b(Lcom/amap/api/location/LocationManagerProxy;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 425
    :catch_0
    move-exception v0

    .line 426
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_0

    .line 430
    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 411
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 407
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 403
    return-void
.end method
