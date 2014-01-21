.class abstract Lcom/amap/api/search/route/Route$e;
.super Lcom/amap/api/search/route/Route$d;
.source "Route.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/search/route/Route;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "e"
.end annotation


# instance fields
.field final synthetic c:Lcom/amap/api/search/route/Route;


# direct methods
.method constructor <init>(Lcom/amap/api/search/route/Route;)V
    .locals 0
    .parameter

    .prologue
    .line 420
    iput-object p1, p0, Lcom/amap/api/search/route/Route$e;->c:Lcom/amap/api/search/route/Route;

    invoke-direct {p0, p1}, Lcom/amap/api/search/route/Route$d;-><init>(Lcom/amap/api/search/route/Route;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 424
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 425
    const-string v1, ""

    .line 427
    iget-object v0, p0, Lcom/amap/api/search/route/Route$e;->c:Lcom/amap/api/search/route/Route;

    invoke-virtual {v0}, Lcom/amap/api/search/route/Route;->getStepCount()I

    move-result v6

    move v2, v3

    move v4, v3

    .line 429
    :goto_0
    if-ge v2, v6, :cond_1

    .line 430
    iget-object v0, p0, Lcom/amap/api/search/route/Route$e;->c:Lcom/amap/api/search/route/Route;

    invoke-virtual {v0, v2}, Lcom/amap/api/search/route/Route;->getStep(I)Lcom/amap/api/search/route/Segment;

    move-result-object v0

    check-cast v0, Lcom/amap/api/search/route/DriveWalkSegment;

    .line 431
    invoke-virtual {v0}, Lcom/amap/api/search/route/DriveWalkSegment;->getLength()I

    move-result v7

    add-int/2addr v4, v7

    .line 432
    invoke-virtual {v0}, Lcom/amap/api/search/route/DriveWalkSegment;->getRoadName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/amap/api/search/core/d;->a(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v0}, Lcom/amap/api/search/route/DriveWalkSegment;->getRoadName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 434
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/search/core/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 436
    const-string v1, " -> "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 439
    :cond_0
    invoke-virtual {v0}, Lcom/amap/api/search/route/DriveWalkSegment;->getRoadName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 440
    invoke-virtual {v0}, Lcom/amap/api/search/route/DriveWalkSegment;->getRoadName()Ljava/lang/String;

    move-result-object v0

    .line 429
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 444
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/search/core/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 446
    const-string v0, "\n"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 451
    :cond_2
    const-string v0, "%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5927\u7ea6"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Lcom/amap/api/search/route/Route;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 453
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public a(I)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    .line 458
    invoke-super {p0, p1}, Lcom/amap/api/search/route/Route$d;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 459
    if-eqz v0, :cond_0

    .line 473
    :goto_0
    return-object v0

    .line 463
    :cond_0
    const-string v1, ""

    .line 464
    iget-object v0, p0, Lcom/amap/api/search/route/Route$e;->c:Lcom/amap/api/search/route/Route;

    invoke-virtual {v0, p1}, Lcom/amap/api/search/route/Route;->getStep(I)Lcom/amap/api/search/route/Segment;

    move-result-object v0

    check-cast v0, Lcom/amap/api/search/route/DriveWalkSegment;

    .line 465
    invoke-virtual {v0}, Lcom/amap/api/search/route/DriveWalkSegment;->getRoadName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/api/search/core/d;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 466
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/amap/api/search/route/DriveWalkSegment;->getRoadName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 469
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amap/api/search/route/DriveWalkSegment;->getActionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 470
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%s%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "\u5927\u7ea6"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Lcom/amap/api/search/route/DriveWalkSegment;->getLength()I

    move-result v0

    invoke-static {v0}, Lcom/amap/api/search/route/Route;->a(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
