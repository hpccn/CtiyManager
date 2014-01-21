.class public Lcom/amap/api/search/poisearch/PoiSearch$Query;
.super Ljava/lang/Object;
.source "PoiSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/search/poisearch/PoiSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Query"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/amap/api/search/poisearch/PoiSearch$Query;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/amap/api/search/poisearch/PoiSearch$Query;->a:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Lcom/amap/api/search/poisearch/PoiSearch$Query;->b:Ljava/lang/String;

    .line 80
    iput-object p3, p0, Lcom/amap/api/search/poisearch/PoiSearch$Query;->c:Ljava/lang/String;

    .line 81
    invoke-direct {p0}, Lcom/amap/api/search/poisearch/PoiSearch$Query;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty  query and catagory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    return-void
.end method

.method private b()Z
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/amap/api/search/poisearch/PoiSearch$Query;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/amap/api/search/core/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/search/poisearch/PoiSearch$Query;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/amap/api/search/core/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    const-string v0, ""

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/amap/api/search/poisearch/PoiSearch$Query;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/search/poisearch/PoiSearch$Query;->b:Ljava/lang/String;

    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/search/poisearch/PoiSearch$Query;->b:Ljava/lang/String;

    const-string v1, "00|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/search/poisearch/PoiSearch$Query;->a()Ljava/lang/String;

    move-result-object v0

    .line 100
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/search/poisearch/PoiSearch$Query;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/amap/api/search/poisearch/PoiSearch$Query;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/amap/api/search/poisearch/PoiSearch$Query;->a:Ljava/lang/String;

    return-object v0
.end method
