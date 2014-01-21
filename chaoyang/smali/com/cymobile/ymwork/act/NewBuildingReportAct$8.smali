.class Lcom/cymobile/ymwork/act/NewBuildingReportAct$8;
.super Ljava/lang/Object;
.source "NewBuildingReportAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/NewBuildingReportAct;->ensureUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$8;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$8;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->onBackPressed()V

    .line 274
    return-void
.end method
