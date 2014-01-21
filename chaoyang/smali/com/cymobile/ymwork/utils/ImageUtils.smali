.class public Lcom/cymobile/ymwork/utils/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static getBitmapDims(Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;
    .locals 2
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 91
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 92
    .local v0, bfo:Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 93
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 94
    return-object v0
.end method

.method private static getClosestResampleSize(III)I
    .locals 3
    .parameter "cx"
    .parameter "cy"
    .parameter "maxDim"

    .prologue
    .line 74
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 76
    .local v0, max:I
    const/4 v1, 0x1

    .line 77
    .local v1, resample:I
    const/4 v1, 0x1

    :goto_0
    const v2, 0x7fffffff

    if-lt v1, v2, :cond_0

    .line 84
    :goto_1
    if-lez v1, :cond_2

    .line 87
    .end local v1           #resample:I
    :goto_2
    return v1

    .line 78
    .restart local v1       #resample:I
    :cond_0
    mul-int v2, v1, p2

    if-le v2, v0, :cond_1

    .line 79
    add-int/lit8 v1, v1, -0x1

    .line 80
    goto :goto_1

    .line 77
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    :cond_2
    const/4 v1, 0x1

    goto :goto_2
.end method

.method private static getResampling(III)Landroid/graphics/BitmapFactory$Options;
    .locals 5
    .parameter "cx"
    .parameter "cy"
    .parameter "max"

    .prologue
    const/high16 v4, 0x3f00

    .line 57
    const/high16 v1, 0x3f80

    .line 58
    .local v1, scaleVal:F
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 59
    .local v0, bfo:Landroid/graphics/BitmapFactory$Options;
    if-le p0, p1, :cond_0

    .line 60
    int-to-float v2, p2

    int-to-float v3, p0

    div-float v1, v2, v3

    .line 68
    :goto_0
    int-to-float v2, p0

    mul-float/2addr v2, v1

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 69
    int-to-float v2, p1

    mul-float/2addr v2, v1

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 70
    return-object v0

    .line 62
    :cond_0
    if-le p1, p0, :cond_1

    .line 63
    int-to-float v2, p2

    int-to-float v3, p1

    div-float v1, v2, v3

    goto :goto_0

    .line 66
    :cond_1
    int-to-float v2, p2

    int-to-float v3, p0

    div-float v1, v2, v3

    goto :goto_0
.end method

.method public static resampleImage(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "path"
    .parameter "maxDim"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 28
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 29
    .local v7, bfo:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v6, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 30
    invoke-static {p0, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 32
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 33
    .local v8, optsDownSample:Landroid/graphics/BitmapFactory$Options;
    iget v2, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v2, v3, p1}, Lcom/cymobile/ymwork/utils/ImageUtils;->getClosestResampleSize(III)I

    move-result v2

    iput v2, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 35
    invoke-static {p0, v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 37
    .local v0, bmpt:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 39
    .local v5, m:Landroid/graphics/Matrix;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-gt v2, p1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-le v2, p1, :cond_1

    .line 40
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v2, v3, p1}, Lcom/cymobile/ymwork/utils/ImageUtils;->getResampling(III)Landroid/graphics/BitmapFactory$Options;

    move-result-object v9

    .line 41
    .local v9, optsScale:Landroid/graphics/BitmapFactory$Options;
    iget v2, v9, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 42
    iget v3, v9, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 41
    invoke-virtual {v5, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 45
    .end local v9           #optsScale:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    new-instance v2, Ljava/lang/Integer;

    sget-object v3, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 46
    .local v11, sdk:I
    const/4 v2, 0x4

    if-le v11, v2, :cond_2

    .line 47
    invoke-static {p0}, Lcom/cymobile/ymwork/utils/ExifUtils;->getExifRotation(Ljava/lang/String;)I

    move-result v10

    .line 48
    .local v10, rotation:I
    if-eqz v10, :cond_2

    .line 49
    int-to-float v2, v10

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 53
    .end local v10           #rotation:I
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static resampleImageAndSaveToNewLocation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "pathInput"
    .parameter "pathOutput"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 19
    const/16 v2, 0x280

    invoke-static {p0, v2}, Lcom/cymobile/ymwork/utils/ImageUtils;->resampleImage(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 21
    .local v0, bmp:Landroid/graphics/Bitmap;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 22
    .local v1, out:Ljava/io/OutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5a

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 23
    return-void
.end method
