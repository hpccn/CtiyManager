.class public Lcom/amap/api/location/core/j;
.super Ljava/lang/Object;
.source "MapServerUrl.java"


# static fields
.field private static g:Lcom/amap/api/location/core/j;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "http://webrd01.is.autonavi.com"

    iput-object v0, p0, Lcom/amap/api/location/core/j;->a:Ljava/lang/String;

    .line 19
    const-string v0, "http://tm.mapabc.com"

    iput-object v0, p0, Lcom/amap/api/location/core/j;->b:Ljava/lang/String;

    .line 20
    const-string v0, "http://restapi.amap.com"

    iput-object v0, p0, Lcom/amap/api/location/core/j;->c:Ljava/lang/String;

    .line 28
    const-string v0, "http://ds.mapabc.com:8888"

    iput-object v0, p0, Lcom/amap/api/location/core/j;->d:Ljava/lang/String;

    .line 29
    const-string v0, "http://mst01.is.autonavi.com"

    iput-object v0, p0, Lcom/amap/api/location/core/j;->e:Ljava/lang/String;

    .line 31
    const-string v0, "http://tmds.mapabc.com"

    iput-object v0, p0, Lcom/amap/api/location/core/j;->f:Ljava/lang/String;

    .line 9
    return-void
.end method

.method public static declared-synchronized a()Lcom/amap/api/location/core/j;
    .locals 2

    .prologue
    .line 12
    const-class v1, Lcom/amap/api/location/core/j;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amap/api/location/core/j;->g:Lcom/amap/api/location/core/j;

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Lcom/amap/api/location/core/j;

    invoke-direct {v0}, Lcom/amap/api/location/core/j;-><init>()V

    sput-object v0, Lcom/amap/api/location/core/j;->g:Lcom/amap/api/location/core/j;

    .line 15
    :cond_0
    sget-object v0, Lcom/amap/api/location/core/j;->g:Lcom/amap/api/location/core/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 12
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/amap/api/location/core/j;->c:Ljava/lang/String;

    return-object v0
.end method
