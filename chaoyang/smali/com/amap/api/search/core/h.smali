.class public abstract Lcom/amap/api/search/core/h;
.super Ljava/lang/Object;
.source "ProtocalHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected a:Ljava/net/Proxy;

.field protected b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected c:I

.field protected d:I

.field protected e:I

.field protected f:I

.field protected g:Ljava/lang/String;

.field protected h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/net/Proxy;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    iput v2, p0, Lcom/amap/api/search/core/h;->c:I

    .line 332
    const/16 v0, 0x14

    iput v0, p0, Lcom/amap/api/search/core/h;->d:I

    .line 333
    iput v1, p0, Lcom/amap/api/search/core/h;->e:I

    .line 334
    iput v1, p0, Lcom/amap/api/search/core/h;->f:I

    .line 345
    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/search/core/h;->h:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/amap/api/search/core/h;->a:Ljava/net/Proxy;

    .line 30
    iput-object p1, p0, Lcom/amap/api/search/core/h;->b:Ljava/lang/Object;

    .line 31
    iput v2, p0, Lcom/amap/api/search/core/h;->c:I

    .line 32
    const/4 v0, 0x5

    iput v0, p0, Lcom/amap/api/search/core/h;->d:I

    .line 33
    const/4 v0, 0x2

    iput v0, p0, Lcom/amap/api/search/core/h;->e:I

    .line 34
    iput-object p4, p0, Lcom/amap/api/search/core/h;->g:Ljava/lang/String;

    .line 36
    return-void
.end method

.method private a()Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/search/core/AMapException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 92
    .line 96
    const/4 v0, 0x0

    move-object v1, v4

    move-object v5, v4

    move-object v2, v4

    move-object v3, v4

    .line 97
    :goto_0
    iget v6, p0, Lcom/amap/api/search/core/h;->c:I

    if-ge v0, v6, :cond_8

    .line 99
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/search/core/h;->e()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/amap/api/search/core/h;->h:Ljava/lang/String;

    .line 100
    invoke-virtual {p0}, Lcom/amap/api/search/core/h;->f()[B

    move-result-object v6

    .line 101
    if-nez v6, :cond_2

    .line 102
    iget-object v6, p0, Lcom/amap/api/search/core/h;->h:Ljava/lang/String;

    iget-object v7, p0, Lcom/amap/api/search/core/h;->a:Ljava/net/Proxy;

    invoke-static {v6, v7}, Lcom/amap/api/search/core/e;->a(Ljava/lang/String;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;

    move-result-object v3

    .line 107
    :goto_1
    invoke-virtual {p0, v3}, Lcom/amap/api/search/core/h;->a(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/amap/api/search/core/AMapException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v6

    .line 108
    :try_start_1
    invoke-direct {p0, v6}, Lcom/amap/api/search/core/h;->a(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    .line 109
    iget v0, p0, Lcom/amap/api/search/core/h;->c:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/amap/api/search/core/AMapException; {:try_start_1 .. :try_end_1} :catch_8

    .line 124
    if-eqz v6, :cond_a

    .line 126
    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v4

    .line 132
    :goto_2
    if-eqz v4, :cond_0

    .line 134
    :try_start_3
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 140
    :cond_0
    if-eqz v3, :cond_1

    .line 141
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v3, v4

    :cond_1
    :goto_3
    move-object v5, v4

    .line 142
    goto :goto_0

    .line 104
    :cond_2
    :try_start_4
    iget-object v7, p0, Lcom/amap/api/search/core/h;->h:Ljava/lang/String;

    iget-object v8, p0, Lcom/amap/api/search/core/h;->a:Ljava/net/Proxy;

    invoke-static {v7, v6, v8}, Lcom/amap/api/search/core/e;->a(Ljava/lang/String;[BLjava/net/Proxy;)Ljava/net/HttpURLConnection;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Lcom/amap/api/search/core/AMapException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v3

    goto :goto_1

    .line 127
    :catch_0
    move-exception v0

    .line 128
    new-instance v0, Lcom/amap/api/search/core/AMapException;

    const-string v1, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v1}, Lcom/amap/api/search/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :catch_1
    move-exception v0

    .line 136
    new-instance v0, Lcom/amap/api/search/core/AMapException;

    const-string v1, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v1}, Lcom/amap/api/search/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :catch_2
    move-exception v6

    move-object v9, v6

    move-object v6, v2

    move-object v2, v9

    .line 112
    :goto_4
    add-int/lit8 v0, v0, 0x1

    .line 113
    :try_start_5
    iget v7, p0, Lcom/amap/api/search/core/h;->c:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-ge v0, v7, :cond_7

    .line 115
    :try_start_6
    iget v2, p0, Lcom/amap/api/search/core/h;->e:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v7, v2

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_3

    .line 124
    if-eqz v6, :cond_9

    .line 126
    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    move-object v2, v4

    .line 132
    :goto_5
    if-eqz v4, :cond_3

    .line 134
    :try_start_8
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 140
    :cond_3
    if-eqz v3, :cond_1

    .line 141
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v3, v4

    .line 142
    goto :goto_3

    .line 116
    :catch_3
    move-exception v0

    .line 117
    :try_start_9
    new-instance v1, Lcom/amap/api/search/core/AMapException;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/amap/api/search/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 124
    :catchall_0
    move-exception v0

    :goto_6
    if-eqz v6, :cond_4

    .line 126
    :try_start_a
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 132
    :cond_4
    if-eqz v4, :cond_5

    .line 134
    :try_start_b
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 140
    :cond_5
    if-eqz v3, :cond_6

    .line 141
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 142
    :cond_6
    throw v0

    .line 120
    :cond_7
    :try_start_c
    invoke-virtual {p0}, Lcom/amap/api/search/core/h;->h()Ljava/lang/Object;

    .line 121
    new-instance v0, Lcom/amap/api/search/core/AMapException;

    invoke-virtual {v2}, Lcom/amap/api/search/core/AMapException;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/search/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 127
    :catch_4
    move-exception v0

    .line 128
    new-instance v0, Lcom/amap/api/search/core/AMapException;

    const-string v1, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v1}, Lcom/amap/api/search/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :catch_5
    move-exception v0

    .line 136
    new-instance v0, Lcom/amap/api/search/core/AMapException;

    const-string v1, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v1}, Lcom/amap/api/search/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :catch_6
    move-exception v0

    .line 128
    new-instance v0, Lcom/amap/api/search/core/AMapException;

    const-string v1, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v1}, Lcom/amap/api/search/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :catch_7
    move-exception v0

    .line 136
    new-instance v0, Lcom/amap/api/search/core/AMapException;

    const-string v1, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v1}, Lcom/amap/api/search/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_8
    return-object v1

    .line 124
    :catchall_1
    move-exception v0

    move-object v6, v2

    goto :goto_6

    .line 110
    :catch_8
    move-exception v2

    goto :goto_4

    :cond_9
    move-object v2, v6

    goto :goto_5

    :cond_a
    move-object v2, v6

    goto/16 :goto_2
.end method

.method private a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/search/core/AMapException;
        }
    .end annotation

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Lcom/amap/api/search/core/h;->b(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/search/core/AMapException;
        }
    .end annotation

    .prologue
    .line 151
    .line 153
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 155
    new-instance v1, Ljava/io/PushbackInputStream;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 156
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 157
    invoke-virtual {v1, v0}, Ljava/io/PushbackInputStream;->read([B)I

    .line 158
    invoke-virtual {v1, v0}, Ljava/io/PushbackInputStream;->unread([B)V

    .line 159
    const/4 v2, 0x0

    aget-byte v2, v0, v2

    const/16 v3, 0x1f

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    aget-byte v0, v0, v2

    const/16 v2, -0x75

    if-ne v0, v2, :cond_0

    .line 160
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/UnknownServiceException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 162
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    new-instance v0, Lcom/amap/api/search/core/AMapException;

    const-string v1, "\u534f\u8bae\u89e3\u6790\u9519\u8bef - ProtocolException"

    invoke-direct {v0, v1}, Lcom/amap/api/search/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :catch_1
    move-exception v0

    .line 167
    new-instance v0, Lcom/amap/api/search/core/AMapException;

    const-string v1, "\u672a\u77e5\u4e3b\u673a - UnKnowHostException"

    invoke-direct {v0, v1}, Lcom/amap/api/search/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :catch_2
    move-exception v0

    .line 169
    new-instance v0, Lcom/amap/api/search/core/AMapException;

    const-string v1, "\u670d\u52a1\u5668\u8fde\u63a5\u5931\u8d25 - UnknownServiceException"

    invoke-direct {v0, v1}, Lcom/amap/api/search/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :catch_3
    move-exception v0

    .line 171
    new-instance v0, Lcom/amap/api/search/core/AMapException;

    const-string v1, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v1}, Lcom/amap/api/search/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract b(Ljava/io/InputStream;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/search/core/AMapException;
        }
    .end annotation
.end method

.method protected abstract d()[B
.end method

.method protected abstract e()Ljava/lang/String;
.end method

.method protected f()[B
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/amap/api/search/core/h;->d()[B

    move-result-object v0

    .line 70
    return-object v0
.end method

.method public g()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/search/core/AMapException;
        }
    .end annotation

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 85
    iget-object v1, p0, Lcom/amap/api/search/core/h;->b:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 86
    invoke-direct {p0}, Lcom/amap/api/search/core/h;->a()Ljava/lang/Object;

    move-result-object v0

    .line 88
    :cond_0
    return-object v0
.end method

.method protected h()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 187
    const/4 v0, 0x0

    return-object v0
.end method
