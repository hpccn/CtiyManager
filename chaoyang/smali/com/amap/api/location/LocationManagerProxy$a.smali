.class Lcom/amap/api/location/LocationManagerProxy$a;
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
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/location/LocationManagerProxy;


# direct methods
.method constructor <init>(Lcom/amap/api/location/LocationManagerProxy;)V
    .locals 0
    .parameter

    .prologue
    .line 433
    iput-object p1, p0, Lcom/amap/api/location/LocationManagerProxy$a;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 8
    .parameter

    .prologue
    .line 436
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy$a;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/api/location/LocationManagerProxy;->c(Lcom/amap/api/location/LocationManagerProxy;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy$a;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/api/location/LocationManagerProxy;->d(Lcom/amap/api/location/LocationManagerProxy;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 437
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    .line 438
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    .line 439
    iget-object v4, p0, Lcom/amap/api/location/LocationManagerProxy$a;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v4}, Lcom/amap/api/location/LocationManagerProxy;->e(Lcom/amap/api/location/LocationManagerProxy;)D

    move-result-wide v4

    sub-double v4, v0, v4

    iget-object v6, p0, Lcom/amap/api/location/LocationManagerProxy$a;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v6}, Lcom/amap/api/location/LocationManagerProxy;->e(Lcom/amap/api/location/LocationManagerProxy;)D

    move-result-wide v6

    sub-double/2addr v0, v6

    mul-double/2addr v0, v4

    iget-object v4, p0, Lcom/amap/api/location/LocationManagerProxy$a;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v4}, Lcom/amap/api/location/LocationManagerProxy;->f(Lcom/amap/api/location/LocationManagerProxy;)D

    move-result-wide v4

    sub-double v4, v2, v4

    iget-object v6, p0, Lcom/amap/api/location/LocationManagerProxy$a;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v6}, Lcom/amap/api/location/LocationManagerProxy;->f(Lcom/amap/api/location/LocationManagerProxy;)D

    move-result-wide v6

    sub-double/2addr v2, v6

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    .line 444
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy$a;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/api/location/LocationManagerProxy;->d(Lcom/amap/api/location/LocationManagerProxy;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 445
    invoke-static {}, Lcom/amap/api/location/core/f;->a()J

    move-result-wide v4

    .line 446
    iget-object v6, p0, Lcom/amap/api/location/LocationManagerProxy$a;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v6}, Lcom/amap/api/location/LocationManagerProxy;->g(Lcom/amap/api/location/LocationManagerProxy;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/amap/api/location/LocationManagerProxy$a;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v4}, Lcom/amap/api/location/LocationManagerProxy;->g(Lcom/amap/api/location/LocationManagerProxy;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 447
    iget-object v4, p0, Lcom/amap/api/location/LocationManagerProxy$a;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-virtual {v4, v0}, Lcom/amap/api/location/LocationManagerProxy;->removeProximityAlert(Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 449
    :cond_1
    iget-object v4, p0, Lcom/amap/api/location/LocationManagerProxy$a;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v4}, Lcom/amap/api/location/LocationManagerProxy;->h(Lcom/amap/api/location/LocationManagerProxy;)D

    move-result-wide v4

    iget-object v6, p0, Lcom/amap/api/location/LocationManagerProxy$a;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v6}, Lcom/amap/api/location/LocationManagerProxy;->h(Lcom/amap/api/location/LocationManagerProxy;)D

    move-result-wide v6

    mul-double/2addr v4, v6

    sub-double v4, v1, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    .line 451
    const-wide/high16 v6, 0x3fe0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    .line 452
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 453
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 454
    const-string v6, "location"

    invoke-virtual {v5, v6, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 457
    invoke-virtual {v4, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 459
    :try_start_0
    iget-object v5, p0, Lcom/amap/api/location/LocationManagerProxy$a;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v5}, Lcom/amap/api/location/LocationManagerProxy;->b(Lcom/amap/api/location/LocationManagerProxy;)Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v4}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 460
    :catch_0
    move-exception v0

    .line 461
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_0

    .line 467
    :cond_2
    return-void
.end method

.method public onLocationChanged(Lcom/amap/api/location/AMapLocation;)V
    .locals 8
    .parameter

    .prologue
    .line 484
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy$a;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/api/location/LocationManagerProxy;->c(Lcom/amap/api/location/LocationManagerProxy;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy$a;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/api/location/LocationManagerProxy;->d(Lcom/amap/api/location/LocationManagerProxy;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 485
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v0

    .line 486
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v2

    .line 487
    iget-object v4, p0, Lcom/amap/api/location/LocationManagerProxy$a;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v4}, Lcom/amap/api/location/LocationManagerProxy;->e(Lcom/amap/api/location/LocationManagerProxy;)D

    move-result-wide v4

    sub-double v4, v0, v4

    iget-object v6, p0, Lcom/amap/api/location/LocationManagerProxy$a;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v6}, Lcom/amap/api/location/LocationManagerProxy;->e(Lcom/amap/api/location/LocationManagerProxy;)D

    move-result-wide v6

    sub-double/2addr v0, v6

    mul-double/2addr v0, v4

    iget-object v4, p0, Lcom/amap/api/location/LocationManagerProxy$a;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v4}, Lcom/amap/api/location/LocationManagerProxy;->f(Lcom/amap/api/location/LocationManagerProxy;)D

    move-result-wide v4

    sub-double v4, v2, v4

    iget-object v6, p0, Lcom/amap/api/location/LocationManagerProxy$a;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v6}, Lcom/amap/api/location/LocationManagerProxy;->f(Lcom/amap/api/location/LocationManagerProxy;)D

    move-result-wide v6

    sub-double/2addr v2, v6

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    .line 492
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy$a;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/api/location/LocationManagerProxy;->d(Lcom/amap/api/location/LocationManagerProxy;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 493
    invoke-static {}, Lcom/amap/api/location/core/f;->a()J

    move-result-wide v4

    .line 494
    iget-object v6, p0, Lcom/amap/api/location/LocationManagerProxy$a;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v6}, Lcom/amap/api/location/LocationManagerProxy;->g(Lcom/amap/api/location/LocationManagerProxy;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/amap/api/location/LocationManagerProxy$a;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v4}, Lcom/amap/api/location/LocationManagerProxy;->g(Lcom/amap/api/location/LocationManagerProxy;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 495
    iget-object v4, p0, Lcom/amap/api/location/LocationManagerProxy$a;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-virtual {v4, v0}, Lcom/amap/api/location/LocationManagerProxy;->removeProximityAlert(Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 497
    :cond_1
    iget-object v4, p0, Lcom/amap/api/location/LocationManagerProxy$a;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v4}, Lcom/amap/api/location/LocationManagerProxy;->h(Lcom/amap/api/location/LocationManagerProxy;)D

    move-result-wide v4

    iget-object v6, p0, Lcom/amap/api/location/LocationManagerProxy$a;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v6}, Lcom/amap/api/location/LocationManagerProxy;->h(Lcom/amap/api/location/LocationManagerProxy;)D

    move-result-wide v6

    mul-double/2addr v4, v6

    sub-double v4, v1, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    .line 499
    const-wide/high16 v6, 0x3fe0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    .line 500
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 501
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 502
    const-string v6, "location"

    invoke-virtual {v5, v6, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 505
    invoke-virtual {v4, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 507
    :try_start_0
    iget-object v5, p0, Lcom/amap/api/location/LocationManagerProxy$a;->a:Lcom/amap/api/location/LocationManagerProxy;

    invoke-static {v5}, Lcom/amap/api/location/LocationManagerProxy;->b(Lcom/amap/api/location/LocationManagerProxy;)Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v4}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 508
    :catch_0
    move-exception v0

    .line 509
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_0

    .line 515
    :cond_2
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 479
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 475
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 471
    return-void
.end method
