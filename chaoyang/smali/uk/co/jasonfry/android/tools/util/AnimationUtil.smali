.class public Luk/co/jasonfry/android/tools/util/AnimationUtil;
.super Ljava/lang/Object;
.source "AnimationUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static quadraticOutEase(FFFF)I
    .locals 3
    .parameter "currentTime"
    .parameter "startValue"
    .parameter "changeInValue"
    .parameter "duration"

    .prologue
    .line 7
    div-float/2addr p0, p3

    .line 8
    neg-float v1, p2

    mul-float/2addr v1, p0

    const/high16 v2, 0x4000

    sub-float v2, p0, v2

    mul-float/2addr v1, v2

    add-float/2addr v1, p1

    float-to-int v0, v1

    .line 10
    .local v0, returnValue:I
    return v0
.end method
