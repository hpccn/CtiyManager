.class public Luk/co/jasonfry/android/tools/util/OverScrollDisabler;
.super Ljava/lang/Object;
.source "OverScrollDisabler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableOverScroll(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 31
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/view/View;->setOverScrollMode(I)V

    .line 32
    return-void
.end method
