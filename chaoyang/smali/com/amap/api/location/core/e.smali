.class public Lcom/amap/api/location/core/e;
.super Ljava/lang/Object;
.source "ConfigableConst.java"


# static fields
.field public static a:I

.field public static b:I

.field public static c:I

.field public static d:I

.field public static e:I

.field public static f:I

.field public static g:Lcom/amap/api/location/core/GeoPoint$a;

.field public static h:I

.field public static i:I

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;

.field public static l:Z

.field public static m:Z

.field public static n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 32
    const/16 v0, 0x12

    sput v0, Lcom/amap/api/location/core/e;->a:I

    .line 33
    sput v3, Lcom/amap/api/location/core/e;->b:I

    .line 34
    const/16 v0, 0x14

    sput v0, Lcom/amap/api/location/core/e;->c:I

    .line 35
    sput v3, Lcom/amap/api/location/core/e;->d:I

    .line 45
    sput v1, Lcom/amap/api/location/core/e;->e:I

    .line 77
    sput v1, Lcom/amap/api/location/core/e;->f:I

    .line 82
    sget-object v0, Lcom/amap/api/location/core/GeoPoint$a;->a:Lcom/amap/api/location/core/GeoPoint$a;

    sput-object v0, Lcom/amap/api/location/core/e;->g:Lcom/amap/api/location/core/GeoPoint$a;

    .line 84
    sput v1, Lcom/amap/api/location/core/e;->h:I

    .line 85
    sput v1, Lcom/amap/api/location/core/e;->i:I

    .line 109
    const-string v0, "V1.0.0"

    sput-object v0, Lcom/amap/api/location/core/e;->j:Ljava/lang/String;

    .line 111
    const-string v0, "V1.0.0"

    sput-object v0, Lcom/amap/api/location/core/e;->k:Ljava/lang/String;

    .line 130
    sput-boolean v2, Lcom/amap/api/location/core/e;->l:Z

    .line 135
    sput-boolean v2, Lcom/amap/api/location/core/e;->m:Z

    .line 140
    sput-boolean v1, Lcom/amap/api/location/core/e;->n:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
