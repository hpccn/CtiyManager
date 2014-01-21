.class public Lcom/amap/api/maps/model/PolygonOptionsCreator;
.super Ljava/lang/Object;
.source "PolygonOptionsCreator.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/amap/api/maps/model/PolygonOptions;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONTENT_DESCRIPTION:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/amap/api/maps/model/PolygonOptions;
    .locals 8
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 13
    new-instance v2, Lcom/amap/api/maps/model/PolygonOptions;

    invoke-direct {v2}, Lcom/amap/api/maps/model/PolygonOptions;-><init>()V

    .line 14
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 15
    sget-object v1, Lcom/amap/api/maps/model/LatLng;->CREATOR:Lcom/amap/api/maps/model/LatLngCreator;

    invoke-virtual {p1, v3, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 21
    if-ne v1, v0, :cond_0

    move v1, v0

    .line 30
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amap/api/maps/model/LatLng;

    check-cast v0, [Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {v2, v0}, Lcom/amap/api/maps/model/PolygonOptions;->add([Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/PolygonOptions;

    .line 31
    invoke-virtual {v2, v4}, Lcom/amap/api/maps/model/PolygonOptions;->strokeWidth(F)Lcom/amap/api/maps/model/PolygonOptions;

    .line 32
    invoke-virtual {v2, v5}, Lcom/amap/api/maps/model/PolygonOptions;->strokeColor(I)Lcom/amap/api/maps/model/PolygonOptions;

    .line 33
    invoke-virtual {v2, v6}, Lcom/amap/api/maps/model/PolygonOptions;->fillColor(I)Lcom/amap/api/maps/model/PolygonOptions;

    .line 34
    invoke-virtual {v2, v7}, Lcom/amap/api/maps/model/PolygonOptions;->zIndex(F)Lcom/amap/api/maps/model/PolygonOptions;

    .line 35
    invoke-virtual {v2, v1}, Lcom/amap/api/maps/model/PolygonOptions;->visible(Z)Lcom/amap/api/maps/model/PolygonOptions;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/amap/api/maps/model/PolygonOptions;->a:Ljava/lang/String;

    .line 37
    return-object v2

    .line 21
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/amap/api/maps/model/PolygonOptionsCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/amap/api/maps/model/PolygonOptions;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/amap/api/maps/model/PolygonOptions;
    .locals 1
    .parameter

    .prologue
    .line 41
    new-array v0, p1, [Lcom/amap/api/maps/model/PolygonOptions;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/amap/api/maps/model/PolygonOptionsCreator;->newArray(I)[Lcom/amap/api/maps/model/PolygonOptions;

    move-result-object v0

    return-object v0
.end method
