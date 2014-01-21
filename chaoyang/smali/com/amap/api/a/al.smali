.class Lcom/amap/api/a/al;
.super Landroid/view/View;
.source "WaterMarkerView.java"


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/graphics/Paint;

.field private d:Z

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/amap/api/a/al;->c:Landroid/graphics/Paint;

    .line 27
    iput-boolean v1, p0, Lcom/amap/api/a/al;->d:Z

    .line 28
    iput v1, p0, Lcom/amap/api/a/al;->e:I

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 45
    :try_start_0
    const-string v1, "ap.data"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 46
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/a/al;->a:Landroid/graphics/Bitmap;

    .line 47
    iget-object v2, p0, Lcom/amap/api/a/al;->a:Landroid/graphics/Bitmap;

    sget v3, Lcom/amap/api/a/k;->a:F

    invoke-static {v2, v3}, Lcom/amap/api/a/b/g;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/a/al;->a:Landroid/graphics/Bitmap;

    .line 49
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 50
    const-string v1, "ap1.data"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 51
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/a/al;->b:Landroid/graphics/Bitmap;

    .line 52
    iget-object v1, p0, Lcom/amap/api/a/al;->b:Landroid/graphics/Bitmap;

    sget v2, Lcom/amap/api/a/k;->a:F

    invoke-static {v1, v2}, Lcom/amap/api/a/b/g;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/a/al;->b:Landroid/graphics/Bitmap;

    .line 54
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 55
    iget-object v0, p0, Lcom/amap/api/a/al;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/amap/api/a/al;->e:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    iget-object v0, p0, Lcom/amap/api/a/al;->c:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 62
    iget-object v0, p0, Lcom/amap/api/a/al;->c:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    iget-object v0, p0, Lcom/amap/api/a/al;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 65
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/a/al;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 32
    iget-object v0, p0, Lcom/amap/api/a/al;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/a/al;->a:Landroid/graphics/Bitmap;

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/a/al;->b:Landroid/graphics/Bitmap;

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/a/al;->c:Landroid/graphics/Paint;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/amap/api/a/al;->d:Z

    .line 76
    invoke-virtual {p0}, Lcom/amap/api/a/al;->invalidate()V

    .line 77
    return-void
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/amap/api/a/al;->d:Z

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/amap/api/a/al;->b:Landroid/graphics/Bitmap;

    .line 71
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/a/al;->a:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public c()I
    .locals 2

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/amap/api/a/al;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/amap/api/a/al;->e:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0xa

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/amap/api/a/al;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    const/high16 v1, 0x4120

    invoke-virtual {p0}, Lcom/amap/api/a/al;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/amap/api/a/al;->e:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0xa

    int-to-float v2, v2

    iget-object v3, p0, Lcom/amap/api/a/al;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 87
    const-string v0, "V2.0.1"

    iget-object v1, p0, Lcom/amap/api/a/al;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/amap/api/a/al;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0xa

    int-to-float v2, v2

    iget-object v3, p0, Lcom/amap/api/a/al;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 89
    return-void
.end method
