.class public final Lcom/amap/api/maps/model/PolylineOptions;
.super Ljava/lang/Object;
.source "PolylineOptions.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/amap/api/maps/model/PolylineOptionsCreator;


# instance fields
.field a:Ljava/lang/String;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private c:F

.field private d:I

.field private e:F

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/amap/api/maps/model/PolylineOptionsCreator;

    invoke-direct {v0}, Lcom/amap/api/maps/model/PolylineOptionsCreator;-><init>()V

    sput-object v0, Lcom/amap/api/maps/model/PolylineOptions;->CREATOR:Lcom/amap/api/maps/model/PolylineOptionsCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/high16 v0, 0x4120

    iput v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->c:F

    .line 20
    const/high16 v0, -0x100

    iput v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->d:I

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->e:F

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->f:Z

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->b:Ljava/util/List;

    .line 28
    return-void
.end method


# virtual methods
.method public add(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    return-object p0
.end method

.method public varargs add([Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 2
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->b:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 49
    return-object p0
.end method

.method public addAll(Ljava/lang/Iterable;)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;)",
            "Lcom/amap/api/maps/model/PolylineOptions;"
        }
    .end annotation

    .prologue
    .line 59
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 60
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/LatLng;

    .line 62
    iget-object v2, p0, Lcom/amap/api/maps/model/PolylineOptions;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 64
    :cond_0
    return-object p0
.end method

.method public color(I)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 0
    .parameter

    .prologue
    .line 85
    iput p1, p0, Lcom/amap/api/maps/model/PolylineOptions;->d:I

    .line 86
    return-object p0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->d:I

    return v0
.end method

.method public getPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->b:Ljava/util/List;

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->c:F

    return v0
.end method

.method public getZIndex()F
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->e:F

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->f:Z

    return v0
.end method

.method public visible(Z)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/amap/api/maps/model/PolylineOptions;->f:Z

    .line 108
    return-object p0
.end method

.method public width(F)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 0
    .parameter

    .prologue
    .line 74
    iput p1, p0, Lcom/amap/api/maps/model/PolylineOptions;->c:F

    .line 75
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/amap/api/maps/model/PolylineOptions;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 179
    invoke-virtual {p0}, Lcom/amap/api/maps/model/PolylineOptions;->getWidth()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 180
    invoke-virtual {p0}, Lcom/amap/api/maps/model/PolylineOptions;->getColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    invoke-virtual {p0}, Lcom/amap/api/maps/model/PolylineOptions;->getZIndex()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 182
    invoke-virtual {p0}, Lcom/amap/api/maps/model/PolylineOptions;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 183
    iget-object v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 185
    return-void

    .line 182
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zIndex(F)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 0
    .parameter

    .prologue
    .line 96
    iput p1, p0, Lcom/amap/api/maps/model/PolylineOptions;->e:F

    .line 97
    return-object p0
.end method
