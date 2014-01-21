.class Lcom/amap/api/a/b$e;
.super Ljava/lang/Object;
.source "AMapDelegateImpGLSurfaceView.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/a/b;

.field private b:F


# direct methods
.method private constructor <init>(Lcom/amap/api/a/b;)V
    .locals 1
    .parameter

    .prologue
    .line 1207
    iput-object p1, p0, Lcom/amap/api/a/b$e;->a:Lcom/amap/api/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1212
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/a/b$e;->b:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/a/b;Lcom/amap/api/a/b$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1207
    invoke-direct {p0, p1}, Lcom/amap/api/a/b$e;-><init>(Lcom/amap/api/a/b;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 1219
    iget-object v0, p0, Lcom/amap/api/a/b$e;->a:Lcom/amap/api/a/b;

    invoke-static {v0}, Lcom/amap/api/a/b;->b(Lcom/amap/api/a/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1228
    :cond_0
    :goto_0
    return v5

    .line 1222
    :cond_1
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    .line 1223
    iget-object v1, p0, Lcom/amap/api/a/b$e;->a:Lcom/amap/api/a/b;

    invoke-static {v1}, Lcom/amap/api/a/b;->c(Lcom/amap/api/a/b;)Z

    move-result v1

    if-nez v1, :cond_2

    float-to-double v1, v0

    const-wide v3, 0x3ff147ae147ae148L

    cmpl-double v1, v1, v3

    if-gtz v1, :cond_2

    float-to-double v1, v0

    const-wide v3, 0x3fed70a3d70a3d71L

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    .line 1224
    :cond_2
    iget-object v1, p0, Lcom/amap/api/a/b$e;->a:Lcom/amap/api/a/b;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/amap/api/a/b;->a(Lcom/amap/api/a/b;Z)Z

    .line 1225
    iget-object v1, p0, Lcom/amap/api/a/b$e;->a:Lcom/amap/api/a/b;

    iget-object v1, v1, Lcom/amap/api/a/b;->a:Lcom/amap/api/a/aa;

    iget v2, p0, Lcom/amap/api/a/b$e;->b:F

    const/high16 v3, 0x3f80

    sub-float/2addr v0, v3

    add-float/2addr v0, v2

    invoke-static {v0}, Lcom/amap/api/a/h;->a(F)Lcom/amap/api/a/h;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/a/aa;->a(Lcom/amap/api/a/h;)V

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1237
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/a/b$e;->a:Lcom/amap/api/a/b;

    invoke-static {v1}, Lcom/amap/api/a/b;->d(Lcom/amap/api/a/b;)Lcom/amap/api/a/w;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/a/w;->f()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_1

    .line 1252
    :cond_0
    :goto_0
    return v0

    .line 1240
    :catch_0
    move-exception v1

    .line 1241
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1246
    :cond_1
    iget-object v1, p0, Lcom/amap/api/a/b$e;->a:Lcom/amap/api/a/b;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/amap/api/a/b;->a(Lcom/amap/api/a/b;I)I

    .line 1247
    iget-object v1, p0, Lcom/amap/api/a/b$e;->a:Lcom/amap/api/a/b;

    invoke-static {v1}, Lcom/amap/api/a/b;->b(Lcom/amap/api/a/b;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1250
    iget-object v1, p0, Lcom/amap/api/a/b$e;->a:Lcom/amap/api/a/b;

    invoke-static {v1, v0}, Lcom/amap/api/a/b;->a(Lcom/amap/api/a/b;Z)Z

    .line 1251
    iget-object v0, p0, Lcom/amap/api/a/b$e;->a:Lcom/amap/api/a/b;

    invoke-static {v0}, Lcom/amap/api/a/b;->e(Lcom/amap/api/a/b;)Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapZoomer()F

    move-result v0

    iput v0, p0, Lcom/amap/api/a/b$e;->b:F

    .line 1252
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 5
    .parameter

    .prologue
    .line 1257
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/a/b$e;->b:F

    .line 1258
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    .line 1259
    float-to-double v1, v0

    const-wide v3, 0x3ff07ae147ae147bL

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    float-to-double v0, v0

    const-wide v2, 0x3fef0a3d70a3d70aL

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/a/b$e;->a:Lcom/amap/api/a/b;

    invoke-static {v0}, Lcom/amap/api/a/b;->c(Lcom/amap/api/a/b;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/a/b$e;->a:Lcom/amap/api/a/b;

    invoke-static {v0}, Lcom/amap/api/a/b;->b(Lcom/amap/api/a/b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1261
    iget-object v0, p0, Lcom/amap/api/a/b$e;->a:Lcom/amap/api/a/b;

    iget-object v0, v0, Lcom/amap/api/a/b;->a:Lcom/amap/api/a/aa;

    invoke-static {}, Lcom/amap/api/a/h;->c()Lcom/amap/api/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/a/aa;->a(Lcom/amap/api/a/h;)V

    .line 1264
    :cond_0
    iget-object v0, p0, Lcom/amap/api/a/b$e;->a:Lcom/amap/api/a/b;

    invoke-static {v0}, Lcom/amap/api/a/b;->f(Lcom/amap/api/a/b;)V

    .line 1266
    return-void
.end method
