.class Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$7;
.super Ljava/lang/Object;
.source "ConstrustionFieldReportAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->ensureUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$7;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 291
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$7;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    #getter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$StateHolder;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$14(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$StateHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$7;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$StateHolder;->startTask(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)V

    .line 292
    return-void
.end method
