.class public Lcom/autonavi/amap/mapcore/MapLoader;
.super Ljava/lang/Object;
.source "MapLoader.java"


# instance fields
.field createtime:J

.field datasource:I

.field inRequest:Z

.field mCanceled:Z

.field mMapCallback:Lcom/autonavi/amap/mapcore/BaseMapCallImplement;

.field mMapCore:Lcom/autonavi/amap/mapcore/MapCore;

.field mapLevel:I

.field public mapTiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/MapSourceGridData;",
            ">;"
        }
    .end annotation
.end field

.field nextImgDataLength:I

.field recievedDataBuffer:[B

.field recievedDataSize:I

.field recievedHeader:Z


# direct methods
.method public constructor <init>(Lcom/autonavi/amap/mapcore/BaseMapCallImplement;Lcom/autonavi/amap/mapcore/MapCore;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/MapLoader;->mapTiles:Ljava/util/ArrayList;

    .line 28
    iput-boolean v1, p0, Lcom/autonavi/amap/mapcore/MapLoader;->mCanceled:Z

    .line 32
    iput v1, p0, Lcom/autonavi/amap/mapcore/MapLoader;->recievedDataSize:I

    .line 33
    iput v1, p0, Lcom/autonavi/amap/mapcore/MapLoader;->nextImgDataLength:I

    .line 34
    iput-boolean v1, p0, Lcom/autonavi/amap/mapcore/MapLoader;->recievedHeader:Z

    .line 35
    iput-boolean v1, p0, Lcom/autonavi/amap/mapcore/MapLoader;->inRequest:Z

    .line 36
    iput v1, p0, Lcom/autonavi/amap/mapcore/MapLoader;->datasource:I

    .line 79
    iput-object p1, p0, Lcom/autonavi/amap/mapcore/MapLoader;->mMapCallback:Lcom/autonavi/amap/mapcore/BaseMapCallImplement;

    .line 80
    iput p3, p0, Lcom/autonavi/amap/mapcore/MapLoader;->datasource:I

    .line 81
    iput-object p2, p0, Lcom/autonavi/amap/mapcore/MapLoader;->mMapCore:Lcom/autonavi/amap/mapcore/MapCore;

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amap/mapcore/MapLoader;->createtime:J

    .line 83
    return-void
.end method

.method private processRecivedData()V
    .locals 7

    .prologue
    const/4 v4, 0x4

    const/16 v3, 0x8

    const/4 v6, 0x0

    .line 285
    iget v0, p0, Lcom/autonavi/amap/mapcore/MapLoader;->nextImgDataLength:I

    if-nez v0, :cond_1

    .line 286
    iget v0, p0, Lcom/autonavi/amap/mapcore/MapLoader;->recievedDataSize:I

    if-lt v0, v3, :cond_0

    .line 288
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapLoader;->recievedDataBuffer:[B

    invoke-static {v0, v6}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/autonavi/amap/mapcore/MapLoader;->nextImgDataLength:I

    .line 289
    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/MapLoader;->processRecivedData()V

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    iget v0, p0, Lcom/autonavi/amap/mapcore/MapLoader;->recievedDataSize:I

    iget v1, p0, Lcom/autonavi/amap/mapcore/MapLoader;->nextImgDataLength:I

    if-lt v0, v1, :cond_0

    .line 295
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapLoader;->recievedDataBuffer:[B

    invoke-static {v0, v6}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    move-result v0

    .line 296
    iget-object v1, p0, Lcom/autonavi/amap/mapcore/MapLoader;->recievedDataBuffer:[B

    invoke-static {v1, v4}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    move-result v1

    .line 298
    if-nez v1, :cond_5

    .line 299
    iget v1, p0, Lcom/autonavi/amap/mapcore/MapLoader;->datasource:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 300
    iget-object v1, p0, Lcom/autonavi/amap/mapcore/MapLoader;->recievedDataBuffer:[B

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v1, v3, v0}, Lcom/autonavi/amap/mapcore/MapLoader;->processRecivedTileDataBmp([BII)V

    .line 334
    :goto_1
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapLoader;->recievedDataBuffer:[B

    iget v1, p0, Lcom/autonavi/amap/mapcore/MapLoader;->nextImgDataLength:I

    iget-object v2, p0, Lcom/autonavi/amap/mapcore/MapLoader;->recievedDataBuffer:[B

    iget v3, p0, Lcom/autonavi/amap/mapcore/MapLoader;->recievedDataSize:I

    iget v4, p0, Lcom/autonavi/amap/mapcore/MapLoader;->nextImgDataLength:I

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, v6, v3}, Lcom/autonavi/amap/mapcore/Convert;->moveArray([BI[BII)V

    .line 338
    iget v0, p0, Lcom/autonavi/amap/mapcore/MapLoader;->recievedDataSize:I

    iget v1, p0, Lcom/autonavi/amap/mapcore/MapLoader;->nextImgDataLength:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/autonavi/amap/mapcore/MapLoader;->recievedDataSize:I

    .line 339
    iput v6, p0, Lcom/autonavi/amap/mapcore/MapLoader;->nextImgDataLength:I

    .line 340
    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/MapLoader;->processRecivedData()V

    goto :goto_0

    .line 302
    :cond_2
    iget v1, p0, Lcom/autonavi/amap/mapcore/MapLoader;->datasource:I

    if-ne v1, v4, :cond_3

    .line 303
    iget-object v1, p0, Lcom/autonavi/amap/mapcore/MapLoader;->recievedDataBuffer:[B

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v1, v3, v0}, Lcom/autonavi/amap/mapcore/MapLoader;->processRecivedTileDataVTmc([BII)V

    goto :goto_1

    .line 305
    :cond_3
    iget v1, p0, Lcom/autonavi/amap/mapcore/MapLoader;->datasource:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_4

    .line 306
    iget-object v1, p0, Lcom/autonavi/amap/mapcore/MapLoader;->recievedDataBuffer:[B

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v1, v3, v0}, Lcom/autonavi/amap/mapcore/MapLoader;->processRecivedModels([BII)V

    goto :goto_1

    .line 309
    :cond_4
    iget-object v1, p0, Lcom/autonavi/amap/mapcore/MapLoader;->recievedDataBuffer:[B

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v1, v3, v0}, Lcom/autonavi/amap/mapcore/MapLoader;->processRecivedTileData([BII)V

    goto :goto_1

    .line 315
    :cond_5
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Lcom/autonavi/amap/mapcore/MapLoader;->recievedDataBuffer:[B

    const/16 v4, 0x8

    invoke-direct {v2, v3, v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 317
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 319
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 320
    const/16 v3, 0x80

    new-array v3, v3, [B

    .line 322
    :goto_2
    invoke-virtual {v0, v3}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-le v4, v5, :cond_6

    .line 323
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 329
    :catch_0
    move-exception v0

    .line 330
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 325
    :cond_6
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 327
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/autonavi/amap/mapcore/MapLoader;->processRecivedTileData([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public OnException(I)V
    .locals 2
    .parameter

    .prologue
    .line 86
    iget v0, p0, Lcom/autonavi/amap/mapcore/MapLoader;->datasource:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/autonavi/amap/mapcore/MapLoader;->datasource:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapLoader;->mMapCallback:Lcom/autonavi/amap/mapcore/BaseMapCallImplement;

    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->OnMapLoaderError(I)V

    .line 90
    :cond_0
    return-void
.end method

.method public addReuqestTiles(Lcom/autonavi/amap/mapcore/MapSourceGridData;)V
    .locals 1
    .parameter

    .prologue
    .line 221
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapLoader;->mapTiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    return-void
.end method

.method public destory()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapLoader;->mapTiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 40
    iput-object v1, p0, Lcom/autonavi/amap/mapcore/MapLoader;->mapTiles:Ljava/util/ArrayList;

    .line 41
    iput-object v1, p0, Lcom/autonavi/amap/mapcore/MapLoader;->recievedDataBuffer:[B

    .line 42
    sget-object v0, Lcom/autonavi/amap/mapcore/VTMCDataCache;->vtmcHs:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 43
    sget-object v0, Lcom/autonavi/amap/mapcore/VTMCDataCache;->vtmcList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 44
    return-void
.end method

.method public doRequest()V
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/16 v8, 0x3ea

    .line 94
    iput-boolean v4, p0, Lcom/autonavi/amap/mapcore/MapLoader;->inRequest:Z

    .line 96
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/MapLoader;->isRequestValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    invoke-virtual {p0, p0}, Lcom/autonavi/amap/mapcore/MapLoader;->onConnectionOver(Lcom/autonavi/amap/mapcore/MapLoader;)V

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapLoader;->mMapCallback:Lcom/autonavi/amap/mapcore/BaseMapCallImplement;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 103
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_d

    .line 108
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v4, :cond_5

    .line 110
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapLoader;->mMapCallback:Lcom/autonavi/amap/mapcore/BaseMapCallImplement;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 112
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapLoader;->mMapCallback:Lcom/autonavi/amap/mapcore/BaseMapCallImplement;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v0

    move-object v4, v2

    move v2, v0

    move-object v0, v1

    .line 125
    :goto_1
    const/4 v5, 0x0

    .line 129
    :try_start_0
    new-instance v6, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v6}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 132
    const/16 v7, 0x2710

    invoke-static {v6, v7}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 133
    const v7, 0x186a0

    invoke-static {v6, v7}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 135
    new-instance v7, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v7, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 136
    if-eqz v0, :cond_2

    .line 137
    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-direct {v0, v4, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 138
    invoke-interface {v7}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string v4, "http.route.default-proxy"

    invoke-interface {v2, v4, v0}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 142
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/MapLoader;->getGridParma()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/autonavi/amap/mapcore/MapLoader;->mMapCallback:Lcom/autonavi/amap/mapcore/BaseMapCallImplement;

    invoke-virtual {v4}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->getMapSvrAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/amapsrv/MPS?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 148
    if-eqz v7, :cond_9

    .line 149
    invoke-interface {v7, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 150
    const/16 v2, 0xc8

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    if-ne v2, v4, :cond_8

    .line 153
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 154
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 156
    :try_start_1
    invoke-virtual {p0, p0}, Lcom/autonavi/amap/mapcore/MapLoader;->onConnectionOpened(Lcom/autonavi/amap/mapcore/MapLoader;)V

    .line 157
    const/16 v2, 0x800

    new-array v2, v2, [B

    .line 160
    :goto_2
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v6, -0x1

    if-le v4, v6, :cond_3

    .line 161
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/MapLoader;->isRequestValid()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Lcom/autonavi/amap/mapcore/MapLoader;->mCanceled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v6, :cond_6

    .line 179
    :cond_3
    :goto_3
    invoke-virtual {p0, p0}, Lcom/autonavi/amap/mapcore/MapLoader;->onConnectionOver(Lcom/autonavi/amap/mapcore/MapLoader;)V

    .line 180
    if-eqz v1, :cond_4

    .line 182
    :try_start_2
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 188
    :cond_4
    :goto_4
    if-eqz v0, :cond_0

    .line 190
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    invoke-virtual {p0, v8}, Lcom/autonavi/amap/mapcore/MapLoader;->OnException(I)V

    goto/16 :goto_0

    .line 116
    :cond_5
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v4

    .line 117
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v2

    .line 118
    if-eqz v4, :cond_c

    .line 119
    new-instance v0, Ljava/net/Proxy;

    sget-object v5, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v6, Ljava/net/InetSocketAddress;

    invoke-direct {v6, v4, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v5, v6}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    goto/16 :goto_1

    .line 164
    :cond_6
    add-int/2addr v3, v4

    .line 165
    const/4 v6, 0x0

    :try_start_4
    invoke-virtual {p0, p0, v6, v2, v4}, Lcom/autonavi/amap/mapcore/MapLoader;->onConnectionRecieveData(Lcom/autonavi/amap/mapcore/MapLoader;I[BI)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 175
    :catch_1
    move-exception v2

    .line 177
    :goto_5
    const/16 v2, 0x3ea

    :try_start_5
    invoke-virtual {p0, v2}, Lcom/autonavi/amap/mapcore/MapLoader;->OnException(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 179
    invoke-virtual {p0, p0}, Lcom/autonavi/amap/mapcore/MapLoader;->onConnectionOver(Lcom/autonavi/amap/mapcore/MapLoader;)V

    .line 180
    if-eqz v1, :cond_7

    .line 182
    :try_start_6
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 188
    :cond_7
    :goto_6
    if-eqz v0, :cond_0

    .line 190
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    .line 191
    :catch_2
    move-exception v0

    .line 192
    invoke-virtual {p0, v8}, Lcom/autonavi/amap/mapcore/MapLoader;->OnException(I)V

    goto/16 :goto_0

    .line 168
    :cond_8
    const/16 v0, 0x3ea

    :try_start_8
    invoke-virtual {p0, v0}, Lcom/autonavi/amap/mapcore/MapLoader;->OnException(I)V

    :goto_7
    move-object v0, v1

    goto :goto_3

    .line 172
    :cond_9
    const/16 v0, 0x3ea

    invoke-virtual {p0, v0}, Lcom/autonavi/amap/mapcore/MapLoader;->OnException(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_7

    .line 175
    :catch_3
    move-exception v0

    move-object v0, v1

    goto :goto_5

    .line 183
    :catch_4
    move-exception v1

    .line 184
    invoke-virtual {p0, v8}, Lcom/autonavi/amap/mapcore/MapLoader;->OnException(I)V

    goto :goto_4

    .line 183
    :catch_5
    move-exception v1

    .line 184
    invoke-virtual {p0, v8}, Lcom/autonavi/amap/mapcore/MapLoader;->OnException(I)V

    goto :goto_6

    .line 179
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_8
    invoke-virtual {p0, p0}, Lcom/autonavi/amap/mapcore/MapLoader;->onConnectionOver(Lcom/autonavi/amap/mapcore/MapLoader;)V

    .line 180
    if-eqz v1, :cond_a

    .line 182
    :try_start_9
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 188
    :cond_a
    :goto_9
    if-eqz v2, :cond_b

    .line 190
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 194
    :cond_b
    :goto_a
    throw v0

    .line 183
    :catch_6
    move-exception v1

    .line 184
    invoke-virtual {p0, v8}, Lcom/autonavi/amap/mapcore/MapLoader;->OnException(I)V

    goto :goto_9

    .line 191
    :catch_7
    move-exception v1

    .line 192
    invoke-virtual {p0, v8}, Lcom/autonavi/amap/mapcore/MapLoader;->OnException(I)V

    goto :goto_a

    .line 179
    :catchall_1
    move-exception v2

    move-object v9, v2

    move-object v2, v0

    move-object v0, v9

    goto :goto_8

    :cond_c
    move-object v0, v1

    goto/16 :goto_1

    :cond_d
    move-object v0, v1

    move v2, v3

    move-object v4, v1

    goto/16 :goto_1
.end method

.method public getGridParma()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 48
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 50
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapLoader;->mapTiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapLoader;->mapTiles:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/MapSourceGridData;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapSourceGridData;->getGridName()Ljava/lang/String;

    move-result-object v0

    .line 52
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 55
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 59
    iget v0, p0, Lcom/autonavi/amap/mapcore/MapLoader;->datasource:I

    if-nez v0, :cond_2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "t=VMMV3&cp=1&mesh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    :goto_1
    return-object v0

    :cond_1
    move-object v0, v2

    .line 57
    goto :goto_1

    .line 61
    :cond_2
    iget v0, p0, Lcom/autonavi/amap/mapcore/MapLoader;->datasource:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "t=VMMBLDV3&cp=1&mesh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 63
    :cond_3
    iget v0, p0, Lcom/autonavi/amap/mapcore/MapLoader;->datasource:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "t=BMPBM&mesh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 65
    :cond_4
    iget v0, p0, Lcom/autonavi/amap/mapcore/MapLoader;->datasource:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "t=BMTI&mesh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 67
    :cond_5
    iget v0, p0, Lcom/autonavi/amap/mapcore/MapLoader;->datasource:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "t=TMCV&mesh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 69
    :cond_6
    iget v0, p0, Lcom/autonavi/amap/mapcore/MapLoader;->datasource:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "t=VMMV3&type=mod&cp=0&mid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_7
    move-object v0, v2

    .line 73
    goto/16 :goto_1
.end method

.method public isRequestValid()Z
    .locals 3

    .prologue
    .line 202
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapLoader;->mMapCallback:Lcom/autonavi/amap/mapcore/BaseMapCallImplement;

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/MapLoader;->mapTiles:Ljava/util/ArrayList;

    iget v2, p0, Lcom/autonavi/amap/mapcore/MapLoader;->datasource:I

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->isGridsInScreen(Ljava/util/ArrayList;I)Z

    move-result v0

    return v0
.end method

.method public onConnectionError(Lcom/autonavi/amap/mapcore/MapLoader;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 208
    return-void
.end method

.method public onConnectionOpened(Lcom/autonavi/amap/mapcore/MapLoader;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 212
    const/high16 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/MapLoader;->recievedDataBuffer:[B

    .line 213
    iput v1, p0, Lcom/autonavi/amap/mapcore/MapLoader;->nextImgDataLength:I

    .line 214
    iput v1, p0, Lcom/autonavi/amap/mapcore/MapLoader;->recievedDataSize:I

    .line 215
    iput-boolean v1, p0, Lcom/autonavi/amap/mapcore/MapLoader;->recievedHeader:Z

    .line 217
    return-void
.end method

.method public onConnectionOver(Lcom/autonavi/amap/mapcore/MapLoader;)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 225
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/autonavi/amap/mapcore/MapLoader;->recievedDataBuffer:[B

    .line 226
    iput v0, p0, Lcom/autonavi/amap/mapcore/MapLoader;->nextImgDataLength:I

    .line 227
    iput v0, p0, Lcom/autonavi/amap/mapcore/MapLoader;->recievedDataSize:I

    .line 228
    iget-object v1, p0, Lcom/autonavi/amap/mapcore/MapLoader;->mMapCallback:Lcom/autonavi/amap/mapcore/BaseMapCallImplement;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/MapLoader;->mMapCallback:Lcom/autonavi/amap/mapcore/BaseMapCallImplement;

    iget-object v1, v1, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->tileProcessCtrl:Lcom/autonavi/amap/mapcore/d;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/autonavi/amap/mapcore/MapLoader;->mapTiles:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 239
    :cond_0
    return-void

    :cond_1
    move v1, v0

    .line 232
    :goto_0
    iget-object v0, p1, Lcom/autonavi/amap/mapcore/MapLoader;->mapTiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 233
    iget-object v0, p1, Lcom/autonavi/amap/mapcore/MapLoader;->mapTiles:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/MapSourceGridData;

    .line 234
    if-eqz v0, :cond_2

    .line 235
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapLoader;->mMapCallback:Lcom/autonavi/amap/mapcore/BaseMapCallImplement;

    iget-object v2, v0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->tileProcessCtrl:Lcom/autonavi/amap/mapcore/d;

    iget-object v0, p1, Lcom/autonavi/amap/mapcore/MapLoader;->mapTiles:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/MapSourceGridData;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapSourceGridData;->getKeyGridName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/autonavi/amap/mapcore/d;->a(Ljava/lang/String;)V

    .line 232
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public onConnectionRecieveData(Lcom/autonavi/amap/mapcore/MapLoader;I[BI)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 243
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapLoader;->recievedDataBuffer:[B

    iget v1, p0, Lcom/autonavi/amap/mapcore/MapLoader;->recievedDataSize:I

    invoke-static {p3, v4, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 249
    iget v0, p0, Lcom/autonavi/amap/mapcore/MapLoader;->recievedDataSize:I

    add-int/2addr v0, p4

    iput v0, p0, Lcom/autonavi/amap/mapcore/MapLoader;->recievedDataSize:I

    .line 253
    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/MapLoader;->recievedHeader:Z

    if-nez v0, :cond_3

    .line 254
    iget v0, p0, Lcom/autonavi/amap/mapcore/MapLoader;->recievedDataSize:I

    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    .line 259
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapLoader;->recievedDataBuffer:[B

    invoke-static {v0, v4}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    move-result v0

    .line 262
    if-eqz v0, :cond_2

    .line 263
    iput-boolean v5, p1, Lcom/autonavi/amap/mapcore/MapLoader;->mCanceled:Z

    goto :goto_0

    .line 266
    :cond_2
    const/4 v0, 0x4

    .line 267
    iget-object v1, p0, Lcom/autonavi/amap/mapcore/MapLoader;->recievedDataBuffer:[B

    invoke-static {v1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    .line 268
    const/16 v0, 0x8

    .line 271
    iget-object v1, p0, Lcom/autonavi/amap/mapcore/MapLoader;->recievedDataBuffer:[B

    iget-object v2, p0, Lcom/autonavi/amap/mapcore/MapLoader;->recievedDataBuffer:[B

    add-int/lit8 v3, p4, -0x8

    invoke-static {v1, v0, v2, v4, v3}, Lcom/autonavi/amap/mapcore/Convert;->moveArray([BI[BII)V

    .line 273
    iget v0, p0, Lcom/autonavi/amap/mapcore/MapLoader;->recievedDataSize:I

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Lcom/autonavi/amap/mapcore/MapLoader;->recievedDataSize:I

    .line 274
    iput v4, p0, Lcom/autonavi/amap/mapcore/MapLoader;->nextImgDataLength:I

    .line 275
    iput-boolean v5, p0, Lcom/autonavi/amap/mapcore/MapLoader;->recievedHeader:Z

    .line 276
    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/MapLoader;->processRecivedData()V

    .line 281
    :cond_3
    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/MapLoader;->processRecivedData()V

    goto :goto_0
.end method

.method processRecivedModels([BII)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 401
    .line 402
    add-int/lit8 v0, p2, 0x1

    aget-byte v1, p1, p2

    .line 403
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, v0, v1}, Ljava/lang/String;-><init>([BII)V

    .line 405
    add-int/2addr v0, v1

    .line 406
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapLoader;->mMapCallback:Lcom/autonavi/amap/mapcore/BaseMapCallImplement;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->isMapEngineValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 413
    :goto_0
    return-void

    .line 409
    :cond_0
    sub-int v0, p3, p2

    new-array v0, v0, [B

    .line 410
    const/4 v1, 0x0

    sub-int v2, p3, p2

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 412
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapLoader;->mMapCore:Lcom/autonavi/amap/mapcore/MapCore;

    sub-int v1, p3, p2

    iget v2, p0, Lcom/autonavi/amap/mapcore/MapLoader;->datasource:I

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/autonavi/amap/mapcore/MapCore;->putMapData([BIII)V

    goto :goto_0
.end method

.method processRecivedTileData([BII)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 348
    .line 349
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapLoader;->recievedDataBuffer:[B

    invoke-static {v0, p2}, Lcom/autonavi/amap/mapcore/Convert;->getShort([BI)S

    .line 350
    add-int/lit8 v0, p2, 0x2

    .line 351
    iget-object v1, p0, Lcom/autonavi/amap/mapcore/MapLoader;->recievedDataBuffer:[B

    invoke-static {v1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getShort([BI)S

    .line 352
    add-int/lit8 v0, v0, 0x2

    .line 353
    iget-object v1, p0, Lcom/autonavi/amap/mapcore/MapLoader;->recievedDataBuffer:[B

    invoke-static {v1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    .line 354
    add-int/lit8 v0, v0, 0x4

    .line 355
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    .line 356
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, v1, v0}, Ljava/lang/String;-><init>([BII)V

    .line 358
    add-int/2addr v0, v1

    .line 360
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapLoader;->mMapCallback:Lcom/autonavi/amap/mapcore/BaseMapCallImplement;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->isMapEngineValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 364
    :goto_0
    return-void

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapLoader;->mMapCore:Lcom/autonavi/amap/mapcore/MapCore;

    sub-int v1, p3, p2

    iget v2, p0, Lcom/autonavi/amap/mapcore/MapLoader;->datasource:I

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/autonavi/amap/mapcore/MapCore;->putMapData([BIII)V

    goto :goto_0
.end method

.method processRecivedTileDataBmp([BII)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 367
    .line 368
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapLoader;->recievedDataBuffer:[B

    invoke-static {v0, p2}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    .line 369
    add-int/lit8 v0, p2, 0x4

    .line 370
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    .line 371
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, v1, v0}, Ljava/lang/String;-><init>([BII)V

    .line 372
    add-int/2addr v0, v1

    .line 373
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapLoader;->mMapCallback:Lcom/autonavi/amap/mapcore/BaseMapCallImplement;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->isMapEngineValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 377
    :goto_0
    return-void

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapLoader;->mMapCore:Lcom/autonavi/amap/mapcore/MapCore;

    sub-int v1, p3, p2

    iget v2, p0, Lcom/autonavi/amap/mapcore/MapLoader;->datasource:I

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/autonavi/amap/mapcore/MapCore;->putMapData([BIII)V

    goto :goto_0
.end method

.method processRecivedTileDataVTmc([BII)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 380
    .line 381
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapLoader;->recievedDataBuffer:[B

    invoke-static {v0, p2}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    .line 382
    add-int/lit8 v0, p2, 0x4

    .line 383
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    .line 384
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, v1, v0}, Ljava/lang/String;-><init>([BII)V

    .line 385
    add-int/2addr v0, v1

    .line 386
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapLoader;->mMapCallback:Lcom/autonavi/amap/mapcore/BaseMapCallImplement;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->isMapEngineValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 398
    :goto_0
    return-void

    .line 389
    :cond_0
    invoke-static {}, Lcom/autonavi/amap/mapcore/VTMCDataCache;->getInstance()Lcom/autonavi/amap/mapcore/VTMCDataCache;

    move-result-object v0

    .line 391
    sub-int v1, p3, p2

    new-array v1, v1, [B

    .line 392
    const/4 v3, 0x0

    sub-int v4, p3, p2

    invoke-static {p1, p2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 394
    invoke-virtual {v0, v2, v1}, Lcom/autonavi/amap/mapcore/VTMCDataCache;->putData(Ljava/lang/String;[B)V

    .line 396
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapLoader;->mMapCore:Lcom/autonavi/amap/mapcore/MapCore;

    sub-int v1, p3, p2

    iget v2, p0, Lcom/autonavi/amap/mapcore/MapLoader;->datasource:I

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/autonavi/amap/mapcore/MapCore;->putMapData([BIII)V

    goto :goto_0
.end method
