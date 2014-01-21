.class public final enum Lcom/amap/api/search/busline/BusQuery$SearchType;
.super Ljava/lang/Enum;
.source "BusQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/search/busline/BusQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SearchType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amap/api/search/busline/BusQuery$SearchType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BY_ID:Lcom/amap/api/search/busline/BusQuery$SearchType;

.field public static final enum BY_LINE_NAME:Lcom/amap/api/search/busline/BusQuery$SearchType;

.field public static final enum BY_STATION_NAME:Lcom/amap/api/search/busline/BusQuery$SearchType;

.field private static final synthetic a:[Lcom/amap/api/search/busline/BusQuery$SearchType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-instance v0, Lcom/amap/api/search/busline/BusQuery$SearchType;

    const-string v1, "BY_ID"

    invoke-direct {v0, v1, v2}, Lcom/amap/api/search/busline/BusQuery$SearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/search/busline/BusQuery$SearchType;->BY_ID:Lcom/amap/api/search/busline/BusQuery$SearchType;

    .line 41
    new-instance v0, Lcom/amap/api/search/busline/BusQuery$SearchType;

    const-string v1, "BY_LINE_NAME"

    invoke-direct {v0, v1, v3}, Lcom/amap/api/search/busline/BusQuery$SearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/search/busline/BusQuery$SearchType;->BY_LINE_NAME:Lcom/amap/api/search/busline/BusQuery$SearchType;

    .line 42
    new-instance v0, Lcom/amap/api/search/busline/BusQuery$SearchType;

    const-string v1, "BY_STATION_NAME"

    invoke-direct {v0, v1, v4}, Lcom/amap/api/search/busline/BusQuery$SearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/search/busline/BusQuery$SearchType;->BY_STATION_NAME:Lcom/amap/api/search/busline/BusQuery$SearchType;

    .line 39
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/amap/api/search/busline/BusQuery$SearchType;

    sget-object v1, Lcom/amap/api/search/busline/BusQuery$SearchType;->BY_ID:Lcom/amap/api/search/busline/BusQuery$SearchType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amap/api/search/busline/BusQuery$SearchType;->BY_LINE_NAME:Lcom/amap/api/search/busline/BusQuery$SearchType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amap/api/search/busline/BusQuery$SearchType;->BY_STATION_NAME:Lcom/amap/api/search/busline/BusQuery$SearchType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/amap/api/search/busline/BusQuery$SearchType;->a:[Lcom/amap/api/search/busline/BusQuery$SearchType;

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
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amap/api/search/busline/BusQuery$SearchType;
    .locals 1
    .parameter

    .prologue
    .line 39
    const-class v0, Lcom/amap/api/search/busline/BusQuery$SearchType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amap/api/search/busline/BusQuery$SearchType;

    return-object v0
.end method

.method public static values()[Lcom/amap/api/search/busline/BusQuery$SearchType;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/amap/api/search/busline/BusQuery$SearchType;->a:[Lcom/amap/api/search/busline/BusQuery$SearchType;

    invoke-virtual {v0}, [Lcom/amap/api/search/busline/BusQuery$SearchType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amap/api/search/busline/BusQuery$SearchType;

    return-object v0
.end method
