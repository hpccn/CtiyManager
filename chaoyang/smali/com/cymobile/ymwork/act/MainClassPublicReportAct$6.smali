.class Lcom/cymobile/ymwork/act/MainClassPublicReportAct$6;
.super Ljava/lang/Object;
.source "MainClassPublicReportAct.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->ensureUiListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/MainClassPublicReportAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$6;->this$0:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    .line 544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 553
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$6;->this$0:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    #getter for: Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;
    invoke-static {v2}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->access$6(Lcom/cymobile/ymwork/act/MainClassPublicReportAct;)Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    move-result-object v2

    .line 554
    invoke-virtual {v2, p3}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 553
    check-cast v1, Lcom/cymobile/ymwork/types/ConstrustionField;

    .line 558
    .local v1, shop:Lcom/cymobile/ymwork/types/ConstrustionField;
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$6;->this$0:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    .line 559
    const-class v3, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;

    .line 558
    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 560
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "caseid"

    .line 561
    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/ConstrustionField;->getCaseid()Ljava/lang/String;

    move-result-object v3

    .line 560
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 562
    const-string v2, "classid"

    .line 563
    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/ConstrustionField;->getClassids()I

    move-result v3

    .line 562
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 564
    iget-object v2, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$6;->this$0:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    invoke-virtual {v2, v0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->startActivity(Landroid/content/Intent;)V

    .line 585
    return-void
.end method
