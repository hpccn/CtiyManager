.class Lcom/cymobile/ymwork/widget/ShopFilterFragment$2;
.super Ljava/lang/Object;
.source "ShopFilterFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/widget/ShopFilterFragment;->onActivityCreated(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/cymobile/ymwork/widget/ShopFilterFragment;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/widget/ShopFilterFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragment$2;->this$0:Lcom/cymobile/ymwork/widget/ShopFilterFragment;

    .line 214
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
    .line 220
    .line 221
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 222
    .local v0, selected:Ljava/lang/Object;
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragment$2;->this$0:Lcom/cymobile/ymwork/widget/ShopFilterFragment;

    #getter for: Lcom/cymobile/ymwork/widget/ShopFilterFragment;->filterPairAdapter:Lcom/cymobile/ymwork/adapter/SubFilterAdapter;
    invoke-static {v1}, Lcom/cymobile/ymwork/widget/ShopFilterFragment;->access$6(Lcom/cymobile/ymwork/widget/ShopFilterFragment;)Lcom/cymobile/ymwork/adapter/SubFilterAdapter;

    move-result-object v1

    .line 223
    invoke-virtual {v1, p3}, Lcom/cymobile/ymwork/adapter/SubFilterAdapter;->setSelectItem(I)V

    .line 224
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragment$2;->this$0:Lcom/cymobile/ymwork/widget/ShopFilterFragment;

    #getter for: Lcom/cymobile/ymwork/widget/ShopFilterFragment;->filterPairAdapter:Lcom/cymobile/ymwork/adapter/SubFilterAdapter;
    invoke-static {v1}, Lcom/cymobile/ymwork/widget/ShopFilterFragment;->access$6(Lcom/cymobile/ymwork/widget/ShopFilterFragment;)Lcom/cymobile/ymwork/adapter/SubFilterAdapter;

    move-result-object v1

    .line 225
    invoke-virtual {v1}, Lcom/cymobile/ymwork/adapter/SubFilterAdapter;->notifyDataSetChanged()V

    .line 228
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragment$2;->this$0:Lcom/cymobile/ymwork/widget/ShopFilterFragment;

    #getter for: Lcom/cymobile/ymwork/widget/ShopFilterFragment;->btnMoreFilter:Landroid/widget/Button;
    invoke-static {v1}, Lcom/cymobile/ymwork/widget/ShopFilterFragment;->access$7(Lcom/cymobile/ymwork/widget/ShopFilterFragment;)Landroid/widget/Button;

    move-result-object v2

    move-object v1, v0

    .line 229
    check-cast v1, Lcom/cymobile/ymwork/types/Pair;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Pair;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragment$2;->this$0:Lcom/cymobile/ymwork/widget/ShopFilterFragment;

    check-cast v0, Lcom/cymobile/ymwork/types/Pair;

    .end local v0           #selected:Ljava/lang/Object;
    #setter for: Lcom/cymobile/ymwork/widget/ShopFilterFragment;->selectedFilter:Lcom/cymobile/ymwork/types/Pair;
    invoke-static {v1, v0}, Lcom/cymobile/ymwork/widget/ShopFilterFragment;->access$8(Lcom/cymobile/ymwork/widget/ShopFilterFragment;Lcom/cymobile/ymwork/types/Pair;)V

    .line 231
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragment$2;->this$0:Lcom/cymobile/ymwork/widget/ShopFilterFragment;

    const/4 v2, 0x1

    #calls: Lcom/cymobile/ymwork/widget/ShopFilterFragment;->dismissFilter(Z)V
    invoke-static {v1, v2}, Lcom/cymobile/ymwork/widget/ShopFilterFragment;->access$9(Lcom/cymobile/ymwork/widget/ShopFilterFragment;Z)V

    .line 232
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragment$2;->this$0:Lcom/cymobile/ymwork/widget/ShopFilterFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/widget/ShopFilterFragment;->selectionChanged(Z)V

    .line 244
    return-void
.end method
