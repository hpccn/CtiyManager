.class Lcom/cymobile/ymwork/act/FireServiceReportAct$7;
.super Ljava/lang/Object;
.source "FireServiceReportAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/FireServiceReportAct;->ensureUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/FireServiceReportAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$7;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$7;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    #getter for: Lcom/cymobile/ymwork/act/FireServiceReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/FireServiceReportAct$StateHolder;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->access$13(Lcom/cymobile/ymwork/act/FireServiceReportAct;)Lcom/cymobile/ymwork/act/FireServiceReportAct$StateHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$7;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/FireServiceReportAct$StateHolder;->startTask(Lcom/cymobile/ymwork/act/FireServiceReportAct;)V

    .line 274
    return-void
.end method
