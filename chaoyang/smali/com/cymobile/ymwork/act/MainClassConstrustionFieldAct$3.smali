.class Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$3;
.super Ljava/lang/Object;
.source "MainClassConstrustionFieldAct.java"

# interfaces
.implements Lcom/cymobile/ymwork/widget/PullToRefreshListView$OnAddMoreListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$3;->this$0:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddMore()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$3;->this$0:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;

    #getter for: Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->access$5(Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;)Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$3;->this$0:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;->startMoreTask(Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;)V

    .line 148
    return-void
.end method
