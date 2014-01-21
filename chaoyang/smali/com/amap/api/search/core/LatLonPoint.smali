.class public Lcom/amap/api/search/core/LatLonPoint;
.super Ljava/lang/Object;
.source "LatLonPoint.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/amap/api/search/core/LatLonPoint;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:D

.field private b:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/amap/api/search/core/f;

    invoke-direct {v0}, Lcom/amap/api/search/core/f;-><init>()V

    sput-object v0, Lcom/amap/api/search/core/LatLonPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-wide p1, p0, Lcom/amap/api/search/core/LatLonPoint;->a:D

    .line 20
    iput-wide p3, p0, Lcom/amap/api/search/core/LatLonPoint;->b:D

    .line 21
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/search/core/LatLonPoint;->a:D

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/search/core/LatLonPoint;->b:D

    .line 62
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/amap/api/search/core/f;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/amap/api/search/core/LatLonPoint;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public Copy()Lcom/amap/api/search/core/LatLonPoint;
    .locals 5

    .prologue
    .line 39
    new-instance v0, Lcom/amap/api/search/core/LatLonPoint;

    iget-wide v1, p0, Lcom/amap/api/search/core/LatLonPoint;->a:D

    iget-wide v3, p0, Lcom/amap/api/search/core/LatLonPoint;->b:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amap/api/search/core/LatLonPoint;-><init>(DD)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 44
    if-nez p1, :cond_1

    .line 51
    :cond_0
    :goto_0
    return v0

    .line 47
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 50
    check-cast p1, Lcom/amap/api/search/core/LatLonPoint;

    .line 51
    iget-wide v1, p0, Lcom/amap/api/search/core/LatLonPoint;->a:D

    iget-wide v3, p1, Lcom/amap/api/search/core/LatLonPoint;->a:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Lcom/amap/api/search/core/LatLonPoint;->b:D

    iget-wide v3, p1, Lcom/amap/api/search/core/LatLonPoint;->b:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/amap/api/search/core/LatLonPoint;->a:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/amap/api/search/core/LatLonPoint;->b:D

    return-wide v0
.end method

.method public setLatitude(D)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-wide p1, p0, Lcom/amap/api/search/core/LatLonPoint;->a:D

    .line 36
    return-void
.end method

.method public setLongitude(D)V
    .locals 0
    .parameter

    .prologue
    .line 27
    iput-wide p1, p0, Lcom/amap/api/search/core/LatLonPoint;->b:D

    .line 28
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/amap/api/search/core/LatLonPoint;->a:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/amap/api/search/core/LatLonPoint;->b:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/amap/api/search/core/LatLonPoint;->a:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 82
    iget-wide v0, p0, Lcom/amap/api/search/core/LatLonPoint;->b:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 83
    return-void
.end method
