.class public Lcom/amap/api/maps/model/PolylineOptionsCreator;
.super Ljava/lang/Object;
.source "PolylineOptionsCreator.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/amap/api/maps/model/PolylineOptions;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 15
    new-instance v1, Lcom/amap/api/maps/model/PolylineOptions;

    invoke-direct {v1}, Lcom/amap/api/maps/model/PolylineOptions;-><init>()V

    .line 16
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 17
    sget-object v3, Lcom/amap/api/maps/model/LatLng;->CREATOR:Lcom/amap/api/maps/model/LatLngCreator;

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v6

    .line 23
    if-ne v6, v0, :cond_0

    .line 24
    :goto_0
    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/PolylineOptions;->addAll(Ljava/lang/Iterable;)Lcom/amap/api/maps/model/PolylineOptions;

    .line 25
    invoke-virtual {v1, v3}, Lcom/amap/api/maps/model/PolylineOptions;->width(F)Lcom/amap/api/maps/model/PolylineOptions;

    .line 26
    invoke-virtual {v1, v4}, Lcom/amap/api/maps/model/PolylineOptions;->color(I)Lcom/amap/api/maps/model/PolylineOptions;

    .line 27
    invoke-virtual {v1, v5}, Lcom/amap/api/maps/model/PolylineOptions;->zIndex(F)Lcom/amap/api/maps/model/PolylineOptions;

    .line 28
    invoke-virtual {v1, v0}, Lcom/amap/api/maps/model/PolylineOptions;->visible(Z)Lcom/amap/api/maps/model/PolylineOptions;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/maps/model/PolylineOptions;->a:Ljava/lang/String;

    .line 30
    return-object v1

    .line 23
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/amap/api/maps/model/PolylineOptionsCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/amap/api/maps/model/PolylineOptions;
    .locals 1
    .parameter

    .prologue
    .line 35
    new-array v0, p1, [Lcom/amap/api/maps/model/PolylineOptions;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/amap/api/maps/model/PolylineOptionsCreator;->newArray(I)[Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v0

    return-object v0
.end method
