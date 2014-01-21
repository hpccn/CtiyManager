.class public Lcom/amap/api/search/poisearch/PoiItem;
.super Ljava/lang/Object;
.source "PoiItem.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/amap/api/search/poisearch/PoiItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final DesSplit:Ljava/lang/String; = " - "


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field protected final mPoint:Lcom/amap/api/search/core/LatLonPoint;

.field protected final mSnippet:Ljava/lang/String;

.field protected final mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/amap/api/search/poisearch/a;

    invoke-direct {v0}, Lcom/amap/api/search/poisearch/a;-><init>()V

    sput-object v0, Lcom/amap/api/search/poisearch/PoiItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/search/poisearch/PoiItem;->e:Ljava/lang/String;

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/api/search/poisearch/PoiItem;->g:I

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/search/poisearch/PoiItem;->a:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/search/poisearch/PoiItem;->d:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/search/poisearch/PoiItem;->c:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/search/poisearch/PoiItem;->b:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/search/poisearch/PoiItem;->e:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/amap/api/search/poisearch/PoiItem;->g:I

    .line 35
    const-class v0, Lcom/amap/api/search/core/LatLonPoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/search/core/LatLonPoint;

    iput-object v0, p0, Lcom/amap/api/search/poisearch/PoiItem;->mPoint:Lcom/amap/api/search/core/LatLonPoint;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/search/poisearch/PoiItem;->mTitle:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/search/poisearch/PoiItem;->mSnippet:Ljava/lang/String;

    .line 40
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/amap/api/search/poisearch/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 7
    invoke-direct {p0, p1}, Lcom/amap/api/search/poisearch/PoiItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amap/api/search/core/LatLonPoint;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/search/poisearch/PoiItem;->e:Ljava/lang/String;

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/api/search/poisearch/PoiItem;->g:I

    .line 22
    iput-object p1, p0, Lcom/amap/api/search/poisearch/PoiItem;->a:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/amap/api/search/poisearch/PoiItem;->mPoint:Lcom/amap/api/search/core/LatLonPoint;

    .line 24
    iput-object p3, p0, Lcom/amap/api/search/poisearch/PoiItem;->mTitle:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lcom/amap/api/search/poisearch/PoiItem;->mSnippet:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 106
    if-nez p1, :cond_1

    .line 114
    :cond_0
    :goto_0
    return v0

    .line 109
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 112
    check-cast p1, Lcom/amap/api/search/poisearch/PoiItem;

    .line 114
    iget-object v1, p0, Lcom/amap/api/search/poisearch/PoiItem;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/amap/api/search/poisearch/PoiItem;->a:Ljava/lang/String;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAdCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/amap/api/search/poisearch/PoiItem;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getDistance()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/amap/api/search/poisearch/PoiItem;->g:I

    return v0
.end method

.method public getPoiId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/amap/api/search/poisearch/PoiItem;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getPoint()Lcom/amap/api/search/core/LatLonPoint;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/amap/api/search/poisearch/PoiItem;->mPoint:Lcom/amap/api/search/core/LatLonPoint;

    return-object v0
.end method

.method public getSnippet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/amap/api/search/poisearch/PoiItem;->mSnippet:Ljava/lang/String;

    return-object v0
.end method

.method public getTel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/amap/api/search/poisearch/PoiItem;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/amap/api/search/poisearch/PoiItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/amap/api/search/poisearch/PoiItem;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeDes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/amap/api/search/poisearch/PoiItem;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getXmlNode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/amap/api/search/poisearch/PoiItem;->f:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/amap/api/search/poisearch/PoiItem;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setAdCode(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/amap/api/search/poisearch/PoiItem;->d:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setDistance(I)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput p1, p0, Lcom/amap/api/search/poisearch/PoiItem;->g:I

    .line 142
    return-void
.end method

.method public setTel(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/amap/api/search/poisearch/PoiItem;->c:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setTypeCode(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/amap/api/search/poisearch/PoiItem;->b:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setTypeDes(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/amap/api/search/poisearch/PoiItem;->e:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setXmlNode(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/amap/api/search/poisearch/PoiItem;->f:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/amap/api/search/poisearch/PoiItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/amap/api/search/poisearch/PoiItem;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/amap/api/search/poisearch/PoiItem;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/amap/api/search/poisearch/PoiItem;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/amap/api/search/poisearch/PoiItem;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/amap/api/search/poisearch/PoiItem;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget v0, p0, Lcom/amap/api/search/poisearch/PoiItem;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget-object v0, p0, Lcom/amap/api/search/poisearch/PoiItem;->mPoint:Lcom/amap/api/search/core/LatLonPoint;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lcom/amap/api/search/poisearch/PoiItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/amap/api/search/poisearch/PoiItem;->mSnippet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    return-void
.end method
