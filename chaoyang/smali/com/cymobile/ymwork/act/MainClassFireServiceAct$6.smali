.class Lcom/cymobile/ymwork/act/MainClassFireServiceAct$6;
.super Ljava/lang/Object;
.source "MainClassFireServiceAct.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->ensureUiListView()V
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
.field final synthetic this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$6;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    .line 555
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
    .line 564
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$6;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    #getter for: Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;
    invoke-static {v2}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->access$8(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/types/ConstrustionField;

    .line 568
    .local v1, shop:Lcom/cymobile/ymwork/types/ConstrustionField;
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$6;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    const-class v3, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 569
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "caseid"

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/ConstrustionField;->getCaseid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 570
    const-string v2, "classid"

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/ConstrustionField;->getClassids()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 571
    iget-object v2, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$6;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    invoke-virtual {v2, v0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->startActivity(Landroid/content/Intent;)V

    .line 591
    return-void
.end method
