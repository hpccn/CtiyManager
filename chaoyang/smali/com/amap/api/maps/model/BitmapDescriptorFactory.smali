.class public final Lcom/amap/api/maps/model/BitmapDescriptorFactory;
.super Ljava/lang/Object;
.source "BitmapDescriptorFactory.java"


# static fields
.field public static final HUE_AZURE:F = 210.0f

.field public static final HUE_BLUE:F = 240.0f

.field public static final HUE_CYAN:F = 180.0f

.field public static final HUE_GREEN:F = 120.0f

.field public static final HUE_MAGENTA:F = 300.0f

.field public static final HUE_ORANGE:F = 30.0f

.field public static final HUE_RED:F = 0.0f

.field public static final HUE_ROSE:F = 330.0f

.field public static final HUE_VIOLET:F = 270.0f

.field public static final HUE_YELLOW:F = 60.0f


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static defaultMarker()Lcom/amap/api/maps/model/BitmapDescriptor;
    .locals 2

    .prologue
    .line 125
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amap/api/a/v$a;->b:Lcom/amap/api/a/v$a;

    invoke-virtual {v1}, Lcom/amap/api/a/v$a;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/amap/api/maps/model/BitmapDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 128
    :goto_0
    return-object v0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static defaultMarker(F)Lcom/amap/api/maps/model/BitmapDescriptor;
    .locals 4
    .parameter

    .prologue
    const/high16 v2, 0x43a5

    const/4 v3, 0x0

    .line 142
    const/high16 v0, 0x4170

    add-float/2addr v0, p0

    float-to-int v0, v0

    :try_start_0
    div-int/lit8 v0, v0, 0x1e

    mul-int/lit8 v0, v0, 0x1e

    int-to-float v0, v0

    .line 143
    cmpl-float v1, v0, v2

    if-lez v1, :cond_1

    move v1, v2

    .line 148
    :goto_0
    const-string v0, ""

    .line 149
    cmpl-float v3, v1, v3

    if-nez v3, :cond_2

    .line 150
    const-string v0, "RED"

    .line 170
    :cond_0
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    .line 172
    :goto_2
    return-object v0

    .line 145
    :cond_1
    cmpg-float v1, v0, v3

    if-gez v1, :cond_b

    move v1, v3

    .line 146
    goto :goto_0

    .line 151
    :cond_2
    const/high16 v3, 0x41f0

    cmpl-float v3, v1, v3

    if-nez v3, :cond_3

    .line 152
    const-string v0, "ORANGE"

    goto :goto_1

    .line 153
    :cond_3
    const/high16 v3, 0x4270

    cmpl-float v3, v1, v3

    if-nez v3, :cond_4

    .line 154
    const-string v0, "YELLOW"

    goto :goto_1

    .line 155
    :cond_4
    const/high16 v3, 0x42f0

    cmpl-float v3, v1, v3

    if-nez v3, :cond_5

    .line 156
    const-string v0, "GREEN"

    goto :goto_1

    .line 157
    :cond_5
    const/high16 v3, 0x4334

    cmpl-float v3, v1, v3

    if-nez v3, :cond_6

    .line 158
    const-string v0, "CYAN"

    goto :goto_1

    .line 159
    :cond_6
    const/high16 v3, 0x4352

    cmpl-float v3, v1, v3

    if-nez v3, :cond_7

    .line 160
    const-string v0, "AZURE"

    goto :goto_1

    .line 161
    :cond_7
    const/high16 v3, 0x4370

    cmpl-float v3, v1, v3

    if-nez v3, :cond_8

    .line 162
    const-string v0, "BLUE"

    goto :goto_1

    .line 163
    :cond_8
    const/high16 v3, 0x4387

    cmpl-float v3, v1, v3

    if-nez v3, :cond_9

    .line 164
    const-string v0, "VIOLET"

    goto :goto_1

    .line 165
    :cond_9
    const/high16 v3, 0x4396

    cmpl-float v3, v1, v3

    if-nez v3, :cond_a

    .line 166
    const-string v0, "MAGENTA"

    goto :goto_1

    .line 167
    :cond_a
    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 168
    const-string v0, "ROSE"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 171
    :catch_0
    move-exception v0

    .line 172
    const/4 v0, 0x0

    goto :goto_2

    :cond_b
    move v1, v0

    goto :goto_0
.end method

.method public static fromAsset(Ljava/lang/String;)Lcom/amap/api/maps/model/BitmapDescriptor;
    .locals 3
    .parameter

    .prologue
    .line 74
    :try_start_0
    const-class v0, Lcom/amap/api/maps/model/BitmapDescriptorFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/assets/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 76
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 87
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 88
    invoke-static {v1}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 90
    :goto_0
    return-object v0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;
    .locals 1
    .parameter

    .prologue
    .line 185
    if-nez p0, :cond_0

    .line 186
    const/4 v0, 0x0

    .line 189
    :goto_0
    return-object v0

    .line 188
    :cond_0
    new-instance v0, Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-direct {v0, p0}, Lcom/amap/api/maps/model/BitmapDescriptor;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public static fromFile(Ljava/lang/String;)Lcom/amap/api/maps/model/BitmapDescriptor;
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 104
    :try_start_0
    sget-object v1, Lcom/amap/api/a/y;->a:Landroid/content/Context;

    .line 105
    if-eqz v1, :cond_0

    .line 106
    invoke-virtual {v1, p0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 107
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 108
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 109
    invoke-static {v2}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 113
    :cond_0
    :goto_0
    return-object v0

    .line 112
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static fromPath(Ljava/lang/String;)Lcom/amap/api/maps/model/BitmapDescriptor;
    .locals 1
    .parameter

    .prologue
    .line 57
    :try_start_0
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 58
    invoke-static {v0}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 60
    :goto_0
    return-object v0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static fromResource(I)Lcom/amap/api/maps/model/BitmapDescriptor;
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 35
    :try_start_0
    sget-object v1, Lcom/amap/api/a/y;->a:Landroid/content/Context;

    .line 36
    if-eqz v1, :cond_0

    .line 37
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 39
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 43
    :cond_0
    :goto_0
    return-object v0

    .line 42
    :catch_0
    move-exception v1

    goto :goto_0
.end method
