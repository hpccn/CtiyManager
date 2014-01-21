.class Lcom/amap/api/a/aa;
.super Ljava/lang/Object;
.source "MapMessageQueue.java"


# instance fields
.field private a:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/amap/api/a/h;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/amap/api/a/z;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/a/aa;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 23
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/a/aa;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 8
    return-void
.end method


# virtual methods
.method public a()Lcom/amap/api/a/z;
    .locals 2

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/amap/api/a/aa;->b()I

    move-result v0

    if-nez v0, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/amap/api/a/aa;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/a/z;

    .line 34
    iget-object v1, p0, Lcom/amap/api/a/aa;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Lcom/amap/api/a/h;)V
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/amap/api/a/aa;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    return-void
.end method

.method public declared-synchronized a(Lcom/amap/api/a/z;)V
    .locals 1
    .parameter

    .prologue
    .line 26
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/a/aa;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit p0

    return-void

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/amap/api/a/aa;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    return v0
.end method

.method public c()Lcom/amap/api/a/h;
    .locals 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/amap/api/a/aa;->d()I

    move-result v0

    if-nez v0, :cond_0

    .line 48
    const/4 v0, 0x0

    .line 52
    :goto_0
    return-object v0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/amap/api/a/aa;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/a/h;

    .line 51
    iget-object v1, p0, Lcom/amap/api/a/aa;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/amap/api/a/aa;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    return v0
.end method
