.class public Lcom/amap/api/search/core/g;
.super Ljava/lang/Object;
.source "MapServerUrl.java"


# static fields
.field private static b:Lcom/amap/api/search/core/g;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "http://restapi.amap.com"

    iput-object v0, p0, Lcom/amap/api/search/core/g;->a:Ljava/lang/String;

    .line 6
    return-void
.end method

.method public static declared-synchronized a()Lcom/amap/api/search/core/g;
    .locals 2

    .prologue
    .line 9
    const-class v1, Lcom/amap/api/search/core/g;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amap/api/search/core/g;->b:Lcom/amap/api/search/core/g;

    if-nez v0, :cond_0

    .line 10
    new-instance v0, Lcom/amap/api/search/core/g;

    invoke-direct {v0}, Lcom/amap/api/search/core/g;-><init>()V

    sput-object v0, Lcom/amap/api/search/core/g;->b:Lcom/amap/api/search/core/g;

    .line 12
    :cond_0
    sget-object v0, Lcom/amap/api/search/core/g;->b:Lcom/amap/api/search/core/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 9
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/amap/api/search/core/g;->a:Ljava/lang/String;

    return-object v0
.end method
