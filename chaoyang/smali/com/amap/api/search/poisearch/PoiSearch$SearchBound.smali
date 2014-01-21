.class public Lcom/amap/api/search/poisearch/PoiSearch$SearchBound;
.super Ljava/lang/Object;
.source "PoiSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/search/poisearch/PoiSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchBound"
.end annotation


# static fields
.field public static final BOUND_SHAPE:Ljava/lang/String; = "bound"

.field public static final ELLIPSE_SHAPE:Ljava/lang/String; = "Ellipse"

.field public static final POLYGON_SHAPE:Ljava/lang/String; = "Polygon"

.field public static final RECTANGLE_SHAPE:Ljava/lang/String; = "Rectangle"


# instance fields
.field private a:Lcom/amap/api/search/core/LatLonPoint;

.field private b:Lcom/amap/api/search/core/LatLonPoint;

.field private c:I

.field private d:Lcom/amap/api/search/core/LatLonPoint;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amap/api/search/core/LatLonPoint;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const-string v0, "bound"

    iput-object v0, p0, Lcom/amap/api/search/poisearch/PoiSearch$SearchBound;->e:Ljava/lang/String;

    .line 126
    iput p2, p0, Lcom/amap/api/search/poisearch/PoiSearch$SearchBound;->c:I

    .line 127
    iput-object p1, p0, Lcom/amap/api/search/poisearch/PoiSearch$SearchBound;->d:Lcom/amap/api/search/core/LatLonPoint;

    .line 128
    invoke-static {p2}, Lcom/amap/api/search/core/d;->a(I)D

    move-result-wide v2

    invoke-static {p2}, Lcom/amap/api/search/core/d;->a(I)D

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/search/poisearch/PoiSearch$SearchBound;->a(Lcom/amap/api/search/core/LatLonPoint;DD)V

    .line 130
    return-void
.end method

.method public constructor <init>(Lcom/amap/api/search/core/LatLonPoint;Lcom/amap/api/search/core/LatLonPoint;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const-string v0, "Rectangle"

    iput-object v0, p0, Lcom/amap/api/search/poisearch/PoiSearch$SearchBound;->e:Ljava/lang/String;

    .line 134
    invoke-direct {p0, p1, p2}, Lcom/amap/api/search/poisearch/PoiSearch$SearchBound;->a(Lcom/amap/api/search/core/LatLonPoint;Lcom/amap/api/search/core/LatLonPoint;)V

    .line 135
    return-void
.end method

.method private a(Lcom/amap/api/search/core/LatLonPoint;DD)V
    .locals 13
    .parameter
    .parameter
    .parameter

    .prologue
    .line 152
    const-wide/high16 v0, 0x4000

    div-double v0, p2, v0

    .line 153
    const-wide/high16 v2, 0x4000

    div-double v2, p4, v2

    .line 155
    invoke-virtual {p1}, Lcom/amap/api/search/core/LatLonPoint;->getLatitude()D

    move-result-wide v4

    .line 156
    invoke-virtual {p1}, Lcom/amap/api/search/core/LatLonPoint;->getLongitude()D

    move-result-wide v6

    .line 157
    new-instance v8, Lcom/amap/api/search/core/LatLonPoint;

    sub-double v9, v4, v0

    sub-double v11, v6, v2

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/amap/api/search/core/LatLonPoint;-><init>(DD)V

    new-instance v9, Lcom/amap/api/search/core/LatLonPoint;

    add-double/2addr v0, v4

    add-double/2addr v2, v6

    invoke-direct {v9, v0, v1, v2, v3}, Lcom/amap/api/search/core/LatLonPoint;-><init>(DD)V

    invoke-direct {p0, v8, v9}, Lcom/amap/api/search/poisearch/PoiSearch$SearchBound;->a(Lcom/amap/api/search/core/LatLonPoint;Lcom/amap/api/search/core/LatLonPoint;)V

    .line 159
    return-void
.end method

.method private a(Lcom/amap/api/search/core/LatLonPoint;Lcom/amap/api/search/core/LatLonPoint;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const-wide/high16 v7, 0x4000

    .line 138
    iput-object p1, p0, Lcom/amap/api/search/poisearch/PoiSearch$SearchBound;->a:Lcom/amap/api/search/core/LatLonPoint;

    .line 139
    iput-object p2, p0, Lcom/amap/api/search/poisearch/PoiSearch$SearchBound;->b:Lcom/amap/api/search/core/LatLonPoint;

    .line 141
    iget-object v0, p0, Lcom/amap/api/search/poisearch/PoiSearch$SearchBound;->a:Lcom/amap/api/search/core/LatLonPoint;

    invoke-virtual {v0}, Lcom/amap/api/search/core/LatLonPoint;->getLatitude()D

    move-result-wide v0

    iget-object v2, p0, Lcom/amap/api/search/poisearch/PoiSearch$SearchBound;->b:Lcom/amap/api/search/core/LatLonPoint;

    invoke-virtual {v2}, Lcom/amap/api/search/core/LatLonPoint;->getLatitude()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/search/poisearch/PoiSearch$SearchBound;->a:Lcom/amap/api/search/core/LatLonPoint;

    invoke-virtual {v0}, Lcom/amap/api/search/core/LatLonPoint;->getLongitude()D

    move-result-wide v0

    iget-object v2, p0, Lcom/amap/api/search/poisearch/PoiSearch$SearchBound;->b:Lcom/amap/api/search/core/LatLonPoint;

    invoke-virtual {v2}, Lcom/amap/api/search/core/LatLonPoint;->getLongitude()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    .line 143
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid rect "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_1
    new-instance v0, Lcom/amap/api/search/core/LatLonPoint;

    iget-object v1, p0, Lcom/amap/api/search/poisearch/PoiSearch$SearchBound;->a:Lcom/amap/api/search/core/LatLonPoint;

    invoke-virtual {v1}, Lcom/amap/api/search/core/LatLonPoint;->getLatitude()D

    move-result-wide v1

    iget-object v3, p0, Lcom/amap/api/search/poisearch/PoiSearch$SearchBound;->b:Lcom/amap/api/search/core/LatLonPoint;

    invoke-virtual {v3}, Lcom/amap/api/search/core/LatLonPoint;->getLatitude()D

    move-result-wide v3

    add-double/2addr v1, v3

    div-double/2addr v1, v7

    iget-object v3, p0, Lcom/amap/api/search/poisearch/PoiSearch$SearchBound;->a:Lcom/amap/api/search/core/LatLonPoint;

    invoke-virtual {v3}, Lcom/amap/api/search/core/LatLonPoint;->getLongitude()D

    move-result-wide v3

    iget-object v5, p0, Lcom/amap/api/search/poisearch/PoiSearch$SearchBound;->b:Lcom/amap/api/search/core/LatLonPoint;

    invoke-virtual {v5}, Lcom/amap/api/search/core/LatLonPoint;->getLongitude()D

    move-result-wide v5

    add-double/2addr v3, v5

    div-double/2addr v3, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amap/api/search/core/LatLonPoint;-><init>(DD)V

    iput-object v0, p0, Lcom/amap/api/search/poisearch/PoiSearch$SearchBound;->d:Lcom/amap/api/search/core/LatLonPoint;

    .line 148
    return-void
.end method


# virtual methods
.method public getCenter()Lcom/amap/api/search/core/LatLonPoint;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/amap/api/search/poisearch/PoiSearch$SearchBound;->d:Lcom/amap/api/search/core/LatLonPoint;

    return-object v0
.end method

.method public getLatSpanInMeter()D
    .locals 4

    .prologue
    .line 178
    iget-object v0, p0, Lcom/amap/api/search/poisearch/PoiSearch$SearchBound;->b:Lcom/amap/api/search/core/LatLonPoint;

    invoke-virtual {v0}, Lcom/amap/api/search/core/LatLonPoint;->getLatitude()D

    move-result-wide v0

    iget-object v2, p0, Lcom/amap/api/search/poisearch/PoiSearch$SearchBound;->a:Lcom/amap/api/search/core/LatLonPoint;

    invoke-virtual {v2}, Lcom/amap/api/search/core/LatLonPoint;->getLatitude()D

    move-result-wide v2

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public getLonSpanInMeter()D
    .locals 4

    .prologue
    .line 174
    iget-object v0, p0, Lcom/amap/api/search/poisearch/PoiSearch$SearchBound;->b:Lcom/amap/api/search/core/LatLonPoint;

    invoke-virtual {v0}, Lcom/amap/api/search/core/LatLonPoint;->getLongitude()D

    move-result-wide v0

    iget-object v2, p0, Lcom/amap/api/search/poisearch/PoiSearch$SearchBound;->a:Lcom/amap/api/search/core/LatLonPoint;

    invoke-virtual {v2}, Lcom/amap/api/search/core/LatLonPoint;->getLongitude()D

    move-result-wide v2

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public getLowerLeft()Lcom/amap/api/search/core/LatLonPoint;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/amap/api/search/poisearch/PoiSearch$SearchBound;->a:Lcom/amap/api/search/core/LatLonPoint;

    return-object v0
.end method

.method public getRange()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/amap/api/search/poisearch/PoiSearch$SearchBound;->c:I

    return v0
.end method

.method public getShape()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/amap/api/search/poisearch/PoiSearch$SearchBound;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getUpperRight()Lcom/amap/api/search/core/LatLonPoint;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/amap/api/search/poisearch/PoiSearch$SearchBound;->b:Lcom/amap/api/search/core/LatLonPoint;

    return-object v0
.end method
