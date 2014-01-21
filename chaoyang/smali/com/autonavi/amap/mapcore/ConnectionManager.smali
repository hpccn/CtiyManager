.class public Lcom/autonavi/amap/mapcore/ConnectionManager;
.super Ljava/lang/Thread;
.source "ConnectionManager.java"


# instance fields
.field connectionPool:Lcom/autonavi/amap/mapcore/c;

.field sleepTime:I

.field threadFlag:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "ConnectionManager"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 11
    new-instance v0, Lcom/autonavi/amap/mapcore/c;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/c;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/ConnectionManager;->connectionPool:Lcom/autonavi/amap/mapcore/c;

    .line 12
    const/16 v0, 0x1e

    iput v0, p0, Lcom/autonavi/amap/mapcore/ConnectionManager;->sleepTime:I

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/ConnectionManager;->threadFlag:Z

    .line 10
    return-void
.end method


# virtual methods
.method public declared-synchronized addConntionTask(Lcom/autonavi/amap/mapcore/MapLoader;)V
    .locals 1
    .parameter

    .prologue
    .line 19
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ConnectionManager;->connectionPool:Lcom/autonavi/amap/mapcore/c;

    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore/c;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit p0

    return-void

    .line 19
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/ConnectionManager;->threadFlag:Z

    .line 83
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ConnectionManager;->connectionPool:Lcom/autonavi/amap/mapcore/c;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ConnectionManager;->connectionPool:Lcom/autonavi/amap/mapcore/c;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/c;->clear()V

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/ConnectionManager;->interrupt()V

    .line 88
    return-void
.end method

.method public declared-synchronized getTaskCount()I
    .locals 1

    .prologue
    .line 16
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ConnectionManager;->connectionPool:Lcom/autonavi/amap/mapcore/c;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/c;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized insertConntionTask(Lcom/autonavi/amap/mapcore/MapLoader;)V
    .locals 2
    .parameter

    .prologue
    .line 23
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ConnectionManager;->connectionPool:Lcom/autonavi/amap/mapcore/c;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/autonavi/amap/mapcore/c;->insertElementAt(Ljava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    monitor-exit p0

    return-void

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isEmptyTask()Z
    .locals 1

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ConnectionManager;->connectionPool:Lcom/autonavi/amap/mapcore/c;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/c;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 26
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/ConnectionManager;->threadFlag:Z

    if-eqz v0, :cond_5

    .line 28
    :goto_1
    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/ConnectionManager;->threadFlag:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/ConnectionManager;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ConnectionManager;->connectionPool:Lcom/autonavi/amap/mapcore/c;

    if-nez v0, :cond_2

    .line 30
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/ConnectionManager;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    .line 37
    :cond_2
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/ConnectionManager;->connectionPool:Lcom/autonavi/amap/mapcore/c;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/MapLoader;

    .line 38
    if-eqz v0, :cond_0

    .line 41
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/autonavi/amap/mapcore/MapLoader;->createtime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x32

    cmp-long v1, v1, v3

    if-lez v1, :cond_4

    .line 43
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapLoader;->doRequest()V

    goto :goto_1

    .line 48
    :cond_4
    const-wide/16 v1, 0xa

    :try_start_1
    invoke-static {v1, v2}, Lcom/autonavi/amap/mapcore/ConnectionManager;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 51
    :goto_2
    iget-boolean v1, p0, Lcom/autonavi/amap/mapcore/ConnectionManager;->threadFlag:Z

    if-nez v1, :cond_3

    goto :goto_1

    .line 49
    :catch_1
    move-exception v1

    goto :goto_2

    .line 76
    :cond_5
    return-void
.end method
