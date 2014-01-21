.class Lcom/amap/api/a/a$1;
.super Ljava/lang/Object;
.source "AMapCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/a/a;->OnMapProcessEvent(Lcom/autonavi/amap/mapcore/MapCore;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/a/a;


# direct methods
.method constructor <init>(Lcom/amap/api/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/amap/api/a/a$1;->a:Lcom/amap/api/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/amap/api/a/a$1;->a:Lcom/amap/api/a/a;

    invoke-static {v0}, Lcom/amap/api/a/a;->a(Lcom/amap/api/a/a;)Lcom/amap/api/a/b;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/a/b;->b:Lcom/amap/api/a/am;

    iget-object v1, p0, Lcom/amap/api/a/a$1;->a:Lcom/amap/api/a/a;

    invoke-static {v1}, Lcom/amap/api/a/a;->a(Lcom/amap/api/a/a;)Lcom/amap/api/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/a/b;->x()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/a/am;->a(F)V

    .line 98
    return-void
.end method
