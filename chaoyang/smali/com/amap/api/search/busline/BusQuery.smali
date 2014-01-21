.class public Lcom/amap/api/search/busline/BusQuery;
.super Ljava/lang/Object;
.source "BusQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/search/busline/BusQuery$SearchType;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/amap/api/search/busline/BusQuery$SearchType;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amap/api/search/busline/BusQuery$SearchType;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 11
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/amap/api/search/busline/BusQuery;-><init>(Ljava/lang/String;Lcom/amap/api/search/busline/BusQuery$SearchType;Ljava/lang/String;)V

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amap/api/search/busline/BusQuery$SearchType;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/amap/api/search/busline/BusQuery;->a:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/amap/api/search/busline/BusQuery;->b:Lcom/amap/api/search/busline/BusQuery$SearchType;

    .line 17
    iput-object p3, p0, Lcom/amap/api/search/busline/BusQuery;->c:Ljava/lang/String;

    .line 18
    invoke-direct {p0}, Lcom/amap/api/search/busline/BusQuery;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty query"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_0
    return-void
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/amap/api/search/busline/BusQuery;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/amap/api/search/core/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCategory()Lcom/amap/api/search/busline/BusQuery$SearchType;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/amap/api/search/busline/BusQuery;->b:Lcom/amap/api/search/busline/BusQuery$SearchType;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/amap/api/search/busline/BusQuery;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/amap/api/search/busline/BusQuery;->a:Ljava/lang/String;

    return-object v0
.end method
