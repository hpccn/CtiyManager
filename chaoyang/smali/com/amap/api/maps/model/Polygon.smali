.class public final Lcom/amap/api/maps/model/Polygon;
.super Ljava/lang/Object;
.source "Polygon.java"


# instance fields
.field private a:Lcom/amap/api/a/s;


# direct methods
.method public constructor <init>(Lcom/amap/api/a/s;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/amap/api/maps/model/Polygon;->a:Lcom/amap/api/a/s;

    .line 26
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 254
    instance-of v1, p1, Lcom/amap/api/maps/model/Polygon;

    if-nez v1, :cond_0

    .line 262
    :goto_0
    return v0

    .line 258
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Polygon;->a:Lcom/amap/api/a/s;

    check-cast p1, Lcom/amap/api/maps/model/Polygon;

    iget-object v2, p1, Lcom/amap/api/maps/model/Polygon;->a:Lcom/amap/api/a/s;

    invoke-interface {v1, v2}, Lcom/amap/api/a/s;->a(Lcom/amap/api/a/r;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 260
    :catch_0
    move-exception v1

    .line 261
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getFillColor()I
    .locals 2

    .prologue
    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->a:Lcom/amap/api/a/s;

    invoke-interface {v0}, Lcom/amap/api/a/s;->h()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->a:Lcom/amap/api/a/s;

    invoke-interface {v0}, Lcom/amap/api/a/s;->b()Ljava/lang/String;
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
    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->a:Lcom/amap/api/a/s;

    invoke-interface {v0}, Lcom/amap/api/a/s;->i()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getStrokeColor()I
    .locals 2

    .prologue
    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->a:Lcom/amap/api/a/s;

    invoke-interface {v0}, Lcom/amap/api/a/s;->j()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getStrokeWidth()F
    .locals 2

    .prologue
    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->a:Lcom/amap/api/a/s;

    invoke-interface {v0}, Lcom/amap/api/a/s;->g()F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getZIndex()F
    .locals 2

    .prologue
    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->a:Lcom/amap/api/a/s;

    invoke-interface {v0}, Lcom/amap/api/a/s;->c()F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->a:Lcom/amap/api/a/s;

    invoke-interface {v0}, Lcom/amap/api/a/s;->e()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 271
    :goto_0
    return v0

    .line 270
    :catch_0
    move-exception v0

    .line 271
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 2

    .prologue
    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->a:Lcom/amap/api/a/s;

    invoke-interface {v0}, Lcom/amap/api/a/s;->d()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->a:Lcom/amap/api/a/s;

    invoke-interface {v0}, Lcom/amap/api/a/s;->a()V
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

.method public setFillColor(I)V
    .locals 2
    .parameter

    .prologue
    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->a:Lcom/amap/api/a/s;

    invoke-interface {v0, p1}, Lcom/amap/api/a/s;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 165
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
    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->a:Lcom/amap/api/a/s;

    invoke-interface {v0, p1}, Lcom/amap/api/a/s;->a(Ljava/util/List;)V
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

.method public setStrokeColor(I)V
    .locals 2
    .parameter

    .prologue
    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->a:Lcom/amap/api/a/s;

    invoke-interface {v0, p1}, Lcom/amap/api/a/s;->b(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setStrokeWidth(F)V
    .locals 2
    .parameter

    .prologue
    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->a:Lcom/amap/api/a/s;

    invoke-interface {v0, p1}, Lcom/amap/api/a/s;->b(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setVisible(Z)V
    .locals 2
    .parameter

    .prologue
    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->a:Lcom/amap/api/a/s;

    invoke-interface {v0, p1}, Lcom/amap/api/a/s;->a(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    return-void

    .line 222
    :catch_0
    move-exception v0

    .line 223
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setZIndex(F)V
    .locals 2
    .parameter

    .prologue
    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->a:Lcom/amap/api/a/s;

    invoke-interface {v0, p1}, Lcom/amap/api/a/s;->a(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    return-void

    .line 193
    :catch_0
    move-exception v0

    .line 194
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
