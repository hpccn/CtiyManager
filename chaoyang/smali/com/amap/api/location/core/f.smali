.class public Lcom/amap/api/location/core/f;
.super Ljava/lang/Object;
.source "CoreUtil.java"


# static fields
.field public static a:Z

.field static b:[F

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/amap/api/location/core/f;->c:Ljava/lang/String;

    .line 60
    const/4 v0, 0x1

    sput-boolean v0, Lcom/amap/api/location/core/f;->a:Z

    .line 237
    const/16 v0, 0x9

    new-array v0, v0, [F

    sput-object v0, Lcom/amap/api/location/core/f;->b:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(J)D
    .locals 4
    .parameter

    .prologue
    .line 192
    long-to-double v0, p0

    const-wide v2, 0x412e848000000000L

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static a()J
    .locals 4

    .prologue
    .line 80
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/32 v2, 0x3b9aca00

    div-long/2addr v0, v2

    .line 81
    return-wide v0
.end method

.method public static a(Landroid/content/Context;)Ljava/net/Proxy;
    .locals 6
    .parameter

    .prologue
    .line 154
    const/4 v1, 0x0

    .line 156
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 158
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 159
    if-eqz v0, :cond_1

    .line 162
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 164
    invoke-static {p0}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 165
    invoke-static {p0}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v0

    move-object v3, v2

    move v2, v0

    .line 172
    :goto_0
    if-eqz v3, :cond_1

    .line 173
    new-instance v0, Ljava/net/Proxy;

    sget-object v4, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-direct {v5, v3, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v4, v5}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    :goto_1
    move-object v1, v0

    .line 182
    :goto_2
    return-object v1

    .line 168
    :cond_0
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v2

    .line 169
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    move-object v3, v2

    move v2, v0

    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    .line 179
    :catch_1
    move-exception v0

    .line 180
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Lcom/amap/api/location/AMapLocation;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 315
    const-string v0, "last_know_location"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 317
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 318
    const-string v1, "last_know_lat"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 320
    const-string v1, "last_know_lng"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 322
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 323
    return-void
.end method

.method public static a(DD)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 326
    const/4 v0, 0x1

    .line 327
    const-wide/32 v2, 0xf4240

    invoke-static {v2, v3}, Lcom/amap/api/location/core/f;->a(J)D

    move-result-wide v2

    cmpg-double v2, p0, v2

    if-ltz v2, :cond_0

    const-wide/32 v2, 0x3dfd240

    invoke-static {v2, v3}, Lcom/amap/api/location/core/f;->a(J)D

    move-result-wide v2

    cmpl-double v2, p0, v2

    if-lez v2, :cond_1

    :cond_0
    move v0, v1

    .line 331
    :cond_1
    const-wide/32 v2, 0x2faf080

    invoke-static {v2, v3}, Lcom/amap/api/location/core/f;->a(J)D

    move-result-wide v2

    cmpg-double v2, p2, v2

    if-ltz v2, :cond_2

    const-wide/32 v2, 0x8a48640

    invoke-static {v2, v3}, Lcom/amap/api/location/core/f;->a(J)D

    move-result-wide v2

    cmpl-double v2, p2, v2

    if-lez v2, :cond_3

    :cond_2
    move v0, v1

    .line 335
    :cond_3
    return v0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 275
    if-nez p0, :cond_0

    move v0, v1

    .line 292
    :goto_0
    return v0

    .line 278
    :cond_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 280
    if-nez v0, :cond_1

    move v0, v1

    .line 281
    goto :goto_0

    .line 283
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 284
    if-nez v0, :cond_2

    move v0, v1

    .line 285
    goto :goto_0

    .line 287
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    .line 288
    if-eqz v0, :cond_3

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v2, :cond_3

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v0, v2, :cond_4

    :cond_3
    move v0, v1

    .line 290
    goto :goto_0

    .line 292
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Lcom/amap/api/location/AMapLocation;
    .locals 6
    .parameter

    .prologue
    .line 301
    const-string v0, "last_know_location"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 303
    const-string v1, ""

    .line 304
    new-instance v2, Lcom/amap/api/location/AMapLocation;

    invoke-direct {v2, v1}, Lcom/amap/api/location/AMapLocation;-><init>(Ljava/lang/String;)V

    .line 305
    const-string v1, "lbs"

    invoke-virtual {v2, v1}, Lcom/amap/api/location/AMapLocation;->setProvider(Ljava/lang/String;)V

    .line 306
    const-string v1, "last_know_lat"

    const-string v3, "0.0"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 307
    const-string v1, "last_know_lng"

    const-string v5, "0.0"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 308
    invoke-virtual {v2, v3, v4}, Lcom/amap/api/location/AMapLocation;->setLatitude(D)V

    .line 309
    invoke-virtual {v2, v0, v1}, Lcom/amap/api/location/AMapLocation;->setLongitude(D)V

    .line 310
    return-object v2
.end method
