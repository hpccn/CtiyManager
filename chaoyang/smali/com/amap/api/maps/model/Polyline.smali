.class public Lcom/amap/api/maps/model/Polyline;
.super Ljava/lang/Object;
.source "Polyline.java"


# instance fields
.field private final a:Lcom/amap/api/a/t;


# direct methods
.method public constructor <init>(Lcom/amap/api/a/t;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/amap/api/maps/model/Polyline;->a:Lcom/amap/api/a/t;

    .line 26
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 217
    instance-of v0, p1, Lcom/amap/api/maps/model/Polyline;

    if-nez v0, :cond_0

    .line 218
    const/4 v0, 0x0

    .line 220
    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->a:Lcom/amap/api/a/t;

    check-cast p1, Lcom/amap/api/maps/model/Polyline;

    iget-object v1, p1, Lcom/amap/api/maps/model/Polyline;->a:Lcom/amap/api/a/t;

    invoke-interface {v0, v1}, Lcom/amap/api/a/t;->a(Lcom/amap/api/a/r;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 222
    :catch_0
    move-exception v0

    .line 223
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getColor()I
    .locals 2

    .prologue
    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->a:Lcom/amap/api/a/t;

    invoke-interface {v0}, Lcom/amap/api/a/t;->h()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->a:Lcom/amap/api/a/t;

    invoke-interface {v0}, Lcom/amap/api/a/t;->b()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getPoints()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->a:Lcom/amap/api/a/t;

    invoke-interface {v0}, Lcom/amap/api/a/t;->i()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getWidth()F
    .locals 2

    .prologue
    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->a:Lcom/amap/api/a/t;

    invoke-interface {v0}, Lcom/amap/api/a/t;->g()F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getZIndex()F
    .locals 2

    .prologue
    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->a:Lcom/amap/api/a/t;

    invoke-interface {v0}, Lcom/amap/api/a/t;->c()F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 230
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->a:Lcom/amap/api/a/t;

    invoke-interface {v0}, Lcom/amap/api/a/t;->e()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 231
    :catch_0
    move-exception v0

    .line 232
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public isVisible()Z
    .locals 2

    .prologue
    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->a:Lcom/amap/api/a/t;

    invoke-interface {v0}, Lcom/amap/api/a/t;->d()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 195
    :catch_0
    move-exception v0

    .line 196
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->a:Lcom/amap/api/a/t;

    invoke-interface {v0}, Lcom/amap/api/a/t;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setColor(I)V
    .locals 2
    .parameter

    .prologue
    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->a:Lcom/amap/api/a/t;

    invoke-interface {v0, p1}, Lcom/amap/api/a/t;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setPoints(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->a:Lcom/amap/api/a/t;

    invoke-interface {v0, p1}, Lcom/amap/api/a/t;->a(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setVisible(Z)V
    .locals 2
    .parameter

    .prologue
    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->a:Lcom/amap/api/a/t;

    invoke-interface {v0, p1}, Lcom/amap/api/a/t;->a(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    return-void

    .line 181
    :catch_0
    move-exception v0

    .line 182
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setWidth(F)V
    .locals 2
    .parameter

    .prologue
    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->a:Lcom/amap/api/a/t;

    invoke-interface {v0, p1}, Lcom/amap/api/a/t;->b(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setZIndex(F)V
    .locals 2
    .parameter

    .prologue
    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->a:Lcom/amap/api/a/t;

    invoke-interface {v0, p1}, Lcom/amap/api/a/t;->a(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    return-void

    .line 152
    :catch_0
    move-exception v0

    .line 153
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
