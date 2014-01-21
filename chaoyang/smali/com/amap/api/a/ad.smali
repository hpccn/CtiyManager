.class Lcom/amap/api/a/ad;
.super Ljava/lang/Object;
.source "MarkerDelegateImp.java"

# interfaces
.implements Lcom/amap/api/a/q;


# static fields
.field private static a:I


# instance fields
.field private b:Ljava/nio/FloatBuffer;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Lcom/amap/api/maps/model/LatLng;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/amap/api/maps/model/BitmapDescriptor;

.field private i:F

.field private j:F

.field private k:Z

.field private l:Z

.field private m:Lcom/amap/api/a/ab;

.field private n:Ljava/nio/FloatBuffer;

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput v0, Lcom/amap/api/a/ad;->a:I

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/maps/model/MarkerOptions;Lcom/amap/api/a/ab;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/a/ad;->b:Ljava/nio/FloatBuffer;

    .line 62
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/amap/api/a/ad;->i:F

    .line 63
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/amap/api/a/ad;->j:F

    .line 64
    iput-boolean v1, p0, Lcom/amap/api/a/ad;->k:Z

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/a/ad;->l:Z

    .line 257
    iput-boolean v1, p0, Lcom/amap/api/a/ad;->o:Z

    .line 70
    iput-object p2, p0, Lcom/amap/api/a/ad;->m:Lcom/amap/api/a/ab;

    .line 71
    invoke-virtual {p1}, Lcom/amap/api/maps/model/MarkerOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/a/ad;->e:Lcom/amap/api/maps/model/LatLng;

    .line 72
    invoke-virtual {p1}, Lcom/amap/api/maps/model/MarkerOptions;->getAnchorU()F

    move-result v0

    iput v0, p0, Lcom/amap/api/a/ad;->i:F

    .line 73
    invoke-virtual {p1}, Lcom/amap/api/maps/model/MarkerOptions;->getAnchorV()F

    move-result v0

    iput v0, p0, Lcom/amap/api/a/ad;->j:F

    .line 74
    invoke-virtual {p1}, Lcom/amap/api/maps/model/MarkerOptions;->getIcon()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/a/ad;->h:Lcom/amap/api/maps/model/BitmapDescriptor;

    .line 75
    invoke-virtual {p1}, Lcom/amap/api/maps/model/MarkerOptions;->isVisible()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/a/ad;->l:Z

    .line 76
    invoke-virtual {p1}, Lcom/amap/api/maps/model/MarkerOptions;->getSnippet()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/a/ad;->g:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Lcom/amap/api/maps/model/MarkerOptions;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/a/ad;->f:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Lcom/amap/api/maps/model/MarkerOptions;->isDraggable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/a/ad;->k:Z

    .line 79
    invoke-virtual {p0}, Lcom/amap/api/a/ad;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/a/ad;->c:Ljava/lang/String;

    .line 82
    return-void
.end method

.method private a(Ljavax/microedition/khronos/opengles/GL10;ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v4, 0x8074

    const/16 v1, 0x1406

    const/16 v3, 0xde1

    const/4 v2, 0x0

    const/high16 v0, 0x3f80

    .line 412
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 415
    :cond_1
    invoke-interface {p1, v0, v0, v0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 416
    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 417
    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 418
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 419
    invoke-interface {p1, v3, p2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 424
    const/4 v0, 0x3

    invoke-interface {p1, v0, v1, v2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 425
    const/4 v0, 0x2

    invoke-interface {p1, v0, v1, v2, p4}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 426
    const/4 v0, 0x6

    const/4 v1, 0x4

    invoke-interface {p1, v0, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 428
    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 429
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 430
    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    goto :goto_0
.end method

.method private a(Ljavax/microedition/khronos/opengles/GL10;[ILandroid/graphics/Bitmap;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const v4, 0x47012f00

    const v3, 0x46180400

    const/4 v2, 0x0

    const/16 v1, 0xde1

    .line 387
    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 388
    invoke-interface {p1, v5, p2, v2}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 389
    aget v0, p2, v2

    invoke-interface {p1, v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 390
    const/16 v0, 0x2801

    invoke-interface {p1, v1, v0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 392
    const/16 v0, 0x2800

    invoke-interface {p1, v1, v0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 394
    const/16 v0, 0x2802

    invoke-interface {p1, v1, v0, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 396
    const/16 v0, 0x2803

    invoke-interface {p1, v1, v0, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 398
    invoke-static {v1, v2, p3, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 399
    iput-boolean v5, p0, Lcom/amap/api/a/ad;->o:Z

    .line 400
    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 401
    return-void
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 27
    sget v0, Lcom/amap/api/a/ad;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/amap/api/a/ad;->a:I

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/amap/api/a/ad;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amap/api/maps/model/LatLng;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/amap/api/a/ad;->e:Lcom/amap/api/maps/model/LatLng;

    .line 141
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/amap/api/a/ad;->f:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;Lcom/amap/api/a/n;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 440
    iget-boolean v0, p0, Lcom/amap/api/a/ad;->l:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/a/ad;->c()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/a/ad;->h()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    if-nez v0, :cond_1

    .line 463
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    iget-boolean v0, p0, Lcom/amap/api/a/ad;->o:Z

    if-nez v0, :cond_2

    .line 455
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 456
    invoke-virtual {p0}, Lcom/amap/api/a/ad;->h()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/amap/api/a/ad;->a(Ljavax/microedition/khronos/opengles/GL10;[ILandroid/graphics/Bitmap;)V

    .line 457
    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/amap/api/a/ad;->d:I

    .line 458
    invoke-virtual {p0}, Lcom/amap/api/a/ad;->t()V

    goto :goto_0

    .line 461
    :cond_2
    invoke-virtual {p0}, Lcom/amap/api/a/ad;->t()V

    .line 462
    iget v0, p0, Lcom/amap/api/a/ad;->d:I

    iget-object v1, p0, Lcom/amap/api/a/ad;->b:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/amap/api/a/ad;->n:Ljava/nio/FloatBuffer;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/amap/api/a/ad;->a(Ljavax/microedition/khronos/opengles/GL10;ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/amap/api/a/ad;->k:Z

    .line 166
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/amap/api/a/ad;->m:Lcom/amap/api/a/ab;

    invoke-virtual {v0, p0}, Lcom/amap/api/a/ab;->b(Lcom/amap/api/a/q;)Z

    move-result v0

    return v0
.end method

.method public a(Lcom/amap/api/a/q;)Z
    .locals 2
    .parameter

    .prologue
    .line 223
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/amap/api/a/q;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amap/api/a/ad;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    :cond_0
    const/4 v0, 0x1

    .line 227
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Landroid/graphics/Rect;
    .locals 6

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/amap/api/a/ad;->q()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    .line 114
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v3, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v4, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget-object v5, p0, Lcom/amap/api/a/ad;->h:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v5}, Lcom/amap/api/maps/model/BitmapDescriptor;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget-object v5, p0, Lcom/amap/api/a/ad;->h:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v5}, Lcom/amap/api/maps/model/BitmapDescriptor;->getHeight()I

    move-result v5

    add-int/2addr v0, v5

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 117
    return-object v1
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/amap/api/a/ad;->g:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 203
    iput-boolean p1, p0, Lcom/amap/api/a/ad;->l:Z

    .line 204
    return-void
.end method

.method public c()Lcom/amap/api/maps/model/LatLng;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/amap/api/a/ad;->e:Lcom/amap/api/maps/model/LatLng;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/amap/api/a/ad;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 133
    const-string v0, "Marker"

    invoke-static {v0}, Lcom/amap/api/a/ad;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/a/ad;->c:Ljava/lang/String;

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/amap/api/a/ad;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lcom/autonavi/amap/mapcore/FPoint;
    .locals 3

    .prologue
    .line 92
    new-instance v0, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    .line 93
    iget-object v1, p0, Lcom/amap/api/a/ad;->h:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/amap/api/a/ad;->h:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v1}, Lcom/amap/api/maps/model/BitmapDescriptor;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/amap/api/a/ad;->i:F

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    .line 95
    iget-object v1, p0, Lcom/amap/api/a/ad;->h:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v1}, Lcom/amap/api/maps/model/BitmapDescriptor;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/amap/api/a/ad;->j:F

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    .line 97
    :cond_0
    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/amap/api/a/ad;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/amap/api/a/ad;->g:Ljava/lang/String;

    return-object v0
.end method

.method public h()Lcom/amap/api/maps/model/BitmapDescriptor;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/amap/api/a/ad;->h:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-nez v0, :cond_0

    .line 171
    invoke-static {}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->defaultMarker()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/a/ad;->h:Lcom/amap/api/maps/model/BitmapDescriptor;

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/amap/api/a/ad;->h:Lcom/amap/api/maps/model/BitmapDescriptor;

    return-object v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/amap/api/a/ad;->k:Z

    return v0
.end method

.method public j()V
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/amap/api/a/ad;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/amap/api/a/ad;->m:Lcom/amap/api/a/ab;

    invoke-virtual {v0, p0}, Lcom/amap/api/a/ab;->d(Lcom/amap/api/a/q;)V

    goto :goto_0
.end method

.method public k()V
    .locals 1

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/amap/api/a/ad;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/amap/api/a/ad;->m:Lcom/amap/api/a/ab;

    invoke-virtual {v0, p0}, Lcom/amap/api/a/ab;->e(Lcom/amap/api/a/q;)V

    .line 194
    :cond_0
    return-void
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/amap/api/a/ad;->m:Lcom/amap/api/a/ab;

    invoke-virtual {v0, p0}, Lcom/amap/api/a/ab;->f(Lcom/amap/api/a/q;)Z

    move-result v0

    return v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/amap/api/a/ad;->l:Z

    return v0
.end method

.method public n()V
    .locals 2

    .prologue
    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/a/ad;->h:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/a/ad;->h:Lcom/amap/api/maps/model/BitmapDescriptor;

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/amap/api/a/ad;->n:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/amap/api/a/ad;->n:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/a/ad;->n:Ljava/nio/FloatBuffer;

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/amap/api/a/ad;->b:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_2

    .line 44
    iget-object v0, p0, Lcom/amap/api/a/ad;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/a/ad;->b:Ljava/nio/FloatBuffer;

    .line 47
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/a/ad;->e:Lcom/amap/api/maps/model/LatLng;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    const-string v0, "destroy erro"

    const-string v1, "MarkerDelegateImp destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public o()I
    .locals 1

    .prologue
    .line 232
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public p()Lcom/autonavi/amap/mapcore/IPoint;
    .locals 6

    .prologue
    .line 85
    new-instance v5, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v5}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 86
    iget-object v0, p0, Lcom/amap/api/a/ad;->m:Lcom/amap/api/a/ab;

    invoke-virtual {v0}, Lcom/amap/api/a/ab;->a()Lcom/amap/api/a/n;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amap/api/a/ad;->c()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    iget-wide v1, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-virtual {p0}, Lcom/amap/api/a/ad;->c()Lcom/amap/api/maps/model/LatLng;

    move-result-object v3

    iget-wide v3, v3, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-interface/range {v0 .. v5}, Lcom/amap/api/a/n;->b(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 88
    return-object v5
.end method

.method public q()Lcom/autonavi/amap/mapcore/IPoint;
    .locals 4

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/amap/api/a/ad;->p()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    .line 102
    invoke-virtual {p0}, Lcom/amap/api/a/ad;->e()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v1

    .line 103
    iget v2, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    int-to-float v2, v2

    iget v3, v1, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    .line 104
    iget v2, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    int-to-float v2, v2

    iget v1, v1, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    sub-float v1, v2, v1

    float-to-int v1, v1

    iput v1, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    .line 105
    return-object v0
.end method

.method public r()F
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/amap/api/a/ad;->i:F

    return v0
.end method

.method public s()F
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/amap/api/a/ad;->j:F

    return v0
.end method

.method public t()V
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 302
    iget-object v0, p0, Lcom/amap/api/a/ad;->m:Lcom/amap/api/a/ab;

    if-nez v0, :cond_1

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/amap/api/a/ad;->m:Lcom/amap/api/a/ab;

    invoke-virtual {v0}, Lcom/amap/api/a/ab;->a()Lcom/amap/api/a/n;

    move-result-object v0

    .line 306
    invoke-virtual {p0}, Lcom/amap/api/a/ad;->c()Lcom/amap/api/maps/model/LatLng;

    move-result-object v3

    .line 307
    if-eqz v3, :cond_0

    .line 310
    invoke-interface {v0}, Lcom/amap/api/a/n;->b()Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v6

    .line 311
    new-instance v5, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v5}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 312
    iget-wide v1, v3, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v3, v3, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-interface/range {v0 .. v5}, Lcom/amap/api/a/n;->b(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 313
    invoke-virtual {p0}, Lcom/amap/api/a/ad;->h()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/maps/model/BitmapDescriptor;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/amap/api/a/ad;->h()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/maps/model/BitmapDescriptor;->getHeight()I

    move-result v2

    .line 316
    iget v3, v5, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    int-to-float v3, v3

    int-to-float v4, v1

    invoke-virtual {p0}, Lcom/amap/api/a/ad;->r()F

    move-result v7

    mul-float/2addr v4, v7

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, v5, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    int-to-float v4, v4

    int-to-float v5, v2

    const/high16 v7, 0x3f80

    invoke-virtual {p0}, Lcom/amap/api/a/ad;->s()F

    move-result v8

    sub-float/2addr v7, v8

    mul-float/2addr v5, v7

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 323
    sub-int v5, v3, v1

    invoke-interface {v0}, Lcom/amap/api/a/n;->g()I

    move-result v7

    if-gt v5, v7, :cond_0

    neg-int v5, v1

    mul-int/lit8 v5, v5, 0x2

    if-lt v3, v5, :cond_0

    neg-int v5, v2

    mul-int/lit8 v5, v5, 0x2

    if-lt v4, v5, :cond_0

    sub-int v5, v4, v2

    invoke-interface {v0}, Lcom/amap/api/a/n;->h()I

    move-result v0

    if-gt v5, v0, :cond_0

    .line 332
    invoke-virtual {p0}, Lcom/amap/api/a/ad;->h()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getWidth()I

    move-result v0

    .line 333
    invoke-virtual {p0}, Lcom/amap/api/a/ad;->h()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amap/api/maps/model/BitmapDescriptor;->getHeight()I

    move-result v5

    .line 334
    invoke-virtual {p0}, Lcom/amap/api/a/ad;->h()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 335
    invoke-virtual {p0}, Lcom/amap/api/a/ad;->h()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v8

    invoke-virtual {v8}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 336
    int-to-float v0, v0

    int-to-float v8, v8

    div-float/2addr v0, v8

    .line 337
    int-to-float v5, v5

    int-to-float v7, v7

    div-float/2addr v5, v7

    .line 338
    iget-object v7, p0, Lcom/amap/api/a/ad;->n:Ljava/nio/FloatBuffer;

    if-nez v7, :cond_2

    .line 339
    const/16 v7, 0x8

    new-array v7, v7, [F

    aput v10, v7, v11

    aput v5, v7, v12

    aput v0, v7, v13

    aput v5, v7, v14

    const/4 v5, 0x4

    aput v0, v7, v5

    const/4 v0, 0x5

    aput v10, v7, v0

    const/4 v0, 0x6

    aput v10, v7, v0

    const/4 v0, 0x7

    aput v10, v7, v0

    invoke-static {v7}, Lcom/amap/api/a/b/g;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/a/ad;->n:Ljava/nio/FloatBuffer;

    .line 343
    :cond_2
    const/16 v0, 0xc

    new-array v0, v0, [F

    .line 345
    new-instance v5, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v5}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    .line 346
    invoke-virtual {v6, v3, v4, v5}, Lcom/autonavi/amap/mapcore/MapProjection;->win2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    .line 349
    new-instance v7, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v7}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    .line 350
    add-int v8, v3, v1

    invoke-virtual {v6, v8, v4, v7}, Lcom/autonavi/amap/mapcore/MapProjection;->win2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    .line 353
    new-instance v8, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v8}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    .line 354
    add-int/2addr v1, v3

    sub-int v9, v4, v2

    invoke-virtual {v6, v1, v9, v8}, Lcom/autonavi/amap/mapcore/MapProjection;->win2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    .line 357
    new-instance v1, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v1}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    .line 358
    sub-int v2, v4, v2

    invoke-virtual {v6, v3, v2, v1}, Lcom/autonavi/amap/mapcore/MapProjection;->win2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    .line 360
    iget v2, v5, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    aput v2, v0, v11

    .line 361
    iget v2, v5, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    aput v2, v0, v12

    .line 362
    aput v10, v0, v13

    .line 364
    iget v2, v7, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    aput v2, v0, v14

    .line 365
    const/4 v2, 0x4

    iget v3, v7, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    aput v3, v0, v2

    .line 366
    const/4 v2, 0x5

    aput v10, v0, v2

    .line 368
    const/4 v2, 0x6

    iget v3, v8, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    aput v3, v0, v2

    .line 369
    const/4 v2, 0x7

    iget v3, v8, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    aput v3, v0, v2

    .line 370
    const/16 v2, 0x8

    aput v10, v0, v2

    .line 372
    const/16 v2, 0x9

    iget v3, v1, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    aput v3, v0, v2

    .line 373
    const/16 v2, 0xa

    iget v1, v1, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    aput v1, v0, v2

    .line 374
    const/16 v1, 0xb

    aput v10, v0, v1

    .line 378
    iget-object v1, p0, Lcom/amap/api/a/ad;->b:Ljava/nio/FloatBuffer;

    if-nez v1, :cond_3

    .line 379
    invoke-static {v0}, Lcom/amap/api/a/b/g;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/a/ad;->b:Ljava/nio/FloatBuffer;

    goto/16 :goto_0

    .line 381
    :cond_3
    iget-object v1, p0, Lcom/amap/api/a/ad;->b:Ljava/nio/FloatBuffer;

    invoke-static {v0, v1}, Lcom/amap/api/a/b/g;->a([FLjava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/a/ad;->b:Ljava/nio/FloatBuffer;

    goto/16 :goto_0
.end method
