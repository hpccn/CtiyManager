.class Lcom/amap/api/a/m$a;
.super Ljava/lang/Object;
.source "GLOverlayLayer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/a/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/a/m;


# direct methods
.method constructor <init>(Lcom/amap/api/a/m;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/amap/api/a/m$a;->a:Lcom/amap/api/a/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 35
    check-cast p1, Lcom/amap/api/a/r;

    .line 36
    check-cast p2, Lcom/amap/api/a/r;

    .line 38
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 39
    :try_start_0
    invoke-interface {p1}, Lcom/amap/api/a/r;->c()F

    move-result v0

    invoke-interface {p2}, Lcom/amap/api/a/r;->c()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 40
    const/4 v0, 0x1

    .line 48
    :goto_0
    return v0

    .line 41
    :cond_0
    invoke-interface {p1}, Lcom/amap/api/a/r;->c()F

    move-result v0

    invoke-interface {p2}, Lcom/amap/api/a/r;->c()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 42
    const/4 v0, -0x1

    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 48
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
