.class Lcom/cymobile/ymwork/act/MainClassPublicReportAct$4;
.super Ljava/lang/Object;
.source "MainClassPublicReportAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->ensureUi()V
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
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$4;->this$0:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 429
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$4;->this$0:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->onBackPressed()V

    .line 430
    return-void
.end method
