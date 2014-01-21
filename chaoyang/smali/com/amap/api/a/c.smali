.class Lcom/amap/api/a/c;
.super Ljava/lang/Thread;
.source "AMapDelegateImpGLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/a/b;
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
    .line 1841
    iput-object p1, p0, Lcom/amap/api/a/c;->a:Lcom/amap/api/a/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1844
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/a/c;->a:Lcom/amap/api/a/b;

    invoke-static {v0}, Lcom/amap/api/a/b;->v(Lcom/amap/api/a/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/a/b/c;->a(Landroid/content/Context;)Lcom/amap/api/a/b/c;

    .line 1845
    iget-object v0, p0, Lcom/amap/api/a/c;->a:Lcom/amap/api/a/b;

    invoke-static {v0}, Lcom/amap/api/a/b;->w(Lcom/amap/api/a/b;)Lcom/amap/api/a/f;

    iget-object v0, p0, Lcom/amap/api/a/c;->a:Lcom/amap/api/a/b;

    invoke-static {v0}, Lcom/amap/api/a/b;->v(Lcom/amap/api/a/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/a/f;->a(Landroid/content/Context;)Z

    .line 1846
    invoke-virtual {p0}, Lcom/amap/api/a/c;->interrupt()V

    .line 1847
    iget-object v0, p0, Lcom/amap/api/a/c;->a:Lcom/amap/api/a/b;

    invoke-static {v0}, Lcom/amap/api/a/b;->w(Lcom/amap/api/a/b;)Lcom/amap/api/a/f;

    sget v0, Lcom/amap/api/a/f;->a:I

    iget-object v1, p0, Lcom/amap/api/a/c;->a:Lcom/amap/api/a/b;

    invoke-static {v1}, Lcom/amap/api/a/b;->w(Lcom/amap/api/a/b;)Lcom/amap/api/a/f;

    if-nez v0, :cond_0

    .line 1848
    iget-object v0, p0, Lcom/amap/api/a/c;->a:Lcom/amap/api/a/b;

    iget-object v0, v0, Lcom/amap/api/a/b;->e:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Lcom/amap/api/a/b/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 1855
    :cond_0
    :goto_0
    return-void

    .line 1850
    :catch_0
    move-exception v0

    .line 1851
    invoke-virtual {p0}, Lcom/amap/api/a/c;->interrupt()V

    .line 1852
    const-string v1, "AuthFailure"

    invoke-virtual {v0}, Lcom/amap/api/a/b/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1853
    invoke-virtual {v0}, Lcom/amap/api/a/b/a;->printStackTrace()V

    goto :goto_0
.end method
