.class Lcom/cymobile/ymwork/act/PublicReportAct$3;
.super Ljava/lang/Object;
.source "PublicReportAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/PublicReportAct;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/cymobile/ymwork/act/PublicReportAct$3;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct$3;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    #getter for: Lcom/cymobile/ymwork/act/PublicReportAct;->Spinner_Street:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$25(Lcom/cymobile/ymwork/act/PublicReportAct;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    .line 148
    return-void
.end method
