.class Lcom/cymobile/ymwork/act/FireServiceReportAct$2;
.super Ljava/lang/Object;
.source "FireServiceReportAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/FireServiceReportAct;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$2;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$2;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    #getter for: Lcom/cymobile/ymwork/act/FireServiceReportAct;->mSpinner:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->access$24(Lcom/cymobile/ymwork/act/FireServiceReportAct;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    .line 143
    return-void
.end method
