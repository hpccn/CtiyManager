.class public Lcom/amap/api/a/h;
.super Ljava/lang/Object;
.source "CameraUpdateFactoryDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/a/h$a;
    }
.end annotation


# instance fields
.field a:Lcom/amap/api/a/h$a;

.field b:F

.field c:F

.field d:F

.field e:F

.field f:F

.field g:F

.field h:Lcom/amap/api/maps/model/CameraPosition;

.field i:Lcom/amap/api/maps/model/LatLngBounds;

.field j:I

.field k:I

.field l:I

.field m:Landroid/graphics/Point;

.field n:Z

.field o:Z

.field p:Lcom/autonavi/amap/mapcore/IPoint;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    sget-object v0, Lcom/amap/api/a/h$a;->a:Lcom/amap/api/a/h$a;

    iput-object v0, p0, Lcom/amap/api/a/h;->a:Lcom/amap/api/a/h$a;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/a/h;->m:Landroid/graphics/Point;

    .line 56
    iput-boolean v1, p0, Lcom/amap/api/a/h;->n:Z

    .line 60
    iput-boolean v1, p0, Lcom/amap/api/a/h;->o:Z

    .line 13
    return-void
.end method

.method public static a()Lcom/amap/api/a/h;
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/amap/api/a/h;

    invoke-direct {v0}, Lcom/amap/api/a/h;-><init>()V

    .line 65
    return-object v0
.end method

.method public static a(F)Lcom/amap/api/a/h;
    .locals 2
    .parameter

    .prologue
    .line 134
    invoke-static {}, Lcom/amap/api/a/h;->a()Lcom/amap/api/a/h;

    move-result-object v0

    .line 136
    sget-object v1, Lcom/amap/api/a/h$a;->j:Lcom/amap/api/a/h$a;

    iput-object v1, v0, Lcom/amap/api/a/h;->a:Lcom/amap/api/a/h$a;

    .line 137
    iput p0, v0, Lcom/amap/api/a/h;->d:F

    .line 138
    return-object v0
.end method

.method public static a(FF)Lcom/amap/api/a/h;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-static {}, Lcom/amap/api/a/h;->a()Lcom/amap/api/a/h;

    move-result-object v0

    .line 101
    sget-object v1, Lcom/amap/api/a/h$a;->l:Lcom/amap/api/a/h$a;

    iput-object v1, v0, Lcom/amap/api/a/h;->a:Lcom/amap/api/a/h$a;

    .line 102
    iput p0, v0, Lcom/amap/api/a/h;->b:F

    .line 103
    iput p1, v0, Lcom/amap/api/a/h;->c:F

    .line 104
    return-object v0
.end method

.method public static a(FLandroid/graphics/Point;)Lcom/amap/api/a/h;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 146
    invoke-static {}, Lcom/amap/api/a/h;->a()Lcom/amap/api/a/h;

    move-result-object v0

    .line 148
    sget-object v1, Lcom/amap/api/a/h$a;->k:Lcom/amap/api/a/h$a;

    iput-object v1, v0, Lcom/amap/api/a/h;->a:Lcom/amap/api/a/h$a;

    .line 149
    iput p0, v0, Lcom/amap/api/a/h;->e:F

    .line 150
    iput-object p1, v0, Lcom/amap/api/a/h;->m:Landroid/graphics/Point;

    .line 151
    return-object v0
.end method

.method public static a(Lcom/amap/api/maps/model/CameraPosition;)Lcom/amap/api/a/h;
    .locals 2
    .parameter

    .prologue
    .line 156
    invoke-static {}, Lcom/amap/api/a/h;->a()Lcom/amap/api/a/h;

    move-result-object v0

    .line 158
    sget-object v1, Lcom/amap/api/a/h$a;->m:Lcom/amap/api/a/h$a;

    iput-object v1, v0, Lcom/amap/api/a/h;->a:Lcom/amap/api/a/h$a;

    .line 159
    iput-object p0, v0, Lcom/amap/api/a/h;->h:Lcom/amap/api/maps/model/CameraPosition;

    .line 160
    return-object v0
.end method

.method public static a(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/a/h;
    .locals 1
    .parameter

    .prologue
    .line 223
    invoke-static {}, Lcom/amap/api/maps/model/CameraPosition;->builder()Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/maps/model/CameraPosition$Builder;->target(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/model/CameraPosition$Builder;->build()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/a/h;->a(Lcom/amap/api/maps/model/CameraPosition;)Lcom/amap/api/a/h;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/amap/api/maps/model/LatLng;F)Lcom/amap/api/a/h;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 229
    invoke-static {}, Lcom/amap/api/maps/model/CameraPosition;->builder()Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/maps/model/CameraPosition$Builder;->target(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->zoom(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/model/CameraPosition$Builder;->build()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/a/h;->a(Lcom/amap/api/maps/model/CameraPosition;)Lcom/amap/api/a/h;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/amap/api/maps/model/LatLng;FFF)Lcom/amap/api/a/h;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 235
    invoke-static {}, Lcom/amap/api/maps/model/CameraPosition;->builder()Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/maps/model/CameraPosition$Builder;->target(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->zoom(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/amap/api/maps/model/CameraPosition$Builder;->bearing(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/amap/api/maps/model/CameraPosition$Builder;->tilt(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/model/CameraPosition$Builder;->build()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/a/h;->a(Lcom/amap/api/maps/model/CameraPosition;)Lcom/amap/api/a/h;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/amap/api/maps/model/LatLngBounds;I)Lcom/amap/api/a/h;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 253
    invoke-static {}, Lcom/amap/api/a/h;->a()Lcom/amap/api/a/h;

    move-result-object v0

    .line 255
    sget-object v1, Lcom/amap/api/a/h$a;->n:Lcom/amap/api/a/h$a;

    iput-object v1, v0, Lcom/amap/api/a/h;->a:Lcom/amap/api/a/h$a;

    .line 256
    iput-object p0, v0, Lcom/amap/api/a/h;->i:Lcom/amap/api/maps/model/LatLngBounds;

    .line 257
    iput p1, v0, Lcom/amap/api/a/h;->j:I

    .line 258
    return-object v0
.end method

.method public static a(Lcom/amap/api/maps/model/LatLngBounds;III)Lcom/amap/api/a/h;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 263
    invoke-static {}, Lcom/amap/api/a/h;->a()Lcom/amap/api/a/h;

    move-result-object v0

    .line 265
    sget-object v1, Lcom/amap/api/a/h$a;->o:Lcom/amap/api/a/h$a;

    iput-object v1, v0, Lcom/amap/api/a/h;->a:Lcom/amap/api/a/h$a;

    .line 266
    iput-object p0, v0, Lcom/amap/api/a/h;->i:Lcom/amap/api/maps/model/LatLngBounds;

    .line 267
    iput p3, v0, Lcom/amap/api/a/h;->j:I

    .line 268
    iput p1, v0, Lcom/amap/api/a/h;->k:I

    .line 269
    iput p2, v0, Lcom/amap/api/a/h;->l:I

    .line 270
    return-object v0
.end method

.method public static a(Lcom/autonavi/amap/mapcore/IPoint;)Lcom/amap/api/a/h;
    .locals 2
    .parameter

    .prologue
    .line 170
    invoke-static {}, Lcom/amap/api/a/h;->a()Lcom/amap/api/a/h;

    move-result-object v0

    .line 172
    sget-object v1, Lcom/amap/api/a/h$a;->c:Lcom/amap/api/a/h$a;

    iput-object v1, v0, Lcom/amap/api/a/h;->a:Lcom/amap/api/a/h$a;

    .line 173
    iput-object p0, v0, Lcom/amap/api/a/h;->p:Lcom/autonavi/amap/mapcore/IPoint;

    .line 174
    return-object v0
.end method

.method static a(Lcom/autonavi/amap/mapcore/IPoint;FFF)Lcom/amap/api/a/h;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 241
    invoke-static {}, Lcom/amap/api/a/h;->a()Lcom/amap/api/a/h;

    move-result-object v0

    .line 243
    sget-object v1, Lcom/amap/api/a/h$a;->p:Lcom/amap/api/a/h$a;

    iput-object v1, v0, Lcom/amap/api/a/h;->a:Lcom/amap/api/a/h$a;

    .line 244
    iput-object p0, v0, Lcom/amap/api/a/h;->p:Lcom/autonavi/amap/mapcore/IPoint;

    .line 245
    iput p1, v0, Lcom/amap/api/a/h;->d:F

    .line 246
    iput p2, v0, Lcom/amap/api/a/h;->g:F

    .line 247
    iput p3, v0, Lcom/amap/api/a/h;->f:F

    .line 248
    return-object v0
.end method

.method public static b()Lcom/amap/api/a/h;
    .locals 2

    .prologue
    .line 69
    invoke-static {}, Lcom/amap/api/a/h;->a()Lcom/amap/api/a/h;

    move-result-object v0

    .line 71
    sget-object v1, Lcom/amap/api/a/h$a;->b:Lcom/amap/api/a/h$a;

    iput-object v1, v0, Lcom/amap/api/a/h;->a:Lcom/amap/api/a/h$a;

    .line 72
    return-object v0
.end method

.method public static b(F)Lcom/amap/api/a/h;
    .locals 1
    .parameter

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/amap/api/a/h;->a(FLandroid/graphics/Point;)Lcom/amap/api/a/h;

    move-result-object v0

    return-object v0
.end method

.method public static c()Lcom/amap/api/a/h;
    .locals 2

    .prologue
    .line 91
    invoke-static {}, Lcom/amap/api/a/h;->a()Lcom/amap/api/a/h;

    move-result-object v0

    .line 93
    sget-object v1, Lcom/amap/api/a/h$a;->i:Lcom/amap/api/a/h$a;

    iput-object v1, v0, Lcom/amap/api/a/h;->a:Lcom/amap/api/a/h$a;

    .line 94
    return-object v0
.end method

.method public static c(F)Lcom/amap/api/a/h;
    .locals 2
    .parameter

    .prologue
    .line 184
    invoke-static {}, Lcom/amap/api/a/h;->a()Lcom/amap/api/a/h;

    move-result-object v0

    .line 186
    sget-object v1, Lcom/amap/api/a/h$a;->d:Lcom/amap/api/a/h$a;

    iput-object v1, v0, Lcom/amap/api/a/h;->a:Lcom/amap/api/a/h$a;

    .line 187
    iput p0, v0, Lcom/amap/api/a/h;->f:F

    .line 188
    return-object v0
.end method

.method public static d(F)Lcom/amap/api/a/h;
    .locals 2
    .parameter

    .prologue
    .line 198
    invoke-static {}, Lcom/amap/api/a/h;->a()Lcom/amap/api/a/h;

    move-result-object v0

    .line 200
    sget-object v1, Lcom/amap/api/a/h$a;->e:Lcom/amap/api/a/h$a;

    iput-object v1, v0, Lcom/amap/api/a/h;->a:Lcom/amap/api/a/h$a;

    .line 201
    iput p0, v0, Lcom/amap/api/a/h;->g:F

    .line 202
    return-object v0
.end method
