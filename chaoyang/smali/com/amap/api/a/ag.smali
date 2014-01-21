.class Lcom/amap/api/a/ag;
.super Ljava/lang/Object;
.source "PolygonDelegateImp.java"

# interfaces
.implements Lcom/amap/api/a/s;


# static fields
.field private static m:F


# instance fields
.field private a:Lcom/amap/api/a/n;

.field private b:F

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:F

.field private f:I

.field private g:I

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/amap/mapcore/IPoint;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/nio/FloatBuffer;

.field private j:Ljava/nio/FloatBuffer;

.field private k:I

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 252
    const v0, 0x501502f9

    sput v0, Lcom/amap/api/a/ag;->m:F

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/a/n;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/a/ag;->b:F

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/a/ag;->c:Z

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/a/ag;->h:Ljava/util/List;

    .line 34
    iput v1, p0, Lcom/amap/api/a/ag;->k:I

    iput v1, p0, Lcom/amap/api/a/ag;->l:I

    .line 37
    iput-object p1, p0, Lcom/amap/api/a/ag;->a:Lcom/amap/api/a/n;

    .line 39
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/a/ag;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/a/ag;->d:Ljava/lang/String;
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

.method static a([Lcom/autonavi/amap/mapcore/FPoint;)[Lcom/autonavi/amap/mapcore/FPoint;
    .locals 8
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 255
    array-length v2, p0

    .line 256
    new-array v3, v2, [Lcom/autonavi/amap/mapcore/FPoint;

    move v1, v0

    .line 257
    :goto_0
    if-ge v1, v2, :cond_0

    .line 258
    new-instance v4, Lcom/autonavi/amap/mapcore/FPoint;

    aget-object v5, p0, v1

    iget v5, v5, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    sget v6, Lcom/amap/api/a/ag;->m:F

    mul-float/2addr v5, v6

    aget-object v6, p0, v1

    iget v6, v6, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    sget v7, Lcom/amap/api/a/ag;->m:F

    mul-float/2addr v6, v7

    invoke-direct {v4, v5, v6}, Lcom/autonavi/amap/mapcore/FPoint;-><init>(FF)V

    aput-object v4, v3, v1

    .line 257
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 261
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 262
    invoke-static {v3, v2}, Lcom/amap/api/a/b/f;->a([Lcom/autonavi/amap/mapcore/FPoint;Ljava/util/List;)Z

    .line 263
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 264
    new-array v4, v3, [Lcom/autonavi/amap/mapcore/FPoint;

    move v1, v0

    .line 265
    :goto_1
    if-ge v1, v3, :cond_1

    .line 266
    new-instance v0, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    aput-object v0, v4, v1

    .line 267
    aget-object v5, v4, v1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/FPoint;

    iget v0, v0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    sget v6, Lcom/amap/api/a/ag;->m:F

    div-float/2addr v0, v6

    iput v0, v5, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    .line 268
    aget-object v5, v4, v1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/FPoint;

    iget v0, v0, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    sget v6, Lcom/amap/api/a/ag;->m:F

    div-float/2addr v0, v6

    iput v0, v5, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    .line 265
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 270
    :cond_1
    return-object v4
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
    .line 47
    iget-object v0, p0, Lcom/amap/api/a/ag;->a:Lcom/amap/api/a/n;

    invoke-virtual {p0}, Lcom/amap/api/a/ag;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/a/n;->a(Ljava/lang/String;)Z

    .line 48
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
    .line 71
    iput p1, p0, Lcom/amap/api/a/ag;->b:F

    .line 72
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
    .line 214
    iput p1, p0, Lcom/amap/api/a/ag;->f:I

    .line 215
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
    .line 61
    invoke-virtual {p0, p1}, Lcom/amap/api/a/ag;->b(Ljava/util/List;)V

    .line 62
    return-void
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/amap/api/a/ag;->i()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/a/ag;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/amap/api/a/ag;->i:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/a/ag;->j:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/amap/api/a/ag;->k:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/amap/api/a/ag;->l:I

    if-nez v0, :cond_3

    .line 191
    :cond_2
    invoke-virtual {p0}, Lcom/amap/api/a/ag;->f()V

    .line 193
    :cond_3
    iget-object v0, p0, Lcom/amap/api/a/ag;->i:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/a/ag;->j:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amap/api/a/ag;->k:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/amap/api/a/ag;->l:I

    if-lez v0, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/amap/api/a/ag;->h()I

    move-result v1

    invoke-virtual {p0}, Lcom/amap/api/a/ag;->j()I

    move-result v2

    iget-object v3, p0, Lcom/amap/api/a/ag;->i:Ljava/nio/FloatBuffer;

    invoke-virtual {p0}, Lcom/amap/api/a/ag;->g()F

    move-result v4

    iget-object v5, p0, Lcom/amap/api/a/ag;->j:Ljava/nio/FloatBuffer;

    iget v6, p0, Lcom/amap/api/a/ag;->k:I

    iget v7, p0, Lcom/amap/api/a/ag;->l:I

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lcom/amap/api/a/l;->a(Ljavax/microedition/khronos/opengles/GL10;IILjava/nio/FloatBuffer;FLjava/nio/FloatBuffer;II)V

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
    .line 81
    iput-boolean p1, p0, Lcom/amap/api/a/ag;->c:Z

    .line 82
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
    .line 92
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/amap/api/a/r;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amap/api/a/ag;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    :cond_0
    const/4 v0, 0x1

    .line 96
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
    .line 52
    iget-object v0, p0, Lcom/amap/api/a/ag;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 53
    const-string v0, "Polygon"

    invoke-static {v0}, Lcom/amap/api/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/a/ag;->d:Ljava/lang/String;

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/amap/api/a/ag;->d:Ljava/lang/String;

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
    .line 204
    iput p1, p0, Lcom/amap/api/a/ag;->e:F

    .line 205
    return-void
.end method

.method public b(I)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 224
    iput p1, p0, Lcom/amap/api/a/ag;->g:I

    .line 225
    return-void
.end method

.method b(Ljava/util/List;)V
    .locals 8
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
    const/4 v7, 0x0

    .line 100
    .line 101
    iget-object v0, p0, Lcom/amap/api/a/ag;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 102
    if-eqz p1, :cond_0

    .line 103
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

    .line 104
    new-instance v5, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v5}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 105
    iget-object v0, p0, Lcom/amap/api/a/ag;->a:Lcom/amap/api/a/n;

    iget-wide v1, v3, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v3, v3, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-interface/range {v0 .. v5}, Lcom/amap/api/a/n;->a(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 106
    iget-object v0, p0, Lcom/amap/api/a/ag;->h:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/amap/api/a/ag;->i:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/amap/api/a/ag;->i:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/amap/api/a/ag;->j:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_2

    .line 113
    iget-object v0, p0, Lcom/amap/api/a/ag;->j:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 115
    :cond_2
    iput v7, p0, Lcom/amap/api/a/ag;->k:I

    .line 116
    iput v7, p0, Lcom/amap/api/a/ag;->l:I

    .line 117
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
    .line 76
    iget v0, p0, Lcom/amap/api/a/ag;->b:F

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
    .line 86
    iget-boolean v0, p0, Lcom/amap/api/a/ag;->c:Z

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
    .line 181
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public f()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const v9, 0x501502f9

    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 138
    iget-object v0, p0, Lcom/amap/api/a/ag;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/a/ag;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/amap/api/a/ag;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Lcom/autonavi/amap/mapcore/FPoint;

    .line 142
    iget-object v0, p0, Lcom/amap/api/a/ag;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    new-array v4, v0, [F

    .line 144
    iget-object v0, p0, Lcom/amap/api/a/ag;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/IPoint;

    .line 145
    new-instance v6, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v6}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    aput-object v6, v3, v1

    .line 146
    iget-object v6, p0, Lcom/amap/api/a/ag;->a:Lcom/amap/api/a/n;

    iget v7, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    aget-object v8, v3, v1

    invoke-interface {v6, v7, v0, v8}, Lcom/amap/api/a/n;->a(IILcom/autonavi/amap/mapcore/FPoint;)V

    .line 147
    mul-int/lit8 v0, v1, 0x3

    aget-object v6, v3, v1

    iget v6, v6, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    aput v6, v4, v0

    .line 148
    mul-int/lit8 v0, v1, 0x3

    add-int/lit8 v0, v0, 0x1

    aget-object v6, v3, v1

    iget v6, v6, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    aput v6, v4, v0

    .line 149
    mul-int/lit8 v0, v1, 0x3

    add-int/lit8 v0, v0, 0x2

    aput v10, v4, v0

    .line 150
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 153
    :cond_2
    invoke-static {v3}, Lcom/amap/api/a/ag;->a([Lcom/autonavi/amap/mapcore/FPoint;)[Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v0

    .line 154
    array-length v1, v0

    if-nez v1, :cond_3

    .line 155
    sget v0, Lcom/amap/api/a/ag;->m:F

    cmpl-float v0, v0, v9

    if-nez v0, :cond_4

    .line 156
    const v0, 0x4cbebc20

    sput v0, Lcom/amap/api/a/ag;->m:F

    .line 160
    :goto_2
    invoke-static {v3}, Lcom/amap/api/a/ag;->a([Lcom/autonavi/amap/mapcore/FPoint;)[Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v0

    .line 162
    :cond_3
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x3

    new-array v5, v1, [F

    .line 164
    array-length v6, v0

    move v1, v2

    :goto_3
    if-ge v2, v6, :cond_5

    aget-object v7, v0, v2

    .line 165
    mul-int/lit8 v8, v1, 0x3

    iget v9, v7, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    aput v9, v5, v8

    .line 166
    mul-int/lit8 v8, v1, 0x3

    add-int/lit8 v8, v8, 0x1

    iget v7, v7, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    aput v7, v5, v8

    .line 167
    mul-int/lit8 v7, v1, 0x3

    add-int/lit8 v7, v7, 0x2

    aput v10, v5, v7

    .line 168
    add-int/lit8 v1, v1, 0x1

    .line 164
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 158
    :cond_4
    sput v9, Lcom/amap/api/a/ag;->m:F

    goto :goto_2

    .line 171
    :cond_5
    array-length v1, v3

    iput v1, p0, Lcom/amap/api/a/ag;->k:I

    .line 172
    array-length v0, v0

    iput v0, p0, Lcom/amap/api/a/ag;->l:I

    .line 174
    invoke-static {v4}, Lcom/amap/api/a/b/g;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/a/ag;->i:Ljava/nio/FloatBuffer;

    .line 175
    invoke-static {v5}, Lcom/amap/api/a/b/g;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/a/ag;->j:Ljava/nio/FloatBuffer;

    goto/16 :goto_0
.end method

.method public g()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 209
    iget v0, p0, Lcom/amap/api/a/ag;->e:F

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
    .line 219
    iget v0, p0, Lcom/amap/api/a/ag;->f:I

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
    .line 66
    invoke-virtual {p0}, Lcom/amap/api/a/ag;->k()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public j()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 229
    iget v0, p0, Lcom/amap/api/a/ag;->g:I

    return v0
.end method

.method k()Ljava/util/List;
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
    .line 120
    iget-object v0, p0, Lcom/amap/api/a/ag;->h:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 121
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 122
    iget-object v0, p0, Lcom/amap/api/a/ag;->h:Ljava/util/List;

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

    .line 123
    if-eqz v0, :cond_0

    .line 124
    new-instance v3, Lcom/autonavi/amap/mapcore/DPoint;

    invoke-direct {v3}, Lcom/autonavi/amap/mapcore/DPoint;-><init>()V

    .line 125
    iget-object v4, p0, Lcom/amap/api/a/ag;->a:Lcom/amap/api/a/n;

    iget v5, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-interface {v4, v5, v0, v3}, Lcom/amap/api/a/n;->b(IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 126
    new-instance v0, Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v3, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v6, v3, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 131
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public m()V
    .locals 2

    .prologue
    .line 284
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/a/ag;->i:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/amap/api/a/ag;->i:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 286
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/a/ag;->i:Ljava/nio/FloatBuffer;

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/amap/api/a/ag;->j:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_1

    .line 289
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/a/ag;->j:Ljava/nio/FloatBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :cond_1
    :goto_0
    return-void

    .line 291
    :catch_0
    move-exception v0

    .line 292
    const-string v0, "destroy erro"

    const-string v1, "PolygonDelegateImp destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
