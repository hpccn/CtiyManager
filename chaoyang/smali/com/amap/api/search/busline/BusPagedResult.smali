.class public final Lcom/amap/api/search/busline/BusPagedResult;
.super Ljava/lang/Object;
.source "BusPagedResult.java"


# instance fields
.field private a:I

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/search/busline/BusLineItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Lcom/amap/api/search/busline/a;


# direct methods
.method private constructor <init>(Lcom/amap/api/search/busline/a;Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/search/busline/a;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/search/busline/BusLineItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/amap/api/search/busline/BusPagedResult;->c:Lcom/amap/api/search/busline/a;

    .line 22
    invoke-virtual {p1}, Lcom/amap/api/search/busline/a;->c()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/amap/api/search/busline/BusPagedResult;->a(I)I

    move-result v0

    iput v0, p0, Lcom/amap/api/search/busline/BusPagedResult;->a:I

    .line 23
    invoke-direct {p0, p2}, Lcom/amap/api/search/busline/BusPagedResult;->a(Ljava/util/ArrayList;)V

    .line 24
    return-void
.end method

.method private a(I)I
    .locals 3
    .parameter

    .prologue
    const/16 v0, 0x1e

    .line 27
    iget-object v1, p0, Lcom/amap/api/search/busline/BusPagedResult;->c:Lcom/amap/api/search/busline/a;

    invoke-virtual {v1}, Lcom/amap/api/search/busline/a;->a()I

    move-result v1

    .line 28
    add-int v2, p1, v1

    add-int/lit8 v2, v2, -0x1

    div-int v1, v2, v1

    .line 29
    if-le v1, v0, :cond_0

    .line 32
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static a(Lcom/amap/api/search/busline/a;Ljava/util/ArrayList;)Lcom/amap/api/search/busline/BusPagedResult;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/search/busline/a;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/search/busline/BusLineItem;",
            ">;)",
            "Lcom/amap/api/search/busline/BusPagedResult;"
        }
    .end annotation

    .prologue
    .line 15
    new-instance v0, Lcom/amap/api/search/busline/BusPagedResult;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/search/busline/BusPagedResult;-><init>(Lcom/amap/api/search/busline/a;Ljava/util/ArrayList;)V

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
            "Lcom/amap/api/search/busline/BusLineItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/search/busline/BusPagedResult;->b:Ljava/util/ArrayList;

    .line 38
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/amap/api/search/busline/BusPagedResult;->a:I

    if-gt v0, v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/amap/api/search/busline/BusPagedResult;->b:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41
    :cond_0
    iget v0, p0, Lcom/amap/api/search/busline/BusPagedResult;->a:I

    if-lez v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/amap/api/search/busline/BusPagedResult;->b:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 43
    :cond_1
    return-void
.end method

.method private b(I)Z
    .locals 1
    .parameter

    .prologue
    .line 54
    iget v0, p0, Lcom/amap/api/search/busline/BusPagedResult;->a:I

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
.method public getPage(I)Ljava/util/List;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/search/busline/BusLineItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/search/core/AMapException;
        }
    .end annotation

    .prologue
    .line 65
    iget v0, p0, Lcom/amap/api/search/busline/BusPagedResult;->a:I

    if-nez v0, :cond_1

    .line 66
    const/4 v0, 0x0

    .line 77
    :cond_0
    :goto_0
    return-object v0

    .line 68
    :cond_1
    invoke-direct {p0, p1}, Lcom/amap/api/search/busline/BusPagedResult;->b(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "page out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_2
    invoke-virtual {p0, p1}, Lcom/amap/api/search/busline/BusPagedResult;->getPageLocal(I)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 72
    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/amap/api/search/busline/BusPagedResult;->c:Lcom/amap/api/search/busline/a;

    invoke-virtual {v0, p1}, Lcom/amap/api/search/busline/a;->a(I)V

    .line 74
    iget-object v0, p0, Lcom/amap/api/search/busline/BusPagedResult;->c:Lcom/amap/api/search/busline/a;

    invoke-virtual {v0}, Lcom/amap/api/search/busline/a;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 75
    iget-object v1, p0, Lcom/amap/api/search/busline/BusPagedResult;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getPageCount()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/amap/api/search/busline/BusPagedResult;->a:I

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
            "Lcom/amap/api/search/busline/BusLineItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/amap/api/search/busline/BusPagedResult;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "page out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/amap/api/search/busline/BusPagedResult;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getQuery()Lcom/amap/api/search/busline/BusQuery;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/amap/api/search/busline/BusPagedResult;->c:Lcom/amap/api/search/busline/a;

    invoke-virtual {v0}, Lcom/amap/api/search/busline/a;->b()Lcom/amap/api/search/busline/BusQuery;

    move-result-object v0

    return-object v0
.end method
