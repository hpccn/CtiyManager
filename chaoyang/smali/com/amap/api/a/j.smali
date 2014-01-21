.class Lcom/amap/api/a/j;
.super Landroid/widget/LinearLayout;
.source "CompassView.java"


# instance fields
.field a:Landroid/graphics/Bitmap;

.field b:Landroid/graphics/Bitmap;

.field c:Landroid/widget/ImageView;

.field d:Lcom/amap/api/a/aa;

.field e:Lcom/amap/api/a/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/a/aa;Lcom/amap/api/a/n;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 36
    iput-object p2, p0, Lcom/amap/api/a/j;->d:Lcom/amap/api/a/aa;

    .line 37
    iput-object p3, p0, Lcom/amap/api/a/j;->e:Lcom/amap/api/a/n;

    .line 39
    :try_start_0
    const-string v0, "maps_dav_compass_needle_large.png"

    invoke-static {v0}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 41
    sget v1, Lcom/amap/api/a/k;->a:F

    const v2, 0x3f4ccccd

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/amap/api/a/b/g;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/a/j;->b:Landroid/graphics/Bitmap;

    .line 42
    sget v1, Lcom/amap/api/a/k;->a:F

    const v2, 0x3f333333

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/amap/api/a/b/g;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/amap/api/a/j;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/a/j;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/a/j;->a:Landroid/graphics/Bitmap;

    .line 45
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/amap/api/a/j;->a:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 46
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 47
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 48
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 49
    iget-object v3, p0, Lcom/amap/api/a/j;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/amap/api/a/j;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v1, v0, v3, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/a/j;->c:Landroid/widget/ImageView;

    .line 56
    iget-object v0, p0, Lcom/amap/api/a/j;->c:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 57
    iget-object v0, p0, Lcom/amap/api/a/j;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/amap/api/a/j;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 58
    invoke-virtual {p0}, Lcom/amap/api/a/j;->b()V

    .line 59
    iget-object v0, p0, Lcom/amap/api/a/j;->c:Landroid/widget/ImageView;

    new-instance v1, Lcom/amap/api/a/j$1;

    invoke-direct {v1, p0}, Lcom/amap/api/a/j$1;-><init>(Lcom/amap/api/a/j;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/amap/api/a/j;->c:Landroid/widget/ImageView;

    new-instance v1, Lcom/amap/api/a/j$2;

    invoke-direct {v1, p0}, Lcom/amap/api/a/j$2;-><init>(Lcom/amap/api/a/j;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 92
    iget-object v0, p0, Lcom/amap/api/a/j;->c:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/amap/api/a/j;->addView(Landroid/view/View;)V

    .line 93
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/a/j;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 27
    iget-object v0, p0, Lcom/amap/api/a/j;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/a/j;->a:Landroid/graphics/Bitmap;

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/a/j;->b:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b()V
    .locals 7

    .prologue
    .line 96
    iget-object v0, p0, Lcom/amap/api/a/j;->e:Lcom/amap/api/a/n;

    invoke-interface {v0}, Lcom/amap/api/a/n;->b()Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapAngle()F

    move-result v1

    .line 98
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapProjection;->getCameraHeaderAngle()F

    move-result v0

    .line 99
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 100
    neg-float v1, v1

    iget-object v3, p0, Lcom/amap/api/a/j;->c:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/amap/api/a/j;->c:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v1, v3, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 103
    const/high16 v1, 0x3f80

    float-to-double v3, v0

    const-wide v5, 0x400921fb54442d18L

    mul-double/2addr v3, v5

    const-wide v5, 0x4066800000000000L

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v0, v3

    iget-object v3, p0, Lcom/amap/api/a/j;->c:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/amap/api/a/j;->c:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 106
    iget-object v0, p0, Lcom/amap/api/a/j;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 107
    return-void
.end method
