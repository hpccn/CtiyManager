.class public Lcom/amap/api/search/route/Route;
.super Ljava/lang/Object;
.source "Route.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/search/route/Route$b;,
        Lcom/amap/api/search/route/Route$c;,
        Lcom/amap/api/search/route/Route$e;,
        Lcom/amap/api/search/route/Route$a;,
        Lcom/amap/api/search/route/Route$d;,
        Lcom/amap/api/search/route/Route$FromAndTo;
    }
.end annotation


# static fields
.field public static final BusDefault:I = 0x0

.field public static final BusLeaseChange:I = 0x2

.field public static final BusLeaseWalk:I = 0x3

.field public static final BusMostComfortable:I = 0x4

.field public static final BusSaveMoney:I = 0x1

.field public static final DrivingDefault:I = 0xa

.field public static final DrivingLeastDistance:I = 0xc

.field public static final DrivingNoFastRoad:I = 0xd

.field public static final DrivingSaveMoney:I = 0xb

.field public static final WalkDefault:I = 0x17


# instance fields
.field private a:Lcom/amap/api/search/core/LatLonPoint;

.field private b:Lcom/amap/api/search/core/LatLonPoint;

.field private c:I

.field public mHelper:Lcom/amap/api/search/route/Route$d;

.field protected mSegs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/search/route/Segment;",
            ">;"
        }
    .end annotation
.end field

.field protected mStartPlace:Ljava/lang/String;

.field protected mTargetPlace:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/amap/api/search/route/Route;->a:Lcom/amap/api/search/core/LatLonPoint;

    .line 33
    iput-object v0, p0, Lcom/amap/api/search/route/Route;->b:Lcom/amap/api/search/core/LatLonPoint;

    .line 537
    iput p1, p0, Lcom/amap/api/search/route/Route;->c:I

    .line 538
    invoke-static {p1}, Lcom/amap/api/search/route/Route;->isBus(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    new-instance v0, Lcom/amap/api/search/route/Route$a;

    invoke-direct {v0, p0}, Lcom/amap/api/search/route/Route$a;-><init>(Lcom/amap/api/search/route/Route;)V

    iput-object v0, p0, Lcom/amap/api/search/route/Route;->mHelper:Lcom/amap/api/search/route/Route$d;

    .line 547
    :goto_0
    return-void

    .line 540
    :cond_0
    invoke-static {p1}, Lcom/amap/api/search/route/Route;->isDrive(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 541
    new-instance v0, Lcom/amap/api/search/route/Route$b;

    invoke-direct {v0, p0}, Lcom/amap/api/search/route/Route$b;-><init>(Lcom/amap/api/search/route/Route;)V

    iput-object v0, p0, Lcom/amap/api/search/route/Route;->mHelper:Lcom/amap/api/search/route/Route$d;

    goto :goto_0

    .line 542
    :cond_1
    invoke-static {p1}, Lcom/amap/api/search/route/Route;->isWalk(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 543
    new-instance v0, Lcom/amap/api/search/route/Route$c;

    invoke-direct {v0, p0}, Lcom/amap/api/search/route/Route$c;-><init>(Lcom/amap/api/search/route/Route;)V

    iput-object v0, p0, Lcom/amap/api/search/route/Route;->mHelper:Lcom/amap/api/search/route/Route$d;

    goto :goto_0

    .line 545
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unkown mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static a(I)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 579
    const/16 v0, 0x2710

    if-le p0, v0, :cond_0

    .line 581
    div-int/lit16 v0, p0, 0x3e8

    .line 582
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u516c\u91cc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 602
    :goto_0
    return-object v0

    .line 585
    :cond_0
    const/16 v0, 0x3e8

    if-le p0, v0, :cond_1

    .line 586
    int-to-float v0, p0

    const/high16 v1, 0x447a

    div-float/2addr v0, v1

    .line 587
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "##0.0"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 588
    float-to-double v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 589
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u516c\u91cc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 592
    :cond_1
    const/16 v0, 0x64

    if-le p0, v0, :cond_2

    .line 593
    div-int/lit8 v0, p0, 0x32

    mul-int/lit8 v0, v0, 0x32

    .line 594
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u7c73"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 597
    :cond_2
    div-int/lit8 v0, p0, 0xa

    mul-int/lit8 v0, v0, 0xa

    .line 598
    if-nez v0, :cond_3

    .line 599
    const/16 v0, 0xa

    .line 602
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u7c73"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private b()V
    .locals 19

    .prologue
    .line 49
    const-wide v3, 0x7fefffffffffffffL

    .line 50
    const-wide/16 v10, 0x1

    .line 51
    const-wide v1, 0x7fefffffffffffffL

    .line 52
    const-wide/16 v8, 0x1

    .line 54
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amap/api/search/route/Route;->mSegs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move-wide v15, v1

    move-wide/from16 v17, v3

    move-wide/from16 v4, v17

    move-wide v2, v15

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/search/route/Segment;

    .line 55
    invoke-virtual {v1}, Lcom/amap/api/search/route/Segment;->getLowerLeftPoint()Lcom/amap/api/search/core/LatLonPoint;

    move-result-object v1

    .line 56
    invoke-virtual {v1}, Lcom/amap/api/search/core/LatLonPoint;->getLongitude()D

    move-result-wide v12

    .line 57
    invoke-virtual {v1}, Lcom/amap/api/search/core/LatLonPoint;->getLatitude()D

    move-result-wide v6

    .line 58
    cmpg-double v1, v12, v4

    if-gez v1, :cond_0

    move-wide v4, v12

    .line 61
    :cond_0
    cmpg-double v1, v6, v2

    if-gez v1, :cond_5

    move-wide v1, v6

    :goto_1
    move-wide v2, v1

    .line 64
    goto :goto_0

    .line 66
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amap/api/search/route/Route;->mSegs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move-wide v6, v8

    move-wide v8, v10

    :cond_2
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/search/route/Segment;

    .line 67
    invoke-virtual {v1}, Lcom/amap/api/search/route/Segment;->getUpperRightPoint()Lcom/amap/api/search/core/LatLonPoint;

    move-result-object v1

    .line 68
    invoke-virtual {v1}, Lcom/amap/api/search/core/LatLonPoint;->getLongitude()D

    move-result-wide v12

    .line 69
    invoke-virtual {v1}, Lcom/amap/api/search/core/LatLonPoint;->getLatitude()D

    move-result-wide v10

    .line 70
    cmpl-double v1, v12, v8

    if-lez v1, :cond_3

    move-wide v8, v12

    .line 74
    :cond_3
    cmpl-double v1, v10, v6

    if-lez v1, :cond_2

    move-wide v6, v10

    .line 75
    goto :goto_2

    .line 79
    :cond_4
    new-instance v1, Lcom/amap/api/search/core/LatLonPoint;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amap/api/search/core/LatLonPoint;-><init>(DD)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/amap/api/search/route/Route;->a:Lcom/amap/api/search/core/LatLonPoint;

    .line 80
    new-instance v1, Lcom/amap/api/search/core/LatLonPoint;

    invoke-direct {v1, v6, v7, v8, v9}, Lcom/amap/api/search/core/LatLonPoint;-><init>(DD)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/amap/api/search/route/Route;->b:Lcom/amap/api/search/core/LatLonPoint;

    .line 81
    return-void

    :cond_5
    move-wide v1, v2

    goto :goto_1
.end method

.method public static calculateRoute(Landroid/content/Context;Lcom/amap/api/search/route/Route$FromAndTo;I)Ljava/util/List;
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amap/api/search/route/Route$FromAndTo;",
            "I)",
            "Ljava/util/List",
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
    const/4 v4, 0x0

    .line 99
    invoke-static {p0}, Lcom/amap/api/search/core/b;->a(Landroid/content/Context;)Lcom/amap/api/search/core/b;

    .line 100
    new-instance v1, Lcom/amap/api/search/route/e;

    invoke-direct {v1, p1, p2}, Lcom/amap/api/search/route/e;-><init>(Lcom/amap/api/search/route/Route$FromAndTo;I)V

    .line 101
    invoke-static {p0}, Lcom/amap/api/search/core/d;->b(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v2

    .line 102
    invoke-static {p0}, Lcom/amap/api/search/core/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 104
    invoke-static {p2}, Lcom/amap/api/search/route/Route;->isBus(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    new-instance v0, Lcom/amap/api/search/route/a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amap/api/search/route/a;-><init>(Lcom/amap/api/search/route/e;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :goto_0
    invoke-virtual {v0}, Lcom/amap/api/search/route/d;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 106
    :cond_0
    invoke-static {p2}, Lcom/amap/api/search/route/Route;->isWalk(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    new-instance v0, Lcom/amap/api/search/route/f;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amap/api/search/route/f;-><init>(Lcom/amap/api/search/route/e;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_1
    new-instance v0, Lcom/amap/api/search/route/b;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amap/api/search/route/b;-><init>(Lcom/amap/api/search/route/e;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static calculateRoute(Landroid/content/Context;Lcom/amap/api/search/route/Route$FromAndTo;ILjava/util/List;)Ljava/util/List;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amap/api/search/route/Route$FromAndTo;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/search/core/LatLonPoint;",
            ">;)",
            "Ljava/util/List",
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
    const/4 v4, 0x0

    .line 117
    invoke-static {p0}, Lcom/amap/api/search/core/b;->a(Landroid/content/Context;)Lcom/amap/api/search/core/b;

    .line 118
    new-instance v1, Lcom/amap/api/search/route/e;

    invoke-direct {v1, p1, p2}, Lcom/amap/api/search/route/e;-><init>(Lcom/amap/api/search/route/Route$FromAndTo;I)V

    .line 119
    invoke-static {p0}, Lcom/amap/api/search/core/d;->b(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v2

    .line 120
    invoke-static {p0}, Lcom/amap/api/search/core/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 122
    invoke-static {p2}, Lcom/amap/api/search/route/Route;->isBus(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    new-instance v0, Lcom/amap/api/search/route/a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amap/api/search/route/a;-><init>(Lcom/amap/api/search/route/e;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :goto_0
    invoke-virtual {v0, p3}, Lcom/amap/api/search/route/d;->a(Ljava/util/List;)V

    .line 130
    invoke-virtual {v0}, Lcom/amap/api/search/route/d;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 124
    :cond_0
    invoke-static {p2}, Lcom/amap/api/search/route/Route;->isWalk(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    new-instance v0, Lcom/amap/api/search/route/f;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amap/api/search/route/f;-><init>(Lcom/amap/api/search/route/e;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_1
    new-instance v0, Lcom/amap/api/search/route/b;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amap/api/search/route/b;-><init>(Lcom/amap/api/search/route/e;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isBus(I)Z
    .locals 1
    .parameter

    .prologue
    .line 554
    if-ltz p0, :cond_0

    const/4 v0, 0x4

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDrive(I)Z
    .locals 1
    .parameter

    .prologue
    .line 550
    const/16 v0, 0xa

    if-lt p0, v0, :cond_0

    const/16 v0, 0xd

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWalk(I)Z
    .locals 1
    .parameter

    .prologue
    .line 560
    const/16 v0, 0x17

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/search/route/Segment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/amap/api/search/route/Route;->mSegs:Ljava/util/List;

    return-object v0
.end method

.method a(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/search/route/Segment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 154
    iput-object p1, p0, Lcom/amap/api/search/route/Route;->mSegs:Ljava/util/List;

    .line 155
    return-void
.end method

.method public getLength()I
    .locals 3

    .prologue
    .line 41
    const/4 v0, 0x0

    .line 42
    iget-object v1, p0, Lcom/amap/api/search/route/Route;->mSegs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/search/route/Segment;

    .line 43
    invoke-virtual {v0}, Lcom/amap/api/search/route/Segment;->getLength()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    .line 45
    :cond_0
    return v1
.end method

.method public getLowerLeftPoint()Lcom/amap/api/search/core/LatLonPoint;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/amap/api/search/route/Route;->a:Lcom/amap/api/search/core/LatLonPoint;

    if-nez v0, :cond_0

    .line 85
    invoke-direct {p0}, Lcom/amap/api/search/route/Route;->b()V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/amap/api/search/route/Route;->a:Lcom/amap/api/search/core/LatLonPoint;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/amap/api/search/route/Route;->c:I

    return v0
.end method

.method public getOverview()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/amap/api/search/route/Route;->mHelper:Lcom/amap/api/search/route/Route$d;

    invoke-virtual {v0}, Lcom/amap/api/search/route/Route$d;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSegmentIndex(Lcom/amap/api/search/route/Segment;)I
    .locals 1
    .parameter

    .prologue
    .line 174
    iget-object v0, p0, Lcom/amap/api/search/route/Route;->mSegs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getStartPlace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/amap/api/search/route/Route;->mStartPlace:Ljava/lang/String;

    return-object v0
.end method

.method public getStartPos()Lcom/amap/api/search/core/LatLonPoint;
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/amap/api/search/route/Route;->mSegs:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/search/route/Segment;

    invoke-virtual {v0}, Lcom/amap/api/search/route/Segment;->getFirstPoint()Lcom/amap/api/search/core/LatLonPoint;

    move-result-object v0

    return-object v0
.end method

.method public getStep(I)Lcom/amap/api/search/route/Segment;
    .locals 1
    .parameter

    .prologue
    .line 170
    iget-object v0, p0, Lcom/amap/api/search/route/Route;->mSegs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/search/route/Segment;

    return-object v0
.end method

.method public getStepCount()I
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/amap/api/search/route/Route;->mSegs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getStepedDescription(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 178
    iget-object v0, p0, Lcom/amap/api/search/route/Route;->mHelper:Lcom/amap/api/search/route/Route$d;

    invoke-virtual {v0, p1}, Lcom/amap/api/search/route/Route$d;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTargetPlace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/amap/api/search/route/Route;->mTargetPlace:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetPos()Lcom/amap/api/search/core/LatLonPoint;
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/amap/api/search/route/Route;->mSegs:Ljava/util/List;

    invoke-virtual {p0}, Lcom/amap/api/search/route/Route;->getStepCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/search/route/Segment;

    invoke-virtual {v0}, Lcom/amap/api/search/route/Segment;->getLastPoint()Lcom/amap/api/search/core/LatLonPoint;

    move-result-object v0

    return-object v0
.end method

.method public getUpperRightPoint()Lcom/amap/api/search/core/LatLonPoint;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/amap/api/search/route/Route;->b:Lcom/amap/api/search/core/LatLonPoint;

    if-nez v0, :cond_0

    .line 92
    invoke-direct {p0}, Lcom/amap/api/search/route/Route;->b()V

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/amap/api/search/route/Route;->b:Lcom/amap/api/search/core/LatLonPoint;

    return-object v0
.end method

.method public setStartPlace(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/amap/api/search/route/Route;->mStartPlace:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setTargetPlace(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/amap/api/search/route/Route;->mTargetPlace:Ljava/lang/String;

    .line 147
    return-void
.end method
