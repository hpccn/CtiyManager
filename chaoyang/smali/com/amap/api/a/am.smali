.class Lcom/amap/api/a/am;
.super Landroid/widget/LinearLayout;
.source "ZoomControllerView.java"


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/graphics/Bitmap;

.field private d:Landroid/graphics/Bitmap;

.field private e:Landroid/graphics/Bitmap;

.field private f:Landroid/graphics/Bitmap;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Lcom/amap/api/a/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/a/aa;Lcom/amap/api/a/n;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v0, 0xa

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 51
    iput-object p3, p0, Lcom/amap/api/a/am;->i:Lcom/amap/api/a/n;

    .line 54
    :try_start_0
    const-string v2, "zoomin_selected.png"

    invoke-static {v2}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/a/am;->a:Landroid/graphics/Bitmap;

    .line 56
    iget-object v2, p0, Lcom/amap/api/a/am;->a:Landroid/graphics/Bitmap;

    sget v3, Lcom/amap/api/a/k;->a:F

    invoke-static {v2, v3}, Lcom/amap/api/a/b/g;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/a/am;->a:Landroid/graphics/Bitmap;

    .line 58
    const-string v2, "zoomin_unselected.png"

    invoke-static {v2}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/a/am;->b:Landroid/graphics/Bitmap;

    .line 60
    iget-object v2, p0, Lcom/amap/api/a/am;->b:Landroid/graphics/Bitmap;

    sget v3, Lcom/amap/api/a/k;->a:F

    invoke-static {v2, v3}, Lcom/amap/api/a/b/g;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/a/am;->b:Landroid/graphics/Bitmap;

    .line 63
    const-string v2, "zoomout_selected.png"

    invoke-static {v2}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/a/am;->c:Landroid/graphics/Bitmap;

    .line 65
    iget-object v2, p0, Lcom/amap/api/a/am;->c:Landroid/graphics/Bitmap;

    sget v3, Lcom/amap/api/a/k;->a:F

    invoke-static {v2, v3}, Lcom/amap/api/a/b/g;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/a/am;->c:Landroid/graphics/Bitmap;

    .line 67
    const-string v2, "zoomout_unselected.png"

    invoke-static {v2}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/a/am;->d:Landroid/graphics/Bitmap;

    .line 69
    iget-object v2, p0, Lcom/amap/api/a/am;->d:Landroid/graphics/Bitmap;

    sget v3, Lcom/amap/api/a/k;->a:F

    invoke-static {v2, v3}, Lcom/amap/api/a/b/g;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/a/am;->d:Landroid/graphics/Bitmap;

    .line 72
    const-string v2, "zoomin_pressed.png"

    invoke-static {v2}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/a/am;->e:Landroid/graphics/Bitmap;

    .line 74
    const-string v2, "zoomout_pressed.png"

    invoke-static {v2}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/a/am;->f:Landroid/graphics/Bitmap;

    .line 77
    iget-object v2, p0, Lcom/amap/api/a/am;->e:Landroid/graphics/Bitmap;

    sget v3, Lcom/amap/api/a/k;->a:F

    invoke-static {v2, v3}, Lcom/amap/api/a/b/g;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/a/am;->e:Landroid/graphics/Bitmap;

    .line 79
    iget-object v2, p0, Lcom/amap/api/a/am;->f:Landroid/graphics/Bitmap;

    sget v3, Lcom/amap/api/a/k;->a:F

    invoke-static {v2, v3}, Lcom/amap/api/a/b/g;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/a/am;->f:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/amap/api/a/am;->g:Landroid/widget/ImageView;

    .line 87
    iget-object v2, p0, Lcom/amap/api/a/am;->g:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/amap/api/a/am;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 88
    iget-object v2, p0, Lcom/amap/api/a/am;->g:Landroid/widget/ImageView;

    new-instance v3, Lcom/amap/api/a/am$1;

    invoke-direct {v3, p0}, Lcom/amap/api/a/am$1;-><init>(Lcom/amap/api/a/am;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/amap/api/a/am;->h:Landroid/widget/ImageView;

    .line 104
    iget-object v2, p0, Lcom/amap/api/a/am;->h:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/amap/api/a/am;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 106
    iget-object v2, p0, Lcom/amap/api/a/am;->h:Landroid/widget/ImageView;

    new-instance v3, Lcom/amap/api/a/am$2;

    invoke-direct {v3, p0}, Lcom/amap/api/a/am$2;-><init>(Lcom/amap/api/a/am;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v2, p0, Lcom/amap/api/a/am;->g:Landroid/widget/ImageView;

    new-instance v3, Lcom/amap/api/a/am$3;

    invoke-direct {v3, p0}, Lcom/amap/api/a/am$3;-><init>(Lcom/amap/api/a/am;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 144
    iget-object v2, p0, Lcom/amap/api/a/am;->h:Landroid/widget/ImageView;

    new-instance v3, Lcom/amap/api/a/am$4;

    invoke-direct {v3, p0}, Lcom/amap/api/a/am$4;-><init>(Lcom/amap/api/a/am;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 166
    const/16 v3, 0x19

    .line 167
    const/16 v2, 0xd

    .line 169
    sget v4, Lcom/amap/api/a/k;->a:F

    float-to-double v4, v4

    const-wide v6, 0x3fe3333333333333L

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    .line 172
    const/16 v2, 0x14

    move v3, v2

    move v2, v0

    move v0, v1

    .line 174
    :cond_0
    iget-object v4, p0, Lcom/amap/api/a/am;->g:Landroid/widget/ImageView;

    neg-int v5, v0

    iget-object v6, p0, Lcom/amap/api/a/am;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    neg-int v6, v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v2, v6

    invoke-virtual {v4, v1, v1, v5, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 175
    iget-object v2, p0, Lcom/amap/api/a/am;->h:Landroid/widget/ImageView;

    neg-int v0, v0

    neg-int v3, v3

    invoke-virtual {v2, v1, v1, v0, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 176
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amap/api/a/am;->setOrientation(I)V

    .line 177
    iget-object v0, p0, Lcom/amap/api/a/am;->g:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/amap/api/a/am;->addView(Landroid/view/View;)V

    .line 178
    iget-object v0, p0, Lcom/amap/api/a/am;->h:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/amap/api/a/am;->addView(Landroid/view/View;)V

    .line 180
    return-void

    .line 82
    :catch_0
    move-exception v2

    .line 83
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/amap/api/a/am;)Lcom/amap/api/a/n;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/amap/api/a/am;->i:Lcom/amap/api/a/n;

    return-object v0
.end method

.method static synthetic b(Lcom/amap/api/a/am;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/amap/api/a/am;->e:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic c(Lcom/amap/api/a/am;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/amap/api/a/am;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic d(Lcom/amap/api/a/am;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/amap/api/a/am;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic e(Lcom/amap/api/a/am;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/amap/api/a/am;->f:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic f(Lcom/amap/api/a/am;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/amap/api/a/am;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic g(Lcom/amap/api/a/am;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/amap/api/a/am;->c:Landroid/graphics/Bitmap;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/a/am;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 30
    iget-object v0, p0, Lcom/amap/api/a/am;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 31
    iget-object v0, p0, Lcom/amap/api/a/am;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 32
    iget-object v0, p0, Lcom/amap/api/a/am;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 33
    iget-object v0, p0, Lcom/amap/api/a/am;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 34
    iget-object v0, p0, Lcom/amap/api/a/am;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/a/am;->a:Landroid/graphics/Bitmap;

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/a/am;->b:Landroid/graphics/Bitmap;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/a/am;->c:Landroid/graphics/Bitmap;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/a/am;->d:Landroid/graphics/Bitmap;

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/a/am;->e:Landroid/graphics/Bitmap;

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/a/am;->f:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(F)V
    .locals 2
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Lcom/amap/api/a/am;->i:Lcom/amap/api/a/n;

    invoke-interface {v0}, Lcom/amap/api/a/n;->k()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/a/am;->i:Lcom/amap/api/a/n;

    invoke-interface {v0}, Lcom/amap/api/a/n;->l()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/amap/api/a/am;->g:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/amap/api/a/am;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 186
    iget-object v0, p0, Lcom/amap/api/a/am;->h:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/amap/api/a/am;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/amap/api/a/am;->i:Lcom/amap/api/a/n;

    invoke-interface {v0}, Lcom/amap/api/a/n;->l()F

    move-result v0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    .line 188
    iget-object v0, p0, Lcom/amap/api/a/am;->h:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/amap/api/a/am;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 189
    iget-object v0, p0, Lcom/amap/api/a/am;->g:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/amap/api/a/am;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 190
    :cond_2
    iget-object v0, p0, Lcom/amap/api/a/am;->i:Lcom/amap/api/a/n;

    invoke-interface {v0}, Lcom/amap/api/a/n;->k()F

    move-result v0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/amap/api/a/am;->g:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/amap/api/a/am;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 192
    iget-object v0, p0, Lcom/amap/api/a/am;->h:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/amap/api/a/am;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
