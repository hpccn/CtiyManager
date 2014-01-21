.class public Lcom/amap/api/search/route/e;
.super Ljava/lang/Object;
.source "RouteParam.java"


# instance fields
.field public a:Lcom/amap/api/search/route/Route$FromAndTo;

.field public b:I


# direct methods
.method public constructor <init>(Lcom/amap/api/search/route/Route$FromAndTo;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/amap/api/search/route/e;->a:Lcom/amap/api/search/route/Route$FromAndTo;

    .line 21
    iput p2, p0, Lcom/amap/api/search/route/e;->b:I

    .line 22
    return-void
.end method


# virtual methods
.method public a()D
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/amap/api/search/route/e;->a:Lcom/amap/api/search/route/Route$FromAndTo;

    iget-object v0, v0, Lcom/amap/api/search/route/Route$FromAndTo;->mFrom:Lcom/amap/api/search/core/LatLonPoint;

    invoke-virtual {v0}, Lcom/amap/api/search/core/LatLonPoint;->getLongitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public b()D
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/amap/api/search/route/e;->a:Lcom/amap/api/search/route/Route$FromAndTo;

    iget-object v0, v0, Lcom/amap/api/search/route/Route$FromAndTo;->mTo:Lcom/amap/api/search/core/LatLonPoint;

    invoke-virtual {v0}, Lcom/amap/api/search/core/LatLonPoint;->getLongitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public c()D
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/amap/api/search/route/e;->a:Lcom/amap/api/search/route/Route$FromAndTo;

    iget-object v0, v0, Lcom/amap/api/search/route/Route$FromAndTo;->mFrom:Lcom/amap/api/search/core/LatLonPoint;

    invoke-virtual {v0}, Lcom/amap/api/search/core/LatLonPoint;->getLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public d()D
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/amap/api/search/route/e;->a:Lcom/amap/api/search/route/Route$FromAndTo;

    iget-object v0, v0, Lcom/amap/api/search/route/Route$FromAndTo;->mTo:Lcom/amap/api/search/core/LatLonPoint;

    invoke-virtual {v0}, Lcom/amap/api/search/core/LatLonPoint;->getLatitude()D

    move-result-wide v0

    return-wide v0
.end method
