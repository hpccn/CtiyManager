.class Lcom/cymobile/ymwork/act/MainClassFireServiceAct$UIHandler;
.super Landroid/os/Handler;
.source "MainClassFireServiceAct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/MainClassFireServiceAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)V
    .locals 0
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$UIHandler;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 213
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 214
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$UIHandler;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->getFilterFragment()Lcom/cymobile/ymwork/widget/RangeFilterFragmentFire;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentFire;->onDataChanged(I)V

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    .line 217
    new-instance v0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$GetZoneTask;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$UIHandler;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$UIHandler;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    invoke-direct {v0, v1, v2}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$GetZoneTask;-><init>(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)V

    .line 218
    .local v0, getZoneTask:Lcom/cymobile/ymwork/act/MainClassFireServiceAct$GetZoneTask;
    invoke-static {v0}, Lcom/cymobile/ymwork/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    goto :goto_0
.end method
