.class Lcom/amap/api/a/i;
.super Ljava/lang/Object;
.source "CircleDelegateImp.java"

# interfaces
.implements Lcom/amap/api/a/o;


# static fields
.field private static n:F

.field private static o:I

.field private static p:I


# instance fields
.field private a:Lcom/amap/api/maps/model/LatLng;

.field private b:D

.field private c:F

.field private d:I

.field private e:I

.field private f:F

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Lcom/amap/api/a/n;

.field private j:Ljava/nio/FloatBuffer;

.field private k:Ljava/nio/FloatBuffer;

.field private l:I

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 249
    const v0, 0x4c18dfc2

    sput v0, Lcom/amap/api/a/i;->n:F

    .line 250
    const/16 v0, 0x100

    sput v0, Lcom/amap/api/a/i;->o:I

    .line 251
    const/16 v0, 0x14

    sput v0, Lcom/amap/api/a/i;->p:I

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/a/n;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/a/i;->a:Lcom/amap/api/maps/model/LatLng;

    .line 19
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/a/i;->b:D

    .line 20
    const/high16 v0, 0x4120

    iput v0, p0, Lcom/amap/api/a/i;->c:F

    .line 21
    const/high16 v0, -0x100

    iput v0, p0, Lcom/amap/api/a/i;->d:I

    .line 22
    iput v2, p0, Lcom/amap/api/a/i;->e:I

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/a/i;->f:F

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/a/i;->g:Z

    .line 29
    iput v2, p0, Lcom/amap/api/a/i;->l:I

    iput v2, p0, Lcom/amap/api/a/i;->m:I

    .line 32
    iput-object p1, p0, Lcom/amap/api/a/i;->i:Lcom/amap/api/a/n;

    .line 34
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/a/i;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/a/i;->h:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    return-void

    .line 35
    :catch_0
    move-exception v0

    .line 36
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private b(D)F
    .locals 4
    .parameter

    .prologue
    .line 257
    const-wide v0, 0x400921fb54442d18L

    mul-double/2addr v0, p1

    const-wide v2, 0x4066800000000000L

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    sget v2, Lcom/amap/api/a/i;->n:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    sget v2, Lcom/amap/api/a/i;->o:I

    sget v3, Lcom/amap/api/a/i;->p:I

    shl-int/2addr v2, v3

    int-to-double v2, v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private c(D)D
    .locals 4
    .parameter

    .prologue
    .line 261
    const-wide/high16 v0, 0x3ff0

    invoke-direct {p0, p1, p2}, Lcom/amap/api/a/i;->b(D)F

    move-result v2

    float-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
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
    .line 42
    iget-object v0, p0, Lcom/amap/api/a/i;->i:Lcom/amap/api/a/n;

    invoke-virtual {p0}, Lcom/amap/api/a/i;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/a/n;->a(Ljava/lang/String;)Z

    .line 43
    return-void
.end method

.method public a(D)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 210
    iput-wide p1, p0, Lcom/amap/api/a/i;->b:D

    .line 211
    invoke-virtual {p0}, Lcom/amap/api/a/i;->g()V

    .line 212
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
    .line 55
    iput p1, p0, Lcom/amap/api/a/i;->f:F

    .line 56
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
    .line 231
    iput p1, p0, Lcom/amap/api/a/i;->d:I

    .line 232
    return-void
.end method

.method public a(Lcom/amap/api/maps/model/LatLng;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 199
    iput-object p1, p0, Lcom/amap/api/a/i;->a:Lcom/amap/api/maps/model/LatLng;

    .line 200
    invoke-virtual {p0}, Lcom/amap/api/a/i;->g()V

    .line 201
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
    .line 170
    invoke-virtual {p0}, Lcom/amap/api/a/i;->h()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/amap/api/a/i;->b:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/a/i;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/amap/api/a/i;->j:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/a/i;->k:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/amap/api/a/i;->l:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/amap/api/a/i;->m:I

    if-nez v0, :cond_3

    .line 175
    :cond_2
    invoke-virtual {p0}, Lcom/amap/api/a/i;->f()V

    .line 177
    :cond_3
    iget-object v0, p0, Lcom/amap/api/a/i;->j:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/a/i;->k:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amap/api/a/i;->l:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/amap/api/a/i;->m:I

    if-lez v0, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/amap/api/a/i;->l()I

    move-result v1

    invoke-virtual {p0}, Lcom/amap/api/a/i;->k()I

    move-result v2

    iget-object v3, p0, Lcom/amap/api/a/i;->j:Ljava/nio/FloatBuffer;

    invoke-virtual {p0}, Lcom/amap/api/a/i;->j()F

    move-result v4

    iget-object v5, p0, Lcom/amap/api/a/i;->k:Ljava/nio/FloatBuffer;

    iget v6, p0, Lcom/amap/api/a/i;->l:I

    iget v7, p0, Lcom/amap/api/a/i;->m:I

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lcom/amap/api/a/l;->b(Ljavax/microedition/khronos/opengles/GL10;IILjava/nio/FloatBuffer;FLjava/nio/FloatBuffer;II)V

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
    .line 65
    iput-boolean p1, p0, Lcom/amap/api/a/i;->g:Z

    .line 66
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
    .line 76
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/amap/api/a/r;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amap/api/a/i;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    :cond_0
    const/4 v0, 0x1

    .line 80
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
    .line 47
    iget-object v0, p0, Lcom/amap/api/a/i;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 48
    const-string v0, "Circle"

    invoke-static {v0}, Lcom/amap/api/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/a/i;->h:Ljava/lang/String;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/amap/api/a/i;->h:Ljava/lang/String;

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
    .line 221
    iput p1, p0, Lcom/amap/api/a/i;->c:F

    .line 222
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
    .line 241
    iput p1, p0, Lcom/amap/api/a/i;->e:I

    .line 242
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
    .line 60
    iget v0, p0, Lcom/amap/api/a/i;->f:F

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
    .line 70
    iget-boolean v0, p0, Lcom/amap/api/a/i;->g:Z

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
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public f()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/amap/api/a/i;->h()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_2

    .line 102
    const/16 v1, 0x168

    new-array v2, v1, [Lcom/autonavi/amap/mapcore/FPoint;

    .line 105
    array-length v1, v2

    mul-int/lit8 v1, v1, 0x3

    new-array v3, v1, [F

    .line 106
    invoke-virtual {p0}, Lcom/amap/api/a/i;->h()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    iget-wide v4, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-direct {p0, v4, v5}, Lcom/amap/api/a/i;->c(D)D

    move-result-wide v4

    invoke-virtual {p0}, Lcom/amap/api/a/i;->i()D

    move-result-wide v6

    mul-double/2addr v4, v6

    .line 108
    new-instance v1, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v1}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 109
    iget-object v6, p0, Lcom/amap/api/a/i;->i:Lcom/amap/api/a/n;

    invoke-interface {v6}, Lcom/amap/api/a/n;->b()Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v6

    .line 110
    iget-wide v7, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v9, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v7, v8, v9, v10, v1}, Lcom/autonavi/amap/mapcore/MapProjection;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 111
    const/4 v0, 0x0

    :goto_0
    const/16 v7, 0x168

    if-ge v0, v7, :cond_0

    .line 112
    int-to-double v7, v0

    const-wide v9, 0x400921fb54442d18L

    mul-double/2addr v7, v9

    const-wide v9, 0x4066800000000000L

    div-double/2addr v7, v9

    .line 113
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v9, v4

    .line 114
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v7, v4

    .line 116
    iget v11, v1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    int-to-double v11, v11

    add-double/2addr v9, v11

    double-to-int v9, v9

    .line 117
    iget v10, v1, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    int-to-double v10, v10

    add-double/2addr v7, v10

    double-to-int v7, v7

    .line 118
    new-instance v8, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v8}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    .line 119
    invoke-virtual {v6, v9, v7, v8}, Lcom/autonavi/amap/mapcore/MapProjection;->geo2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    .line 120
    aput-object v8, v2, v0

    .line 122
    mul-int/lit8 v7, v0, 0x3

    aget-object v8, v2, v0

    iget v8, v8, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    aput v8, v3, v7

    .line 123
    mul-int/lit8 v7, v0, 0x3

    add-int/lit8 v7, v7, 0x1

    aget-object v8, v2, v0

    iget v8, v8, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    aput v8, v3, v7

    .line 124
    mul-int/lit8 v7, v0, 0x3

    add-int/lit8 v7, v7, 0x2

    const/4 v8, 0x0

    aput v8, v3, v7

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    :cond_0
    invoke-static {v2}, Lcom/amap/api/a/ag;->a([Lcom/autonavi/amap/mapcore/FPoint;)[Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v4

    .line 128
    const/4 v1, 0x0

    .line 129
    array-length v0, v4

    mul-int/lit8 v0, v0, 0x3

    new-array v5, v0, [F

    .line 130
    array-length v6, v4

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v6, :cond_1

    aget-object v7, v4, v0

    .line 131
    mul-int/lit8 v8, v1, 0x3

    iget v9, v7, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    aput v9, v5, v8

    .line 132
    mul-int/lit8 v8, v1, 0x3

    add-int/lit8 v8, v8, 0x1

    iget v7, v7, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    aput v7, v5, v8

    .line 133
    mul-int/lit8 v7, v1, 0x3

    add-int/lit8 v7, v7, 0x2

    const/4 v8, 0x0

    aput v8, v5, v7

    .line 134
    add-int/lit8 v1, v1, 0x1

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 137
    :cond_1
    array-length v0, v2

    iput v0, p0, Lcom/amap/api/a/i;->l:I

    .line 138
    array-length v0, v4

    iput v0, p0, Lcom/amap/api/a/i;->m:I

    .line 140
    invoke-static {v3}, Lcom/amap/api/a/b/g;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/a/i;->j:Ljava/nio/FloatBuffer;

    .line 141
    invoke-static {v5}, Lcom/amap/api/a/b/g;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/a/i;->k:Ljava/nio/FloatBuffer;

    .line 145
    :cond_2
    return-void
.end method

.method g()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 187
    iput v0, p0, Lcom/amap/api/a/i;->l:I

    .line 188
    iput v0, p0, Lcom/amap/api/a/i;->m:I

    .line 189
    iget-object v0, p0, Lcom/amap/api/a/i;->j:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/amap/api/a/i;->j:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/amap/api/a/i;->k:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/amap/api/a/i;->k:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 195
    :cond_1
    return-void
.end method

.method public h()Lcom/amap/api/maps/model/LatLng;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lcom/amap/api/a/i;->a:Lcom/amap/api/maps/model/LatLng;

    return-object v0
.end method

.method public i()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 216
    iget-wide v0, p0, Lcom/amap/api/a/i;->b:D

    return-wide v0
.end method

.method public j()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 226
    iget v0, p0, Lcom/amap/api/a/i;->c:F

    return v0
.end method

.method public k()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 236
    iget v0, p0, Lcom/amap/api/a/i;->d:I

    return v0
.end method

.method public l()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 246
    iget v0, p0, Lcom/amap/api/a/i;->e:I

    return v0
.end method

.method public m()V
    .locals 2

    .prologue
    .line 270
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/amap/api/a/i;->a:Lcom/amap/api/maps/model/LatLng;

    .line 272
    iget-object v0, p0, Lcom/amap/api/a/i;->j:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/amap/api/a/i;->j:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 274
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/a/i;->j:Ljava/nio/FloatBuffer;

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/amap/api/a/i;->k:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/amap/api/a/i;->k:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 278
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/a/i;->j:Ljava/nio/FloatBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :cond_1
    :goto_0
    return-void

    .line 280
    :catch_0
    move-exception v0

    .line 281
    const-string v0, "destroy erro"

    const-string v1, "CircleDelegateImp destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
