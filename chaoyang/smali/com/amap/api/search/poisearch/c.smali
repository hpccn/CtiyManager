.class Lcom/amap/api/search/poisearch/c;
.super Ljava/lang/Object;
.source "QueryInternal.java"


# instance fields
.field public a:Lcom/amap/api/search/poisearch/PoiSearch$Query;

.field public b:Lcom/amap/api/search/poisearch/PoiSearch$SearchBound;


# direct methods
.method public constructor <init>(Lcom/amap/api/search/poisearch/PoiSearch$Query;Lcom/amap/api/search/poisearch/PoiSearch$SearchBound;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/amap/api/search/poisearch/c;->a:Lcom/amap/api/search/poisearch/PoiSearch$Query;

    .line 11
    iput-object p2, p0, Lcom/amap/api/search/poisearch/c;->b:Lcom/amap/api/search/poisearch/PoiSearch$SearchBound;

    .line 12
    return-void
.end method
