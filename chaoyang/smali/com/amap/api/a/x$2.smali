.class Lcom/amap/api/a/x$2;
.super Ljava/lang/Object;
.source "LocationView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/a/x;-><init>(Landroid/content/Context;Lcom/amap/api/a/aa;Lcom/amap/api/a/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/a/x;


# direct methods
.method constructor <init>(Lcom/amap/api/a/x;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/amap/api/a/x$2;->a:Lcom/amap/api/a/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 99
    iget-object v0, p0, Lcom/amap/api/a/x$2;->a:Lcom/amap/api/a/x;

    iget-boolean v0, v0, Lcom/amap/api/a/x;->f:Z

    if-nez v0, :cond_1

    .line 121
    :cond_0
    :goto_0
    return v6

    .line 102
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 103
    iget-object v0, p0, Lcom/amap/api/a/x$2;->a:Lcom/amap/api/a/x;

    iget-object v0, v0, Lcom/amap/api/a/x;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/amap/api/a/x$2;->a:Lcom/amap/api/a/x;

    iget-object v1, v1, Lcom/amap/api/a/x;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 104
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/a/x$2;->a:Lcom/amap/api/a/x;

    iget-object v0, v0, Lcom/amap/api/a/x;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/amap/api/a/x$2;->a:Lcom/amap/api/a/x;

    iget-object v1, v1, Lcom/amap/api/a/x;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 107
    iget-object v0, p0, Lcom/amap/api/a/x$2;->a:Lcom/amap/api/a/x;

    iget-object v0, v0, Lcom/amap/api/a/x;->e:Lcom/amap/api/a/n;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/amap/api/a/n;->f(Z)V

    .line 108
    iget-object v0, p0, Lcom/amap/api/a/x$2;->a:Lcom/amap/api/a/x;

    iget-object v0, v0, Lcom/amap/api/a/x;->e:Lcom/amap/api/a/n;

    invoke-interface {v0}, Lcom/amap/api/a/n;->r()Landroid/location/Location;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_0

    .line 112
    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    .line 114
    iget-object v2, p0, Lcom/amap/api/a/x$2;->a:Lcom/amap/api/a/x;

    iget-object v2, v2, Lcom/amap/api/a/x;->e:Lcom/amap/api/a/n;

    invoke-interface {v2, v0}, Lcom/amap/api/a/n;->a(Landroid/location/Location;)V

    .line 115
    iget-object v0, p0, Lcom/amap/api/a/x$2;->a:Lcom/amap/api/a/x;

    iget-object v0, v0, Lcom/amap/api/a/x;->e:Lcom/amap/api/a/n;

    iget-object v2, p0, Lcom/amap/api/a/x$2;->a:Lcom/amap/api/a/x;

    iget-object v2, v2, Lcom/amap/api/a/x;->e:Lcom/amap/api/a/n;

    invoke-interface {v2}, Lcom/amap/api/a/n;->x()F

    move-result v2

    invoke-static {v1, v2}, Lcom/amap/api/a/h;->a(Lcom/amap/api/maps/model/LatLng;F)Lcom/amap/api/a/h;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/a/n;->a(Lcom/amap/api/a/h;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    goto :goto_0
.end method
