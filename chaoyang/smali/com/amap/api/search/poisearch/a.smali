.class final Lcom/amap/api/search/poisearch/a;
.super Ljava/lang/Object;
.source "PoiItem.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/search/poisearch/PoiItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/amap/api/search/poisearch/PoiItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/amap/api/search/poisearch/PoiItem;
    .locals 2
    .parameter

    .prologue
    .line 44
    new-instance v0, Lcom/amap/api/search/poisearch/PoiItem;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/amap/api/search/poisearch/PoiItem;-><init>(Landroid/os/Parcel;Lcom/amap/api/search/poisearch/a;)V

    return-object v0
.end method

.method public a(I)[Lcom/amap/api/search/poisearch/PoiItem;
    .locals 1
    .parameter

    .prologue
    .line 48
    new-array v0, p1, [Lcom/amap/api/search/poisearch/PoiItem;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/amap/api/search/poisearch/a;->a(Landroid/os/Parcel;)Lcom/amap/api/search/poisearch/PoiItem;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/amap/api/search/poisearch/a;->a(I)[Lcom/amap/api/search/poisearch/PoiItem;

    move-result-object v0

    return-object v0
.end method
