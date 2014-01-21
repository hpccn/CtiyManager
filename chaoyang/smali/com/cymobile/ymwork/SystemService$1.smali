.class Lcom/cymobile/ymwork/SystemService$1;
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
    iput-object p1, p0, Lcom/cymobile/ymwork/SystemService$1;->this$0:Lcom/cymobile/ymwork/SystemService;

    .line 42
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/cymobile/ymwork/SystemService$1;->this$0:Lcom/cymobile/ymwork/SystemService;

    #calls: Lcom/cymobile/ymwork/SystemService;->handleRequestIntent(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/cymobile/ymwork/SystemService;->access$0(Lcom/cymobile/ymwork/SystemService;Landroid/content/Intent;)V

    .line 46
    return-void
.end method
