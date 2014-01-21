.class Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$UIHandler;
.super Landroid/os/Handler;
.source "MainClassConstrustionFieldAct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$UIHandler;->this$0:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 178
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 179
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$UIHandler;->this$0:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->getFilterFragment()Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstruction;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstruction;->onDataChanged(I)V

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    .line 182
    new-instance v0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$GetZoneTask;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$UIHandler;->this$0:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$UIHandler;->this$0:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;

    invoke-direct {v0, v1, v2}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$GetZoneTask;-><init>(Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;)V

    .line 183
    .local v0, getZoneTask:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$GetZoneTask;
    invoke-static {v0}, Lcom/cymobile/ymwork/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    goto :goto_0
.end method
