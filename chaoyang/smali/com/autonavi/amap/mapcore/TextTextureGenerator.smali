.class public Lcom/autonavi/amap/mapcore/TextTextureGenerator;
.super Ljava/lang/Object;
.source "TextTextureGenerator.java"


# static fields
.field private static final ALIGNCENTER:I = 0x33

.field private static final ALIGNLEFT:I = 0x31

.field private static final ALIGNRIGHT:I = 0x32

.field static final AN_LABEL_MAXCHARINLINE:I = 0x7

.field static final AN_LABEL_MULITYLINE_SPAN:I = 0x2

.field static final TEXT_FONTSIZE:I = 0x18

.field static paint:Landroid/graphics/Paint;


# instance fields
.field nLabelLinesize:I

.field nMaxSizePerline:I

.field textureHeight:I

.field textureWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/autonavi/amap/mapcore/TextTextureGenerator;->paint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    const/16 v1, 0x18

    const/16 v2, 0x31

    invoke-static {v0, v1, v2}, Lcom/autonavi/amap/mapcore/TextTextureGenerator;->newPaint(Ljava/lang/String;II)Landroid/graphics/Paint;

    move-result-object v0

    sput-object v0, Lcom/autonavi/amap/mapcore/TextTextureGenerator;->paint:Landroid/graphics/Paint;

    .line 43
    return-void
.end method

.method public static GetNearstSize2N(I)I
    .locals 1
    .parameter

    .prologue
    .line 29
    const/4 v0, 0x1

    .line 32
    :goto_0
    if-gt p0, v0, :cond_0

    .line 34
    return v0

    .line 36
    :cond_0
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public static generaAsccIITexturePng()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v4, 0x180

    const/16 v8, 0x31

    const/16 v7, 0x18

    const/16 v14, 0x10

    const/4 v1, 0x0

    .line 153
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 157
    new-instance v2, Ljava/io/File;

    const-string v3, "asccii.png"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 158
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 159
    const/4 v0, 0x0

    invoke-static {v0, v7, v8}, Lcom/autonavi/amap/mapcore/TextTextureGenerator;->newPaint(Ljava/lang/String;II)Landroid/graphics/Paint;

    move-result-object v0

    .line 160
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 161
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v5

    .line 162
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 163
    const/4 v0, 0x0

    invoke-static {v0, v7, v8}, Lcom/autonavi/amap/mapcore/TextTextureGenerator;->newPaint(Ljava/lang/String;II)Landroid/graphics/Paint;

    move-result-object v7

    .line 164
    const/4 v0, 0x1

    new-array v8, v0, [F

    move v2, v1

    .line 165
    :goto_1
    if-ge v2, v14, :cond_2

    move v0, v1

    .line 167
    :goto_2
    if-ge v0, v14, :cond_1

    .line 169
    mul-int/lit8 v9, v2, 0x10

    add-int/2addr v9, v0

    int-to-char v9, v9

    .line 170
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    mul-int/lit8 v11, v0, 0x10

    int-to-float v11, v11

    mul-int/lit8 v12, v2, 0x10

    iget v13, v5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v12, v13

    add-int/lit8 v12, v12, -0x2

    int-to-float v12, v12

    invoke-virtual {v6, v10, v11, v12, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 171
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9, v8}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 165
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 175
    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {v4, v0, v1, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 176
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public static getCharWidths()[B
    .locals 8

    .prologue
    const/16 v7, 0x100

    const/4 v1, 0x0

    .line 185
    const/4 v0, 0x0

    const/16 v2, 0x18

    const/16 v3, 0x31

    invoke-static {v0, v2, v3}, Lcom/autonavi/amap/mapcore/TextTextureGenerator;->newPaint(Ljava/lang/String;II)Landroid/graphics/Paint;

    move-result-object v2

    .line 186
    new-array v3, v7, [B

    .line 187
    const/4 v0, 0x1

    new-array v4, v0, [F

    move v0, v1

    .line 188
    :goto_0
    if-ge v0, v7, :cond_0

    .line 190
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    int-to-char v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v4}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 191
    aget v5, v4, v1

    float-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v3, v0

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    :cond_0
    return-object v3
.end method

.method private getFullWidth([F)F
    .locals 3
    .parameter

    .prologue
    .line 102
    const/4 v1, 0x0

    .line 103
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 105
    aget v2, p1, v0

    add-float/2addr v1, v2

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_0
    return v1
.end method

.method private getPixels(Landroid/graphics/Bitmap;)[B
    .locals 3
    .parameter

    .prologue
    .line 138
    if-eqz p1, :cond_0

    .line 139
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    .line 140
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 142
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 143
    invoke-virtual {p1, v1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 149
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getStringWidth(Ljava/lang/String;)F
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 82
    const/4 v0, 0x0

    .line 83
    const/4 v2, 0x1

    new-array v3, v2, [F

    move v2, v0

    move v0, v1

    .line 84
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 86
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 87
    if-lez v4, :cond_0

    const/16 v5, 0x100

    if-ge v4, v5, :cond_0

    .line 89
    sget-object v5, Lcom/autonavi/amap/mapcore/TextTextureGenerator;->paint:Landroid/graphics/Paint;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4, v3}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 90
    aget v4, v3, v1

    add-float/2addr v2, v4

    .line 84
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_0
    const/high16 v4, 0x41c0

    add-float/2addr v2, v4

    goto :goto_1

    .line 97
    :cond_1
    return v2
.end method

.method private static newPaint(Ljava/lang/String;II)Landroid/graphics/Paint;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 52
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 54
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 58
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 59
    packed-switch p2, :pswitch_data_0

    .line 73
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 77
    :goto_0
    return-object v0

    .line 61
    :pswitch_0
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_0

    .line 65
    :pswitch_1
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_0

    .line 69
    :pswitch_2
    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_0

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getTextPixelBuffer(I)[B
    .locals 8
    .parameter

    .prologue
    const/16 v1, 0x18

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 118
    .line 119
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 120
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 121
    const/16 v1, 0x240

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 122
    sget-object v4, Lcom/autonavi/amap/mapcore/TextTextureGenerator;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    .line 124
    iget v4, v4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v4, v4

    add-int/lit8 v5, v4, -0x1

    .line 125
    invoke-virtual {v7, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 126
    new-array v1, v3, [C

    .line 127
    int-to-char v4, p1

    aput-char v4, v1, v2

    .line 128
    const/4 v4, 0x0

    int-to-float v5, v5

    sget-object v6, Lcom/autonavi/amap/mapcore/TextTextureGenerator;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 129
    invoke-direct {p0, v7}, Lcom/autonavi/amap/mapcore/TextTextureGenerator;->getPixels(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 130
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 133
    return-object v0
.end method
