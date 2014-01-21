.class public final Lcom/amap/api/maps/UiSettings;
.super Ljava/lang/Object;
.source "UiSettings.java"


# instance fields
.field private final a:Lcom/amap/api/a/w;


# direct methods
.method constructor <init>(Lcom/amap/api/a/w;)V
    .locals 0
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/amap/api/maps/UiSettings;->a:Lcom/amap/api/a/w;

    .line 17
    return-void
.end method


# virtual methods
.method public isCompassEnabled()Z
    .locals 2

    .prologue
    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/UiSettings;->a:Lcom/amap/api/a/w;

    invoke-interface {v0}, Lcom/amap/api/a/w;->c()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public isMyLocationButtonEnabled()Z
    .locals 2

    .prologue
    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/UiSettings;->a:Lcom/amap/api/a/w;

    invoke-interface {v0}, Lcom/amap/api/a/w;->d()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 187
    :catch_0
    move-exception v0

    .line 188
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public isRotateGesturesEnabled()Z
    .locals 2

    .prologue
    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/UiSettings;->a:Lcom/amap/api/a/w;

    invoke-interface {v0}, Lcom/amap/api/a/w;->h()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 243
    :catch_0
    move-exception v0

    .line 244
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public isScaleControlsEnabled()Z
    .locals 2

    .prologue
    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/UiSettings;->a:Lcom/amap/api/a/w;

    invoke-interface {v0}, Lcom/amap/api/a/w;->a()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public isScrollGesturesEnabled()Z
    .locals 2

    .prologue
    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/UiSettings;->a:Lcom/amap/api/a/w;

    invoke-interface {v0}, Lcom/amap/api/a/w;->e()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public isTiltGesturesEnabled()Z
    .locals 2

    .prologue
    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/UiSettings;->a:Lcom/amap/api/a/w;

    invoke-interface {v0}, Lcom/amap/api/a/w;->g()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 229
    :catch_0
    move-exception v0

    .line 230
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public isZoomControlsEnabled()Z
    .locals 2

    .prologue
    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/UiSettings;->a:Lcom/amap/api/a/w;

    invoke-interface {v0}, Lcom/amap/api/a/w;->b()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public isZoomGesturesEnabled()Z
    .locals 2

    .prologue
    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/UiSettings;->a:Lcom/amap/api/a/w;

    invoke-interface {v0}, Lcom/amap/api/a/w;->f()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setAllGesturesEnabled(Z)V
    .locals 2
    .parameter

    .prologue
    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/UiSettings;->a:Lcom/amap/api/a/w;

    invoke-interface {v0, p1}, Lcom/amap/api/a/w;->i(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setCompassEnabled(Z)V
    .locals 2
    .parameter

    .prologue
    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/UiSettings;->a:Lcom/amap/api/a/w;

    invoke-interface {v0, p1}, Lcom/amap/api/a/w;->c(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setMyLocationButtonEnabled(Z)V
    .locals 2
    .parameter

    .prologue
    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/UiSettings;->a:Lcom/amap/api/a/w;

    invoke-interface {v0, p1}, Lcom/amap/api/a/w;->d(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setRotateGesturesEnabled(Z)V
    .locals 2
    .parameter

    .prologue
    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/UiSettings;->a:Lcom/amap/api/a/w;

    invoke-interface {v0, p1}, Lcom/amap/api/a/w;->h(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setScaleControlsEnabled(Z)V
    .locals 2
    .parameter

    .prologue
    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/UiSettings;->a:Lcom/amap/api/a/w;

    invoke-interface {v0, p1}, Lcom/amap/api/a/w;->a(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    return-void

    .line 22
    :catch_0
    move-exception v0

    .line 23
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setScrollGesturesEnabled(Z)V
    .locals 2
    .parameter

    .prologue
    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/UiSettings;->a:Lcom/amap/api/a/w;

    invoke-interface {v0, p1}, Lcom/amap/api/a/w;->e(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setTiltGesturesEnabled(Z)V
    .locals 2
    .parameter

    .prologue
    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/UiSettings;->a:Lcom/amap/api/a/w;

    invoke-interface {v0, p1}, Lcom/amap/api/a/w;->g(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setZoomControlsEnabled(Z)V
    .locals 2
    .parameter

    .prologue
    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/UiSettings;->a:Lcom/amap/api/a/w;

    invoke-interface {v0, p1}, Lcom/amap/api/a/w;->b(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 38
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setZoomGesturesEnabled(Z)V
    .locals 2
    .parameter

    .prologue
    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/UiSettings;->a:Lcom/amap/api/a/w;

    invoke-interface {v0, p1}, Lcom/amap/api/a/w;->f(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
