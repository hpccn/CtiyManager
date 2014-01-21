.class Lcom/amap/api/a/ac;
.super Landroid/view/ViewGroup;
.source "MapOverlayViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/a/ac$a;
    }
.end annotation


# instance fields
.field private a:Lcom/amap/api/a/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/a/n;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 17
    iput-object p2, p0, Lcom/amap/api/a/ac;->a:Lcom/amap/api/a/n;

    .line 18
    return-void
.end method

.method private a(Landroid/view/View;IIIII)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x1

    const/4 v1, -0x2

    .line 133
    instance-of v0, p1, Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 135
    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result p2

    .line 137
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result p3

    .line 140
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 141
    if-ne p2, v1, :cond_5

    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    .line 147
    :cond_1
    :goto_0
    if-ne p3, v1, :cond_6

    .line 148
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    .line 154
    :cond_2
    :goto_1
    and-int/lit8 v0, p6, 0x7

    .line 155
    and-int/lit8 v1, p6, 0x70

    .line 157
    const/4 v2, 0x5

    if-ne v0, v2, :cond_7

    .line 158
    sub-int/2addr p4, p2

    .line 163
    :cond_3
    :goto_2
    const/16 v0, 0x50

    if-ne v1, v0, :cond_8

    .line 164
    sub-int/2addr p5, p3

    .line 168
    :cond_4
    :goto_3
    add-int v0, p4, p2

    add-int v1, p5, p3

    invoke-virtual {p1, p4, p5, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 169
    return-void

    .line 143
    :cond_5
    if-ne p2, v2, :cond_1

    .line 144
    invoke-virtual {p0}, Lcom/amap/api/a/ac;->getMeasuredWidth()I

    move-result p2

    goto :goto_0

    .line 149
    :cond_6
    if-ne p3, v2, :cond_2

    .line 150
    invoke-virtual {p0}, Lcom/amap/api/a/ac;->getMeasuredHeight()I

    move-result p3

    goto :goto_1

    .line 159
    :cond_7
    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 160
    div-int/lit8 v0, p2, 0x2

    sub-int/2addr p4, v0

    goto :goto_2

    .line 165
    :cond_8
    const/16 v0, 0x10

    if-ne v1, v0, :cond_4

    .line 166
    div-int/lit8 v0, p3, 0x2

    sub-int/2addr p5, v0

    goto :goto_3
.end method

.method private a(Landroid/view/View;Lcom/amap/api/a/ac$a;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 105
    iget v2, p2, Lcom/amap/api/a/ac$a;->width:I

    iget v3, p2, Lcom/amap/api/a/ac$a;->height:I

    iget v4, p2, Lcom/amap/api/a/ac$a;->c:I

    iget v5, p2, Lcom/amap/api/a/ac$a;->d:I

    iget v6, p2, Lcom/amap/api/a/ac$a;->e:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/a/ac;->a(Landroid/view/View;IIIII)V

    .line 107
    return-void
.end method

.method private b(Landroid/view/View;Lcom/amap/api/a/ac$a;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 110
    instance-of v0, p1, Lcom/amap/api/a/am;

    if-eqz v0, :cond_1

    .line 111
    iget v2, p2, Lcom/amap/api/a/ac$a;->width:I

    iget v3, p2, Lcom/amap/api/a/ac$a;->height:I

    invoke-virtual {p0}, Lcom/amap/api/a/ac;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v4, v0, 0xf

    invoke-virtual {p0}, Lcom/amap/api/a/ac;->getHeight()I

    move-result v5

    iget v6, p2, Lcom/amap/api/a/ac$a;->e:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/a/ac;->a(Landroid/view/View;IIIII)V

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    instance-of v0, p1, Lcom/amap/api/a/x;

    if-eqz v0, :cond_2

    .line 115
    iget v2, p2, Lcom/amap/api/a/ac$a;->width:I

    iget v3, p2, Lcom/amap/api/a/ac$a;->height:I

    invoke-virtual {p0}, Lcom/amap/api/a/ac;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v4, v0, 0xf

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/lit8 v5, v0, 0xf

    iget v6, p2, Lcom/amap/api/a/ac$a;->e:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/a/ac;->a(Landroid/view/View;IIIII)V

    goto :goto_0

    .line 118
    :cond_2
    instance-of v0, p1, Lcom/amap/api/a/j;

    if-eqz v0, :cond_3

    .line 119
    iget v2, p2, Lcom/amap/api/a/ac$a;->width:I

    iget v3, p2, Lcom/amap/api/a/ac$a;->height:I

    iget v6, p2, Lcom/amap/api/a/ac$a;->e:I

    move-object v0, p0

    move-object v1, p1

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/a/ac;->a(Landroid/view/View;IIIII)V

    goto :goto_0

    .line 121
    :cond_3
    iget-object v0, p2, Lcom/amap/api/a/ac$a;->b:Lcom/amap/api/maps/model/LatLng;

    if-eqz v0, :cond_0

    .line 122
    new-instance v5, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v5}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 123
    iget-object v0, p0, Lcom/amap/api/a/ac;->a:Lcom/amap/api/a/n;

    iget-object v1, p2, Lcom/amap/api/a/ac$a;->b:Lcom/amap/api/maps/model/LatLng;

    iget-wide v1, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-object v3, p2, Lcom/amap/api/a/ac$a;->b:Lcom/amap/api/maps/model/LatLng;

    iget-wide v3, v3, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-interface/range {v0 .. v5}, Lcom/amap/api/a/n;->b(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 125
    iget v0, v5, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v1, p2, Lcom/amap/api/a/ac$a;->c:I

    add-int/2addr v0, v1

    iput v0, v5, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    .line 126
    iget v0, v5, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v1, p2, Lcom/amap/api/a/ac$a;->d:I

    add-int/2addr v0, v1

    iput v0, v5, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    .line 128
    iget v2, p2, Lcom/amap/api/a/ac$a;->width:I

    iget v3, p2, Lcom/amap/api/a/ac$a;->height:I

    iget v4, v5, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v5, v5, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v6, p2, Lcom/amap/api/a/ac$a;->e:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/a/ac;->a(Landroid/view/View;IIIII)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 101
    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/a/ac;->onLayout(ZIIII)V

    .line 102
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/amap/api/a/ac;->getChildCount()I

    move-result v2

    .line 75
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 76
    invoke-virtual {p0, v1}, Lcom/amap/api/a/ac;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 77
    if-nez v3, :cond_0

    .line 75
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Lcom/amap/api/a/ac$a;

    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/amap/api/a/ac$a;

    .line 83
    invoke-direct {p0, v3, v0}, Lcom/amap/api/a/ac;->b(Landroid/view/View;Lcom/amap/api/a/ac$a;)V

    goto :goto_1

    .line 92
    :cond_1
    new-instance v0, Lcom/amap/api/a/ac$a;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/amap/api/a/ac$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    invoke-direct {p0, v3, v0}, Lcom/amap/api/a/ac;->a(Landroid/view/View;Lcom/amap/api/a/ac$a;)V

    goto :goto_1

    .line 98
    :cond_2
    return-void
.end method
