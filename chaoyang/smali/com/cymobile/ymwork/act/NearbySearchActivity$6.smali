.class Lcom/cymobile/ymwork/act/NearbySearchActivity$6;
.super Ljava/lang/Object;
.source "NearbySearchActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/NearbySearchActivity;->ensureUiListView()V
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
.field final synthetic this$0:Lcom/cymobile/ymwork/act/NearbySearchActivity;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/NearbySearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity$6;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivity;

    .line 535
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
    .line 544
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity$6;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivity;

    #getter for: Lcom/cymobile/ymwork/act/NearbySearchActivity;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;
    invoke-static {v2}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->access$7(Lcom/cymobile/ymwork/act/NearbySearchActivity;)Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/types/Building;

    .line 548
    .local v1, shop:Lcom/cymobile/ymwork/types/Building;
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity$6;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivity;

    const-class v3, Lcom/cymobile/ymwork/act/ShopDetailsActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 549
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "caseid"

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Building;->getCaseId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 550
    const-string v2, "classid"

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Building;->getclassid()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 551
    iget-object v2, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity$6;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivity;

    invoke-virtual {v2, v0}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 571
    return-void
.end method
