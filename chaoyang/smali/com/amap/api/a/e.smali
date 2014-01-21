.class Lcom/amap/api/a/e;
.super Ljava/lang/Object;
.source "AMapOnLocationChangedListener.java"

# interfaces
.implements Lcom/amap/api/maps/LocationSource$OnLocationChangedListener;


# instance fields
.field a:Landroid/location/Location;

.field private b:Lcom/amap/api/a/n;


# direct methods
.method constructor <init>(Lcom/amap/api/a/n;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/amap/api/a/e;->b:Lcom/amap/api/a/n;

    .line 18
    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/amap/api/a/e;->a:Landroid/location/Location;

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/a/e;->b:Lcom/amap/api/a/n;

    invoke-interface {v0}, Lcom/amap/api/a/n;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/amap/api/a/e;->b:Lcom/amap/api/a/n;

    invoke-interface {v0, p1}, Lcom/amap/api/a/n;->a(Landroid/location/Location;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :cond_0
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
