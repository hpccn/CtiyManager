.class Lcom/cymobile/ymwork/SystemService$3;
.super Ljava/lang/Object;
.source "SystemService.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/cymobile/ymwork/SystemService$3;->this$0:Lcom/cymobile/ymwork/SystemService;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 76
    const-string v1, "SystemService"

    const-string v2, "checkServerInfo"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :try_start_0
    new-instance v1, Lcom/cymobile/ymwork/SystemService$GetCaseNumberTask;

    iget-object v2, p0, Lcom/cymobile/ymwork/SystemService$3;->this$0:Lcom/cymobile/ymwork/SystemService;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/cymobile/ymwork/SystemService$GetCaseNumberTask;-><init>(Lcom/cymobile/ymwork/SystemService;Lcom/cymobile/ymwork/SystemService$GetCaseNumberTask;)V

    invoke-static {v1}, Lcom/cymobile/ymwork/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    iget-object v1, p0, Lcom/cymobile/ymwork/SystemService$3;->this$0:Lcom/cymobile/ymwork/SystemService;

    #getter for: Lcom/cymobile/ymwork/SystemService;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/cymobile/ymwork/SystemService;->access$1(Lcom/cymobile/ymwork/SystemService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/cymobile/ymwork/SystemService$3;->this$0:Lcom/cymobile/ymwork/SystemService;

    #getter for: Lcom/cymobile/ymwork/SystemService;->runnableRef:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/cymobile/ymwork/SystemService;->access$2(Lcom/cymobile/ymwork/SystemService;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/32 v3, 0x2bf20

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 84
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
