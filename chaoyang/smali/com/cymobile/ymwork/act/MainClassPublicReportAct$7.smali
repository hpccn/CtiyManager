.class Lcom/cymobile/ymwork/act/MainClassPublicReportAct$7;
.super Ljava/lang/Object;
.source "MainClassPublicReportAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->ensureUiListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/MainClassPublicReportAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$7;->this$0:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    .line 607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 609
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$7;->this$0:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    #getter for: Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->access$5(Lcom/cymobile/ymwork/act/MainClassPublicReportAct;)Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$7;->this$0:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->startTask(Lcom/cymobile/ymwork/act/MainClassPublicReportAct;)V

    .line 610
    return-void
.end method
