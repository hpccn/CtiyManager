.class Lcom/amap/api/a/aj;
.super Landroid/view/View;
.source "ScaleView.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Lcom/amap/api/a/b;

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/Paint;

.field private f:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/a/b;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/high16 v2, -0x100

    .line 25
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/a/aj;->a:Ljava/lang/String;

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/a/aj;->b:I

    .line 26
    iput-object p2, p0, Lcom/amap/api/a/aj;->c:Lcom/amap/api/a/b;

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/amap/api/a/aj;->d:Landroid/graphics/Paint;

    .line 28
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/amap/api/a/aj;->f:Landroid/graphics/Rect;

    .line 29
    iget-object v0, p0, Lcom/amap/api/a/aj;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 30
    iget-object v0, p0, Lcom/amap/api/a/aj;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 31
    iget-object v0, p0, Lcom/amap/api/a/aj;->d:Landroid/graphics/Paint;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 32
    iget-object v0, p0, Lcom/amap/api/a/aj;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/amap/api/a/aj;->e:Landroid/graphics/Paint;

    .line 34
    iget-object v0, p0, Lcom/amap/api/a/aj;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 35
    iget-object v0, p0, Lcom/amap/api/a/aj;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    iget-object v0, p0, Lcom/amap/api/a/aj;->e:Landroid/graphics/Paint;

    const/high16 v1, 0x41a0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 37
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/amap/api/a/aj;->d:Landroid/graphics/Paint;

    .line 20
    iput-object v0, p0, Lcom/amap/api/a/aj;->e:Landroid/graphics/Paint;

    .line 21
    iput-object v0, p0, Lcom/amap/api/a/aj;->f:Landroid/graphics/Rect;

    .line 22
    iput-object v0, p0, Lcom/amap/api/a/aj;->a:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput p1, p0, Lcom/amap/api/a/aj;->b:I

    .line 61
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/amap/api/a/aj;->a:Ljava/lang/String;

    .line 57
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/amap/api/a/aj;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/amap/api/a/aj;->b:I

    if-nez v0, :cond_1

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/amap/api/a/aj;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/amap/api/a/aj;->a:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/amap/api/a/aj;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/amap/api/a/aj;->f:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 45
    iget v0, p0, Lcom/amap/api/a/aj;->b:I

    iget-object v1, p0, Lcom/amap/api/a/aj;->f:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0xa

    .line 46
    iget-object v1, p0, Lcom/amap/api/a/aj;->c:Lcom/amap/api/a/b;

    invoke-virtual {v1}, Lcom/amap/api/a/b;->y()I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/a/aj;->f:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0xa

    .line 47
    iget-object v2, p0, Lcom/amap/api/a/aj;->a:Ljava/lang/String;

    int-to-float v0, v0

    int-to-float v3, v1

    iget-object v4, p0, Lcom/amap/api/a/aj;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 48
    const/16 v6, 0xa

    .line 49
    iget-object v0, p0, Lcom/amap/api/a/aj;->f:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int v7, v1, v0

    .line 50
    int-to-float v1, v6

    add-int/lit8 v0, v7, -0x2

    int-to-float v2, v0

    int-to-float v3, v6

    add-int/lit8 v0, v7, 0x2

    int-to-float v4, v0

    iget-object v5, p0, Lcom/amap/api/a/aj;->d:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 51
    int-to-float v1, v6

    int-to-float v2, v7

    iget v0, p0, Lcom/amap/api/a/aj;->b:I

    add-int/2addr v0, v6

    int-to-float v3, v0

    int-to-float v4, v7

    iget-object v5, p0, Lcom/amap/api/a/aj;->d:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 52
    iget v0, p0, Lcom/amap/api/a/aj;->b:I

    add-int/2addr v0, v6

    int-to-float v1, v0

    add-int/lit8 v0, v7, -0x2

    int-to-float v2, v0

    iget v0, p0, Lcom/amap/api/a/aj;->b:I

    add-int/2addr v0, v6

    int-to-float v3, v0

    add-int/lit8 v0, v7, 0x2

    int-to-float v4, v0

    iget-object v5, p0, Lcom/amap/api/a/aj;->d:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method
