.class Lcom/amap/api/a/d;
.super Landroid/os/Handler;
.source "AMapDelegateImpGLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/a/b;


# direct methods
.method constructor <init>(Lcom/amap/api/a/b;)V
    .locals 0
    .parameter

    .prologue
    .line 1858
    iput-object p1, p0, Lcom/amap/api/a/d;->a:Lcom/amap/api/a/b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1860
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1955
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1862
    :pswitch_1
    iget-object v0, p0, Lcom/amap/api/a/d;->a:Lcom/amap/api/a/b;

    invoke-static {v0}, Lcom/amap/api/a/b;->v(Lcom/amap/api/a/b;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/a/d;->a:Lcom/amap/api/a/b;

    invoke-static {v1}, Lcom/amap/api/a/b;->w(Lcom/amap/api/a/b;)Lcom/amap/api/a/f;

    sget-object v1, Lcom/amap/api/a/f;->b:Ljava/lang/String;

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1867
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/maps/model/CameraPosition;

    .line 1868
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amap/api/a/d;->a:Lcom/amap/api/a/b;

    invoke-static {v1}, Lcom/amap/api/a/b;->x(Lcom/amap/api/a/b;)Lcom/amap/api/maps/AMap$OnCameraChangeListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1869
    iget-object v1, p0, Lcom/amap/api/a/d;->a:Lcom/amap/api/a/b;

    invoke-static {v1}, Lcom/amap/api/a/b;->x(Lcom/amap/api/a/b;)Lcom/amap/api/maps/AMap$OnCameraChangeListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amap/api/maps/AMap$OnCameraChangeListener;->onCameraChange(Lcom/amap/api/maps/model/CameraPosition;)V

    goto :goto_0

    .line 1883
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/a/h;

    .line 1884
    if-eqz v0, :cond_0

    .line 1885
    iget-object v1, p0, Lcom/amap/api/a/d;->a:Lcom/amap/api/a/b;

    iget-object v2, v0, Lcom/amap/api/a/h;->i:Lcom/amap/api/maps/model/LatLngBounds;

    iget v3, v0, Lcom/amap/api/a/h;->k:I

    iget v4, v0, Lcom/amap/api/a/h;->l:I

    iget v0, v0, Lcom/amap/api/a/h;->j:I

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/amap/api/a/b;->a(Lcom/amap/api/maps/model/LatLngBounds;III)V

    goto :goto_0

    .line 1892
    :pswitch_4
    iget-object v0, p0, Lcom/amap/api/a/d;->a:Lcom/amap/api/a/b;

    invoke-static {v0}, Lcom/amap/api/a/b;->g(Lcom/amap/api/a/b;)Lcom/amap/api/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/a/g;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1893
    iget-object v0, p0, Lcom/amap/api/a/d;->a:Lcom/amap/api/a/b;

    invoke-static {v0}, Lcom/amap/api/a/b;->g(Lcom/amap/api/a/b;)Lcom/amap/api/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/a/g;->j()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 1912
    iget-object v0, p0, Lcom/amap/api/a/d;->a:Lcom/amap/api/a/b;

    invoke-static {v0}, Lcom/amap/api/a/b;->g(Lcom/amap/api/a/b;)Lcom/amap/api/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/a/g;->b()I

    move-result v0

    iget-object v1, p0, Lcom/amap/api/a/d;->a:Lcom/amap/api/a/b;

    invoke-static {v1}, Lcom/amap/api/a/b;->j(Lcom/amap/api/a/b;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 1913
    iget-object v1, p0, Lcom/amap/api/a/d;->a:Lcom/amap/api/a/b;

    invoke-static {v1}, Lcom/amap/api/a/b;->g(Lcom/amap/api/a/b;)Lcom/amap/api/a/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/a/g;->c()I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/a/d;->a:Lcom/amap/api/a/b;

    invoke-static {v2}, Lcom/amap/api/a/b;->k(Lcom/amap/api/a/b;)I

    move-result v2

    sub-int/2addr v1, v2

    .line 1914
    iget-object v2, p0, Lcom/amap/api/a/d;->a:Lcom/amap/api/a/b;

    iget-object v3, p0, Lcom/amap/api/a/d;->a:Lcom/amap/api/a/b;

    invoke-static {v3}, Lcom/amap/api/a/b;->g(Lcom/amap/api/a/b;)Lcom/amap/api/a/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amap/api/a/g;->b()I

    move-result v3

    invoke-static {v2, v3}, Lcom/amap/api/a/b;->b(Lcom/amap/api/a/b;I)I

    .line 1915
    iget-object v2, p0, Lcom/amap/api/a/d;->a:Lcom/amap/api/a/b;

    iget-object v3, p0, Lcom/amap/api/a/d;->a:Lcom/amap/api/a/b;

    invoke-static {v3}, Lcom/amap/api/a/b;->g(Lcom/amap/api/a/b;)Lcom/amap/api/a/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amap/api/a/g;->c()I

    move-result v3

    invoke-static {v2, v3}, Lcom/amap/api/a/b;->c(Lcom/amap/api/a/b;I)I

    .line 1916
    new-instance v2, Lcom/autonavi/amap/mapcore/FPoint;

    iget-object v3, p0, Lcom/amap/api/a/d;->a:Lcom/amap/api/a/b;

    invoke-virtual {v3}, Lcom/amap/api/a/b;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    int-to-float v0, v0

    iget-object v3, p0, Lcom/amap/api/a/d;->a:Lcom/amap/api/a/b;

    invoke-virtual {v3}, Lcom/amap/api/a/b;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-direct {v2, v0, v1}, Lcom/autonavi/amap/mapcore/FPoint;-><init>(FF)V

    .line 1918
    new-instance v0, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    .line 1919
    iget-object v1, p0, Lcom/amap/api/a/d;->a:Lcom/amap/api/a/b;

    invoke-static {v1}, Lcom/amap/api/a/b;->e(Lcom/amap/api/a/b;)Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v1

    iget v3, v2, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    float-to-int v3, v3

    iget v2, v2, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    float-to-int v2, v2

    invoke-virtual {v1, v3, v2, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->win2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    .line 1920
    new-instance v1, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v1}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 1921
    iget-object v2, p0, Lcom/amap/api/a/d;->a:Lcom/amap/api/a/b;

    invoke-static {v2}, Lcom/amap/api/a/b;->e(Lcom/amap/api/a/b;)Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v2

    iget v3, v0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget v0, v0, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-virtual {v2, v3, v0, v1}, Lcom/autonavi/amap/mapcore/MapProjection;->map2Geo(FFLcom/autonavi/amap/mapcore/IPoint;)V

    .line 1922
    iget-object v0, p0, Lcom/amap/api/a/d;->a:Lcom/amap/api/a/b;

    iget-object v0, v0, Lcom/amap/api/a/b;->a:Lcom/amap/api/a/aa;

    invoke-static {v1}, Lcom/amap/api/a/h;->a(Lcom/autonavi/amap/mapcore/IPoint;)Lcom/amap/api/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/a/aa;->a(Lcom/amap/api/a/h;)V

    .line 1926
    :goto_1
    iget-object v0, p0, Lcom/amap/api/a/d;->a:Lcom/amap/api/a/b;

    invoke-static {v0}, Lcom/amap/api/a/b;->g(Lcom/amap/api/a/b;)Lcom/amap/api/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/a/g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1927
    iget-object v0, p0, Lcom/amap/api/a/d;->a:Lcom/amap/api/a/b;

    invoke-static {v0}, Lcom/amap/api/a/b;->h(Lcom/amap/api/a/b;)Lcom/amap/api/maps/AMap$CancelableCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1928
    iget-object v0, p0, Lcom/amap/api/a/d;->a:Lcom/amap/api/a/b;

    invoke-static {v0}, Lcom/amap/api/a/b;->h(Lcom/amap/api/a/b;)Lcom/amap/api/maps/AMap$CancelableCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/maps/AMap$CancelableCallback;->onFinish()V

    .line 1929
    :cond_1
    iget-object v0, p0, Lcom/amap/api/a/d;->a:Lcom/amap/api/a/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amap/api/a/b;->a(Lcom/amap/api/a/b;Lcom/amap/api/maps/AMap$CancelableCallback;)Lcom/amap/api/maps/AMap$CancelableCallback;

    goto/16 :goto_0

    .line 1895
    :pswitch_5
    iget-object v0, p0, Lcom/amap/api/a/d;->a:Lcom/amap/api/a/b;

    invoke-static {v0}, Lcom/amap/api/a/b;->g(Lcom/amap/api/a/b;)Lcom/amap/api/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/a/g;->d()F

    move-result v0

    .line 1897
    iget-object v1, p0, Lcom/amap/api/a/d;->a:Lcom/amap/api/a/b;

    iget-object v1, v1, Lcom/amap/api/a/b;->a:Lcom/amap/api/a/aa;

    invoke-static {v0}, Lcom/amap/api/a/h;->a(F)Lcom/amap/api/a/h;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/a/aa;->a(Lcom/amap/api/a/h;)V

    goto :goto_1

    .line 1902
    :pswitch_6
    iget-object v0, p0, Lcom/amap/api/a/d;->a:Lcom/amap/api/a/b;

    iget-object v0, v0, Lcom/amap/api/a/b;->a:Lcom/amap/api/a/aa;

    new-instance v1, Lcom/autonavi/amap/mapcore/IPoint;

    iget-object v2, p0, Lcom/amap/api/a/d;->a:Lcom/amap/api/a/b;

    invoke-static {v2}, Lcom/amap/api/a/b;->g(Lcom/amap/api/a/b;)Lcom/amap/api/a/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/a/g;->b()I

    move-result v2

    iget-object v3, p0, Lcom/amap/api/a/d;->a:Lcom/amap/api/a/b;

    invoke-static {v3}, Lcom/amap/api/a/b;->g(Lcom/amap/api/a/b;)Lcom/amap/api/a/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amap/api/a/g;->c()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/autonavi/amap/mapcore/IPoint;-><init>(II)V

    iget-object v2, p0, Lcom/amap/api/a/d;->a:Lcom/amap/api/a/b;

    invoke-static {v2}, Lcom/amap/api/a/b;->g(Lcom/amap/api/a/b;)Lcom/amap/api/a/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/a/g;->d()F

    move-result v2

    iget-object v3, p0, Lcom/amap/api/a/d;->a:Lcom/amap/api/a/b;

    invoke-static {v3}, Lcom/amap/api/a/b;->g(Lcom/amap/api/a/b;)Lcom/amap/api/a/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amap/api/a/g;->e()F

    move-result v3

    iget-object v4, p0, Lcom/amap/api/a/d;->a:Lcom/amap/api/a/b;

    invoke-static {v4}, Lcom/amap/api/a/b;->g(Lcom/amap/api/a/b;)Lcom/amap/api/a/g;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amap/api/a/g;->f()F

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/amap/api/a/h;->a(Lcom/autonavi/amap/mapcore/IPoint;FFF)Lcom/amap/api/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/a/aa;->a(Lcom/amap/api/a/h;)V

    goto :goto_1

    .line 1935
    :pswitch_7
    iget-object v0, p0, Lcom/amap/api/a/d;->a:Lcom/amap/api/a/b;

    invoke-static {v0}, Lcom/amap/api/a/b;->e(Lcom/amap/api/a/b;)Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapAngle()F

    move-result v0

    .line 1936
    iget-object v1, p0, Lcom/amap/api/a/d;->a:Lcom/amap/api/a/b;

    invoke-static {v1}, Lcom/amap/api/a/b;->e(Lcom/amap/api/a/b;)Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapProjection;->getCameraHeaderAngle()F

    move-result v1

    .line 1937
    iget-object v2, p0, Lcom/amap/api/a/d;->a:Lcom/amap/api/a/b;

    invoke-static {v2}, Lcom/amap/api/a/b;->a(Lcom/amap/api/a/b;)Lcom/amap/api/a/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/a/j;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_3

    cmpl-float v2, v0, v3

    if-nez v2, :cond_2

    cmpl-float v2, v1, v3

    if-eqz v2, :cond_3

    .line 1939
    :cond_2
    iget-object v2, p0, Lcom/amap/api/a/d;->a:Lcom/amap/api/a/b;

    invoke-static {v2}, Lcom/amap/api/a/b;->a(Lcom/amap/api/a/b;)Lcom/amap/api/a/j;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/amap/api/a/j;->setVisibility(I)V

    .line 1941
    :cond_3
    iget-object v2, p0, Lcom/amap/api/a/d;->a:Lcom/amap/api/a/b;

    invoke-static {v2}, Lcom/amap/api/a/b;->a(Lcom/amap/api/a/b;)Lcom/amap/api/a/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/a/j;->b()V

    .line 1942
    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    cmpl-float v0, v1, v3

    if-nez v0, :cond_0

    .line 1943
    iget-object v0, p0, Lcom/amap/api/a/d;->a:Lcom/amap/api/a/b;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/a/b;->a(J)V

    goto/16 :goto_0

    .line 1948
    :pswitch_8
    iget-object v0, p0, Lcom/amap/api/a/d;->a:Lcom/amap/api/a/b;

    invoke-virtual {v0}, Lcom/amap/api/a/b;->f()V

    goto/16 :goto_0

    .line 1860
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 1893
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
