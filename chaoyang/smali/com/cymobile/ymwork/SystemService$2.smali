.class Lcom/cymobile/ymwork/SystemService$2;
.super Landroid/content/BroadcastReceiver;
.source "SystemService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/SystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/SystemService;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/SystemService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/SystemService$2;->this$0:Lcom/cymobile/ymwork/SystemService;

    .line 63
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/cymobile/ymwork/SystemService$2;->this$0:Lcom/cymobile/ymwork/SystemService;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/SystemService;->clearNumbers()V

    .line 68
    iget-object v1, p0, Lcom/cymobile/ymwork/SystemService$2;->this$0:Lcom/cymobile/ymwork/SystemService;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/SystemService;->stopSelf()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, e:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
