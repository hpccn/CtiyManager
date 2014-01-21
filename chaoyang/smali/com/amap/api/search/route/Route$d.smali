.class public abstract Lcom/amap/api/search/route/Route$d;
.super Ljava/lang/Object;
.source "Route.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/search/route/Route;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "d"
.end annotation


# instance fields
.field final synthetic b:Lcom/amap/api/search/route/Route;


# direct methods
.method public constructor <init>(Lcom/amap/api/search/route/Route;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/amap/api/search/route/Route$d;->b:Lcom/amap/api/search/route/Route;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 202
    const/4 v0, 0x0

    .line 203
    if-nez p1, :cond_1

    .line 204
    iget-object v0, p0, Lcom/amap/api/search/route/Route$d;->b:Lcom/amap/api/search/route/Route;

    iget-object v0, v0, Lcom/amap/api/search/route/Route;->mStartPlace:Ljava/lang/String;

    .line 208
    :cond_0
    :goto_0
    return-object v0

    .line 205
    :cond_1
    iget-object v1, p0, Lcom/amap/api/search/route/Route$d;->b:Lcom/amap/api/search/route/Route;

    invoke-virtual {v1}, Lcom/amap/api/search/route/Route;->getStepCount()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 206
    iget-object v0, p0, Lcom/amap/api/search/route/Route$d;->b:Lcom/amap/api/search/route/Route;

    iget-object v0, v0, Lcom/amap/api/search/route/Route;->mTargetPlace:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public a(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lcom/amap/api/search/route/Route$d;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
