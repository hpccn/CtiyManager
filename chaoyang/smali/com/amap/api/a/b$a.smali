.class Lcom/amap/api/a/b$a;
.super Ljava/lang/Object;
.source "AMapDelegateImpGLSurfaceView.java"

# interfaces
.implements Lcom/amap/api/a/a/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/Float;

.field b:Ljava/lang/Float;

.field c:F

.field d:Lcom/amap/api/a/h;

.field final synthetic e:Lcom/amap/api/a/b;

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F


# direct methods
.method private constructor <init>(Lcom/amap/api/a/b;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1761
    iput-object p1, p0, Lcom/amap/api/a/b$a;->e:Lcom/amap/api/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1768
    iput-object v0, p0, Lcom/amap/api/a/b$a;->a:Ljava/lang/Float;

    .line 1769
    iput-object v0, p0, Lcom/amap/api/a/b$a;->b:Ljava/lang/Float;

    .line 1785
    iget v0, p0, Lcom/amap/api/a/b$a;->c:F

    invoke-static {v0}, Lcom/amap/api/a/h;->c(F)Lcom/amap/api/a/h;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/a/b$a;->d:Lcom/amap/api/a/h;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/a/b;Lcom/amap/api/a/b$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1761
    invoke-direct {p0, p1}, Lcom/amap/api/a/b$a;-><init>(Lcom/amap/api/a/b;)V

    return-void
.end method


# virtual methods
.method public a(FFFFF)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1774
    iput p2, p0, Lcom/amap/api/a/b$a;->f:F

    .line 1775
    iput p3, p0, Lcom/amap/api/a/b$a;->h:F

    .line 1776
    iput p4, p0, Lcom/amap/api/a/b$a;->g:F

    .line 1777
    iput p5, p0, Lcom/amap/api/a/b$a;->i:F

    .line 1778
    iget v0, p0, Lcom/amap/api/a/b$a;->i:F

    iget v1, p0, Lcom/amap/api/a/b$a;->h:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/amap/api/a/b$a;->g:F

    iget v2, p0, Lcom/amap/api/a/b$a;->f:F

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/a/b$a;->j:F

    .line 1780
    iput-object v3, p0, Lcom/amap/api/a/b$a;->a:Ljava/lang/Float;

    .line 1781
    iput-object v3, p0, Lcom/amap/api/a/b$a;->b:Ljava/lang/Float;

    .line 1782
    return-void
.end method

.method public a(Landroid/view/MotionEvent;FFFF)Z
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v9, 0x0

    .line 1792
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/a/b$a;->e:Lcom/amap/api/a/b;

    invoke-static {v1}, Lcom/amap/api/a/b;->d(Lcom/amap/api/a/b;)Lcom/amap/api/a/w;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/a/w;->g()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 1832
    :goto_0
    return v0

    .line 1795
    :catch_0
    move-exception v1

    .line 1796
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1800
    :cond_0
    iget-object v1, p0, Lcom/amap/api/a/b$a;->b:Ljava/lang/Float;

    if-nez v1, :cond_1

    .line 1801
    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/a/b$a;->b:Ljava/lang/Float;

    .line 1803
    :cond_1
    iget-object v1, p0, Lcom/amap/api/a/b$a;->a:Ljava/lang/Float;

    if-nez v1, :cond_2

    .line 1804
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/a/b$a;->a:Ljava/lang/Float;

    .line 1807
    :cond_2
    iget v1, p0, Lcom/amap/api/a/b$a;->h:F

    sub-float/2addr v1, p3

    .line 1808
    iget v2, p0, Lcom/amap/api/a/b$a;->i:F

    sub-float/2addr v2, p5

    .line 1809
    iget v3, p0, Lcom/amap/api/a/b$a;->f:F

    sub-float/2addr v3, p2

    .line 1810
    iget v4, p0, Lcom/amap/api/a/b$a;->g:F

    sub-float/2addr v4, p4

    .line 1811
    sub-float v5, p5, p3

    sub-float v6, p4, p2

    div-float/2addr v5, v6

    .line 1812
    iget v6, p0, Lcom/amap/api/a/b$a;->j:F

    sub-float v5, v6, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v5, v5

    const-wide v7, 0x3fc999999999999aL

    cmpg-double v5, v5, v7

    if-gez v5, :cond_7

    cmpl-float v5, v1, v9

    if-lez v5, :cond_3

    cmpl-float v5, v2, v9

    if-gtz v5, :cond_4

    :cond_3
    cmpg-float v1, v1, v9

    if-gez v1, :cond_7

    cmpg-float v1, v2, v9

    if-gez v1, :cond_7

    :cond_4
    cmpl-float v1, v3, v9

    if-ltz v1, :cond_5

    cmpl-float v1, v4, v9

    if-gez v1, :cond_6

    :cond_5
    cmpg-float v1, v3, v9

    if-gtz v1, :cond_7

    cmpg-float v1, v4, v9

    if-gtz v1, :cond_7

    .line 1815
    :cond_6
    iget-object v1, p0, Lcom/amap/api/a/b$a;->a:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr v1, p3

    const/high16 v2, 0x4080

    div-float/2addr v1, v2

    .line 1817
    iget-object v2, p0, Lcom/amap/api/a/b$a;->e:Lcom/amap/api/a/b;

    invoke-static {v2, v0}, Lcom/amap/api/a/b;->d(Lcom/amap/api/a/b;Z)Z

    .line 1820
    iget-object v2, p0, Lcom/amap/api/a/b$a;->e:Lcom/amap/api/a/b;

    invoke-static {v2}, Lcom/amap/api/a/b;->e(Lcom/amap/api/a/b;)Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapProjection;->getCameraHeaderAngle()F

    move-result v2

    sub-float v1, v2, v1

    iput v1, p0, Lcom/amap/api/a/b$a;->c:F

    .line 1824
    iget-object v1, p0, Lcom/amap/api/a/b$a;->d:Lcom/amap/api/a/h;

    iget v2, p0, Lcom/amap/api/a/b$a;->c:F

    iput v2, v1, Lcom/amap/api/a/h;->f:F

    .line 1825
    iget-object v1, p0, Lcom/amap/api/a/b$a;->e:Lcom/amap/api/a/b;

    iget-object v1, v1, Lcom/amap/api/a/b;->a:Lcom/amap/api/a/aa;

    iget-object v2, p0, Lcom/amap/api/a/b$a;->d:Lcom/amap/api/a/h;

    invoke-virtual {v1, v2}, Lcom/amap/api/a/aa;->a(Lcom/amap/api/a/h;)V

    .line 1827
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/a/b$a;->a:Ljava/lang/Float;

    .line 1828
    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/a/b$a;->b:Ljava/lang/Float;

    goto/16 :goto_0

    .line 1832
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0
.end method
