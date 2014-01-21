.class public Lcom/cymobile/ymwork/widget/DashLine;
.super Landroid/view/View;
.source "DashLine.java"


# instance fields
.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "paramContext"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 15
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/DashLine;->mPath:Landroid/graphics/Path;

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "paramContext"
    .parameter "paramAttributeSet"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/DashLine;->mPath:Landroid/graphics/Path;

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "paramContext"
    .parameter "paramAttributeSet"
    .parameter "paramInt"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/DashLine;->mPath:Landroid/graphics/Path;

    .line 28
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "paramCanvas"

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 32
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/DashLine;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/DashLine;->mPaint:Landroid/graphics/Paint;

    .line 34
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/DashLine;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 35
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/DashLine;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/cymobile/ymwork/widget/DashLine;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 36
    const v2, 0x7f060028

    .line 35
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 37
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/DashLine;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x4

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    .line 38
    const/high16 v3, 0x3f80

    invoke-direct {v1, v2, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 37
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/DashLine;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 41
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/DashLine;->mPath:Landroid/graphics/Path;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/cymobile/ymwork/widget/DashLine;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 42
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/DashLine;->mPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/cymobile/ymwork/widget/DashLine;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/cymobile/ymwork/widget/DashLine;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 43
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/DashLine;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/cymobile/ymwork/widget/DashLine;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 44
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/DashLine;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/DashLine;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 45
    return-void

    .line 37
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x40t 0x40t
        0x0t 0x0t 0x40t 0x40t
        0x0t 0x0t 0x40t 0x40t
        0x0t 0x0t 0x40t 0x40t
    .end array-data
.end method
