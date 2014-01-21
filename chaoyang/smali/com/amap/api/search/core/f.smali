.class final Lcom/amap/api/search/core/f;
.super Ljava/lang/Object;
.source "LatLonPoint.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/search/core/LatLonPoint;
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
        "Lcom/amap/api/search/core/LatLonPoint;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/amap/api/search/core/LatLonPoint;
    .locals 2
    .parameter

    .prologue
    .line 66
    new-instance v0, Lcom/amap/api/search/core/LatLonPoint;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/amap/api/search/core/LatLonPoint;-><init>(Landroid/os/Parcel;Lcom/amap/api/search/core/f;)V

    return-object v0
.end method

.method public a(I)[Lcom/amap/api/search/core/LatLonPoint;
    .locals 1
    .parameter

    .prologue
    .line 70
    new-array v0, p1, [Lcom/amap/api/search/core/LatLonPoint;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/amap/api/search/core/f;->a(Landroid/os/Parcel;)Lcom/amap/api/search/core/LatLonPoint;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/amap/api/search/core/f;->a(I)[Lcom/amap/api/search/core/LatLonPoint;

    move-result-object v0

    return-object v0
.end method
