.class public abstract Lcom/amap/api/a/a/d;
.super Lcom/amap/api/a/a/a;
.source "TwoFingerGestureDetector.java"


# instance fields
.field protected h:F

.field protected i:F

.field protected j:F

.field protected k:F

.field private final l:F

.field private m:F

.field private n:F

.field private o:F

.field private p:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/amap/api/a/a/a;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/amap/api/a/a/d;->l:F

    .line 31
    return-void
.end method

.method protected static a(Landroid/view/MotionEvent;I)F
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 105
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 106
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 107
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v0, v1

    .line 109
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static b(Landroid/view/MotionEvent;I)F
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 119
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    sub-float/2addr v0, v1

    .line 120
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 121
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v0, v1

    .line 123
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected b(Landroid/view/MotionEvent;)V
    .locals 6
    .parameter

    .prologue
    const/high16 v1, -0x4080

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 40
    invoke-super {p0, p1}, Lcom/amap/api/a/a/a;->b(Landroid/view/MotionEvent;)V

    .line 42
    iget-object v0, p0, Lcom/amap/api/a/a/d;->c:Landroid/view/MotionEvent;

    .line 44
    iput v1, p0, Lcom/amap/api/a/a/d;->o:F

    .line 45
    iput v1, p0, Lcom/amap/api/a/a/d;->p:F

    .line 48
    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 49
    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 50
    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 51
    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 52
    sub-float v1, v3, v1

    .line 53
    sub-float/2addr v0, v2

    .line 54
    iput v1, p0, Lcom/amap/api/a/a/d;->h:F

    .line 55
    iput v0, p0, Lcom/amap/api/a/a/d;->i:F

    .line 58
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 59
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 60
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 61
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 62
    sub-float v0, v2, v0

    .line 63
    sub-float v1, v3, v1

    .line 64
    iput v0, p0, Lcom/amap/api/a/a/d;->j:F

    .line 65
    iput v1, p0, Lcom/amap/api/a/a/d;->k:F

    .line 66
    return-void
.end method

.method public c()F
    .locals 2

    .prologue
    .line 75
    iget v0, p0, Lcom/amap/api/a/a/d;->o:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 76
    iget v0, p0, Lcom/amap/api/a/a/d;->j:F

    .line 77
    iget v1, p0, Lcom/amap/api/a/a/d;->k:F

    .line 78
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    iput v0, p0, Lcom/amap/api/a/a/d;->o:F

    .line 80
    :cond_0
    iget v0, p0, Lcom/amap/api/a/a/d;->o:F

    return v0
.end method

.method protected d(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 135
    iget-object v2, p0, Lcom/amap/api/a/a/d;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 136
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    iget v4, p0, Lcom/amap/api/a/a/d;->l:F

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/amap/api/a/a/d;->m:F

    .line 137
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    iget v3, p0, Lcom/amap/api/a/a/d;->l:F

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/amap/api/a/a/d;->n:F

    .line 139
    iget v2, p0, Lcom/amap/api/a/a/d;->l:F

    .line 140
    iget v4, p0, Lcom/amap/api/a/a/d;->m:F

    .line 141
    iget v5, p0, Lcom/amap/api/a/a/d;->n:F

    .line 143
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    .line 144
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    .line 145
    invoke-static {p1, v0}, Lcom/amap/api/a/a/d;->a(Landroid/view/MotionEvent;I)F

    move-result v7

    .line 146
    invoke-static {p1, v0}, Lcom/amap/api/a/a/d;->b(Landroid/view/MotionEvent;I)F

    move-result v8

    .line 148
    cmpg-float v9, v3, v2

    if-ltz v9, :cond_0

    cmpg-float v9, v6, v2

    if-ltz v9, :cond_0

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_0

    cmpl-float v3, v6, v5

    if-lez v3, :cond_3

    :cond_0
    move v3, v0

    .line 150
    :goto_0
    cmpg-float v6, v7, v2

    if-ltz v6, :cond_1

    cmpg-float v2, v8, v2

    if-ltz v2, :cond_1

    cmpl-float v2, v7, v4

    if-gtz v2, :cond_1

    cmpl-float v2, v8, v5

    if-lez v2, :cond_4

    :cond_1
    move v2, v0

    .line 153
    :goto_1
    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    .line 160
    :cond_2
    :goto_2
    return v0

    :cond_3
    move v3, v1

    .line 148
    goto :goto_0

    :cond_4
    move v2, v1

    .line 150
    goto :goto_1

    .line 155
    :cond_5
    if-nez v3, :cond_2

    .line 157
    if-nez v2, :cond_2

    move v0, v1

    .line 160
    goto :goto_2
.end method
