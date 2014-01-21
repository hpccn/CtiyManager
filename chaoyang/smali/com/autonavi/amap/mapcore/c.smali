.class Lcom/autonavi/amap/mapcore/c;
.super Ljava/util/Vector;
.source "ConnectionManager.java"


# instance fields
.field protected a:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 95
    const/4 v0, -0x1

    iput v0, p0, Lcom/autonavi/amap/mapcore/c;->a:I

    return-void
.end method


# virtual methods
.method public declared-synchronized a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/c;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    const/4 v0, 0x0

    .line 111
    :goto_0
    monitor-exit p0

    return-object v0

    .line 108
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-super {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 109
    const/4 v1, 0x0

    invoke-super {p0, v1}, Ljava/util/Vector;->removeElementAt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 98
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/autonavi/amap/mapcore/c;->a:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/c;->size()I

    move-result v0

    iget v1, p0, Lcom/autonavi/amap/mapcore/c;->a:I

    if-le v0, v1, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/c;->a()Ljava/lang/Object;

    .line 102
    :cond_0
    invoke-super {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    monitor-exit p0

    return-void

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 119
    invoke-super {p0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 122
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/util/Vector;->removeAllElements()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit p0

    return-void

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
