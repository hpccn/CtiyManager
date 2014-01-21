.class Lcom/amap/api/a/b$1;
.super Ljava/lang/Object;
.source "AMapDelegateImpGLSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/a/b;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/a/b;


# direct methods
.method constructor <init>(Lcom/amap/api/a/b;)V
    .locals 0
    .parameter

    .prologue
    .line 432
    iput-object p1, p0, Lcom/amap/api/a/b$1;->a:Lcom/amap/api/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 436
    iget-object v0, p0, Lcom/amap/api/a/b$1;->a:Lcom/amap/api/a/b;

    invoke-static {v0}, Lcom/amap/api/a/b;->a(Lcom/amap/api/a/b;)Lcom/amap/api/a/j;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/amap/api/a/j;->setVisibility(I)V

    .line 437
    return-void
.end method
