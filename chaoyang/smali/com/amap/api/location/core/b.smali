.class public Lcom/amap/api/location/core/b;
.super Ljava/lang/Object;
.source "AuthManager.java"


# static fields
.field public static a:I

.field public static b:Ljava/lang/String;

.field public static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, -0x1

    sput v0, Lcom/amap/api/location/core/b;->a:I

    .line 21
    const-string v0, ""

    sput-object v0, Lcom/amap/api/location/core/b;->b:Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    sput v0, Lcom/amap/api/location/core/b;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/location/core/a;
        }
    .end annotation

    .prologue
    .line 75
    .line 77
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 79
    new-instance v1, Ljava/io/PushbackInputStream;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 80
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 81
    invoke-virtual {v1, v0}, Ljava/io/PushbackInputStream;->read([B)I

    .line 82
    invoke-virtual {v1, v0}, Ljava/io/PushbackInputStream;->unread([B)V

    .line 83
    const/4 v2, 0x0

    aget-byte v2, v0, v2

    const/16 v3, 0x1f

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    aget-byte v0, v0, v2

    const/16 v2, -0x75

    if-ne v0, v2, :cond_0

    .line 84
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/UnknownServiceException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 86
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    new-instance v0, Lcom/amap/api/location/core/a;

    const-string v1, "\u534f\u8bae\u89e3\u6790\u9519\u8bef - ProtocolException"

    invoke-direct {v0, v1}, Lcom/amap/api/location/core/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :catch_1
    move-exception v0

    .line 91
    new-instance v0, Lcom/amap/api/location/core/a;

    const-string v1, "\u672a\u77e5\u4e3b\u673a - UnKnowHostException"

    invoke-direct {v0, v1}, Lcom/amap/api/location/core/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :catch_2
    move-exception v0

    .line 93
    new-instance v0, Lcom/amap/api/location/core/a;

    const-string v1, "\u670d\u52a1\u5668\u8fde\u63a5\u5931\u8d25 - UnknownServiceException"

    invoke-direct {v0, v1}, Lcom/amap/api/location/core/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :catch_3
    move-exception v0

    .line 95
    new-instance v0, Lcom/amap/api/location/core/a;

    const-string v1, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v1}, Lcom/amap/api/location/core/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amap/api/location/core/j;->a()Lcom/amap/api/location/core/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/location/core/j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/log/init"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Z
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/location/core/a;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 26
    const-class v4, Lcom/amap/api/location/core/b;

    monitor-enter v4

    .line 28
    const/4 v5, 0x0

    .line 31
    :try_start_0
    invoke-static {}, Lcom/amap/api/location/core/b;->b()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 34
    :try_start_1
    invoke-static {}, Lcom/amap/api/location/core/b;->a()Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-static {p0}, Lcom/amap/api/location/core/f;->a(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v3

    invoke-static {v1, v0, v3}, Lcom/amap/api/location/core/h;->a(Ljava/lang/String;[BLjava/net/Proxy;)Ljava/net/HttpURLConnection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Lcom/amap/api/location/core/a; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    .line 37
    :try_start_2
    invoke-static {v3}, Lcom/amap/api/location/core/b;->a(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Lcom/amap/api/location/core/a; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v1

    .line 38
    :try_start_3
    invoke-static {v1}, Lcom/amap/api/location/core/b;->a(Ljava/io/InputStream;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Lcom/amap/api/location/core/a; {:try_start_3 .. :try_end_3} :catch_6

    move-result v0

    .line 44
    if-eqz v1, :cond_0

    .line 46
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 52
    :cond_0
    if-eqz v2, :cond_1

    .line 54
    :try_start_5
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 60
    :cond_1
    if-eqz v3, :cond_2

    .line 61
    :try_start_6
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 65
    :cond_2
    monitor-exit v4

    return v0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    :try_start_7
    new-instance v0, Lcom/amap/api/location/core/a;

    const-string v1, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v1}, Lcom/amap/api/location/core/a;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    .line 55
    :catch_1
    move-exception v0

    .line 56
    :try_start_8
    new-instance v0, Lcom/amap/api/location/core/a;

    const-string v1, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v1}, Lcom/amap/api/location/core/a;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 39
    :catch_2
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 40
    :goto_0
    :try_start_9
    const-string v6, "AuthFailure"

    invoke-virtual {v0}, Lcom/amap/api/location/core/a;->a()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-virtual {v0}, Lcom/amap/api/location/core/a;->printStackTrace()V

    .line 42
    new-instance v6, Lcom/amap/api/location/core/a;

    invoke-virtual {v0}, Lcom/amap/api/location/core/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/amap/api/location/core/a;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 44
    :catchall_1
    move-exception v0

    :goto_1
    if-eqz v1, :cond_3

    .line 46
    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 52
    :cond_3
    if-eqz v2, :cond_4

    .line 54
    :try_start_b
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    .line 60
    :cond_4
    if-eqz v3, :cond_5

    .line 61
    :try_start_c
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 62
    :cond_5
    throw v0

    .line 47
    :catch_3
    move-exception v0

    .line 48
    new-instance v0, Lcom/amap/api/location/core/a;

    const-string v1, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v1}, Lcom/amap/api/location/core/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :catch_4
    move-exception v0

    .line 56
    new-instance v0, Lcom/amap/api/location/core/a;

    const-string v1, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v1}, Lcom/amap/api/location/core/a;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 44
    :catchall_2
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object v1, v2

    goto :goto_1

    .line 39
    :catch_5
    move-exception v0

    move-object v1, v2

    goto :goto_0

    :catch_6
    move-exception v0

    goto :goto_0
.end method

.method private static a(Ljava/io/InputStream;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/location/core/a;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 102
    .line 104
    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-static {p0}, Lcom/amap/api/location/core/c;->a(Ljava/io/InputStream;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 105
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 106
    const-string v2, "status"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    const-string v2, "status"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 108
    if-ne v2, v0, :cond_3

    .line 109
    const/4 v2, 0x1

    sput v2, Lcom/amap/api/location/core/b;->a:I

    .line 114
    :cond_0
    :goto_0
    const-string v2, "info"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 115
    const-string v2, "info"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/amap/api/location/core/b;->b:Ljava/lang/String;

    .line 117
    :cond_1
    sget v2, Lcom/amap/api/location/core/b;->a:I

    if-nez v2, :cond_4

    .line 118
    const-string v2, "AuthFailure"

    sget-object v3, Lcom/amap/api/location/core/b;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance v2, Lcom/amap/api/location/core/a;

    const-string v3, "key\u9274\u6743\u5931\u8d25"

    invoke-direct {v2, v3}, Lcom/amap/api/location/core/a;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :catch_0
    move-exception v2

    .line 123
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    sget v2, Lcom/amap/api/location/core/b;->a:I

    if-ne v2, v0, :cond_5

    .line 128
    :cond_2
    :goto_1
    return v0

    .line 110
    :cond_3
    if-nez v2, :cond_0

    .line 111
    const/4 v2, 0x0

    :try_start_2
    sput v2, Lcom/amap/api/location/core/b;->a:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 125
    :catchall_0
    move-exception v2

    sget v2, Lcom/amap/api/location/core/b;->a:I

    if-eq v2, v0, :cond_2

    move v0, v1

    .line 128
    goto :goto_1

    .line 125
    :cond_4
    sget v2, Lcom/amap/api/location/core/b;->a:I

    if-eq v2, v0, :cond_2

    move v0, v1

    .line 128
    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method private static b()[B
    .locals 2

    .prologue
    .line 134
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 135
    const-string v1, "resType=json&encode=UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method
