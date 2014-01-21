.class Lcom/amap/api/a/b$d;
.super Ljava/lang/Object;
.source "AMapDelegateImpGLSurfaceView.java"

# interfaces
.implements Lcom/amap/api/a/a/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field a:Z

.field b:F

.field c:F

.field d:Lcom/amap/api/a/h;

.field final synthetic e:Lcom/amap/api/a/b;


# direct methods
.method private constructor <init>(Lcom/amap/api/a/b;)V
    .locals 1
    .parameter

    .prologue
    .line 1694
    iput-object p1, p0, Lcom/amap/api/a/b$d;->e:Lcom/amap/api/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1695
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/a/b$d;->a:Z

    .line 1698
    iget v0, p0, Lcom/amap/api/a/b$d;->c:F

    invoke-static {v0}, Lcom/amap/api/a/h;->d(F)Lcom/amap/api/a/h;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/a/b$d;->d:Lcom/amap/api/a/h;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/a/b;Lcom/amap/api/a/b$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1694
    invoke-direct {p0, p1}, Lcom/amap/api/a/b$d;-><init>(Lcom/amap/api/a/b;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/amap/api/a/a/c;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1703
    iget-object v1, p0, Lcom/amap/api/a/b$d;->e:Lcom/amap/api/a/b;

    invoke-static {v1}, Lcom/amap/api/a/b;->b(Lcom/amap/api/a/b;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1704
    const/4 v0, 0x0

    .line 1720
    :cond_0
    :goto_0
    return v0

    .line 1706
    :cond_1
    invoke-virtual {p1}, Lcom/amap/api/a/a/c;->b()F

    move-result v1

    .line 1707
    iget v2, p0, Lcom/amap/api/a/b$d;->b:F

    add-float/2addr v2, v1

    iput v2, p0, Lcom/amap/api/a/b$d;->b:F

    .line 1708
    iget-boolean v2, p0, Lcom/amap/api/a/b$d;->a:Z

    if-nez v2, :cond_2

    iget v2, p0, Lcom/amap/api/a/b$d;->b:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x41f0

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_2

    iget v2, p0, Lcom/amap/api/a/b$d;->b:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x43af

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 1710
    :cond_2
    iput-boolean v0, p0, Lcom/amap/api/a/b$d;->a:Z

    .line 1711
    iget-object v2, p0, Lcom/amap/api/a/b$d;->e:Lcom/amap/api/a/b;

    invoke-static {v2}, Lcom/amap/api/a/b;->e(Lcom/amap/api/a/b;)Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapAngle()F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/amap/api/a/b$d;->c:F

    .line 1715
    iget-object v1, p0, Lcom/amap/api/a/b$d;->d:Lcom/amap/api/a/h;

    iget v2, p0, Lcom/amap/api/a/b$d;->c:F

    iput v2, v1, Lcom/amap/api/a/h;->g:F

    .line 1716
    iget-object v1, p0, Lcom/amap/api/a/b$d;->e:Lcom/amap/api/a/b;

    iget-object v1, v1, Lcom/amap/api/a/b;->a:Lcom/amap/api/a/aa;

    iget-object v2, p0, Lcom/amap/api/a/b$d;->d:Lcom/amap/api/a/h;

    invoke-virtual {v1, v2}, Lcom/amap/api/a/aa;->a(Lcom/amap/api/a/h;)V

    .line 1717
    const/4 v1, 0x0

    iput v1, p0, Lcom/amap/api/a/b$d;->b:F

    goto :goto_0
.end method

.method public b(Lcom/amap/api/a/a/c;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1727
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/a/b$d;->e:Lcom/amap/api/a/b;

    invoke-static {v1}, Lcom/amap/api/a/b;->d(Lcom/amap/api/a/b;)Lcom/amap/api/a/w;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/a/w;->h()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_1

    .line 1743
    :cond_0
    :goto_0
    return v0

    .line 1730
    :catch_0
    move-exception v1

    .line 1731
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1734
    :cond_1
    iput-boolean v0, p0, Lcom/amap/api/a/b$d;->a:Z

    .line 1735
    const/4 v1, 0x0

    iput v1, p0, Lcom/amap/api/a/b$d;->b:F

    .line 1736
    iget-object v1, p0, Lcom/amap/api/a/b$d;->e:Lcom/amap/api/a/b;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/amap/api/a/b;->a(Lcom/amap/api/a/b;I)I

    .line 1737
    iget-object v1, p0, Lcom/amap/api/a/b$d;->e:Lcom/amap/api/a/b;

    invoke-static {v1}, Lcom/amap/api/a/b;->b(Lcom/amap/api/a/b;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1740
    iget-object v1, p0, Lcom/amap/api/a/b$d;->e:Lcom/amap/api/a/b;

    invoke-virtual {v1}, Lcom/amap/api/a/b;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/amap/api/a/a/c;->c()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 1741
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c(Lcom/amap/api/a/a/c;)V
    .locals 1
    .parameter

    .prologue
    .line 1749
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/a/b$d;->a:Z

    .line 1750
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/a/b$d;->b:F

    .line 1751
    iget-object v0, p0, Lcom/amap/api/a/b$d;->e:Lcom/amap/api/a/b;

    invoke-static {v0}, Lcom/amap/api/a/b;->f(Lcom/amap/api/a/b;)V

    .line 1752
    return-void
.end method
