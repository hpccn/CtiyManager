.class public Lcom/cymobile/ymwork/utils/json/JsonEngine;
.super Ljava/lang/Object;
.source "JsonEngine.java"


# static fields
.field private static final ENC_JSON:Ljava/lang/String; = "utf-8"

.field private static final HTTP_PORT:I = 0x50

.field private static final TAG:Ljava/lang/String; = "JsonEngine"

.field private static final TIME_OUT:I = 0x3a98


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHttpStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 10
    .parameter "spce"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketTimeoutException;,
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x3a98

    .line 84
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 85
    .local v5, url:Ljava/net/URL;
    invoke-static {}, Lcom/cymobile/ymwork/utils/json/JsonEngine;->getProxyUrl()Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, str1:Ljava/lang/String;
    const-string v6, "JsonEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "XMLDataNetwork getHttpStream() spce="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const-string v6, "JsonEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "XMLDataNetwork getHttpStream() str1="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v1, 0x0

    .line 90
    .local v1, conn:Ljava/net/HttpURLConnection;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 91
    new-instance v0, Ljava/net/InetSocketAddress;

    const/16 v6, 0x50

    invoke-direct {v0, v3, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 92
    .local v0, address:Ljava/net/InetSocketAddress;
    new-instance v2, Ljava/net/Proxy;

    sget-object v6, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v2, v6, v0}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 93
    .local v2, proxy:Ljava/net/Proxy;
    invoke-virtual {v5, v2}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v1

    .end local v1           #conn:Ljava/net/HttpURLConnection;
    check-cast v1, Ljava/net/HttpURLConnection;

    .line 97
    .end local v0           #address:Ljava/net/InetSocketAddress;
    .end local v2           #proxy:Ljava/net/Proxy;
    .restart local v1       #conn:Ljava/net/HttpURLConnection;
    :goto_0
    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 98
    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 99
    const-string v6, "Accept-Encoding"

    const-string v7, "gzip"

    invoke-virtual {v1, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v6, "content-encoding"

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 107
    .local v4, str2:Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string v6, "gzip"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 108
    :cond_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 111
    :goto_1
    return-object v6

    .line 95
    .end local v4           #str2:Ljava/lang/String;
    :cond_1
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .end local v1           #conn:Ljava/net/HttpURLConnection;
    check-cast v1, Ljava/net/HttpURLConnection;

    .restart local v1       #conn:Ljava/net/HttpURLConnection;
    goto :goto_0

    .line 111
    .restart local v4       #str2:Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6}, Lcom/cymobile/ymwork/utils/json/JsonEngine;->getUnzippedStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v6

    goto :goto_1
.end method

.method public static getJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "url"

    .prologue
    .line 29
    const-string v6, "JsonEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "JsonEngine getJson()"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 31
    .local v4, sb:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 33
    .local v2, is:Ljava/io/InputStream;
    :try_start_0
    invoke-static {p0}, Lcom/cymobile/ymwork/utils/json/JsonEngine;->getHttpStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 34
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 35
    .local v3, isr:Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 37
    .local v0, br:Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .local v5, str:Ljava/lang/String;
    if-nez v5, :cond_1

    .line 45
    if-eqz v2, :cond_0

    .line 46
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 51
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #isr:Ljava/io/InputStreamReader;
    .end local v5           #str:Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 38
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v3       #isr:Ljava/io/InputStreamReader;
    .restart local v5       #str:Ljava/lang/String;
    :cond_1
    :try_start_2
    const-string v6, "JsonEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "JsonEngine getJson()\u8bfb\u53d6:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 41
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #isr:Ljava/io/InputStreamReader;
    .end local v5           #str:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 42
    .local v1, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 45
    if-eqz v2, :cond_0

    .line 46
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 47
    :catch_1
    move-exception v1

    .line 48
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 43
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 45
    if-eqz v2, :cond_2

    .line 46
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 50
    :cond_2
    :goto_2
    throw v6

    .line 47
    :catch_2
    move-exception v1

    .line 48
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 47
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v3       #isr:Ljava/io/InputStreamReader;
    .restart local v5       #str:Ljava/lang/String;
    :catch_3
    move-exception v1

    .line 48
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getJsonStrFromFile(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 9
    .parameter "is"

    .prologue
    .line 55
    const-string v6, "JsonEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "JsonEngine getJsonStrFromFile()"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 57
    .local v4, sb:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 59
    .local v2, isr:Ljava/io/InputStreamReader;
    :try_start_0
    new-instance v3, Ljava/io/InputStreamReader;

    const-string v6, "utf-8"

    invoke-direct {v3, p0, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 60
    .end local v2           #isr:Ljava/io/InputStreamReader;
    .local v3, isr:Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 62
    .local v0, br:Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v5

    .local v5, str:Ljava/lang/String;
    if-nez v5, :cond_1

    .line 71
    if-eqz v3, :cond_3

    .line 72
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    move-object v2, v3

    .line 77
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #isr:Ljava/io/InputStreamReader;
    .end local v5           #str:Ljava/lang/String;
    .restart local v2       #isr:Ljava/io/InputStreamReader;
    :cond_0
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 63
    .end local v2           #isr:Ljava/io/InputStreamReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v3       #isr:Ljava/io/InputStreamReader;
    .restart local v5       #str:Ljava/lang/String;
    :cond_1
    :try_start_3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_0

    .line 65
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v5           #str:Ljava/lang/String;
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 66
    .end local v3           #isr:Ljava/io/InputStreamReader;
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    .restart local v2       #isr:Ljava/io/InputStreamReader;
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 71
    if-eqz v2, :cond_0

    .line 72
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 73
    :catch_1
    move-exception v1

    .line 74
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 67
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 68
    .restart local v1       #e:Ljava/io/IOException;
    :goto_3
    :try_start_6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 71
    if-eqz v2, :cond_0

    .line 72
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    .line 73
    :catch_3
    move-exception v1

    .line 74
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 69
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 71
    :goto_4
    if-eqz v2, :cond_2

    .line 72
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 76
    :cond_2
    :goto_5
    throw v6

    .line 73
    :catch_4
    move-exception v1

    .line 74
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 73
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #isr:Ljava/io/InputStreamReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v3       #isr:Ljava/io/InputStreamReader;
    .restart local v5       #str:Ljava/lang/String;
    :catch_5
    move-exception v1

    .line 74
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .end local v1           #e:Ljava/io/IOException;
    :cond_3
    move-object v2, v3

    .end local v3           #isr:Ljava/io/InputStreamReader;
    .restart local v2       #isr:Ljava/io/InputStreamReader;
    goto :goto_1

    .line 69
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #isr:Ljava/io/InputStreamReader;
    .end local v5           #str:Ljava/lang/String;
    .restart local v3       #isr:Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3           #isr:Ljava/io/InputStreamReader;
    .restart local v2       #isr:Ljava/io/InputStreamReader;
    goto :goto_4

    .line 67
    .end local v2           #isr:Ljava/io/InputStreamReader;
    .restart local v3       #isr:Ljava/io/InputStreamReader;
    :catch_6
    move-exception v1

    move-object v2, v3

    .end local v3           #isr:Ljava/io/InputStreamReader;
    .restart local v2       #isr:Ljava/io/InputStreamReader;
    goto :goto_3

    .line 65
    :catch_7
    move-exception v1

    goto :goto_2
.end method

.method public static getProxyUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 136
    const/4 v0, 0x0

    .line 137
    .local v0, str:Ljava/lang/String;
    invoke-static {}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->isWifi()Z

    move-result v1

    if-nez v1, :cond_0

    .line 138
    const-string v1, "JsonEngine"

    const-string v2, "XMLDataNetwork getProxyUrl() isWifi"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    .line 141
    :cond_0
    return-object v0
.end method

.method public static getUnzippedStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 10
    .parameter "is"

    .prologue
    .line 117
    const-string v8, "JsonEngine"

    const-string v9, "XMLDataNetwork getUnzippedStream()"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v1, 0x0

    .line 120
    .local v1, bis:Ljava/io/ByteArrayInputStream;
    :try_start_0
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 121
    .local v0, GZIPis:Ljava/util/zip/GZIPInputStream;
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 122
    .local v5, isr:Ljava/io/InputStreamReader;
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 123
    .local v3, buffer:Ljava/io/BufferedReader;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 124
    .local v6, sb:Ljava/lang/StringBuffer;
    const-string v7, ""

    .line 125
    .local v7, str:Ljava/lang/String;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_0

    .line 129
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .end local v1           #bis:Ljava/io/ByteArrayInputStream;
    .local v2, bis:Ljava/io/ByteArrayInputStream;
    move-object v1, v2

    .line 133
    .end local v0           #GZIPis:Ljava/util/zip/GZIPInputStream;
    .end local v2           #bis:Ljava/io/ByteArrayInputStream;
    .end local v3           #buffer:Ljava/io/BufferedReader;
    .end local v5           #isr:Ljava/io/InputStreamReader;
    .end local v6           #sb:Ljava/lang/StringBuffer;
    .end local v7           #str:Ljava/lang/String;
    .restart local v1       #bis:Ljava/io/ByteArrayInputStream;
    :goto_1
    return-object v1

    .line 126
    .restart local v0       #GZIPis:Ljava/util/zip/GZIPInputStream;
    .restart local v3       #buffer:Ljava/io/BufferedReader;
    .restart local v5       #isr:Ljava/io/InputStreamReader;
    .restart local v6       #sb:Ljava/lang/StringBuffer;
    .restart local v7       #str:Ljava/lang/String;
    :cond_0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    const-string v8, "JsonEngine"

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 130
    .end local v0           #GZIPis:Ljava/util/zip/GZIPInputStream;
    .end local v3           #buffer:Ljava/io/BufferedReader;
    .end local v5           #isr:Ljava/io/InputStreamReader;
    .end local v6           #sb:Ljava/lang/StringBuffer;
    .end local v7           #str:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 131
    .local v4, ex:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
