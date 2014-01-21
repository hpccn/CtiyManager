.class Lcom/amap/api/a/ae;
.super Ljava/lang/Object;
.source "MyLocationOverlay.java"


# instance fields
.field private a:Lcom/amap/api/a/n;

.field private b:Lcom/amap/api/maps/model/Marker;

.field private c:Lcom/amap/api/a/o;


# direct methods
.method constructor <init>(Lcom/amap/api/a/n;)V
    .locals 6
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/amap/api/a/ae;->a:Lcom/amap/api/a/n;

    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/a/ae;->a:Lcom/amap/api/a/n;

    new-instance v1, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/amap/api/maps/model/MarkerOptions;-><init>()V

    const/high16 v2, 0x3f00

    const/high16 v3, 0x3f00

    invoke-virtual {v1, v2, v3}, Lcom/amap/api/maps/model/MarkerOptions;->anchor(FF)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/amap/api/a/v$a;->c:Lcom/amap/api/a/v$a;

    invoke-virtual {v3}, Lcom/amap/api/a/v$a;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/MarkerOptions;->icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/a/n;->a(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/a/ae;->b:Lcom/amap/api/maps/model/Marker;

    .line 36
    iget-object v0, p0, Lcom/amap/api/a/ae;->a:Lcom/amap/api/a/n;

    new-instance v1, Lcom/amap/api/maps/model/CircleOptions;

    invoke-direct {v1}, Lcom/amap/api/maps/model/CircleOptions;-><init>()V

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/CircleOptions;->strokeWidth(F)Lcom/amap/api/maps/model/CircleOptions;

    move-result-object v1

    const/16 v2, 0x64

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xb4

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/CircleOptions;->fillColor(I)Lcom/amap/api/maps/model/CircleOptions;

    move-result-object v1

    const/16 v2, 0xff

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xdc

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/CircleOptions;->strokeColor(I)Lcom/amap/api/maps/model/CircleOptions;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/a/n;->a(Lcom/amap/api/maps/model/CircleOptions;)Lcom/amap/api/a/o;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/a/ae;->c:Lcom/amap/api/a/o;

    .line 39
    iget-object v0, p0, Lcom/amap/api/a/ae;->c:Lcom/amap/api/a/o;

    const-wide/high16 v1, 0x4069

    invoke-interface {v0, v1, v2}, Lcom/amap/api/a/o;->a(D)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/amap/api/a/ae;->c:Lcom/amap/api/a/o;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/amap/api/a/ae;->a:Lcom/amap/api/a/n;

    iget-object v1, p0, Lcom/amap/api/a/ae;->c:Lcom/amap/api/a/o;

    invoke-interface {v1}, Lcom/amap/api/a/o;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/a/n;->a(Ljava/lang/String;)Z

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/amap/api/a/ae;->b:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/amap/api/a/ae;->a:Lcom/amap/api/a/n;

    iget-object v1, p0, Lcom/amap/api/a/ae;->b:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v1}, Lcom/amap/api/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/a/n;->b(Ljava/lang/String;)Z

    .line 65
    :cond_1
    return-void
.end method

.method public a(Lcom/amap/api/maps/model/LatLng;D)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/amap/api/a/ae;->b:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/Marker;->setPosition(Lcom/amap/api/maps/model/LatLng;)V

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/a/ae;->c:Lcom/amap/api/a/o;

    invoke-interface {v0, p1}, Lcom/amap/api/a/o;->a(Lcom/amap/api/maps/model/LatLng;)V

    .line 50
    const-wide/high16 v0, -0x4010

    cmpl-double v0, p2, v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/amap/api/a/ae;->c:Lcom/amap/api/a/o;

    invoke-interface {v0, p2, p3}, Lcom/amap/api/a/o;->a(D)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
