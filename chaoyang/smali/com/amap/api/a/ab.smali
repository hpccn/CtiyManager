.class Lcom/amap/api/a/ab;
.super Landroid/view/View;
.source "MapOverlayImageView.java"


# instance fields
.field private a:Lcom/amap/api/a/n;

.field private b:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/amap/api/a/q;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/autonavi/amap/mapcore/IPoint;

.field private d:Lcom/amap/api/a/q;

.field private final e:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/amap/api/a/n;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/a/ab;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 107
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/amap/api/a/ab;->e:Landroid/os/Handler;

    .line 42
    iput-object p3, p0, Lcom/amap/api/a/ab;->a:Lcom/amap/api/a/n;

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/amap/api/a/ab;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/amap/api/a/ab;->e()V

    return-void
.end method

.method private e()V
    .locals 5

    .prologue
    .line 165
    iget-object v0, p0, Lcom/amap/api/a/ab;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/a/q;

    .line 166
    iget-object v2, p0, Lcom/amap/api/a/ab;->d:Lcom/amap/api/a/q;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/a/ab;->d:Lcom/amap/api/a/q;

    invoke-interface {v2}, Lcom/amap/api/a/q;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/amap/api/a/q;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    invoke-interface {v0}, Lcom/amap/api/a/q;->b()Landroid/graphics/Rect;

    move-result-object v2

    .line 168
    new-instance v3, Lcom/autonavi/amap/mapcore/IPoint;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    invoke-interface {v0}, Lcom/amap/api/a/q;->h()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v4

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-direct {v3, v0, v2}, Lcom/autonavi/amap/mapcore/IPoint;-><init>(II)V

    iput-object v3, p0, Lcom/amap/api/a/ab;->c:Lcom/autonavi/amap/mapcore/IPoint;

    .line 170
    iget-object v0, p0, Lcom/amap/api/a/ab;->a:Lcom/amap/api/a/n;

    invoke-interface {v0}, Lcom/amap/api/a/n;->i()V

    goto :goto_0

    .line 173
    :cond_1
    return-void
.end method


# virtual methods
.method public a()Lcom/amap/api/a/n;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/amap/api/a/ab;->a:Lcom/amap/api/a/n;

    return-object v0
.end method

.method public a(Landroid/view/MotionEvent;)Lcom/amap/api/a/q;
    .locals 6
    .parameter

    .prologue
    .line 184
    iget-object v0, p0, Lcom/amap/api/a/ab;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 185
    const/4 v1, 0x0

    move v2, v0

    .line 186
    :goto_0
    if-ltz v2, :cond_1

    .line 187
    iget-object v0, p0, Lcom/amap/api/a/ab;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/a/q;

    .line 188
    invoke-interface {v0}, Lcom/amap/api/a/q;->b()Landroid/graphics/Rect;

    move-result-object v3

    .line 189
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/amap/api/a/ab;->a(Landroid/graphics/Rect;II)Z

    move-result v3

    .line 190
    if-eqz v3, :cond_0

    .line 195
    :goto_1
    return-object v0

    .line 186
    :cond_0
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)Lcom/amap/api/a/q;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/amap/api/a/ab;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/a/q;

    .line 47
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amap/api/a/q;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/amap/api/a/q;)V
    .locals 1
    .parameter

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/amap/api/a/ab;->e(Lcom/amap/api/a/q;)V

    .line 60
    invoke-virtual {p0, p1}, Lcom/amap/api/a/ab;->b(Lcom/amap/api/a/q;)Z

    .line 61
    iget-object v0, p0, Lcom/amap/api/a/ab;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    return-void
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcom/amap/api/a/ab;->e:Landroid/os/Handler;

    new-instance v1, Lcom/amap/api/a/ab$1;

    invoke-direct {v1, p0}, Lcom/amap/api/a/ab$1;-><init>(Lcom/amap/api/a/ab;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 127
    iget-object v0, p0, Lcom/amap/api/a/ab;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/a/q;

    .line 128
    iget-object v2, p0, Lcom/amap/api/a/ab;->a:Lcom/amap/api/a/n;

    invoke-interface {v0, p1, v2}, Lcom/amap/api/a/q;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/amap/api/a/n;)V

    goto :goto_0

    .line 130
    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Rect;II)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 253
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/amap/api/a/ab;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 56
    return-void
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter

    .prologue
    .line 217
    const/4 v2, 0x0

    .line 218
    iget-object v0, p0, Lcom/amap/api/a/ab;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    .line 219
    :goto_0
    if-ltz v3, :cond_1

    .line 220
    iget-object v0, p0, Lcom/amap/api/a/ab;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/a/q;

    .line 221
    invoke-interface {v0}, Lcom/amap/api/a/q;->b()Landroid/graphics/Rect;

    move-result-object v4

    .line 222
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p0, v4, v1, v5}, Lcom/amap/api/a/ab;->a(Landroid/graphics/Rect;II)Z

    move-result v1

    .line 223
    if-eqz v1, :cond_0

    .line 225
    new-instance v2, Lcom/autonavi/amap/mapcore/IPoint;

    iget v3, v4, Landroid/graphics/Rect;->left:I

    invoke-interface {v0}, Lcom/amap/api/a/q;->h()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amap/api/maps/model/BitmapDescriptor;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-direct {v2, v3, v4}, Lcom/autonavi/amap/mapcore/IPoint;-><init>(II)V

    iput-object v2, p0, Lcom/amap/api/a/ab;->c:Lcom/autonavi/amap/mapcore/IPoint;

    .line 227
    iput-object v0, p0, Lcom/amap/api/a/ab;->d:Lcom/amap/api/a/q;

    move v0, v1

    .line 249
    :goto_1
    return v0

    .line 219
    :cond_0
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method public b(Lcom/amap/api/a/q;)Z
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/amap/api/a/ab;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c()Lcom/amap/api/a/q;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/amap/api/a/ab;->d:Lcom/amap/api/a/q;

    return-object v0
.end method

.method public c(Lcom/amap/api/a/q;)V
    .locals 4
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/amap/api/a/ab;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 70
    iget-object v1, p0, Lcom/amap/api/a/ab;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 72
    iget-object v2, p0, Lcom/amap/api/a/ab;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v3, p0, Lcom/amap/api/a/ab;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lcom/amap/api/a/ab;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 78
    return-void
.end method

.method public d()V
    .locals 4

    .prologue
    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/a/ab;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/a/q;

    .line 205
    invoke-interface {v0}, Lcom/amap/api/a/q;->n()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 209
    :catch_0
    move-exception v0

    .line 210
    const-string v1, "amapApi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MapOverlayImageView clear erro"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :goto_1
    return-void

    .line 208
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/amap/api/a/ab;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public d(Lcom/amap/api/a/q;)V
    .locals 4
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/amap/api/a/ab;->c:Lcom/autonavi/amap/mapcore/IPoint;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    iput-object v0, p0, Lcom/amap/api/a/ab;->c:Lcom/autonavi/amap/mapcore/IPoint;

    .line 85
    :cond_0
    invoke-interface {p1}, Lcom/amap/api/a/q;->b()Landroid/graphics/Rect;

    move-result-object v0

    .line 86
    new-instance v1, Lcom/autonavi/amap/mapcore/IPoint;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-interface {p1}, Lcom/amap/api/a/q;->h()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amap/api/maps/model/BitmapDescriptor;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-direct {v1, v2, v0}, Lcom/autonavi/amap/mapcore/IPoint;-><init>(II)V

    iput-object v1, p0, Lcom/amap/api/a/ab;->c:Lcom/autonavi/amap/mapcore/IPoint;

    .line 88
    iput-object p1, p0, Lcom/amap/api/a/ab;->d:Lcom/amap/api/a/q;

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/a/ab;->a:Lcom/amap/api/a/n;

    invoke-virtual {p0}, Lcom/amap/api/a/ab;->c()Lcom/amap/api/a/q;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/a/n;->a(Lcom/amap/api/a/q;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public e(Lcom/amap/api/a/q;)V
    .locals 1
    .parameter

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lcom/amap/api/a/ab;->f(Lcom/amap/api/a/q;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/amap/api/a/ab;->a:Lcom/amap/api/a/n;

    invoke-interface {v0}, Lcom/amap/api/a/n;->w()V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/a/ab;->d:Lcom/amap/api/a/q;

    .line 101
    :cond_0
    return-void
.end method

.method public f(Lcom/amap/api/a/q;)Z
    .locals 1
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lcom/amap/api/a/ab;->a:Lcom/amap/api/a/n;

    invoke-interface {v0, p1}, Lcom/amap/api/a/n;->b(Lcom/amap/api/a/q;)Z

    move-result v0

    return v0
.end method
