.class public Lcom/amap/api/location/a;
.super Ljava/lang/Object;
.source "IAPSManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/location/a$b;,
        Lcom/amap/api/location/a$a;
    }
.end annotation


# static fields
.field private static b:Lcom/amap/api/location/a;

.field private static f:I

.field private static g:I

.field private static h:I

.field private static r:J


# instance fields
.field private a:Lcom/autonavi/aps/api/IAPS;

.field private c:Lcom/amap/api/location/a$a;

.field private volatile d:Z

.field private e:Ljava/lang/Thread;

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/location/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/amap/api/location/AMapLocation;

.field private k:Landroid/content/Context;

.field private l:Landroid/location/LocationManager;

.field private m:Z

.field private n:Landroid/location/Location;

.field private o:F

.field private p:J

.field private q:J

.field private s:Landroid/location/LocationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/amap/api/location/a;->b:Lcom/amap/api/location/a;

    .line 24
    const/16 v0, 0x64

    sput v0, Lcom/amap/api/location/a;->f:I

    .line 26
    const/16 v0, 0x66

    sput v0, Lcom/amap/api/location/a;->g:I

    .line 27
    const/16 v0, 0x67

    sput v0, Lcom/amap/api/location/a;->h:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v1, p0, Lcom/amap/api/location/a;->a:Lcom/autonavi/aps/api/IAPS;

    .line 21
    iput-object v1, p0, Lcom/amap/api/location/a;->c:Lcom/amap/api/location/a$a;

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/location/a;->d:Z

    .line 23
    iput-object v1, p0, Lcom/amap/api/location/a;->e:Ljava/lang/Thread;

    .line 28
    iput-object v1, p0, Lcom/amap/api/location/a;->i:Ljava/util/ArrayList;

    .line 29
    iput-object v1, p0, Lcom/amap/api/location/a;->j:Lcom/amap/api/location/AMapLocation;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/location/a;->m:Z

    .line 33
    iput-object v1, p0, Lcom/amap/api/location/a;->n:Landroid/location/Location;

    .line 34
    const/high16 v0, 0x41a0

    iput v0, p0, Lcom/amap/api/location/a;->o:F

    .line 35
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/amap/api/location/a;->p:J

    .line 36
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/amap/api/location/a;->q:J

    .line 346
    new-instance v0, Lcom/amap/api/location/b;

    invoke-direct {v0, p0}, Lcom/amap/api/location/b;-><init>(Lcom/amap/api/location/a;)V

    iput-object v0, p0, Lcom/amap/api/location/a;->s:Landroid/location/LocationListener;

    .line 42
    iput-object p1, p0, Lcom/amap/api/location/a;->k:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/amap/api/location/a;->l:Landroid/location/LocationManager;

    .line 44
    new-instance v0, Lcom/amap/api/location/a$a;

    invoke-direct {v0, p0}, Lcom/amap/api/location/a$a;-><init>(Lcom/amap/api/location/a;)V

    iput-object v0, p0, Lcom/amap/api/location/a;->c:Lcom/amap/api/location/a$a;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/aps/api/APSFactory;->getInstance(Landroid/content/Context;)Lcom/autonavi/aps/api/IAPS;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/location/a;->a:Lcom/autonavi/aps/api/IAPS;

    .line 46
    invoke-static {p1}, Lcom/amap/api/location/core/d;->a(Landroid/content/Context;)Lcom/amap/api/location/core/d;

    .line 48
    iget-object v0, p0, Lcom/amap/api/location/a;->a:Lcom/autonavi/aps/api/IAPS;

    const-string v1, "yun_droid_mapsdk"

    invoke-interface {v0, v1}, Lcom/autonavi/aps/api/IAPS;->setProductName(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/amap/api/location/a;->a:Lcom/autonavi/aps/api/IAPS;

    const-string v1, "32M0145A3D7E1266UY6BC6E017AD2387"

    invoke-interface {v0, v1}, Lcom/autonavi/aps/api/IAPS;->setLicence(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/amap/api/location/a;->a:Lcom/autonavi/aps/api/IAPS;

    invoke-static {p1}, Lcom/amap/api/location/core/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/autonavi/aps/api/IAPS;->setKey(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/amap/api/location/a;->a:Lcom/autonavi/aps/api/IAPS;

    invoke-static {}, Lcom/amap/api/location/core/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/autonavi/aps/api/IAPS;->setPackageName(Ljava/lang/String;)V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/location/a;->i:Ljava/util/ArrayList;

    .line 62
    return-void
.end method

.method static synthetic a(J)J
    .locals 0
    .parameter

    .prologue
    .line 18
    sput-wide p0, Lcom/amap/api/location/a;->r:J

    return-wide p0
.end method

.method static synthetic a(Lcom/amap/api/location/a;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    iput-object p1, p0, Lcom/amap/api/location/a;->n:Landroid/location/Location;

    return-object p1
.end method

.method private a(Landroid/location/Location;)Lcom/amap/api/location/AMapLocation;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 273
    new-instance v0, Lcom/amap/api/location/AMapLocation;

    invoke-direct {v0, p1}, Lcom/amap/api/location/AMapLocation;-><init>(Landroid/location/Location;)V

    .line 274
    new-instance v1, Lcom/amap/api/location/core/GeoPoint$b;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amap/api/location/core/GeoPoint$b;-><init>(DD)V

    .line 275
    new-instance v2, Lcom/amap/api/location/core/i;

    invoke-direct {v2, v1, v6, v6, v6}, Lcom/amap/api/location/core/i;-><init>(Lcom/amap/api/location/core/GeoPoint$b;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-virtual {v2}, Lcom/amap/api/location/core/i;->a()Lcom/amap/api/location/core/GeoPoint$b;

    move-result-object v1

    .line 278
    if-eqz v1, :cond_0

    .line 279
    iget-wide v2, v1, Lcom/amap/api/location/core/GeoPoint$b;->b:D

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/location/AMapLocation;->setLatitude(D)V

    .line 280
    iget-wide v1, v1, Lcom/amap/api/location/core/GeoPoint$b;->a:D

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/location/AMapLocation;->setLongitude(D)V

    .line 282
    :cond_0
    return-object v0
.end method

.method private a(Lcom/autonavi/aps/api/Location;)Lcom/amap/api/location/AMapLocation;
    .locals 4
    .parameter

    .prologue
    .line 286
    new-instance v0, Lcom/amap/api/location/AMapLocation;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/amap/api/location/AMapLocation;-><init>(Ljava/lang/String;)V

    .line 288
    const-string v1, "lbs"

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setProvider(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p1}, Lcom/autonavi/aps/api/Location;->getCeny()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/location/AMapLocation;->setLatitude(D)V

    .line 290
    invoke-virtual {p1}, Lcom/autonavi/aps/api/Location;->getCenx()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/location/AMapLocation;->setLongitude(D)V

    .line 291
    invoke-virtual {p1}, Lcom/autonavi/aps/api/Location;->getRadius()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setAccuracy(F)V

    .line 292
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/location/AMapLocation;->setTime(J)V

    .line 293
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 294
    const-string v2, "citycode"

    invoke-virtual {p1}, Lcom/autonavi/aps/api/Location;->getCitycode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v2, "desc"

    invoke-virtual {p1}, Lcom/autonavi/aps/api/Location;->getDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setExtras(Landroid/os/Bundle;)V

    .line 297
    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Landroid/location/LocationManager;)Lcom/amap/api/location/a;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 66
    const-class v1, Lcom/amap/api/location/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amap/api/location/a;->b:Lcom/amap/api/location/a;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/amap/api/location/a;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/location/a;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    sput-object v0, Lcom/amap/api/location/a;->b:Lcom/amap/api/location/a;

    .line 68
    invoke-static {p0}, Lcom/amap/api/location/core/d;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 70
    :cond_0
    sget-object v0, Lcom/amap/api/location/a;->b:Lcom/amap/api/location/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/amap/api/location/a;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/amap/api/location/a;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/amap/api/location/a;)Landroid/location/LocationManager;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/amap/api/location/a;->l:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic c()I
    .locals 1

    .prologue
    .line 18
    sget v0, Lcom/amap/api/location/a;->f:I

    return v0
.end method

.method static synthetic c(Lcom/amap/api/location/a;)Landroid/location/LocationListener;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/amap/api/location/a;->s:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic d()I
    .locals 1

    .prologue
    .line 18
    sget v0, Lcom/amap/api/location/a;->g:I

    return v0
.end method

.method static synthetic e()I
    .locals 1

    .prologue
    .line 18
    sget v0, Lcom/amap/api/location/a;->h:I

    return v0
.end method

.method private f()Lcom/autonavi/aps/api/Location;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 248
    .line 249
    sget v1, Lcom/amap/api/location/core/b;->a:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 250
    iget-object v1, p0, Lcom/amap/api/location/a;->k:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/api/location/core/b;->a(Landroid/content/Context;)Z

    move-result v1

    .line 251
    if-eqz v1, :cond_0

    .line 252
    iget-object v1, p0, Lcom/amap/api/location/a;->a:Lcom/autonavi/aps/api/IAPS;

    invoke-interface {v1, v0}, Lcom/autonavi/aps/api/IAPS;->getCurrentLocation(Landroid/location/Location;)Lcom/autonavi/aps/api/Location;

    move-result-object v0

    .line 253
    invoke-direct {p0}, Lcom/amap/api/location/a;->g()V

    .line 261
    :cond_0
    :goto_0
    return-object v0

    .line 256
    :cond_1
    sget v1, Lcom/amap/api/location/core/b;->a:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 257
    iget-object v1, p0, Lcom/amap/api/location/a;->a:Lcom/autonavi/aps/api/IAPS;

    invoke-interface {v1, v0}, Lcom/autonavi/aps/api/IAPS;->getCurrentLocation(Landroid/location/Location;)Lcom/autonavi/aps/api/Location;

    move-result-object v0

    .line 258
    invoke-direct {p0}, Lcom/amap/api/location/a;->g()V

    goto :goto_0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 265
    sget v0, Lcom/amap/api/location/core/b;->c:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/amap/api/location/core/b;->c:I

    .line 266
    sget v0, Lcom/amap/api/location/core/b;->c:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 267
    const/4 v0, -0x1

    sput v0, Lcom/amap/api/location/core/b;->a:I

    .line 268
    const/4 v0, 0x0

    sput v0, Lcom/amap/api/location/core/b;->c:I

    .line 270
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/location/a;->d:Z

    .line 75
    iget-object v0, p0, Lcom/amap/api/location/a;->e:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/amap/api/location/a;->e:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/a;->l:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/amap/api/location/a;->l:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/amap/api/location/a;->s:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/amap/api/location/a;->c:Lcom/amap/api/location/a$a;

    if-eqz v0, :cond_2

    .line 87
    iget-object v0, p0, Lcom/amap/api/location/a;->c:Lcom/amap/api/location/a$a;

    sget v1, Lcom/amap/api/location/a;->f:I

    invoke-virtual {v0, v1}, Lcom/amap/api/location/a$a;->removeMessages(I)V

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/amap/api/location/a;->a:Lcom/autonavi/aps/api/IAPS;

    if-eqz v0, :cond_3

    .line 91
    iget-object v0, p0, Lcom/amap/api/location/a;->a:Lcom/autonavi/aps/api/IAPS;

    invoke-interface {v0}, Lcom/autonavi/aps/api/IAPS;->onDestroy()V

    .line 94
    :cond_3
    iget-object v0, p0, Lcom/amap/api/location/a;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 95
    iput-object v2, p0, Lcom/amap/api/location/a;->a:Lcom/autonavi/aps/api/IAPS;

    .line 96
    sput-object v2, Lcom/amap/api/location/a;->b:Lcom/amap/api/location/a;

    .line 97
    iput-object v2, p0, Lcom/amap/api/location/a;->j:Lcom/amap/api/location/AMapLocation;

    .line 98
    iput-object v2, p0, Lcom/amap/api/location/a;->c:Lcom/amap/api/location/a$a;

    .line 99
    return-void
.end method

.method public a(JFLcom/amap/api/location/AMapLocationListener;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 103
    new-instance v0, Lcom/amap/api/location/a$b;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/amap/api/location/a$b;-><init>(JFLcom/amap/api/location/AMapLocationListener;)V

    .line 106
    iget-object v1, p0, Lcom/amap/api/location/a;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v0, p0, Lcom/amap/api/location/a;->l:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/location/a;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 108
    iget-object v0, p0, Lcom/amap/api/location/a;->l:Landroid/location/LocationManager;

    const-string v1, "gps"

    iget-wide v2, p0, Lcom/amap/api/location/a;->p:J

    iget v4, p0, Lcom/amap/api/location/a;->o:F

    iget-object v5, p0, Lcom/amap/api/location/a;->s:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 111
    iput-boolean v6, p0, Lcom/amap/api/location/a;->m:Z

    .line 117
    :cond_0
    return-void
.end method

.method public a(Landroid/location/LocationListener;)V
    .locals 2
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/amap/api/location/a;->c:Lcom/amap/api/location/a$a;

    if-nez v0, :cond_0

    .line 127
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/a;->c:Lcom/amap/api/location/a$a;

    invoke-virtual {v0}, Lcom/amap/api/location/a$a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 124
    sget v1, Lcom/amap/api/location/a;->h:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 125
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 126
    iget-object v1, p0, Lcom/amap/api/location/a;->c:Lcom/amap/api/location/a$a;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/a$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public b()Lcom/amap/api/location/AMapLocation;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/amap/api/location/a;->j:Lcom/amap/api/location/AMapLocation;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/amap/api/location/a;->j:Lcom/amap/api/location/AMapLocation;

    .line 133
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/a;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/location/core/f;->c(Landroid/content/Context;)Lcom/amap/api/location/AMapLocation;

    move-result-object v0

    goto :goto_0
.end method

.method public run()V
    .locals 14

    .prologue
    const-wide/16 v3, 0x1388

    .line 138
    .line 139
    :goto_0
    iget-boolean v0, p0, Lcom/amap/api/location/a;->d:Z

    if-eqz v0, :cond_f

    .line 140
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/location/a;->e:Ljava/lang/Thread;

    .line 141
    iget-object v0, p0, Lcom/amap/api/location/a;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 143
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 158
    :cond_0
    iget-object v5, p0, Lcom/amap/api/location/a;->i:Ljava/util/ArrayList;

    monitor-enter v5

    .line 160
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/location/a;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 162
    const-wide/16 v0, 0x64

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 166
    :goto_1
    :try_start_3
    monitor-exit v5

    goto :goto_0

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 163
    :catch_1
    move-exception v0

    .line 164
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/amap/api/location/a;->i:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amap/api/location/a;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/location/a$b;

    .line 170
    invoke-static {}, Lcom/amap/api/location/core/f;->a()J

    move-result-wide v6

    .line 171
    iget v1, p0, Lcom/amap/api/location/a;->o:F

    iget v2, v0, Lcom/amap/api/location/a$b;->b:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    iget v1, v0, Lcom/amap/api/location/a$b;->b:F

    :goto_2
    iput v1, p0, Lcom/amap/api/location/a;->o:F

    .line 173
    iget-wide v1, p0, Lcom/amap/api/location/a;->p:J

    iget-wide v8, v0, Lcom/amap/api/location/a$b;->a:J

    cmp-long v1, v1, v8

    if-lez v1, :cond_4

    iget-wide v1, v0, Lcom/amap/api/location/a$b;->a:J

    :goto_3
    iput-wide v1, p0, Lcom/amap/api/location/a;->p:J

    .line 175
    if-eqz v0, :cond_e

    .line 177
    iget-wide v1, v0, Lcom/amap/api/location/a$b;->a:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_5

    move-wide v1, v3

    :goto_4
    iput-wide v1, p0, Lcom/amap/api/location/a;->q:J

    .line 182
    iget-wide v1, v0, Lcom/amap/api/location/a$b;->d:J

    sub-long v1, v6, v1

    iget-wide v8, v0, Lcom/amap/api/location/a$b;->a:J

    cmp-long v1, v1, v8

    if-ltz v1, :cond_2

    .line 183
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amap/api/location/a$b;->e:Z

    .line 185
    :cond_2
    iget-boolean v1, v0, Lcom/amap/api/location/a$b;->e:Z

    if-eqz v1, :cond_e

    .line 186
    iget-object v1, p0, Lcom/amap/api/location/a;->c:Lcom/amap/api/location/a$a;

    if-nez v1, :cond_6

    .line 187
    monitor-exit v5

    goto/16 :goto_0

    .line 171
    :cond_3
    iget v1, p0, Lcom/amap/api/location/a;->o:F

    goto :goto_2

    .line 173
    :cond_4
    iget-wide v1, p0, Lcom/amap/api/location/a;->p:J

    goto :goto_3

    .line 177
    :cond_5
    iget-wide v1, v0, Lcom/amap/api/location/a$b;->a:J

    goto :goto_4

    .line 189
    :cond_6
    iget-object v1, p0, Lcom/amap/api/location/a;->c:Lcom/amap/api/location/a$a;

    invoke-virtual {v1}, Lcom/amap/api/location/a$a;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 190
    const/4 v1, 0x0

    .line 191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sget-wide v10, Lcom/amap/api/location/a;->r:J

    sub-long/2addr v8, v10

    iget-wide v10, p0, Lcom/amap/api/location/a;->p:J

    const-wide/16 v12, 0xa

    mul-long/2addr v10, v12

    cmp-long v8, v8, v10

    if-lez v8, :cond_a

    .line 192
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/amap/api/location/a;->m:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 198
    :goto_5
    :try_start_5
    iget-object v8, p0, Lcom/amap/api/location/a;->n:Landroid/location/Location;

    if-eqz v8, :cond_7

    iget-boolean v8, p0, Lcom/amap/api/location/a;->m:Z

    if-nez v8, :cond_8

    .line 199
    :cond_7
    invoke-direct {p0}, Lcom/amap/api/location/a;->f()Lcom/autonavi/aps/api/Location;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v1

    .line 206
    :cond_8
    :goto_6
    if-nez v1, :cond_9

    :try_start_6
    iget-object v8, p0, Lcom/amap/api/location/a;->n:Landroid/location/Location;

    if-eqz v8, :cond_e

    iget-boolean v8, p0, Lcom/amap/api/location/a;->m:Z

    if-eqz v8, :cond_e

    .line 208
    :cond_9
    const/4 v8, 0x0

    iput-boolean v8, v0, Lcom/amap/api/location/a$b;->e:Z

    .line 209
    iput-wide v6, v0, Lcom/amap/api/location/a$b;->d:J

    .line 211
    if-eqz v1, :cond_b

    .line 212
    invoke-direct {p0, v1}, Lcom/amap/api/location/a;->a(Lcom/autonavi/aps/api/Location;)Lcom/amap/api/location/AMapLocation;

    move-result-object v1

    .line 225
    :goto_7
    iget-object v6, p0, Lcom/amap/api/location/a;->j:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 226
    iput-object v1, p0, Lcom/amap/api/location/a;->j:Lcom/amap/api/location/AMapLocation;

    iput-object v1, v0, Lcom/amap/api/location/a$b;->f:Lcom/amap/api/location/AMapLocation;

    .line 227
    sget v6, Lcom/amap/api/location/a;->f:I

    iput v6, v2, Landroid/os/Message;->what:I

    .line 228
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 229
    iget-object v0, p0, Lcom/amap/api/location/a;->c:Lcom/amap/api/location/a$a;

    if-nez v0, :cond_d

    .line 230
    monitor-exit v5

    goto/16 :goto_0

    .line 194
    :cond_a
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/amap/api/location/a;->m:Z

    goto :goto_5

    .line 201
    :catch_2
    move-exception v8

    .line 202
    if-eqz v0, :cond_8

    .line 203
    const/4 v8, 0x1

    iput-boolean v8, v0, Lcom/amap/api/location/a$b;->e:Z

    goto :goto_6

    .line 215
    :cond_b
    iget-object v1, p0, Lcom/amap/api/location/a;->n:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    iget-object v1, p0, Lcom/amap/api/location/a;->n:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Lcom/amap/api/location/core/f;->a(DD)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 218
    iget-object v1, p0, Lcom/amap/api/location/a;->n:Landroid/location/Location;

    invoke-direct {p0, v1}, Lcom/amap/api/location/a;->a(Landroid/location/Location;)Lcom/amap/api/location/AMapLocation;

    move-result-object v1

    goto :goto_7

    .line 221
    :cond_c
    new-instance v1, Lcom/amap/api/location/AMapLocation;

    iget-object v6, p0, Lcom/amap/api/location/a;->n:Landroid/location/Location;

    invoke-direct {v1, v6}, Lcom/amap/api/location/AMapLocation;-><init>(Landroid/location/Location;)V

    goto :goto_7

    .line 232
    :cond_d
    iget-object v0, p0, Lcom/amap/api/location/a;->c:Lcom/amap/api/location/a$a;

    invoke-virtual {v0, v2}, Lcom/amap/api/location/a$a;->sendMessage(Landroid/os/Message;)Z

    .line 233
    iget-object v0, p0, Lcom/amap/api/location/a;->k:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/amap/api/location/core/f;->a(Landroid/content/Context;Lcom/amap/api/location/AMapLocation;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 239
    :cond_e
    :try_start_7
    iget-wide v0, p0, Lcom/amap/api/location/a;->q:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 243
    :goto_8
    :try_start_8
    monitor-exit v5

    goto/16 :goto_0

    .line 240
    :catch_3
    move-exception v0

    .line 241
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_8

    .line 245
    :cond_f
    return-void
.end method
