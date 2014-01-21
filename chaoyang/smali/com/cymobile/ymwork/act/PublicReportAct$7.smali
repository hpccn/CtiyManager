.class Lcom/cymobile/ymwork/act/PublicReportAct$7;
.super Ljava/lang/Object;
.source "PublicReportAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/PublicReportAct;->ensureUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/PublicReportAct;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/PublicReportAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/PublicReportAct$7;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct$7;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    #getter for: Lcom/cymobile/ymwork/act/PublicReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/PublicReportAct$StateHolder;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$13(Lcom/cymobile/ymwork/act/PublicReportAct;)Lcom/cymobile/ymwork/act/PublicReportAct$StateHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/act/PublicReportAct$7;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/PublicReportAct$StateHolder;->startTask(Lcom/cymobile/ymwork/act/PublicReportAct;)V

    .line 278
    return-void
.end method
