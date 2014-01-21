.class public Lcom/amap/api/search/route/Route$a;
.super Lcom/amap/api/search/route/Route$d;
.source "Route.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/search/route/Route;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/search/route/Route;


# direct methods
.method public constructor <init>(Lcom/amap/api/search/route/Route;)V
    .locals 0
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, Lcom/amap/api/search/route/Route$a;->a:Lcom/amap/api/search/route/Route;

    invoke-direct {p0, p1}, Lcom/amap/api/search/route/Route$d;-><init>(Lcom/amap/api/search/route/Route;)V

    return-void
.end method

.method private b(I)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 310
    const-string v0, "\u6b65\u884c"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u53bb\u5f80"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    iget-object v0, p0, Lcom/amap/api/search/route/Route$a;->a:Lcom/amap/api/search/route/Route;

    invoke-virtual {v0}, Lcom/amap/api/search/route/Route;->getStepCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 313
    const-string v0, "\u76ee\u7684\u5730"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n\u5927\u7ea6"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/amap/api/search/route/Route$a;->a:Lcom/amap/api/search/route/Route;

    invoke-virtual {v2, p1}, Lcom/amap/api/search/route/Route;->getStep(I)Lcom/amap/api/search/route/Segment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/search/route/Segment;->getLength()I

    move-result v2

    invoke-static {v2}, Lcom/amap/api/search/route/Route;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 315
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/amap/api/search/route/Route$a;->a:Lcom/amap/api/search/route/Route;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v0, v3}, Lcom/amap/api/search/route/Route;->getStep(I)Lcom/amap/api/search/route/Segment;

    move-result-object v0

    check-cast v0, Lcom/amap/api/search/route/BusSegment;

    invoke-virtual {v0}, Lcom/amap/api/search/route/BusSegment;->getLineName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u8f66\u7ad9"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private c(I)Ljava/lang/String;
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 326
    iget-object v0, p0, Lcom/amap/api/search/route/Route$a;->a:Lcom/amap/api/search/route/Route;

    invoke-virtual {v0, p1}, Lcom/amap/api/search/route/Route;->getStep(I)Lcom/amap/api/search/route/Segment;

    move-result-object v0

    check-cast v0, Lcom/amap/api/search/route/BusSegment;

    .line 327
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 328
    const-string v2, "%s ( %s -- %s ) - %s%s\n"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/amap/api/search/route/BusSegment;->getLineName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0}, Lcom/amap/api/search/route/BusSegment;->getFirstStationName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0}, Lcom/amap/api/search/route/BusSegment;->getLastStationName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v0}, Lcom/amap/api/search/route/BusSegment;->getLastStationName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    const-string v4, "\u65b9\u5411"

    aput-object v4, v3, v9

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 332
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4e0a\u8f66 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amap/api/search/route/BusSegment;->getOnStationName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 333
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4e0b\u8f66 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amap/api/search/route/BusSegment;->getOffStationName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 334
    const-string v2, "%s%d%s (%s)"

    new-array v3, v9, [Ljava/lang/Object;

    const-string v4, "\u516c\u4ea4"

    aput-object v4, v3, v5

    invoke-virtual {v0}, Lcom/amap/api/search/route/BusSegment;->getStopNumber()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const-string v4, "\u7ad9"

    aput-object v4, v3, v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5927\u7ea6"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/amap/api/search/route/BusSegment;->getLength()I

    move-result v0

    invoke-static {v0}, Lcom/amap/api/search/route/Route;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 338
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 251
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    iget-object v0, p0, Lcom/amap/api/search/route/Route$a;->a:Lcom/amap/api/search/route/Route;

    invoke-virtual {v0}, Lcom/amap/api/search/route/Route;->getStepCount()I

    move-result v6

    move v2, v3

    move v4, v1

    .line 255
    :goto_0
    if-ge v2, v6, :cond_1

    .line 256
    iget-object v0, p0, Lcom/amap/api/search/route/Route$a;->a:Lcom/amap/api/search/route/Route;

    invoke-virtual {v0, v2}, Lcom/amap/api/search/route/Route;->getStep(I)Lcom/amap/api/search/route/Segment;

    move-result-object v0

    check-cast v0, Lcom/amap/api/search/route/BusSegment;

    .line 257
    if-eq v2, v3, :cond_0

    .line 258
    const-string v7, " -> "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    :cond_0
    invoke-virtual {v0}, Lcom/amap/api/search/route/BusSegment;->getLineName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v0}, Lcom/amap/api/search/route/BusSegment;->getLength()I

    move-result v0

    add-int/2addr v4, v0

    .line 255
    add-int/lit8 v0, v2, 0x2

    move v2, v0

    goto :goto_0

    .line 264
    :cond_1
    if-eqz v4, :cond_2

    .line 265
    const-string v0, "\n"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    move v0, v1

    move v2, v1

    .line 268
    :goto_1
    if-ge v0, v6, :cond_3

    .line 269
    iget-object v7, p0, Lcom/amap/api/search/route/Route$a;->a:Lcom/amap/api/search/route/Route;

    invoke-virtual {v7, v0}, Lcom/amap/api/search/route/Route;->getStep(I)Lcom/amap/api/search/route/Segment;

    move-result-object v7

    .line 270
    invoke-virtual {v7}, Lcom/amap/api/search/route/Segment;->getLength()I

    move-result v7

    add-int/2addr v2, v7

    .line 268
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 273
    :cond_3
    const-string v0, "%s%s  %s%s"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "\u4e58\u8f66"

    aput-object v7, v6, v1

    invoke-static {v4}, Lcom/amap/api/search/route/Route;->a(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v3

    const/4 v1, 0x2

    const-string v3, "\u6b65\u884c"

    aput-object v3, v6, v1

    const/4 v1, 0x3

    invoke-static {v2}, Lcom/amap/api/search/route/Route;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v1

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 282
    invoke-super {p0, p1}, Lcom/amap/api/search/route/Route$d;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 283
    if-eqz v0, :cond_0

    .line 290
    :goto_0
    return-object v0

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/amap/api/search/route/Route$a;->a:Lcom/amap/api/search/route/Route;

    invoke-virtual {v0, p1}, Lcom/amap/api/search/route/Route;->getStep(I)Lcom/amap/api/search/route/Segment;

    move-result-object v0

    instance-of v0, v0, Lcom/amap/api/search/route/BusSegment;

    if-eqz v0, :cond_1

    .line 287
    invoke-direct {p0, p1}, Lcom/amap/api/search/route/Route$a;->c(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 290
    :cond_1
    invoke-direct {p0, p1}, Lcom/amap/api/search/route/Route$a;->b(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
