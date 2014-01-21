.class Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$7;
.super Ljava/lang/Object;
.source "VisitorvolumeReportAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->ensureUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$7;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$7;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    #getter for: Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$StateHolder;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->access$18(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;)Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$StateHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$7;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$StateHolder;->startTask(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;)V

    .line 272
    return-void
.end method
