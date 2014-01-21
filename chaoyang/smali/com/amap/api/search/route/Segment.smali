.class public Lcom/amap/api/search/route/Segment;
.super Ljava/lang/Object;
.source "Segment.java"


# instance fields
.field private a:Lcom/amap/api/search/core/LatLonPoint;

.field private b:Lcom/amap/api/search/core/LatLonPoint;

.field protected mLength:I

.field protected mRoute:Lcom/amap/api/search/route/Route;

.field protected mShapes:[Lcom/amap/api/search/core/LatLonPoint;

.field protected strTimeConsume:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/amap/api/search/route/Segment;->a:Lcom/amap/api/search/core/LatLonPoint;

    .line 13
    iput-object v0, p0, Lcom/amap/api/search/route/Segment;->b:Lcom/amap/api/search/core/LatLonPoint;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/search/route/Segment;->strTimeConsume:Ljava/lang/String;

    .line 21
    return-void
.end method

.method private a()V
    .locals 17

    .prologue
    .line 37
    const-wide v9, 0x7fefffffffffffffL

    .line 38
    const-wide/16 v11, 0x1

    .line 39
    const-wide v3, 0x7fefffffffffffffL

    .line 40
    const-wide/16 v5, 0x1

    .line 42
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/amap/api/search/route/Segment;->mShapes:[Lcom/amap/api/search/core/LatLonPoint;

    array-length v15, v14

    const/4 v1, 0x0

    move v13, v1

    :goto_0
    if-ge v13, v15, :cond_2

    aget-object v1, v14, v13

    .line 43
    invoke-virtual {v1}, Lcom/amap/api/search/core/LatLonPoint;->getLongitude()D

    move-result-wide v7

    .line 44
    invoke-virtual {v1}, Lcom/amap/api/search/core/LatLonPoint;->getLatitude()D

    move-result-wide v1

    .line 45
    cmpl-double v16, v7, v11

    if-lez v16, :cond_0

    move-wide v11, v7

    .line 49
    :cond_0
    cmpg-double v16, v7, v9

    if-gez v16, :cond_4

    .line 53
    :goto_1
    cmpl-double v9, v1, v5

    if-lez v9, :cond_1

    move-wide v5, v1

    .line 57
    :cond_1
    cmpg-double v9, v1, v3

    if-gez v9, :cond_3

    .line 42
    :goto_2
    add-int/lit8 v3, v13, 0x1

    move v13, v3

    move-wide v9, v7

    move-wide v3, v1

    goto :goto_0

    .line 62
    :cond_2
    new-instance v1, Lcom/amap/api/search/core/LatLonPoint;

    invoke-direct {v1, v3, v4, v9, v10}, Lcom/amap/api/search/core/LatLonPoint;-><init>(DD)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/amap/api/search/route/Segment;->a:Lcom/amap/api/search/core/LatLonPoint;

    .line 63
    new-instance v1, Lcom/amap/api/search/core/LatLonPoint;

    invoke-direct {v1, v5, v6, v11, v12}, Lcom/amap/api/search/core/LatLonPoint;-><init>(DD)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/amap/api/search/route/Segment;->b:Lcom/amap/api/search/core/LatLonPoint;

    .line 64
    return-void

    :cond_3
    move-wide v1, v3

    goto :goto_2

    :cond_4
    move-wide v7, v9

    goto :goto_1
.end method

.method private b()I
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/amap/api/search/route/Segment;->mRoute:Lcom/amap/api/search/route/Route;

    invoke-virtual {v0, p0}, Lcom/amap/api/search/route/Route;->getSegmentIndex(Lcom/amap/api/search/route/Segment;)I

    move-result v0

    .line 102
    if-gez v0, :cond_0

    .line 103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "this segment is not in the route !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    return v0
.end method


# virtual methods
.method public getConsumeTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/amap/api/search/route/Segment;->strTimeConsume:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstPoint()Lcom/amap/api/search/core/LatLonPoint;
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/amap/api/search/route/Segment;->mShapes:[Lcom/amap/api/search/core/LatLonPoint;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getLastPoint()Lcom/amap/api/search/core/LatLonPoint;
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/amap/api/search/route/Segment;->mShapes:[Lcom/amap/api/search/core/LatLonPoint;

    iget-object v1, p0, Lcom/amap/api/search/route/Segment;->mShapes:[Lcom/amap/api/search/core/LatLonPoint;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/amap/api/search/route/Segment;->mLength:I

    return v0
.end method

.method public getLowerLeftPoint()Lcom/amap/api/search/core/LatLonPoint;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/amap/api/search/route/Segment;->a:Lcom/amap/api/search/core/LatLonPoint;

    if-nez v0, :cond_0

    .line 68
    invoke-direct {p0}, Lcom/amap/api/search/route/Segment;->a()V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/amap/api/search/route/Segment;->a:Lcom/amap/api/search/core/LatLonPoint;

    return-object v0
.end method

.method public getNext()Lcom/amap/api/search/route/Segment;
    .locals 2

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/amap/api/search/route/Segment;->b()I

    move-result v0

    .line 117
    iget-object v1, p0, Lcom/amap/api/search/route/Segment;->mRoute:Lcom/amap/api/search/route/Route;

    invoke-virtual {v1}, Lcom/amap/api/search/route/Route;->getStepCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/search/route/Segment;->mRoute:Lcom/amap/api/search/route/Route;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/amap/api/search/route/Route;->getStep(I)Lcom/amap/api/search/route/Segment;

    move-result-object v0

    goto :goto_0
.end method

.method public getPrev()Lcom/amap/api/search/route/Segment;
    .locals 2

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/amap/api/search/route/Segment;->b()I

    move-result v0

    .line 112
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/search/route/Segment;->mRoute:Lcom/amap/api/search/route/Route;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Lcom/amap/api/search/route/Route;->getStep(I)Lcom/amap/api/search/route/Segment;

    move-result-object v0

    goto :goto_0
.end method

.method public getShapes()[Lcom/amap/api/search/core/LatLonPoint;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/amap/api/search/route/Segment;->mShapes:[Lcom/amap/api/search/core/LatLonPoint;

    return-object v0
.end method

.method public getUpperRightPoint()Lcom/amap/api/search/core/LatLonPoint;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/amap/api/search/route/Segment;->b:Lcom/amap/api/search/core/LatLonPoint;

    if-nez v0, :cond_0

    .line 75
    invoke-direct {p0}, Lcom/amap/api/search/route/Segment;->a()V

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/amap/api/search/route/Segment;->b:Lcom/amap/api/search/core/LatLonPoint;

    return-object v0
.end method

.method public setConsumeTime(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/amap/api/search/route/Segment;->strTimeConsume:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setLength(I)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput p1, p0, Lcom/amap/api/search/route/Segment;->mLength:I

    .line 86
    return-void
.end method

.method public setRoute(Lcom/amap/api/search/route/Route;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/amap/api/search/route/Segment;->mRoute:Lcom/amap/api/search/route/Route;

    .line 90
    return-void
.end method

.method public setShapes([Lcom/amap/api/search/core/LatLonPoint;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/amap/api/search/route/Segment;->mShapes:[Lcom/amap/api/search/core/LatLonPoint;

    .line 94
    return-void
.end method
