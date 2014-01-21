.class Lcom/amap/api/a/ah;
.super Ljava/lang/Object;
.source "PolylineDelegateImp.java"

# interfaces
.implements Lcom/amap/api/a/t;


# instance fields
.field private a:Lcom/amap/api/a/n;

.field private b:F

.field private c:I

.field private d:F

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/amap/mapcore/IPoint;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/nio/FloatBuffer;

.field private i:I


# direct methods
.method public constructor <init>(Lcom/amap/api/a/n;)V
    .locals 1
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/high16 v0, 0x4120

    iput v0, p0, Lcom/amap/api/a/ah;->b:F

    .line 23
    const/high16 v0, -0x100

    iput v0, p0, Lcom/amap/api/a/ah;->c:I

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/a/ah;->d:F

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/a/ah;->e:Z

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/a/ah;->g:Ljava/util/List;

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/a/ah;->i:I

    .line 34
    iput-object p1, p0, Lcom/amap/api/a/ah;->a:Lcom/amap/api/a/n;

    .line 36
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/a/ah;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/a/ah;->f:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 38
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
    .line 60
    iget-object v0, p0, Lcom/amap/api/a/ah;->a:Lcom/amap/api/a/n;

    invoke-virtual {p0}, Lcom/amap/api/a/ah;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/a/n;->a(Ljava/lang/String;)Z

    .line 61
    return-void
.end method

.method public a(F)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 119
    iput p1, p0, Lcom/amap/api/a/ah;->d:F

    .line 120
    return-void
.end method

.method public a(I)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 109
    iput p1, p0, Lcom/amap/api/a/ah;->c:I

    .line 110
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/amap/api/a/ah;->b(Ljava/util/List;)V

    .line 75
    return-void
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/amap/api/a/ah;->i()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/a/ah;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/amap/api/a/ah;->h:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/amap/api/a/ah;->i:I

    if-nez v0, :cond_3

    .line 186
    :cond_2
    invoke-virtual {p0}, Lcom/amap/api/a/ah;->f()V

    .line 188
    :cond_3
    iget-object v0, p0, Lcom/amap/api/a/ah;->h:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amap/api/a/ah;->i:I

    if-lez v0, :cond_0

    .line 189
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/amap/api/a/ah;->h()I

    move-result v2

    iget-object v3, p0, Lcom/amap/api/a/ah;->h:Ljava/nio/FloatBuffer;

    invoke-virtual {p0}, Lcom/amap/api/a/ah;->g()F

    move-result v4

    iget v5, p0, Lcom/amap/api/a/ah;->i:I

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/amap/api/a/l;->a(Ljavax/microedition/khronos/opengles/GL10;IILjava/nio/FloatBuffer;FI)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/amap/api/a/ah;->e:Z

    .line 130
    return-void
.end method

.method public a(Lcom/amap/api/a/r;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/amap/api/a/r;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amap/api/a/ah;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    :cond_0
    const/4 v0, 0x1

    .line 144
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/amap/api/a/ah;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 66
    const-string v0, "Polyline"

    invoke-static {v0}, Lcom/amap/api/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/a/ah;->f:Ljava/lang/String;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/amap/api/a/ah;->f:Ljava/lang/String;

    return-object v0
.end method

.method public b(F)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 99
    iput p1, p0, Lcom/amap/api/a/ah;->b:F

    .line 100
    return-void
.end method

.method b(Ljava/util/List;)V
    .locals 7
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 43
    .line 44
    iget-object v0, p0, Lcom/amap/api/a/ah;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 45
    if-eqz p1, :cond_0

    .line 46
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/amap/api/maps/model/LatLng;

    .line 47
    new-instance v5, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v5}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 48
    iget-object v0, p0, Lcom/amap/api/a/ah;->a:Lcom/amap/api/a/n;

    iget-wide v1, v3, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v3, v3, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-interface/range {v0 .. v5}, Lcom/amap/api/a/n;->a(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 49
    iget-object v0, p0, Lcom/amap/api/a/ah;->g:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/amap/api/a/ah;->h:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/amap/api/a/ah;->h:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 55
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/a/ah;->i:I

    .line 56
    return-void
.end method

.method public c()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 124
    iget v0, p0, Lcom/amap/api/a/ah;->d:F

    return v0
.end method

.method public d()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/amap/api/a/ah;->e:Z

    return v0
.end method

.method public e()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public f()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/amap/api/a/ah;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/a/ah;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/amap/api/a/ah;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    new-array v2, v0, [F

    .line 166
    const/4 v0, 0x0

    .line 167
    new-instance v3, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v3}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    .line 168
    iget-object v1, p0, Lcom/amap/api/a/ah;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/IPoint;

    .line 170
    iget-object v5, p0, Lcom/amap/api/a/ah;->a:Lcom/amap/api/a/n;

    iget v6, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    invoke-interface {v5, v6, v0, v3}, Lcom/amap/api/a/n;->a(IILcom/autonavi/amap/mapcore/FPoint;)V

    .line 171
    mul-int/lit8 v0, v1, 0x3

    iget v5, v3, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    aput v5, v2, v0

    .line 172
    mul-int/lit8 v0, v1, 0x3

    add-int/lit8 v0, v0, 0x1

    iget v5, v3, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    aput v5, v2, v0

    .line 173
    mul-int/lit8 v0, v1, 0x3

    add-int/lit8 v0, v0, 0x2

    const/4 v5, 0x0

    aput v5, v2, v0

    .line 174
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 176
    :cond_2
    invoke-static {v2}, Lcom/amap/api/a/b/g;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/a/ah;->h:Ljava/nio/FloatBuffer;

    .line 177
    iget-object v0, p0, Lcom/amap/api/a/ah;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/amap/api/a/ah;->i:I

    goto :goto_0
.end method

.method public g()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 104
    iget v0, p0, Lcom/amap/api/a/ah;->b:F

    return v0
.end method

.method public h()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 114
    iget v0, p0, Lcom/amap/api/a/ah;->c:I

    return v0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/amap/api/a/ah;->j()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method j()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/amap/api/a/ah;->g:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 85
    iget-object v0, p0, Lcom/amap/api/a/ah;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/IPoint;

    .line 86
    if-eqz v0, :cond_0

    .line 87
    new-instance v3, Lcom/autonavi/amap/mapcore/DPoint;

    invoke-direct {v3}, Lcom/autonavi/amap/mapcore/DPoint;-><init>()V

    .line 88
    iget-object v4, p0, Lcom/amap/api/a/ah;->a:Lcom/amap/api/a/n;

    iget v5, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-interface {v4, v5, v0, v3}, Lcom/amap/api/a/n;->b(IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 89
    new-instance v0, Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v3, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v6, v3, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 94
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public m()V
    .locals 2

    .prologue
    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/a/ah;->h:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/amap/api/a/ah;->h:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/a/ah;->h:Ljava/nio/FloatBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v0

    .line 207
    const-string v0, "destroy erro"

    const-string v1, "PolylineDelegateImp destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
