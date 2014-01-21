.class abstract Lcom/amap/api/search/route/c;
.super Lcom/amap/api/search/route/d;
.source "DriveWalkHandler.java"


# direct methods
.method public constructor <init>(Lcom/amap/api/search/route/e;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amap/api/search/route/d;-><init>(Lcom/amap/api/search/route/e;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
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
    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Lcom/amap/api/search/route/Route;)V
    .locals 4
    .parameter

    .prologue
    .line 22
    invoke-virtual {p1}, Lcom/amap/api/search/route/Route;->getStepCount()I

    move-result v0

    .line 23
    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-lez v2, :cond_0

    .line 24
    invoke-virtual {p1, v2}, Lcom/amap/api/search/route/Route;->getStep(I)Lcom/amap/api/search/route/Segment;

    move-result-object v0

    check-cast v0, Lcom/amap/api/search/route/DriveSegment;

    .line 25
    add-int/lit8 v1, v2, -0x1

    invoke-virtual {p1, v1}, Lcom/amap/api/search/route/Route;->getStep(I)Lcom/amap/api/search/route/Segment;

    move-result-object v1

    check-cast v1, Lcom/amap/api/search/route/DriveSegment;

    .line 28
    invoke-virtual {v1}, Lcom/amap/api/search/route/DriveSegment;->getActionCode()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/amap/api/search/route/DriveSegment;->setActionCode(I)V

    .line 29
    invoke-virtual {v1}, Lcom/amap/api/search/route/DriveSegment;->getActionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/search/route/DriveSegment;->setActionDescription(Ljava/lang/String;)V

    .line 23
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    .line 32
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/amap/api/search/route/Route;->getStep(I)Lcom/amap/api/search/route/Segment;

    move-result-object v0

    check-cast v0, Lcom/amap/api/search/route/DriveSegment;

    .line 33
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/search/route/DriveSegment;->setActionCode(I)V

    .line 34
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/amap/api/search/route/DriveSegment;->setActionDescription(Ljava/lang/String;)V

    .line 35
    return-void
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
    .line 11
    invoke-virtual {p0, p1}, Lcom/amap/api/search/route/c;->a(Ljava/io/InputStream;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amap/api/search/core/g;->a()Lcom/amap/api/search/core/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/search/core/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/route/simple"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
