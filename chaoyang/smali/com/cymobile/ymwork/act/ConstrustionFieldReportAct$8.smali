.class Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$8;
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
    iput-object p1, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$8;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 298
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$8;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->onBackPressed()V

    .line 299
    return-void
.end method
