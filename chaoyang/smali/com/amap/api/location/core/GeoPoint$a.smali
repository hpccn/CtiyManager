.class public final enum Lcom/amap/api/location/core/GeoPoint$a;
.super Ljava/lang/Enum;
.source "GeoPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/location/core/GeoPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amap/api/location/core/GeoPoint$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/amap/api/location/core/GeoPoint$a;

.field public static final enum b:Lcom/amap/api/location/core/GeoPoint$a;

.field private static final synthetic c:[Lcom/amap/api/location/core/GeoPoint$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 333
    new-instance v0, Lcom/amap/api/location/core/GeoPoint$a;

    const-string v1, "projection_900913"

    invoke-direct {v0, v1, v2}, Lcom/amap/api/location/core/GeoPoint$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/location/core/GeoPoint$a;->a:Lcom/amap/api/location/core/GeoPoint$a;

    new-instance v0, Lcom/amap/api/location/core/GeoPoint$a;

    const-string v1, "projection_custBeijing54"

    invoke-direct {v0, v1, v3}, Lcom/amap/api/location/core/GeoPoint$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/location/core/GeoPoint$a;->b:Lcom/amap/api/location/core/GeoPoint$a;

    .line 332
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amap/api/location/core/GeoPoint$a;

    sget-object v1, Lcom/amap/api/location/core/GeoPoint$a;->a:Lcom/amap/api/location/core/GeoPoint$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amap/api/location/core/GeoPoint$a;->b:Lcom/amap/api/location/core/GeoPoint$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/amap/api/location/core/GeoPoint$a;->c:[Lcom/amap/api/location/core/GeoPoint$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 332
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amap/api/location/core/GeoPoint$a;
    .locals 1
    .parameter

    .prologue
    .line 332
    const-class v0, Lcom/amap/api/location/core/GeoPoint$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amap/api/location/core/GeoPoint$a;

    return-object v0
.end method

.method public static values()[Lcom/amap/api/location/core/GeoPoint$a;
    .locals 1

    .prologue
    .line 332
    sget-object v0, Lcom/amap/api/location/core/GeoPoint$a;->c:[Lcom/amap/api/location/core/GeoPoint$a;

    invoke-virtual {v0}, [Lcom/amap/api/location/core/GeoPoint$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amap/api/location/core/GeoPoint$a;

    return-object v0
.end method
