.class Lcom/amap/api/location/a$a;
.super Landroid/os/Handler;
.source "IAPSManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/location/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/location/a;


# direct methods
.method constructor <init>(Lcom/amap/api/location/a;)V
    .locals 0
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lcom/amap/api/location/a$a;->a:Lcom/amap/api/location/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter

    .prologue
    .line 303
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/amap/api/location/a;->c()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 304
    iget-object v0, p0, Lcom/amap/api/location/a$a;->a:Lcom/amap/api/location/a;

    invoke-static {v0}, Lcom/amap/api/location/a;->a(Lcom/amap/api/location/a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/location/a$b;

    .line 305
    iget-object v2, v0, Lcom/amap/api/location/a$b;->c:Lcom/amap/api/location/AMapLocationListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/location/a$b;

    iget-object v0, v0, Lcom/amap/api/location/a$b;->f:Lcom/amap/api/location/AMapLocation;

    invoke-interface {v2, v0}, Lcom/amap/api/location/AMapLocationListener;->onLocationChanged(Lcom/amap/api/location/AMapLocation;)V

    goto :goto_0

    .line 318
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/amap/api/location/a;->d()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 343
    :cond_1
    :goto_1
    return-void

    .line 327
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/amap/api/location/a;->e()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 328
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/location/LocationListener;

    .line 329
    iget-object v1, p0, Lcom/amap/api/location/a$a;->a:Lcom/amap/api/location/a;

    invoke-static {v1}, Lcom/amap/api/location/a;->a(Lcom/amap/api/location/a;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 331
    const/4 v1, 0x0

    move v3, v1

    :goto_2
    if-ge v3, v2, :cond_3

    .line 332
    iget-object v1, p0, Lcom/amap/api/location/a$a;->a:Lcom/amap/api/location/a;

    invoke-static {v1}, Lcom/amap/api/location/a;->a(Lcom/amap/api/location/a;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/location/a$b;

    .line 333
    iget-object v4, v1, Lcom/amap/api/location/a$b;->c:Lcom/amap/api/location/AMapLocationListener;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 334
    iget-object v4, p0, Lcom/amap/api/location/a$a;->a:Lcom/amap/api/location/a;

    invoke-static {v4}, Lcom/amap/api/location/a;->a(Lcom/amap/api/location/a;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 335
    add-int/lit8 v1, v2, -0x1

    .line 331
    :goto_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    goto :goto_2

    .line 339
    :cond_3
    iget-object v0, p0, Lcom/amap/api/location/a$a;->a:Lcom/amap/api/location/a;

    invoke-static {v0}, Lcom/amap/api/location/a;->b(Lcom/amap/api/location/a;)Landroid/location/LocationManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/location/a$a;->a:Lcom/amap/api/location/a;

    invoke-static {v0}, Lcom/amap/api/location/a;->a(Lcom/amap/api/location/a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/amap/api/location/a$a;->a:Lcom/amap/api/location/a;

    invoke-static {v0}, Lcom/amap/api/location/a;->b(Lcom/amap/api/location/a;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/location/a$a;->a:Lcom/amap/api/location/a;

    invoke-static {v1}, Lcom/amap/api/location/a;->c(Lcom/amap/api/location/a;)Landroid/location/LocationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_3
.end method
