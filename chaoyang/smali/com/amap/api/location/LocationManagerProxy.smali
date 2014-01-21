.class public Lcom/amap/api/location/LocationManagerProxy;
.super Ljava/lang/Object;
.source "LocationManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/location/LocationManagerProxy$a;,
        Lcom/amap/api/location/LocationManagerProxy$b;
    }
.end annotation


# static fields
.field public static final GPS_PROVIDER:Ljava/lang/String; = "gps"

.field public static final KEY_LOCATION_CHANGED:Ljava/lang/String; = "location"

.field public static final KEY_PROVIDER_ENABLED:Ljava/lang/String; = "providerEnabled"

.field public static final KEY_PROXIMITY_ENTERING:Ljava/lang/String; = "entering"

.field public static final KEY_STATUS_CHANGED:Ljava/lang/String; = "status"

.field public static final NETWORK_PROVIDER:Ljava/lang/String; = "network"

.field private static c:Lcom/amap/api/location/LocationManagerProxy;


# instance fields
.field a:Lcom/amap/api/location/core/d;

.field private b:Landroid/location/LocationManager;

.field private d:Lcom/amap/api/location/a;

.field private e:Landroid/content/Context;

.field private f:Lcom/amap/api/location/c;

.field private g:Lcom/amap/api/location/LocationManagerProxy$b;

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/amap/api/location/LocationProviderProxy;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/String;

.field private k:D

.field private l:D

.field private m:Z

.field private n:J

.field private o:D

.field private p:Lcom/amap/api/location/c;

.field private q:Lcom/amap/api/location/LocationManagerProxy$a;

.field private r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/lang/Thread;

.field private t:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/amap/api/location/LocationManagerProxy;->c:Lcom/amap/api/location/LocationManagerProxy;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    .line 31
    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->d:Lcom/amap/api/location/a;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->h:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->i:Ljava/util/Hashtable;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/location/LocationManagerProxy;->m:Z

    .line 42
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/location/LocationManagerProxy;->n:J

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/location/LocationManagerProxy;->o:D

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->r:Ljava/util/ArrayList;

    .line 58
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/location/LocationManagerProxy;->a(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    .line 31
    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->d:Lcom/amap/api/location/a;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->h:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->i:Ljava/util/Hashtable;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/location/LocationManagerProxy;->m:Z

    .line 42
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/location/LocationManagerProxy;->n:J

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/location/LocationManagerProxy;->o:D

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->r:Ljava/util/ArrayList;

    .line 53
    invoke-direct {p0, p1}, Lcom/amap/api/location/LocationManagerProxy;->a(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/amap/api/location/LocationManagerProxy;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/amap/api/location/LocationManagerProxy;->e:Landroid/content/Context;

    .line 63
    invoke-static {p1}, Lcom/amap/api/location/core/d;->a(Landroid/content/Context;)Lcom/amap/api/location/core/d;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Lcom/amap/api/location/core/d;

    .line 64
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    invoke-static {v0, v1}, Lcom/amap/api/location/a;->a(Landroid/content/Context;Landroid/location/LocationManager;)Lcom/amap/api/location/a;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->d:Lcom/amap/api/location/a;

    .line 68
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Lcom/amap/api/location/core/d;

    invoke-virtual {v0, p1}, Lcom/amap/api/location/core/d;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->t:Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->d:Lcom/amap/api/location/a;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->s:Ljava/lang/Thread;

    .line 70
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->s:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 72
    return-void
.end method

.method static synthetic b(Lcom/amap/api/location/LocationManagerProxy;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/amap/api/location/LocationManagerProxy;)Z
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/amap/api/location/LocationManagerProxy;->m:Z

    return v0
.end method

.method static synthetic d(Lcom/amap/api/location/LocationManagerProxy;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->r:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic e(Lcom/amap/api/location/LocationManagerProxy;)D
    .locals 2
    .parameter

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/amap/api/location/LocationManagerProxy;->k:D

    return-wide v0
.end method

.method static synthetic f(Lcom/amap/api/location/LocationManagerProxy;)D
    .locals 2
    .parameter

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/amap/api/location/LocationManagerProxy;->l:D

    return-wide v0
.end method

.method static synthetic g(Lcom/amap/api/location/LocationManagerProxy;)J
    .locals 2
    .parameter

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/amap/api/location/LocationManagerProxy;->n:J

    return-wide v0
.end method

.method public static declared-synchronized getInstance(Landroid/app/Activity;)Lcom/amap/api/location/LocationManagerProxy;
    .locals 2
    .parameter

    .prologue
    .line 75
    const-class v1, Lcom/amap/api/location/LocationManagerProxy;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amap/api/location/LocationManagerProxy;->c:Lcom/amap/api/location/LocationManagerProxy;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/amap/api/location/LocationManagerProxy;

    invoke-direct {v0, p0}, Lcom/amap/api/location/LocationManagerProxy;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/amap/api/location/LocationManagerProxy;->c:Lcom/amap/api/location/LocationManagerProxy;

    .line 78
    :cond_0
    sget-object v0, Lcom/amap/api/location/LocationManagerProxy;->c:Lcom/amap/api/location/LocationManagerProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/amap/api/location/LocationManagerProxy;
    .locals 2
    .parameter

    .prologue
    .line 82
    const-class v1, Lcom/amap/api/location/LocationManagerProxy;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amap/api/location/LocationManagerProxy;->c:Lcom/amap/api/location/LocationManagerProxy;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/amap/api/location/LocationManagerProxy;

    invoke-direct {v0, p0}, Lcom/amap/api/location/LocationManagerProxy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/amap/api/location/LocationManagerProxy;->c:Lcom/amap/api/location/LocationManagerProxy;

    .line 85
    :cond_0
    sget-object v0, Lcom/amap/api/location/LocationManagerProxy;->c:Lcom/amap/api/location/LocationManagerProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic h(Lcom/amap/api/location/LocationManagerProxy;)D
    .locals 2
    .parameter

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/amap/api/location/LocationManagerProxy;->o:D

    return-wide v0
.end method


# virtual methods
.method public addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z
    .locals 1
    .parameter

    .prologue
    .line 321
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    move-result v0

    .line 324
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addProximityAlert(DDFJLandroid/app/PendingIntent;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    const-string v1, "lbs"

    iget-object v2, p0, Lcom/amap/api/location/LocationManagerProxy;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Lcom/amap/api/location/core/d;

    iget-object v2, p0, Lcom/amap/api/location/LocationManagerProxy;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/amap/api/location/core/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 93
    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->p:Lcom/amap/api/location/c;

    if-nez v1, :cond_0

    .line 94
    new-instance v1, Lcom/amap/api/location/c;

    invoke-direct {v1, p0}, Lcom/amap/api/location/c;-><init>(Lcom/amap/api/location/LocationManagerProxy;)V

    iput-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->p:Lcom/amap/api/location/c;

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->q:Lcom/amap/api/location/LocationManagerProxy$a;

    if-nez v1, :cond_1

    .line 97
    new-instance v1, Lcom/amap/api/location/LocationManagerProxy$a;

    invoke-direct {v1, p0}, Lcom/amap/api/location/LocationManagerProxy$a;-><init>(Lcom/amap/api/location/LocationManagerProxy;)V

    iput-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->q:Lcom/amap/api/location/LocationManagerProxy$a;

    .line 99
    :cond_1
    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->p:Lcom/amap/api/location/c;

    iget-object v2, p0, Lcom/amap/api/location/LocationManagerProxy;->q:Lcom/amap/api/location/LocationManagerProxy$a;

    const-wide/16 v3, 0x2710

    iget-object v6, p0, Lcom/amap/api/location/LocationManagerProxy;->j:Ljava/lang/String;

    move v5, p5

    invoke-virtual/range {v1 .. v6}, Lcom/amap/api/location/c;->a(Lcom/amap/api/location/AMapLocationListener;JFLjava/lang/String;)Z

    .line 101
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/amap/api/location/LocationManagerProxy;->m:Z

    .line 102
    iput-wide p1, p0, Lcom/amap/api/location/LocationManagerProxy;->k:D

    .line 103
    iput-wide p3, p0, Lcom/amap/api/location/LocationManagerProxy;->l:D

    .line 104
    float-to-double v1, p5

    iput-wide v1, p0, Lcom/amap/api/location/LocationManagerProxy;->o:D

    .line 105
    const-wide/16 v1, -0x1

    cmp-long v1, p6, v1

    if-eqz v1, :cond_2

    .line 106
    invoke-static {}, Lcom/amap/api/location/core/f;->a()J

    move-result-wide v1

    .line 107
    add-long v1, v1, p6

    iput-wide v1, p0, Lcom/amap/api/location/LocationManagerProxy;->n:J

    .line 109
    :cond_2
    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->r:Ljava/util/ArrayList;

    move-object/from16 v0, p8

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_3
    :goto_0
    return-void

    .line 111
    :cond_4
    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    if-eqz v1, :cond_3

    .line 112
    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Landroid/location/LocationManager;->addProximityAlert(DDFJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public addTestProvider(Ljava/lang/String;ZZZZZZZII)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 333
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Landroid/location/LocationManager;->addTestProvider(Ljava/lang/String;ZZZZZZZII)V

    .line 339
    :cond_0
    return-void
.end method

.method public clearTestProviderEnabled(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 343
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->clearTestProviderEnabled(Ljava/lang/String;)V

    .line 346
    :cond_0
    return-void
.end method

.method public clearTestProviderLocation(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 350
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->clearTestProviderLocation(Ljava/lang/String;)V

    .line 353
    :cond_0
    return-void
.end method

.method public clearTestProviderStatus(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 357
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->clearTestProviderStatus(Ljava/lang/String;)V

    .line 360
    :cond_0
    return-void
.end method

.method public destory()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 363
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->d:Lcom/amap/api/location/a;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->d:Lcom/amap/api/location/a;

    invoke-virtual {v0}, Lcom/amap/api/location/a;->a()V

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->i:Ljava/util/Hashtable;

    if-eqz v0, :cond_1

    .line 367
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->i:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 369
    :cond_1
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 370
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 372
    :cond_2
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->r:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 373
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 375
    :cond_3
    iput-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->i:Ljava/util/Hashtable;

    .line 376
    iput-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->h:Ljava/util/ArrayList;

    .line 377
    iput-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->r:Ljava/util/ArrayList;

    .line 378
    iput-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->d:Lcom/amap/api/location/a;

    .line 379
    sput-object v1, Lcom/amap/api/location/LocationManagerProxy;->c:Lcom/amap/api/location/LocationManagerProxy;

    .line 380
    return-void
.end method

.method public getAllProviders()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    .line 218
    if-eqz v0, :cond_1

    .line 219
    const-string v1, "lbs"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 220
    const-string v1, "lbs"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    :cond_0
    :goto_0
    return-object v0

    .line 223
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 224
    const-string v1, "lbs"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    invoke-virtual {v1}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 262
    const-string v0, "lbs"

    .line 263
    if-nez p1, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-object v0

    .line 266
    :cond_1
    const-string v1, "lbs"

    invoke-virtual {p0, v1}, Lcom/amap/api/location/LocationManagerProxy;->getProvider(Ljava/lang/String;)Lcom/amap/api/location/LocationProviderProxy;

    move-result-object v1

    .line 267
    invoke-virtual {v1, p1}, Lcom/amap/api/location/LocationProviderProxy;->meetsCriteria(Landroid/location/Criteria;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 268
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    invoke-virtual {v0, p1, p2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v0

    .line 271
    :cond_2
    if-eqz p2, :cond_0

    .line 272
    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/api/location/core/f;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 273
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    invoke-virtual {v0, p1, p2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;
    .locals 1
    .parameter

    .prologue
    .line 306
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v0

    .line 309
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLastKnownLocation(Ljava/lang/String;)Lcom/amap/api/location/AMapLocation;
    .locals 2
    .parameter

    .prologue
    .line 139
    const-string v0, "lbs"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Lcom/amap/api/location/core/d;

    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/core/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iput-object p1, p0, Lcom/amap/api/location/LocationManagerProxy;->j:Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->d:Lcom/amap/api/location/a;

    invoke-virtual {v0}, Lcom/amap/api/location/a;->b()Lcom/amap/api/location/AMapLocation;

    move-result-object v0

    .line 150
    :goto_0
    return-object v0

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 146
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 147
    new-instance v0, Lcom/amap/api/location/AMapLocation;

    invoke-direct {v0, v1}, Lcom/amap/api/location/AMapLocation;-><init>(Landroid/location/Location;)V

    goto :goto_0

    .line 150
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProvider(Ljava/lang/String;)Lcom/amap/api/location/LocationProviderProxy;
    .locals 2
    .parameter

    .prologue
    .line 290
    if-nez p1, :cond_0

    .line 291
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name\u4e0d\u80fd\u4e3a\u7a7a\uff01"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->i:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->i:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/location/LocationProviderProxy;

    .line 301
    :goto_0
    return-object v0

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    invoke-static {v0, p1}, Lcom/amap/api/location/LocationProviderProxy;->a(Landroid/location/LocationManager;Ljava/lang/String;)Lcom/amap/api/location/LocationProviderProxy;

    move-result-object v0

    .line 299
    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->i:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getProviders(Landroid/location/Criteria;Z)Ljava/util/List;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Criteria;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    invoke-virtual {v0, p1, p2}, Landroid/location/LocationManager;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v0

    .line 246
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 251
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 253
    :cond_1
    const-string v1, "lbs"

    invoke-virtual {p0, p1, p2}, Lcom/amap/api/location/LocationManagerProxy;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 255
    const-string v1, "lbs"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_2
    return-object v0
.end method

.method public getProviders(Z)Ljava/util/List;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v0

    .line 233
    const-string v1, "lbs"

    invoke-virtual {p0, v1}, Lcom/amap/api/location/LocationManagerProxy;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 234
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 235
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 237
    :cond_1
    const-string v1, "lbs"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_2
    return-object v0
.end method

.method public isProviderEnabled(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 282
    const-string v0, "lbs"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/location/core/f;->b(Landroid/content/Context;)Z

    move-result v0

    .line 285
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V
    .locals 1
    .parameter

    .prologue
    .line 314
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    .line 317
    :cond_0
    return-void
.end method

.method public removeProximityAlert(Landroid/app/PendingIntent;)V
    .locals 4
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 119
    const-string v0, "lbs"

    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Lcom/amap/api/location/core/d;

    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/core/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 121
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->p:Lcom/amap/api/location/c;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->p:Lcom/amap/api/location/c;

    invoke-virtual {v0}, Lcom/amap/api/location/c;->a()V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->p:Lcom/amap/api/location/c;

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/location/LocationManagerProxy;->m:Z

    .line 127
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/location/LocationManagerProxy;->n:J

    .line 128
    iput-wide v2, p0, Lcom/amap/api/location/LocationManagerProxy;->o:D

    .line 129
    iput-wide v2, p0, Lcom/amap/api/location/LocationManagerProxy;->k:D

    .line 130
    iput-wide v2, p0, Lcom/amap/api/location/LocationManagerProxy;->l:D

    .line 136
    :cond_1
    :goto_0
    return-void

    .line 132
    :cond_2
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->removeProximityAlert(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public removeUpdates(Landroid/app/PendingIntent;)V
    .locals 1
    .parameter

    .prologue
    .line 207
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->f:Lcom/amap/api/location/c;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 209
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->f:Lcom/amap/api/location/c;

    invoke-virtual {v0}, Lcom/amap/api/location/c;->a()V

    .line 211
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->f:Lcom/amap/api/location/c;

    .line 212
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->removeUpdates(Landroid/app/PendingIntent;)V

    .line 213
    return-void
.end method

.method public removeUpdates(Lcom/amap/api/location/AMapLocationListener;)V
    .locals 1
    .parameter

    .prologue
    .line 179
    if-eqz p1, :cond_1

    .line 180
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->d:Lcom/amap/api/location/a;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->d:Lcom/amap/api/location/a;

    invoke-virtual {v0, p1}, Lcom/amap/api/location/a;->a(Landroid/location/LocationListener;)V

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 185
    :cond_1
    return-void
.end method

.method public requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 189
    const-string v0, "lbs"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Lcom/amap/api/location/core/d;

    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/core/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 191
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->f:Lcom/amap/api/location/c;

    if-nez v0, :cond_0

    .line 192
    new-instance v0, Lcom/amap/api/location/c;

    invoke-direct {v0, p0}, Lcom/amap/api/location/c;-><init>(Lcom/amap/api/location/LocationManagerProxy;)V

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->f:Lcom/amap/api/location/c;

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->g:Lcom/amap/api/location/LocationManagerProxy$b;

    if-nez v0, :cond_1

    .line 195
    new-instance v0, Lcom/amap/api/location/LocationManagerProxy$b;

    invoke-direct {v0, p0}, Lcom/amap/api/location/LocationManagerProxy$b;-><init>(Lcom/amap/api/location/LocationManagerProxy;)V

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->g:Lcom/amap/api/location/LocationManagerProxy$b;

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->f:Lcom/amap/api/location/c;

    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->g:Lcom/amap/api/location/LocationManagerProxy$b;

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/amap/api/location/c;->a(Lcom/amap/api/location/AMapLocationListener;JF)Z

    .line 199
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    :goto_0
    return-void

    .line 201
    :cond_2
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public requestLocationUpdates(Ljava/lang/String;JFLcom/amap/api/location/AMapLocationListener;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 156
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->s:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->s:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->s:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Lcom/amap/api/location/core/d;

    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/core/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "lbs"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 161
    const-string p1, "network"

    move-object v1, p1

    .line 163
    :goto_0
    iput-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->j:Ljava/lang/String;

    .line 164
    const-string v0, "lbs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Lcom/amap/api/location/core/d;

    iget-object v2, p0, Lcom/amap/api/location/LocationManagerProxy;->t:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/amap/api/location/core/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->d:Lcom/amap/api/location/a;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/amap/api/location/a;->a(JFLcom/amap/api/location/AMapLocationListener;)V

    .line 174
    :goto_1
    return-void

    .line 167
    :cond_1
    const-string v0, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 169
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->d:Lcom/amap/api/location/a;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/amap/api/location/a;->a(JFLcom/amap/api/location/AMapLocationListener;)V

    goto :goto_1

    .line 171
    :cond_2
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->b:Landroid/location/LocationManager;

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_1

    :cond_3
    move-object v1, p1

    goto :goto_0
.end method
