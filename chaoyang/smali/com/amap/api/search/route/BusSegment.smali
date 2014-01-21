.class public Lcom/amap/api/search/route/BusSegment;
.super Lcom/amap/api/search/route/Segment;
.source "BusSegment.java"


# instance fields
.field protected mFirstStation:Ljava/lang/String;

.field protected mLastStation:Ljava/lang/String;

.field protected mLine:Ljava/lang/String;

.field protected mPassStopName:[Ljava/lang/String;

.field protected mPassStopPos:[Lcom/amap/api/search/core/LatLonPoint;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/amap/api/search/route/Segment;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public getFirstStationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/amap/api/search/route/BusSegment;->mFirstStation:Ljava/lang/String;

    return-object v0
.end method

.method public getLastStationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/amap/api/search/route/BusSegment;->mLastStation:Ljava/lang/String;

    return-object v0
.end method

.method public getLineName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/amap/api/search/route/BusSegment;->mLine:Ljava/lang/String;

    return-object v0
.end method

.method public getOffStationName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/amap/api/search/route/BusSegment;->mPassStopName:[Ljava/lang/String;

    iget-object v1, p0, Lcom/amap/api/search/route/BusSegment;->mPassStopName:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getOnStationName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/amap/api/search/route/BusSegment;->mPassStopName:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getPassStopName()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/amap/api/search/route/BusSegment;->mPassStopName:[Ljava/lang/String;

    return-object v0
.end method

.method public getStopNumber()I
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/amap/api/search/route/BusSegment;->mPassStopPos:[Lcom/amap/api/search/core/LatLonPoint;

    array-length v0, v0

    return v0
.end method

.method public setFirstStationName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/amap/api/search/route/BusSegment;->mFirstStation:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setLastStationName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/amap/api/search/route/BusSegment;->mLastStation:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setLineName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/amap/api/search/route/BusSegment;->mLine:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setPassStopName([Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/amap/api/search/route/BusSegment;->mPassStopName:[Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setPassStopPos([Lcom/amap/api/search/core/LatLonPoint;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/amap/api/search/route/BusSegment;->mPassStopPos:[Lcom/amap/api/search/core/LatLonPoint;

    .line 23
    return-void
.end method
