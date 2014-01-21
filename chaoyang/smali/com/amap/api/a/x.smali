.class Lcom/amap/api/a/x;
.super Landroid/widget/LinearLayout;
.source "LocationView.java"


# instance fields
.field a:Landroid/graphics/Bitmap;

.field b:Landroid/graphics/Bitmap;

.field c:Landroid/graphics/Bitmap;

.field d:Landroid/widget/ImageView;

.field e:Lcom/amap/api/a/n;

.field f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/a/aa;Lcom/amap/api/a/n;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 127
    iput-boolean v2, p0, Lcom/amap/api/a/x;->f:Z

    .line 41
    iput-object p3, p0, Lcom/amap/api/a/x;->e:Lcom/amap/api/a/n;

    .line 43
    :try_start_0
    const-string v0, "location_selected.png"

    invoke-static {v0}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/a/x;->a:Landroid/graphics/Bitmap;

    .line 44
    const-string v0, "location_pressed.png"

    invoke-static {v0}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/a/x;->b:Landroid/graphics/Bitmap;

    .line 45
    iget-object v0, p0, Lcom/amap/api/a/x;->a:Landroid/graphics/Bitmap;

    sget v1, Lcom/amap/api/a/k;->a:F

    invoke-static {v0, v1}, Lcom/amap/api/a/b/g;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/a/x;->a:Landroid/graphics/Bitmap;

    .line 46
    iget-object v0, p0, Lcom/amap/api/a/x;->b:Landroid/graphics/Bitmap;

    sget v1, Lcom/amap/api/a/k;->a:F

    invoke-static {v0, v1}, Lcom/amap/api/a/b/g;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/a/x;->b:Landroid/graphics/Bitmap;

    .line 47
    const-string v0, "location_unselected.png"

    invoke-static {v0}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/a/x;->c:Landroid/graphics/Bitmap;

    .line 49
    iget-object v0, p0, Lcom/amap/api/a/x;->c:Landroid/graphics/Bitmap;

    sget v1, Lcom/amap/api/a/k;->a:F

    invoke-static {v0, v1}, Lcom/amap/api/a/b/g;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/a/x;->c:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/a/x;->d:Landroid/widget/ImageView;

    .line 72
    iget-object v0, p0, Lcom/amap/api/a/x;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/amap/api/a/x;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 73
    iget-object v0, p0, Lcom/amap/api/a/x;->d:Landroid/widget/ImageView;

    const/16 v1, -0xa

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 74
    iget-object v0, p0, Lcom/amap/api/a/x;->d:Landroid/widget/ImageView;

    new-instance v1, Lcom/amap/api/a/x$1;

    invoke-direct {v1, p0}, Lcom/amap/api/a/x$1;-><init>(Lcom/amap/api/a/x;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v0, p0, Lcom/amap/api/a/x;->d:Landroid/widget/ImageView;

    new-instance v1, Lcom/amap/api/a/x$2;

    invoke-direct {v1, p0}, Lcom/amap/api/a/x$2;-><init>(Lcom/amap/api/a/x;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 124
    iget-object v0, p0, Lcom/amap/api/a/x;->d:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/amap/api/a/x;->addView(Landroid/view/View;)V

    .line 125
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/a/x;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 29
    iget-object v0, p0, Lcom/amap/api/a/x;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 30
    iget-object v0, p0, Lcom/amap/api/a/x;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/a/x;->a:Landroid/graphics/Bitmap;

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/a/x;->b:Landroid/graphics/Bitmap;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/a/x;->c:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/amap/api/a/x;->f:Z

    .line 131
    if-eqz p1, :cond_0

    .line 132
    iget-object v0, p0, Lcom/amap/api/a/x;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/amap/api/a/x;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 136
    :goto_0
    iget-object v0, p0, Lcom/amap/api/a/x;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 137
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/amap/api/a/x;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/amap/api/a/x;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
