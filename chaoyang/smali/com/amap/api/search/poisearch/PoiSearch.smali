.class public Lcom/amap/api/search/poisearch/PoiSearch;
.super Ljava/lang/Object;
.source "PoiSearch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/search/poisearch/PoiSearch$SearchBound;,
        Lcom/amap/api/search/poisearch/PoiSearch$Query;
    }
.end annotation


# instance fields
.field private a:Lcom/amap/api/search/poisearch/PoiSearch$SearchBound;

.field private b:Lcom/amap/api/search/poisearch/PoiSearch$Query;

.field private c:Landroid/content/Context;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/search/poisearch/PoiSearch$Query;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/16 v0, 0x14

    iput v0, p0, Lcom/amap/api/search/poisearch/PoiSearch;->d:I

    .line 19
    invoke-static {p1}, Lcom/amap/api/search/core/b;->a(Landroid/content/Context;)Lcom/amap/api/search/core/b;

    .line 20
    iput-object p1, p0, Lcom/amap/api/search/poisearch/PoiSearch;->c:Landroid/content/Context;

    .line 21
    invoke-virtual {p0, p2}, Lcom/amap/api/search/poisearch/PoiSearch;->setQuery(Lcom/amap/api/search/poisearch/PoiSearch$Query;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/amap/api/search/poisearch/PoiSearch$Query;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/16 v0, 0x14

    iput v0, p0, Lcom/amap/api/search/poisearch/PoiSearch;->d:I

    .line 25
    invoke-static {p1}, Lcom/amap/api/search/core/b;->a(Landroid/content/Context;)Lcom/amap/api/search/core/b;

    .line 26
    iput-object p1, p0, Lcom/amap/api/search/poisearch/PoiSearch;->c:Landroid/content/Context;

    .line 28
    invoke-virtual {p0, p3}, Lcom/amap/api/search/poisearch/PoiSearch;->setQuery(Lcom/amap/api/search/poisearch/PoiSearch$Query;)V

    .line 29
    return-void
.end method


# virtual methods
.method public getBound()Lcom/amap/api/search/poisearch/PoiSearch$SearchBound;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/amap/api/search/poisearch/PoiSearch;->a:Lcom/amap/api/search/poisearch/PoiSearch$SearchBound;

    return-object v0
.end method

.method public getQuery()Lcom/amap/api/search/poisearch/PoiSearch$Query;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/amap/api/search/poisearch/PoiSearch;->b:Lcom/amap/api/search/poisearch/PoiSearch$Query;

    return-object v0
.end method

.method public searchPOI()Lcom/amap/api/search/poisearch/PoiPagedResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/search/core/AMapException;
        }
    .end annotation

    .prologue
    .line 32
    new-instance v1, Lcom/amap/api/search/poisearch/b;

    new-instance v0, Lcom/amap/api/search/poisearch/c;

    iget-object v2, p0, Lcom/amap/api/search/poisearch/PoiSearch;->b:Lcom/amap/api/search/poisearch/PoiSearch$Query;

    iget-object v3, p0, Lcom/amap/api/search/poisearch/PoiSearch;->a:Lcom/amap/api/search/poisearch/PoiSearch$SearchBound;

    invoke-direct {v0, v2, v3}, Lcom/amap/api/search/poisearch/c;-><init>(Lcom/amap/api/search/poisearch/PoiSearch$Query;Lcom/amap/api/search/poisearch/PoiSearch$SearchBound;)V

    iget-object v2, p0, Lcom/amap/api/search/poisearch/PoiSearch;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/search/core/d;->b(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/search/poisearch/PoiSearch;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/amap/api/search/core/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/amap/api/search/poisearch/b;-><init>(Lcom/amap/api/search/poisearch/c;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/amap/api/search/poisearch/b;->a(I)V

    .line 36
    iget v0, p0, Lcom/amap/api/search/poisearch/PoiSearch;->d:I

    invoke-virtual {v1, v0}, Lcom/amap/api/search/poisearch/b;->b(I)V

    .line 37
    invoke-virtual {v1}, Lcom/amap/api/search/poisearch/b;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lcom/amap/api/search/poisearch/PoiPagedResult;->a(Lcom/amap/api/search/poisearch/b;Ljava/util/ArrayList;)Lcom/amap/api/search/poisearch/PoiPagedResult;

    move-result-object v0

    return-object v0
.end method

.method public setBound(Lcom/amap/api/search/poisearch/PoiSearch$SearchBound;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/amap/api/search/poisearch/PoiSearch;->a:Lcom/amap/api/search/poisearch/PoiSearch$SearchBound;

    .line 58
    return-void
.end method

.method public setPageSize(I)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput p1, p0, Lcom/amap/api/search/poisearch/PoiSearch;->d:I

    .line 42
    return-void
.end method

.method public setPoiNumber(I)V
    .locals 0
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/amap/api/search/poisearch/PoiSearch;->setPageSize(I)V

    .line 50
    return-void
.end method

.method public setQuery(Lcom/amap/api/search/poisearch/PoiSearch$Query;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/amap/api/search/poisearch/PoiSearch;->b:Lcom/amap/api/search/poisearch/PoiSearch$Query;

    .line 54
    return-void
.end method
