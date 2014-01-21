.class Lcom/amap/api/a/b$b;
.super Ljava/lang/Object;
.source "AMapDelegateImpGLSurfaceView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/a/b;


# direct methods
.method private constructor <init>(Lcom/amap/api/a/b;)V
    .locals 0
    .parameter

    .prologue
    .line 1593
    iput-object p1, p0, Lcom/amap/api/a/b$b;->a:Lcom/amap/api/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/a/b;Lcom/amap/api/a/b$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1593
    invoke-direct {p0, p1}, Lcom/amap/api/a/b$b;-><init>(Lcom/amap/api/a/b;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 1602
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/a/b$b;->a:Lcom/amap/api/a/b;

    invoke-static {v0}, Lcom/amap/api/a/b;->d(Lcom/amap/api/a/b;)Lcom/amap/api/a/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/a/w;->f()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    .line 1627
    :cond_0
    :goto_0
    return v4

    .line 1605
    :catch_0
    move-exception v0

    .line 1606
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1609
    :cond_1
    iget-object v0, p0, Lcom/amap/api/a/b$b;->a:Lcom/amap/api/a/b;

    invoke-static {v0}, Lcom/amap/api/a/b;->p(Lcom/amap/api/a/b;)I

    move-result v0

    if-gt v0, v4, :cond_0

    .line 1613
    iget-object v0, p0, Lcom/amap/api/a/b$b;->a:Lcom/amap/api/a/b;

    invoke-static {v0}, Lcom/amap/api/a/b;->e(Lcom/amap/api/a/b;)Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapZoomer()F

    move-result v0

    .line 1615
    iget-object v1, p0, Lcom/amap/api/a/b$b;->a:Lcom/amap/api/a/b;

    invoke-virtual {v1}, Lcom/amap/api/a/b;->k()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 1618
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1619
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1620
    float-to-int v0, v0

    .line 1621
    float-to-int v1, v1

    .line 1623
    const/high16 v2, 0x3f80

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {v2, v3}, Lcom/amap/api/a/h;->a(FLandroid/graphics/Point;)Lcom/amap/api/a/h;

    move-result-object v0

    .line 1625
    iget-object v1, p0, Lcom/amap/api/a/b$b;->a:Lcom/amap/api/a/b;

    iget-object v1, v1, Lcom/amap/api/a/b;->a:Lcom/amap/api/a/aa;

    invoke-virtual {v1, v0}, Lcom/amap/api/a/aa;->a(Lcom/amap/api/a/h;)V

    goto :goto_0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 1633
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 1638
    const/4 v0, 0x0

    return v0
.end method
