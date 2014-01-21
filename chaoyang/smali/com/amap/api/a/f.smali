.class public Lcom/amap/api/a/f;
.super Ljava/lang/Object;
.source "AuthManager.java"


# static fields
.field public static a:I

.field static b:Ljava/lang/String;

.field public static d:Ljava/net/HttpURLConnection;


# instance fields
.field c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, -0x1

    sput v0, Lcom/amap/api/a/f;->a:I

    .line 32
    const-string v0, ""

    sput-object v0, Lcom/amap/api/a/f;->b:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/amap/api/a/f;->d:Ljava/net/HttpURLConnection;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/a/f;->c:I

    return-void
.end method

.method protected static a(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/a/b/a;
        }
    .end annotation

    .prologue
    .line 86
    .line 88
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 90
    new-instance v1, Ljava/io/PushbackInputStream;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 91
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 92
    invoke-virtual {v1, v0}, Ljava/io/PushbackInputStream;->read([B)I

    .line 93
    invoke-virtual {v1, v0}, Ljava/io/PushbackInputStream;->unread([B)V

    .line 94
    const/4 v2, 0x0

    aget-byte v2, v0, v2

    const/16 v3, 0x1f

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    aget-byte v0, v0, v2

    const/16 v2, -0x75

    if-ne v0, v2, :cond_0

    .line 95
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/UnknownServiceException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 97
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    new-instance v0, Lcom/amap/api/a/b/a;

    const-string v1, "\u534f\u8bae\u89e3\u6790\u9519\u8bef - ProtocolException"

    invoke-direct {v0, v1}, Lcom/amap/api/a/b/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :catch_1
    move-exception v0

    .line 102
    new-instance v0, Lcom/amap/api/a/b/a;

    const-string v1, "\u672a\u77e5\u4e3b\u673a - UnKnowHostException"

    invoke-direct {v0, v1}, Lcom/amap/api/a/b/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :catch_2
    move-exception v0

    .line 104
    new-instance v0, Lcom/amap/api/a/b/a;

    const-string v1, "\u670d\u52a1\u5668\u8fde\u63a5\u5931\u8d25 - UnknownServiceException"

    invoke-direct {v0, v1}, Lcom/amap/api/a/b/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :catch_3
    move-exception v0

    .line 106
    new-instance v0, Lcom/amap/api/a/b/a;

    const-string v1, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v1}, Lcom/amap/api/a/b/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    const-string v0, "http://restapi.amap.com/log/init"

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Z
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/a/b/a;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 38
    const-class v3, Lcom/amap/api/a/f;

    monitor-enter v3

    .line 39
    const/4 v4, 0x0

    .line 42
    :try_start_0
    invoke-static {}, Lcom/amap/api/a/f;->b()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 45
    :try_start_1
    invoke-static {}, Lcom/amap/api/a/f;->a()Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-static {p0}, Lcom/amap/api/a/b/c;->c(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v5

    invoke-static {v1, v0, v5}, Lcom/amap/api/a/b/d;->a(Ljava/lang/String;[BLjava/net/Proxy;)Ljava/net/HttpURLConnection;

    move-result-object v0

    sput-object v0, Lcom/amap/api/a/f;->d:Ljava/net/HttpURLConnection;

    .line 48
    sget-object v0, Lcom/amap/api/a/f;->d:Ljava/net/HttpURLConnection;

    invoke-static {v0}, Lcom/amap/api/a/f;->a(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Lcom/amap/api/a/b/a; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    .line 49
    :try_start_2
    invoke-static {v1}, Lcom/amap/api/a/f;->a(Ljava/io/InputStream;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Lcom/amap/api/a/b/a; {:try_start_2 .. :try_end_2} :catch_5

    move-result v0

    .line 55
    if-eqz v1, :cond_0

    .line 57
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 63
    :cond_0
    if-eqz v2, :cond_1

    .line 65
    :try_start_4
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 71
    :cond_1
    :try_start_5
    sget-object v1, Lcom/amap/api/a/f;->d:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_2

    .line 72
    sget-object v1, Lcom/amap/api/a/f;->d:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 73
    const/4 v1, 0x0

    sput-object v1, Lcom/amap/api/a/f;->d:Ljava/net/HttpURLConnection;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 76
    :cond_2
    monitor-exit v3

    return v0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    :try_start_6
    new-instance v0, Lcom/amap/api/a/b/a;

    const-string v1, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v1}, Lcom/amap/api/a/b/a;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 66
    :catch_1
    move-exception v0

    .line 67
    :try_start_7
    new-instance v0, Lcom/amap/api/a/b/a;

    const-string v1, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v1}, Lcom/amap/api/a/b/a;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 50
    :catch_2
    move-exception v0

    move-object v1, v2

    .line 51
    :goto_0
    :try_start_8
    const-string v5, "AuthFailure"

    invoke-virtual {v0}, Lcom/amap/api/a/b/a;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-virtual {v0}, Lcom/amap/api/a/b/a;->printStackTrace()V

    .line 53
    new-instance v5, Lcom/amap/api/a/b/a;

    invoke-virtual {v0}, Lcom/amap/api/a/b/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/amap/api/a/b/a;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 55
    :catchall_1
    move-exception v0

    :goto_1
    if-eqz v1, :cond_3

    .line 57
    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 63
    :cond_3
    if-eqz v2, :cond_4

    .line 65
    :try_start_a
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 71
    :cond_4
    :try_start_b
    sget-object v1, Lcom/amap/api/a/f;->d:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_5

    .line 72
    sget-object v1, Lcom/amap/api/a/f;->d:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 73
    const/4 v1, 0x0

    sput-object v1, Lcom/amap/api/a/f;->d:Ljava/net/HttpURLConnection;

    :cond_5
    throw v0

    .line 58
    :catch_3
    move-exception v0

    .line 59
    new-instance v0, Lcom/amap/api/a/b/a;

    const-string v1, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v1}, Lcom/amap/api/a/b/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :catch_4
    move-exception v0

    .line 67
    new-instance v0, Lcom/amap/api/a/b/a;

    const-string v1, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v1}, Lcom/amap/api/a/b/a;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 55
    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_1

    .line 50
    :catch_5
    move-exception v0

    goto :goto_0
.end method

.method private static a(Ljava/io/InputStream;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/a/b/a;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 112
    .line 114
    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-static {p0}, Lcom/amap/api/a/b/c;->a(Ljava/io/InputStream;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 115
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 116
    const-string v2, "status"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    const-string v2, "status"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 118
    if-ne v2, v0, :cond_3

    .line 119
    const/4 v2, 0x1

    sput v2, Lcom/amap/api/a/f;->a:I

    .line 124
    :cond_0
    :goto_0
    const-string v2, "info"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 125
    const-string v2, "info"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/amap/api/a/f;->b:Ljava/lang/String;

    .line 127
    :cond_1
    sget v2, Lcom/amap/api/a/f;->a:I

    if-nez v2, :cond_4

    .line 128
    const-string v2, "AuthFailure"

    sget-object v3, Lcom/amap/api/a/f;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    new-instance v2, Lcom/amap/api/a/b/a;

    const-string v3, "key\u9274\u6743\u5931\u8d25"

    invoke-direct {v2, v3}, Lcom/amap/api/a/b/a;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :catch_0
    move-exception v2

    .line 133
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    sget v2, Lcom/amap/api/a/f;->a:I

    if-ne v2, v0, :cond_5

    .line 138
    :cond_2
    :goto_1
    return v0

    .line 120
    :cond_3
    if-nez v2, :cond_0

    .line 121
    const/4 v2, 0x0

    :try_start_2
    sput v2, Lcom/amap/api/a/f;->a:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v2

    sget v2, Lcom/amap/api/a/f;->a:I

    if-eq v2, v0, :cond_2

    move v0, v1

    .line 138
    goto :goto_1

    .line 135
    :cond_4
    sget v2, Lcom/amap/api/a/f;->a:I

    if-eq v2, v0, :cond_2

    move v0, v1

    .line 138
    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method private static b()[B
    .locals 2

    .prologue
    .line 144
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 145
    const-string v1, "resType=json&encode=UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method
