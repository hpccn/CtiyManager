.class public Lcom/autonavi/amap/mapcore/IPoint;
.super Ljava/lang/Object;
.source "IPoint.java"


# instance fields
.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    .line 11
    iput p2, p0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    .line 12
    return-void
.end method
