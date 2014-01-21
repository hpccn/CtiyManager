.class public Lcom/amap/api/search/core/e;
.super Ljava/lang/Object;
.source "HttpTool.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/search/core/AMapException;
        }
    .end annotation

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    new-instance v0, Lcom/amap/api/search/core/AMapException;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/search/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 30
    if-eqz p1, :cond_1

    .line 31
    invoke-virtual {v0, p1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 35
    :goto_0
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 36
    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 37
    const v1, 0xc350

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 38
    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 40
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_2

    .line 41
    new-instance v0, Lcom/amap/api/search/core/AMapException;

    const-string v1, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-direct {v0, v1}, Lcom/amap/api/search/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 43
    :catch_0
    move-exception v0

    .line 44
    new-instance v0, Lcom/amap/api/search/core/AMapException;

    const-string v1, "\u672a\u77e5\u4e3b\u673a - UnKnowHostException"

    invoke-direct {v0, v1}, Lcom/amap/api/search/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_0

    .line 45
    :catch_1
    move-exception v0

    .line 46
    new-instance v0, Lcom/amap/api/search/core/AMapException;

    const-string v1, "url\u5f02\u5e38 - MalformedURLException"

    invoke-direct {v0, v1}, Lcom/amap/api/search/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :catch_2
    move-exception v0

    .line 48
    new-instance v0, Lcom/amap/api/search/core/AMapException;

    const-string v1, "\u534f\u8bae\u89e3\u6790\u9519\u8bef - ProtocolException"

    invoke-direct {v0, v1}, Lcom/amap/api/search/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :catch_3
    move-exception v0

    .line 50
    new-instance v0, Lcom/amap/api/search/core/AMapException;

    const-string v1, "socket \u8fde\u63a5\u8d85\u65f6 - SocketTimeoutException"

    invoke-direct {v0, v1}, Lcom/amap/api/search/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :catch_4
    move-exception v0

    .line 52
    new-instance v0, Lcom/amap/api/search/core/AMapException;

    const-string v1, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v1}, Lcom/amap/api/search/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_2
    return-object v0
.end method

.method public static a(Ljava/lang/String;[BLjava/net/Proxy;)Ljava/net/HttpURLConnection;
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/search/core/AMapException;
        }
    .end annotation

    .prologue
    .line 59
    if-nez p0, :cond_0

    .line 60
    new-instance v0, Lcom/amap/api/search/core/AMapException;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/search/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 65
    if-eqz p2, :cond_1

    .line 66
    invoke-virtual {v0, p2}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 70
    :goto_0
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 71
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 72
    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 73
    const v1, 0xc350

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 74
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 75
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 76
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 77
    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v1, "Content-Length"

    array-length v2, p1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v1, "Connection"

    const-string v2, "Keep-Alive"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v1, "X-MapAPI"

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/amap/api/search/core/b;->a(Landroid/content/Context;)Lcom/amap/api/search/core/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/search/core/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v1, "ia"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v1, "key"

    sget-object v2, Lcom/amap/api/search/core/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 87
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 88
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 89
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 90
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 91
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_2

    .line 92
    new-instance v0, Lcom/amap/api/search/core/AMapException;

    const-string v1, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-direct {v0, v1}, Lcom/amap/api/search/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 94
    :catch_0
    move-exception v0

    .line 95
    new-instance v0, Lcom/amap/api/search/core/AMapException;

    const-string v1, "\u672a\u77e5\u4e3b\u673a - UnKnowHostException"

    invoke-direct {v0, v1}, Lcom/amap/api/search/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    goto/16 :goto_0

    .line 96
    :catch_1
    move-exception v0

    .line 97
    new-instance v0, Lcom/amap/api/search/core/AMapException;

    const-string v1, "url\u5f02\u5e38 - MalformedURLException"

    invoke-direct {v0, v1}, Lcom/amap/api/search/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :catch_2
    move-exception v0

    .line 99
    new-instance v0, Lcom/amap/api/search/core/AMapException;

    const-string v1, "\u534f\u8bae\u89e3\u6790\u9519\u8bef - ProtocolException"

    invoke-direct {v0, v1}, Lcom/amap/api/search/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :catch_3
    move-exception v0

    .line 101
    new-instance v0, Lcom/amap/api/search/core/AMapException;

    const-string v1, "socket \u8fde\u63a5\u8d85\u65f6 - SocketTimeoutException"

    invoke-direct {v0, v1}, Lcom/amap/api/search/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :catch_4
    move-exception v0

    .line 103
    new-instance v0, Lcom/amap/api/search/core/AMapException;

    const-string v1, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v1}, Lcom/amap/api/search/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_2
    return-object v0
.end method
