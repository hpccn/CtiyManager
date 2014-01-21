.class Lcom/cymobile/ymwork/widget/ShopReportFragment$2;
.super Ljava/lang/Object;
.source "ShopReportFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/widget/ShopReportFragment;->onActivityCreated(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/cymobile/ymwork/widget/ShopReportFragment;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/widget/ShopReportFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment$2;->this$0:Lcom/cymobile/ymwork/widget/ShopReportFragment;

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 240
    .line 241
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 242
    .local v0, selected:Ljava/lang/Object;
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment$2;->this$0:Lcom/cymobile/ymwork/widget/ShopReportFragment;

    #getter for: Lcom/cymobile/ymwork/widget/ShopReportFragment;->filterPairAdapter:Lcom/cymobile/ymwork/adapter/SubFilterAdapter;
    invoke-static {v1}, Lcom/cymobile/ymwork/widget/ShopReportFragment;->access$6(Lcom/cymobile/ymwork/widget/ShopReportFragment;)Lcom/cymobile/ymwork/adapter/SubFilterAdapter;

    move-result-object v1

    .line 243
    invoke-virtual {v1, p3}, Lcom/cymobile/ymwork/adapter/SubFilterAdapter;->setSelectItem(I)V

    .line 244
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment$2;->this$0:Lcom/cymobile/ymwork/widget/ShopReportFragment;

    #getter for: Lcom/cymobile/ymwork/widget/ShopReportFragment;->filterPairAdapter:Lcom/cymobile/ymwork/adapter/SubFilterAdapter;
    invoke-static {v1}, Lcom/cymobile/ymwork/widget/ShopReportFragment;->access$6(Lcom/cymobile/ymwork/widget/ShopReportFragment;)Lcom/cymobile/ymwork/adapter/SubFilterAdapter;

    move-result-object v1

    .line 245
    invoke-virtual {v1}, Lcom/cymobile/ymwork/adapter/SubFilterAdapter;->notifyDataSetChanged()V

    .line 248
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment$2;->this$0:Lcom/cymobile/ymwork/widget/ShopReportFragment;

    #getter for: Lcom/cymobile/ymwork/widget/ShopReportFragment;->btnMoreFilter:Landroid/widget/Button;
    invoke-static {v1}, Lcom/cymobile/ymwork/widget/ShopReportFragment;->access$7(Lcom/cymobile/ymwork/widget/ShopReportFragment;)Landroid/widget/Button;

    move-result-object v2

    move-object v1, v0

    .line 249
    check-cast v1, Lcom/cymobile/ymwork/types/Pair;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Pair;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment$2;->this$0:Lcom/cymobile/ymwork/widget/ShopReportFragment;

    check-cast v0, Lcom/cymobile/ymwork/types/Pair;

    .end local v0           #selected:Ljava/lang/Object;
    #setter for: Lcom/cymobile/ymwork/widget/ShopReportFragment;->selectedFilter:Lcom/cymobile/ymwork/types/Pair;
    invoke-static {v1, v0}, Lcom/cymobile/ymwork/widget/ShopReportFragment;->access$8(Lcom/cymobile/ymwork/widget/ShopReportFragment;Lcom/cymobile/ymwork/types/Pair;)V

    .line 251
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment$2;->this$0:Lcom/cymobile/ymwork/widget/ShopReportFragment;

    const/4 v2, 0x1

    #calls: Lcom/cymobile/ymwork/widget/ShopReportFragment;->dismissFilter(Z)V
    invoke-static {v1, v2}, Lcom/cymobile/ymwork/widget/ShopReportFragment;->access$9(Lcom/cymobile/ymwork/widget/ShopReportFragment;Z)V

    .line 252
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment$2;->this$0:Lcom/cymobile/ymwork/widget/ShopReportFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/widget/ShopReportFragment;->selectionChanged(Z)V

    .line 264
    return-void
.end method
