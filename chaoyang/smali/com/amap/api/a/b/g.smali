.class public Lcom/amap/api/a/b/g;
.super Ljava/lang/Object;
.source "Util.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)D
    .locals 20
    .parameter
    .parameter

    .prologue
    .line 295
    .line 296
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    .line 297
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    .line 298
    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    .line 299
    move-object/from16 v0, p1

    iget-wide v7, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    .line 300
    const-wide v9, 0x3f91df46a2529d37L

    mul-double/2addr v1, v9

    .line 301
    const-wide v9, 0x3f91df46a2529d37L

    mul-double/2addr v3, v9

    .line 302
    const-wide v9, 0x3f91df46a2529d37L

    mul-double/2addr v5, v9

    .line 303
    const-wide v9, 0x3f91df46a2529d37L

    mul-double/2addr v7, v9

    .line 304
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    .line 305
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    .line 306
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    .line 307
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    .line 308
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    .line 309
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    .line 310
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    .line 311
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    .line 312
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [D

    move-object/from16 v17, v0

    .line 313
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [D

    move-object/from16 v18, v0

    .line 314
    const/16 v19, 0x0

    mul-double/2addr v1, v3

    aput-wide v1, v17, v19

    .line 315
    const/4 v1, 0x1

    mul-double v2, v3, v9

    aput-wide v2, v17, v1

    .line 316
    const/4 v1, 0x2

    aput-wide v11, v17, v1

    .line 317
    const/4 v1, 0x0

    mul-double v2, v7, v5

    aput-wide v2, v18, v1

    .line 318
    const/4 v1, 0x1

    mul-double v2, v7, v13

    aput-wide v2, v18, v1

    .line 319
    const/4 v1, 0x2

    aput-wide v15, v18, v1

    .line 320
    const/4 v1, 0x0

    aget-wide v1, v17, v1

    const/4 v3, 0x0

    aget-wide v3, v18, v3

    sub-double/2addr v1, v3

    const/4 v3, 0x0

    aget-wide v3, v17, v3

    const/4 v5, 0x0

    aget-wide v5, v18, v5

    sub-double/2addr v3, v5

    mul-double/2addr v1, v3

    const/4 v3, 0x1

    aget-wide v3, v17, v3

    const/4 v5, 0x1

    aget-wide v5, v18, v5

    sub-double/2addr v3, v5

    const/4 v5, 0x1

    aget-wide v5, v17, v5

    const/4 v7, 0x1

    aget-wide v7, v18, v7

    sub-double/2addr v5, v7

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    const/4 v3, 0x2

    aget-wide v3, v17, v3

    const/4 v5, 0x2

    aget-wide v5, v18, v5

    sub-double/2addr v3, v5

    const/4 v5, 0x2

    aget-wide v5, v17, v5

    const/4 v7, 0x2

    aget-wide v7, v18, v7

    sub-double/2addr v5, v7

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    .line 324
    const-wide/high16 v3, 0x4000

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->asin(D)D

    move-result-wide v1

    const-wide v3, 0x41684dae328e2ad1L

    mul-double/2addr v1, v3

    return-wide v1
.end method

.method public static a(F)F
    .locals 3
    .parameter

    .prologue
    const/high16 v1, 0x4270

    const/4 v0, 0x0

    .line 59
    cmpg-float v2, p0, v0

    if-gez v2, :cond_1

    move p0, v0

    .line 64
    :cond_0
    :goto_0
    return p0

    .line 61
    :cond_1
    cmpl-float v0, p0, v1

    if-lez v0, :cond_0

    move p0, v1

    .line 62
    goto :goto_0
.end method

.method public static a(I)I
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 121
    int-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-int v0, v0

    .line 122
    shl-int v1, v4, v0

    if-lt v1, p0, :cond_0

    .line 123
    shl-int v0, v4, v0

    .line 125
    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    shl-int v0, v4, v0

    goto :goto_0
.end method

.method public static a([Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 149
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 192
    if-nez p0, :cond_0

    .line 193
    const/4 v0, 0x0

    .line 218
    :goto_0
    return-object v0

    .line 196
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 197
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    .line 208
    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 222
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 248
    :goto_0
    return-object v0

    .line 226
    :cond_0
    sget-object v0, Lcom/amap/api/maps/MapsInitializer;->sdcardDir:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amap/api/maps/MapsInitializer;->sdcardDir:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 228
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 230
    new-instance v1, Ljava/io/File;

    const-string v2, "amap"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 233
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 234
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 236
    :cond_2
    new-instance v0, Ljava/io/File;

    const-string v2, "mini_mapv3"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 238
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 239
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 241
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 243
    :cond_4
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/amap/api/maps/MapsInitializer;->sdcardDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_5

    .line 246
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 248
    :cond_5
    sget-object v0, Lcom/amap/api/maps/MapsInitializer;->sdcardDir:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    array-length v3, p0

    move v1, v0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, p0, v0

    .line 139
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    array-length v4, p0

    add-int/lit8 v4, v4, -0x1

    if-eq v1, v4, :cond_0

    .line 141
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a([F)Ljava/nio/FloatBuffer;
    .locals 2
    .parameter

    .prologue
    .line 87
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 88
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 89
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 90
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 91
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 92
    return-object v0
.end method

.method public static a([FLjava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 100
    invoke-virtual {p1, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 101
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 102
    return-object p1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 168
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 171
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 172
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 174
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 176
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_0

    .line 177
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 186
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 179
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 180
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 181
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static b(F)F
    .locals 3
    .parameter

    .prologue
    const/high16 v0, 0x41a0

    const/high16 v1, 0x4080

    .line 68
    cmpl-float v2, p0, v0

    if-lez v2, :cond_1

    move p0, v0

    .line 73
    :cond_0
    :goto_0
    return p0

    .line 70
    :cond_1
    cmpg-float v0, p0, v1

    if-gez v0, :cond_0

    move p0, v1

    .line 71
    goto :goto_0
.end method

.method public static b(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 329
    const/16 v0, 0x3e8

    if-ge p0, v0, :cond_0

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 334
    :goto_0
    return-object v0

    .line 332
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v1, p0, 0x3e8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "km"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 254
    const-string v0, ""

    .line 255
    sget-object v0, Lcom/amap/api/maps/MapsInitializer;->sdcardDir:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amap/api/maps/MapsInitializer;->sdcardDir:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 257
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 259
    new-instance v1, Ljava/io/File;

    const-string v2, "amap"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 262
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 263
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 265
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v2, "VMAP2"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 266
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 267
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 269
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 277
    :cond_3
    :goto_0
    return-object v0

    .line 271
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amap/api/maps/MapsInitializer;->sdcardDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "VMAP2/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 272
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 274
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    goto :goto_0
.end method

.method public static c(F)I
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 281
    const/4 v1, 0x0

    move v2, v1

    move v1, v0

    .line 285
    :goto_0
    int-to-float v3, v1

    cmpl-float v3, v3, p0

    if-lez v3, :cond_0

    .line 286
    return v2

    .line 289
    :cond_0
    mul-int/lit8 v2, v1, 0x2

    .line 290
    add-int/lit8 v1, v0, 0x1

    move v4, v1

    move v1, v2

    move v2, v0

    move v0, v4

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 342
    if-nez p0, :cond_0

    move v0, v1

    .line 359
    :goto_0
    return v0

    .line 345
    :cond_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 347
    if-nez v0, :cond_1

    move v0, v1

    .line 348
    goto :goto_0

    .line 350
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 351
    if-nez v0, :cond_2

    move v0, v1

    .line 352
    goto :goto_0

    .line 354
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    .line 355
    if-eqz v0, :cond_3

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v2, :cond_3

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v0, v2, :cond_4

    :cond_3
    move v0, v1

    .line 357
    goto :goto_0

    .line 359
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method
