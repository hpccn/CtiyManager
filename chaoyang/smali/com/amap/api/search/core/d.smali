.class public Lcom/amap/api/search/core/d;
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
    .line 53
    const/4 v0, 0x0

    sput-object v0, Lcom/amap/api/search/core/d;->c:Ljava/lang/String;

    .line 59
    const/4 v0, 0x1

    sput-boolean v0, Lcom/amap/api/search/core/d;->a:Z

    .line 236
    const/16 v0, 0x9

    new-array v0, v0, [F

    sput-object v0, Lcom/amap/api/search/core/d;->b:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)D
    .locals 4
    .parameter

    .prologue
    .line 89
    int-to-double v0, p0

    const-wide v2, 0x40fb454000000000L

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static a(J)D
    .locals 4
    .parameter

    .prologue
    .line 191
    long-to-double v0, p0

    const-wide v2, 0x412e848000000000L

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static a(D)I
    .locals 2
    .parameter

    .prologue
    .line 85
    const-wide v0, 0x40fb454000000000L

    mul-double/2addr v0, p0

    double-to-int v0, v0

    return v0
.end method

.method public static a()Landroid/location/Address;
    .locals 2

    .prologue
    .line 206
    new-instance v0, Landroid/location/Address;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, v1}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V

    .line 207
    const-string v1, "CN"

    invoke-virtual {v0, v1}, Landroid/location/Address;->setCountryCode(Ljava/lang/String;)V

    .line 208
    const-string v1, "\u4e2d\u56fd"

    invoke-virtual {v0, v1}, Landroid/location/Address;->setCountryName(Ljava/lang/String;)V

    .line 210
    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 124
    sget-object v1, Lcom/amap/api/search/core/d;->c:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 125
    const/16 v1, 0x10

    new-array v3, v1, [C

    fill-array-data v3, :array_0

    .line 127
    const-string v1, ""

    .line 129
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x40

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 132
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 133
    const/4 v5, 0x0

    aget-object v2, v2, v5

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 134
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    move-object v2, v1

    move v1, v0

    .line 135
    :goto_0
    array-length v0, v4

    if-ge v1, v0, :cond_2

    .line 136
    aget-byte v0, v4, v1

    if-gez v0, :cond_1

    aget-byte v0, v4, v1

    add-int/lit16 v0, v0, 0x100

    .line 137
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    div-int/lit8 v5, v0, 0x10

    aget-char v5, v3, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 138
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    rem-int/lit8 v0, v0, 0x10

    aget-char v0, v3, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    array-length v2, v4

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    :cond_0
    add-int/lit8 v1, v1, 0x1

    move-object v2, v0

    goto :goto_0

    .line 136
    :cond_1
    aget-byte v0, v4, v1

    goto :goto_1

    .line 143
    :cond_2
    sput-object v2, Lcom/amap/api/search/core/d;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :cond_3
    :goto_2
    sget-object v0, Lcom/amap/api/search/core/d;->c:Ljava/lang/String;

    return-object v0

    .line 145
    :catch_0
    move-exception v0

    goto :goto_2

    .line 144
    :catch_1
    move-exception v0

    goto :goto_2

    .line 125
    nop

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
    .end array-data
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 70
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Ljava/net/Proxy;
    .locals 6
    .parameter

    .prologue
    .line 153
    const/4 v1, 0x0

    .line 155
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 157
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 158
    if-eqz v0, :cond_1

    .line 161
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 163
    invoke-static {p0}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 164
    invoke-static {p0}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v0

    move-object v3, v2

    move v2, v0

    .line 171
    :goto_0
    if-eqz v3, :cond_1

    .line 172
    new-instance v0, Ljava/net/Proxy;

    sget-object v4, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-direct {v5, v3, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v4, v5}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    :goto_1
    move-object v1, v0

    .line 181
    :goto_2
    return-object v1

    .line 167
    :cond_0
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v2

    .line 168
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    move-object v3, v2

    move v2, v0

    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    .line 178
    :catch_1
    move-exception v0

    .line 179
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/search/core/AMapException;
        }
    .end annotation

    .prologue
    .line 339
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 340
    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 341
    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 342
    const-string v1, "E6008"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 343
    new-instance v0, Lcom/amap/api/search/core/AMapException;

    const-string v1, "key\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/amap/api/search/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    :catch_0
    move-exception v0

    .line 353
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 355
    :cond_0
    return-void

    .line 345
    :cond_1
    :try_start_1
    const-string v1, "E6012"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 346
    new-instance v0, Lcom/amap/api/search/core/AMapException;

    const-string v1, "key\u4e0d\u5b58\u5728"

    invoke-direct {v0, v1}, Lcom/amap/api/search/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_2
    const-string v1, "E6018"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    new-instance v0, Lcom/amap/api/search/core/AMapException;

    const-string v1, "key\u88ab\u9501\u5b9a"

    invoke-direct {v0, v1}, Lcom/amap/api/search/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
.end method
