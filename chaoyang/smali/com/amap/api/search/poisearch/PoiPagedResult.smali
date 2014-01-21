.class public final Lcom/amap/api/search/poisearch/PoiPagedResult;
.super Ljava/lang/Object;
.source "PoiPagedResult.java"


# instance fields
.field private a:I

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/search/poisearch/PoiItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Lcom/amap/api/search/poisearch/b;


# direct methods
.method private constructor <init>(Lcom/amap/api/search/poisearch/b;Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/search/poisearch/b;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/search/poisearch/PoiItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/amap/api/search/poisearch/PoiPagedResult;->c:Lcom/amap/api/search/poisearch/b;

    .line 24
    invoke-virtual {p1}, Lcom/amap/api/search/poisearch/b;->b()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/amap/api/search/poisearch/PoiPagedResult;->a(I)I

    move-result v0

    iput v0, p0, Lcom/amap/api/search/poisearch/PoiPagedResult;->a:I

    .line 25
    invoke-direct {p0, p2}, Lcom/amap/api/search/poisearch/PoiPagedResult;->a(Ljava/util/ArrayList;)V

    .line 26
    return-void
.end method

.method private a(I)I
    .locals 3
    .parameter

    .prologue
    const/16 v0, 0x1e

    .line 29
    iget-object v1, p0, Lcom/amap/api/search/poisearch/PoiPagedResult;->c:Lcom/amap/api/search/poisearch/b;

    invoke-virtual {v1}, Lcom/amap/api/search/poisearch/b;->a()I

    move-result v1

    .line 30
    add-int v2, p1, v1

    add-int/lit8 v2, v2, -0x1

    div-int v1, v2, v1

    .line 31
    if-le v1, v0, :cond_0

    .line 34
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static a(Lcom/amap/api/search/poisearch/b;Ljava/util/ArrayList;)Lcom/amap/api/search/poisearch/PoiPagedResult;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/search/poisearch/b;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/search/poisearch/PoiItem;",
            ">;)",
            "Lcom/amap/api/search/poisearch/PoiPagedResult;"
        }
    .end annotation

    .prologue
    .line 17
    new-instance v0, Lcom/amap/api/search/poisearch/PoiPagedResult;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/search/poisearch/PoiPagedResult;-><init>(Lcom/amap/api/search/poisearch/b;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/search/poisearch/PoiItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/search/poisearch/PoiPagedResult;->b:Ljava/util/ArrayList;

    .line 40
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/amap/api/search/poisearch/PoiPagedResult;->a:I

    if-gt v0, v1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/amap/api/search/poisearch/PoiPagedResult;->b:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    :cond_0
    iget v0, p0, Lcom/amap/api/search/poisearch/PoiPagedResult;->a:I

    if-lez v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/amap/api/search/poisearch/PoiPagedResult;->b:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 45
    :cond_1
    return-void
.end method

.method private b(I)Z
    .locals 1
    .parameter

    .prologue
    .line 60
    iget v0, p0, Lcom/amap/api/search/poisearch/PoiPagedResult;->a:I

    if-gt p1, v0, :cond_0

    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getBound()Lcom/amap/api/search/poisearch/PoiSearch$SearchBound;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/amap/api/search/poisearch/PoiPagedResult;->c:Lcom/amap/api/search/poisearch/b;

    invoke-virtual {v0}, Lcom/amap/api/search/poisearch/b;->i()Lcom/amap/api/search/poisearch/PoiSearch$SearchBound;

    move-result-object v0

    return-object v0
.end method

.method public getPage(I)Ljava/util/List;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/search/poisearch/PoiItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/search/core/AMapException;
        }
    .end annotation

    .prologue
    .line 71
    iget v0, p0, Lcom/amap/api/search/poisearch/PoiPagedResult;->a:I

    if-nez v0, :cond_1

    .line 72
    const/4 v0, 0x0

    .line 83
    :cond_0
    :goto_0
    return-object v0

    .line 74
    :cond_1
    invoke-direct {p0, p1}, Lcom/amap/api/search/poisearch/PoiPagedResult;->b(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "page out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_2
    invoke-virtual {p0, p1}, Lcom/amap/api/search/poisearch/PoiPagedResult;->getPageLocal(I)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 78
    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/amap/api/search/poisearch/PoiPagedResult;->c:Lcom/amap/api/search/poisearch/b;

    invoke-virtual {v0, p1}, Lcom/amap/api/search/poisearch/b;->a(I)V

    .line 80
    iget-object v0, p0, Lcom/amap/api/search/poisearch/PoiPagedResult;->c:Lcom/amap/api/search/poisearch/b;

    invoke-virtual {v0}, Lcom/amap/api/search/poisearch/b;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 81
    iget-object v1, p0, Lcom/amap/api/search/poisearch/PoiPagedResult;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getPageCount()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/amap/api/search/poisearch/PoiPagedResult;->a:I

    return v0
.end method

.method public getPageLocal(I)Ljava/util/List;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/search/poisearch/PoiItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/amap/api/search/poisearch/PoiPagedResult;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "page out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/amap/api/search/poisearch/PoiPagedResult;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getQuery()Lcom/amap/api/search/poisearch/PoiSearch$Query;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/amap/api/search/poisearch/PoiPagedResult;->c:Lcom/amap/api/search/poisearch/b;

    invoke-virtual {v0}, Lcom/amap/api/search/poisearch/b;->c()Lcom/amap/api/search/poisearch/PoiSearch$Query;

    move-result-object v0

    return-object v0
.end method

.method public getSearchSuggestions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/amap/api/search/poisearch/PoiPagedResult;->c:Lcom/amap/api/search/poisearch/b;

    invoke-virtual {v0}, Lcom/amap/api/search/poisearch/b;->j()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
