.class public Lcom/amap/api/a/b/f;
.super Ljava/lang/Object;
.source "Triangulate.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a([Lcom/autonavi/amap/mapcore/FPoint;)F
    .locals 7
    .parameter

    .prologue
    .line 11
    array-length v3, p0

    .line 12
    const/4 v2, 0x0

    .line 13
    add-int/lit8 v1, v3, -0x1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    .line 14
    aget-object v4, p0, v1

    iget v4, v4, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    aget-object v5, p0, v0

    iget v5, v5, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    mul-float/2addr v4, v5

    aget-object v5, p0, v0

    iget v5, v5, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    aget-object v1, p0, v1

    iget v1, v1, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    mul-float/2addr v1, v5

    sub-float v1, v4, v1

    add-float/2addr v2, v1

    .line 13
    add-int/lit8 v1, v0, 0x1

    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_0

    .line 16
    :cond_0
    const/high16 v0, 0x3f00

    mul-float/2addr v0, v2

    return v0
.end method

.method static a(FFFFFFFF)Z
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    sub-float v0, p4, p2

    .line 29
    sub-float v1, p5, p3

    .line 30
    sub-float v2, p0, p4

    .line 31
    sub-float v3, p1, p5

    .line 32
    sub-float v4, p2, p0

    .line 33
    sub-float v5, p3, p1

    .line 34
    sub-float v6, p6, p0

    .line 35
    sub-float v7, p7, p1

    .line 36
    sub-float v8, p6, p2

    .line 37
    sub-float v9, p7, p3

    .line 38
    sub-float v10, p6, p4

    .line 39
    sub-float v11, p7, p5

    .line 41
    mul-float/2addr v0, v9

    mul-float/2addr v1, v8

    sub-float/2addr v0, v1

    .line 42
    mul-float v1, v4, v7

    mul-float v4, v5, v6

    sub-float/2addr v1, v4

    .line 43
    mul-float/2addr v2, v11

    mul-float/2addr v3, v10

    sub-float/2addr v2, v3

    .line 45
    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a([Lcom/autonavi/amap/mapcore/FPoint;IIII[I)Z
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    aget v0, p5, p1

    aget-object v0, p0, v0

    iget v0, v0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    .line 52
    aget v1, p5, p1

    aget-object v1, p0, v1

    iget v1, v1, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    .line 53
    aget v2, p5, p2

    aget-object v2, p0, v2

    iget v2, v2, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    .line 54
    aget v3, p5, p2

    aget-object v3, p0, v3

    iget v3, v3, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    .line 55
    aget v4, p5, p3

    aget-object v4, p0, v4

    iget v4, v4, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    .line 56
    aget v5, p5, p3

    aget-object v5, p0, v5

    iget v5, v5, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    .line 57
    const v6, 0x2edbe6ff

    sub-float v7, v2, v0

    sub-float v8, v5, v1

    mul-float/2addr v7, v8

    sub-float v8, v3, v1

    sub-float v9, v4, v0

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    .line 58
    const/4 v0, 0x0

    .line 67
    :goto_0
    return v0

    .line 59
    :cond_0
    const/4 v6, 0x0

    move v8, v6

    :goto_1
    if-ge v8, p4, :cond_3

    .line 60
    if-eq v8, p1, :cond_1

    if-eq v8, p2, :cond_1

    if-ne v8, p3, :cond_2

    .line 59
    :cond_1
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    goto :goto_1

    .line 62
    :cond_2
    aget v6, p5, v8

    aget-object v6, p0, v6

    iget v6, v6, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    .line 63
    aget v7, p5, v8

    aget-object v7, p0, v7

    iget v7, v7, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    .line 64
    invoke-static/range {v0 .. v7}, Lcom/amap/api/a/b/f;->a(FFFFFFFF)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 65
    const/4 v0, 0x0

    goto :goto_0

    .line 67
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a([Lcom/autonavi/amap/mapcore/FPoint;Ljava/util/List;)Z
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/autonavi/amap/mapcore/FPoint;",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/amap/mapcore/FPoint;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 72
    array-length v4, p0

    .line 73
    const/4 v0, 0x3

    if-ge v4, v0, :cond_1

    .line 126
    :cond_0
    :goto_0
    return v6

    .line 75
    :cond_1
    new-array v5, v4, [I

    .line 77
    const/4 v0, 0x0

    invoke-static {p0}, Lcom/amap/api/a/b/f;->a([Lcom/autonavi/amap/mapcore/FPoint;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    move v0, v6

    .line 78
    :goto_1
    if-ge v0, v4, :cond_3

    .line 79
    aput v0, v5, v0

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v6

    .line 81
    :goto_2
    if-ge v0, v4, :cond_3

    .line 82
    add-int/lit8 v1, v4, -0x1

    sub-int/2addr v1, v0

    aput v1, v5, v0

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 85
    :cond_3
    mul-int/lit8 v0, v4, 0x2

    .line 86
    add-int/lit8 v1, v4, -0x1

    move v7, v6

    :goto_3
    const/4 v2, 0x2

    if-le v4, v2, :cond_8

    .line 88
    add-int/lit8 v8, v0, -0x1

    if-lez v0, :cond_0

    .line 94
    if-gt v4, v1, :cond_4

    move v1, v6

    .line 96
    :cond_4
    add-int/lit8 v2, v1, 0x1

    .line 97
    if-gt v4, v2, :cond_5

    move v2, v6

    .line 99
    :cond_5
    add-int/lit8 v3, v2, 0x1

    .line 100
    if-gt v4, v3, :cond_6

    move v3, v6

    :cond_6
    move-object v0, p0

    .line 103
    invoke-static/range {v0 .. v5}, Lcom/amap/api/a/b/f;->a([Lcom/autonavi/amap/mapcore/FPoint;IIII[I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 107
    aget v0, v5, v1

    .line 108
    aget v1, v5, v2

    .line 109
    aget v3, v5, v3

    .line 112
    aget-object v0, p0, v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    aget-object v0, p0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    aget-object v0, p0, v3

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    add-int/lit8 v0, v7, 0x1

    .line 118
    add-int/lit8 v1, v2, 0x1

    move v3, v2

    :goto_4
    if-ge v1, v4, :cond_7

    .line 119
    aget v7, v5, v1

    aput v7, v5, v3

    .line 118
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 120
    :cond_7
    add-int/lit8 v4, v4, -0x1

    .line 122
    mul-int/lit8 v1, v4, 0x2

    :goto_5
    move v7, v0

    move v0, v1

    move v1, v2

    .line 124
    goto :goto_3

    .line 126
    :cond_8
    const/4 v6, 0x1

    goto :goto_0

    :cond_9
    move v0, v7

    move v1, v8

    goto :goto_5
.end method
