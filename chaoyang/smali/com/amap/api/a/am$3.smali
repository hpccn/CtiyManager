.class Lcom/amap/api/a/am$3;
.super Ljava/lang/Object;
.source "ZoomControllerView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/a/am;-><init>(Landroid/content/Context;Lcom/amap/api/a/aa;Lcom/amap/api/a/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/a/am;


# direct methods
.method constructor <init>(Lcom/amap/api/a/am;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/amap/api/a/am$3;->a:Lcom/amap/api/a/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 126
    iget-object v0, p0, Lcom/amap/api/a/am$3;->a:Lcom/amap/api/a/am;

    invoke-static {v0}, Lcom/amap/api/a/am;->a(Lcom/amap/api/a/am;)Lcom/amap/api/a/n;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/a/n;->x()F

    move-result v0

    iget-object v1, p0, Lcom/amap/api/a/am$3;->a:Lcom/amap/api/a/am;

    invoke-static {v1}, Lcom/amap/api/a/am;->a(Lcom/amap/api/a/am;)Lcom/amap/api/a/n;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/a/n;->k()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 141
    :cond_0
    :goto_0
    return v2

    .line 129
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/amap/api/a/am$3;->a:Lcom/amap/api/a/am;

    invoke-static {v0}, Lcom/amap/api/a/am;->c(Lcom/amap/api/a/am;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/a/am$3;->a:Lcom/amap/api/a/am;

    invoke-static {v1}, Lcom/amap/api/a/am;->b(Lcom/amap/api/a/am;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 131
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 132
    iget-object v0, p0, Lcom/amap/api/a/am$3;->a:Lcom/amap/api/a/am;

    invoke-static {v0}, Lcom/amap/api/a/am;->c(Lcom/amap/api/a/am;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/a/am$3;->a:Lcom/amap/api/a/am;

    invoke-static {v1}, Lcom/amap/api/a/am;->d(Lcom/amap/api/a/am;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/a/am$3;->a:Lcom/amap/api/a/am;

    invoke-static {v0}, Lcom/amap/api/a/am;->a(Lcom/amap/api/a/am;)Lcom/amap/api/a/n;

    move-result-object v0

    invoke-static {}, Lcom/amap/api/a/h;->b()Lcom/amap/api/a/h;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/a/n;->b(Lcom/amap/api/a/h;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
