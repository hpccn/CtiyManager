.class public abstract Lcom/amap/api/search/route/d;
.super Lcom/amap/api/search/core/h;
.source "RouteHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/search/core/h",
        "<",
        "Lcom/amap/api/search/route/e;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/amap/api/search/route/Route;",
        ">;>;"
    }
.end annotation


# instance fields
.field protected j:Ljava/lang/String;

.field protected k:Ljava/lang/String;

.field protected l:Lcom/amap/api/search/core/LatLonPoint;

.field protected m:Lcom/amap/api/search/core/LatLonPoint;


# direct methods
.method public constructor <init>(Lcom/amap/api/search/route/e;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amap/api/search/core/h;-><init>(Ljava/lang/Object;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    const-string v0, "\u8d77\u70b9"

    iput-object v0, p0, Lcom/amap/api/search/route/d;->j:Ljava/lang/String;

    .line 17
    const-string v0, "\u76ee\u7684\u5730"

    iput-object v0, p0, Lcom/amap/api/search/route/d;->k:Ljava/lang/String;

    .line 18
    iget-object v0, p0, Lcom/amap/api/search/route/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/search/route/e;

    iget-object v0, v0, Lcom/amap/api/search/route/e;->a:Lcom/amap/api/search/route/Route$FromAndTo;

    iget-object v0, v0, Lcom/amap/api/search/route/Route$FromAndTo;->mFrom:Lcom/amap/api/search/core/LatLonPoint;

    iput-object v0, p0, Lcom/amap/api/search/route/d;->l:Lcom/amap/api/search/core/LatLonPoint;

    .line 19
    iget-object v0, p0, Lcom/amap/api/search/route/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/search/route/e;

    iget-object v0, v0, Lcom/amap/api/search/route/e;->a:Lcom/amap/api/search/route/Route$FromAndTo;

    iget-object v0, v0, Lcom/amap/api/search/route/Route$FromAndTo;->mTo:Lcom/amap/api/search/core/LatLonPoint;

    iput-object v0, p0, Lcom/amap/api/search/route/d;->m:Lcom/amap/api/search/core/LatLonPoint;

    .line 24
    return-void
.end method


# virtual methods
.method protected a(Ljava/io/InputStream;)Ljava/util/ArrayList;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/search/route/Route;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/search/core/AMapException;
        }
    .end annotation

    .prologue
    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract a(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/search/core/LatLonPoint;",
            ">;)V"
        }
    .end annotation
.end method

.method protected a([Ljava/lang/String;)[Lcom/amap/api/search/core/LatLonPoint;
    .locals 9
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 44
    array-length v1, p1

    div-int/lit8 v1, v1, 0x2

    new-array v2, v1, [Lcom/amap/api/search/core/LatLonPoint;

    .line 47
    array-length v3, p1

    move v1, v0

    .line 49
    :goto_0
    add-int/lit8 v4, v3, -0x1

    if-ge v1, v4, :cond_0

    .line 50
    aget-object v4, p1, v1

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 51
    add-int/lit8 v6, v1, 0x1

    aget-object v6, p1, v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 52
    new-instance v8, Lcom/amap/api/search/core/LatLonPoint;

    invoke-direct {v8, v6, v7, v4, v5}, Lcom/amap/api/search/core/LatLonPoint;-><init>(DD)V

    aput-object v8, v2, v0

    .line 53
    add-int/lit8 v1, v1, 0x2

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_0
    return-object v2
.end method

.method protected synthetic b(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/search/core/AMapException;
        }
    .end annotation

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/amap/api/search/route/d;->a(Ljava/io/InputStream;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
