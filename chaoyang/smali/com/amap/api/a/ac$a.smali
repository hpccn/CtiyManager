.class public Lcom/amap/api/a/ac$a;
.super Landroid/view/ViewGroup$LayoutParams;
.source "MapOverlayViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/a/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Lcom/amap/api/maps/model/LatLng;

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(IILcom/amap/api/maps/model/LatLng;III)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/a/ac$a;->a:I

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/a/ac$a;->b:Lcom/amap/api/maps/model/LatLng;

    .line 37
    iput v1, p0, Lcom/amap/api/a/ac$a;->c:I

    .line 38
    iput v1, p0, Lcom/amap/api/a/ac$a;->d:I

    .line 39
    const/16 v0, 0x33

    iput v0, p0, Lcom/amap/api/a/ac$a;->e:I

    .line 48
    iput v1, p0, Lcom/amap/api/a/ac$a;->a:I

    .line 49
    iput-object p3, p0, Lcom/amap/api/a/ac$a;->b:Lcom/amap/api/maps/model/LatLng;

    .line 50
    iput p4, p0, Lcom/amap/api/a/ac$a;->c:I

    .line 51
    iput p5, p0, Lcom/amap/api/a/ac$a;->d:I

    .line 52
    iput p6, p0, Lcom/amap/api/a/ac$a;->e:I

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/a/ac$a;->a:I

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/a/ac$a;->b:Lcom/amap/api/maps/model/LatLng;

    .line 37
    iput v1, p0, Lcom/amap/api/a/ac$a;->c:I

    .line 38
    iput v1, p0, Lcom/amap/api/a/ac$a;->d:I

    .line 39
    const/16 v0, 0x33

    iput v0, p0, Lcom/amap/api/a/ac$a;->e:I

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/a/ac$a;->a:I

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/a/ac$a;->b:Lcom/amap/api/maps/model/LatLng;

    .line 37
    iput v1, p0, Lcom/amap/api/a/ac$a;->c:I

    .line 38
    iput v1, p0, Lcom/amap/api/a/ac$a;->d:I

    .line 39
    const/16 v0, 0x33

    iput v0, p0, Lcom/amap/api/a/ac$a;->e:I

    .line 68
    return-void
.end method
