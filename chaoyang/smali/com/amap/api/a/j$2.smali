.class Lcom/amap/api/a/j$2;
.super Ljava/lang/Object;
.source "CompassView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/a/j;-><init>(Landroid/content/Context;Lcom/amap/api/a/aa;Lcom/amap/api/a/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/a/j;


# direct methods
.method constructor <init>(Lcom/amap/api/a/j;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/amap/api/a/j$2;->a:Lcom/amap/api/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/amap/api/a/j$2;->a:Lcom/amap/api/a/j;

    iget-object v0, v0, Lcom/amap/api/a/j;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/amap/api/a/j$2;->a:Lcom/amap/api/a/j;

    iget-object v1, v1, Lcom/amap/api/a/j;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 89
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 76
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/a/j$2;->a:Lcom/amap/api/a/j;

    iget-object v0, v0, Lcom/amap/api/a/j;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/amap/api/a/j$2;->a:Lcom/amap/api/a/j;

    iget-object v1, v1, Lcom/amap/api/a/j;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 81
    iget-object v0, p0, Lcom/amap/api/a/j$2;->a:Lcom/amap/api/a/j;

    iget-object v0, v0, Lcom/amap/api/a/j;->e:Lcom/amap/api/a/n;

    invoke-interface {v0}, Lcom/amap/api/a/n;->j()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/amap/api/a/j$2;->a:Lcom/amap/api/a/j;

    iget-object v1, v1, Lcom/amap/api/a/j;->e:Lcom/amap/api/a/n;

    new-instance v2, Lcom/amap/api/maps/model/CameraPosition;

    iget-object v3, v0, Lcom/amap/api/maps/model/CameraPosition;->target:Lcom/amap/api/maps/model/LatLng;

    iget v0, v0, Lcom/amap/api/maps/model/CameraPosition;->zoom:F

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v0, v4, v5}, Lcom/amap/api/maps/model/CameraPosition;-><init>(Lcom/amap/api/maps/model/LatLng;FFF)V

    invoke-static {v2}, Lcom/amap/api/a/h;->a(Lcom/amap/api/maps/model/CameraPosition;)Lcom/amap/api/a/h;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/amap/api/a/n;->b(Lcom/amap/api/a/h;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
