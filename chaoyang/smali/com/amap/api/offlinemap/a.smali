.class public Lcom/amap/api/offlinemap/a;
.super Ljava/lang/Object;
.source "FileAccessI.java"


# instance fields
.field a:Ljava/io/RandomAccessFile;

.field b:J


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10
    const-string v0, ""

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/amap/api/offlinemap/a;-><init>(Ljava/lang/String;J)V

    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 16
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 17
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 20
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 21
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :cond_1
    :goto_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amap/api/offlinemap/a;->a:Ljava/io/RandomAccessFile;

    .line 28
    iput-wide p2, p0, Lcom/amap/api/offlinemap/a;->b:J

    .line 29
    iget-object v0, p0, Lcom/amap/api/offlinemap/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 30
    return-void

    .line 23
    :catch_0
    move-exception v0

    .line 24
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a([BII)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    monitor-enter p0

    const/4 v0, -0x1

    .line 35
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/offlinemap/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    monitor-exit p0

    return p3

    .line 37
    :catch_0
    move-exception v1

    .line 38
    :try_start_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move p3, v0

    goto :goto_0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
