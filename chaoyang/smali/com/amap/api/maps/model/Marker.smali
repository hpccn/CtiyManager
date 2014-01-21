.class public final Lcom/amap/api/maps/model/Marker;
.super Ljava/lang/Object;
.source "Marker.java"


# instance fields
.field a:Lcom/amap/api/a/q;


# direct methods
.method public constructor <init>(Lcom/amap/api/a/q;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/amap/api/a/q;

    .line 22
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 160
    instance-of v0, p1, Lcom/amap/api/maps/model/Marker;

    if-nez v0, :cond_0

    .line 161
    const/4 v0, 0x0

    .line 164
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/amap/api/a/q;

    check-cast p1, Lcom/amap/api/maps/model/Marker;

    iget-object v1, p1, Lcom/amap/api/maps/model/Marker;->a:Lcom/amap/api/a/q;

    invoke-interface {v0, v1}, Lcom/amap/api/a/q;->a(Lcom/amap/api/a/q;)Z

    move-result v0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/amap/api/a/q;

    invoke-interface {v0}, Lcom/amap/api/a/q;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()Lcom/amap/api/maps/model/LatLng;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/amap/api/a/q;

    invoke-interface {v0}, Lcom/amap/api/a/q;->c()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    return-object v0
.end method

.method public getSnippet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/amap/api/a/q;

    invoke-interface {v0}, Lcom/amap/api/a/q;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/amap/api/a/q;

    invoke-interface {v0}, Lcom/amap/api/a/q;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/amap/api/a/q;

    invoke-interface {v0}, Lcom/amap/api/a/q;->o()I

    move-result v0

    return v0
.end method

.method public hideInfoWindow()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/amap/api/a/q;

    invoke-interface {v0}, Lcom/amap/api/a/q;->k()V

    .line 130
    return-void
.end method

.method public isDraggable()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/amap/api/a/q;

    invoke-interface {v0}, Lcom/amap/api/a/q;->i()Z

    move-result v0

    return v0
.end method

.method public isInfoWindowShown()Z
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/amap/api/a/q;

    invoke-interface {v0}, Lcom/amap/api/a/q;->l()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/amap/api/a/q;

    invoke-interface {v0}, Lcom/amap/api/a/q;->m()Z

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/amap/api/a/q;

    invoke-interface {v0}, Lcom/amap/api/a/q;->a()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setDraggable(Z)V
    .locals 1
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/amap/api/a/q;

    invoke-interface {v0, p1}, Lcom/amap/api/a/q;->a(Z)V

    .line 108
    return-void
.end method

.method public setPosition(Lcom/amap/api/maps/model/LatLng;)V
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/amap/api/a/q;

    invoke-interface {v0, p1}, Lcom/amap/api/a/q;->a(Lcom/amap/api/maps/model/LatLng;)V

    .line 58
    return-void
.end method

.method public setSnippet(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/amap/api/a/q;

    invoke-interface {v0, p1}, Lcom/amap/api/a/q;->b(Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/amap/api/a/q;

    invoke-interface {v0, p1}, Lcom/amap/api/a/q;->a(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public setVisible(Z)V
    .locals 1
    .parameter

    .prologue
    .line 151
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/amap/api/a/q;

    invoke-interface {v0, p1}, Lcom/amap/api/a/q;->b(Z)V

    .line 152
    return-void
.end method

.method public showInfoWindow()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/amap/api/a/q;

    invoke-interface {v0}, Lcom/amap/api/a/q;->j()V

    .line 121
    return-void
.end method
