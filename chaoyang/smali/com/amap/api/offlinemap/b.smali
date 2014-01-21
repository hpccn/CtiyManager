.class public Lcom/amap/api/offlinemap/b;
.super Ljava/lang/Thread;
.source "FileSplitterFetch.java"


# instance fields
.field a:Ljava/lang/String;

.field b:J

.field c:J

.field d:I

.field e:Z

.field f:Z

.field g:Lcom/amap/api/offlinemap/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJI)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 12
    iput-boolean v0, p0, Lcom/amap/api/offlinemap/b;->e:Z

    .line 13
    iput-boolean v0, p0, Lcom/amap/api/offlinemap/b;->f:Z

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/offlinemap/b;->g:Lcom/amap/api/offlinemap/a;

    .line 18
    iput-object p1, p0, Lcom/amap/api/offlinemap/b;->a:Ljava/lang/String;

    .line 19
    iput-wide p3, p0, Lcom/amap/api/offlinemap/b;->b:J

    .line 20
    iput-wide p5, p0, Lcom/amap/api/offlinemap/b;->c:J

    .line 21
    iput p7, p0, Lcom/amap/api/offlinemap/b;->d:I

    .line 22
    new-instance v0, Lcom/amap/api/offlinemap/a;

    iget-wide v1, p0, Lcom/amap/api/offlinemap/b;->b:J

    invoke-direct {v0, p2, v1, v2}, Lcom/amap/api/offlinemap/a;-><init>(Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/amap/api/offlinemap/b;->g:Lcom/amap/api/offlinemap/a;

    .line 23
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/offlinemap/b;->f:Z

    .line 64
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    .line 26
    :goto_0
    iget-wide v0, p0, Lcom/amap/api/offlinemap/b;->b:J

    iget-wide v2, p0, Lcom/amap/api/offlinemap/b;->c:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iget-boolean v0, p0, Lcom/amap/api/offlinemap/b;->f:Z

    if-nez v0, :cond_1

    .line 28
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/amap/api/offlinemap/b;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 31
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 32
    const-string v1, "Content-Type"

    const-string v2, "text/xml;"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bytes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/amap/api/offlinemap/b;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 34
    const-string v2, "RANGE"

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-static {v1}, Lcom/amap/api/offlinemap/h;->a(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 37
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 40
    :goto_1
    const/4 v2, 0x0

    const/16 v3, 0x400

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-lez v2, :cond_0

    iget-wide v3, p0, Lcom/amap/api/offlinemap/b;->b:J

    iget-wide v5, p0, Lcom/amap/api/offlinemap/b;->c:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    iget-boolean v3, p0, Lcom/amap/api/offlinemap/b;->f:Z

    if-nez v3, :cond_0

    .line 41
    iget-wide v3, p0, Lcom/amap/api/offlinemap/b;->b:J

    iget-object v5, p0, Lcom/amap/api/offlinemap/b;->g:Lcom/amap/api/offlinemap/a;

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6, v2}, Lcom/amap/api/offlinemap/a;->a([BII)I

    move-result v2

    int-to-long v5, v2

    add-long v2, v3, v5

    iput-wide v2, p0, Lcom/amap/api/offlinemap/b;->b:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 45
    :catch_0
    move-exception v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 43
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/offlinemap/b;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is over!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/offlinemap/h;->a(Ljava/lang/String;)V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/offlinemap/b;->e:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 49
    :cond_1
    return-void
.end method
