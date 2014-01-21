.class Lcom/cymobile/ymwork/widget/ShopFilterFragment$1;
.super Ljava/lang/Object;
.source "ShopFilterFragment.java"

# interfaces
.implements Lcom/cymobile/ymwork/widget/DoubleLevelList$OnDoubleItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/widget/ShopFilterFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/widget/ShopFilterFragment;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/widget/ShopFilterFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragment$1;->this$0:Lcom/cymobile/ymwork/widget/ShopFilterFragment;

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMainItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
    .line 198
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragment$1;->this$0:Lcom/cymobile/ymwork/widget/ShopFilterFragment;

    #getter for: Lcom/cymobile/ymwork/widget/ShopFilterFragment;->mainFilterAdapter:Lcom/cymobile/ymwork/adapter/MainFilterAdapter;
    invoke-static {v1}, Lcom/cymobile/ymwork/widget/ShopFilterFragment;->access$0(Lcom/cymobile/ymwork/widget/ShopFilterFragment;)Lcom/cymobile/ymwork/adapter/MainFilterAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/cymobile/ymwork/adapter/MainFilterAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 199
    .local v0, mainCategory:Landroid/os/Parcelable;
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragment$1;->this$0:Lcom/cymobile/ymwork/widget/ShopFilterFragment;

    #getter for: Lcom/cymobile/ymwork/widget/ShopFilterFragment;->mainFilterAdapter:Lcom/cymobile/ymwork/adapter/MainFilterAdapter;
    invoke-static {v1}, Lcom/cymobile/ymwork/widget/ShopFilterFragment;->access$0(Lcom/cymobile/ymwork/widget/ShopFilterFragment;)Lcom/cymobile/ymwork/adapter/MainFilterAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/cymobile/ymwork/adapter/MainFilterAdapter;->setSelectItem(I)V

    .line 200
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragment$1;->this$0:Lcom/cymobile/ymwork/widget/ShopFilterFragment;

    #getter for: Lcom/cymobile/ymwork/widget/ShopFilterFragment;->subFilterAdapter:Lcom/cymobile/ymwork/adapter/SubFilterAdapter;
    invoke-static {v1}, Lcom/cymobile/ymwork/widget/ShopFilterFragment;->access$1(Lcom/cymobile/ymwork/widget/ShopFilterFragment;)Lcom/cymobile/ymwork/adapter/SubFilterAdapter;

    move-result-object v2

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragment$1;->this$0:Lcom/cymobile/ymwork/widget/ShopFilterFragment;

    #getter for: Lcom/cymobile/ymwork/widget/ShopFilterFragment;->subCategoryMapItems:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/cymobile/ymwork/widget/ShopFilterFragment;->access$2(Lcom/cymobile/ymwork/widget/ShopFilterFragment;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/cymobile/ymwork/adapter/SubFilterAdapter;->setDataSet(Ljava/util/List;Landroid/os/Parcelable;)V

    .line 201
    return-void
.end method

.method public onSubItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
    .line 204
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragment$1;->this$0:Lcom/cymobile/ymwork/widget/ShopFilterFragment;

    #getter for: Lcom/cymobile/ymwork/widget/ShopFilterFragment;->subFilterAdapter:Lcom/cymobile/ymwork/adapter/SubFilterAdapter;
    invoke-static {v1}, Lcom/cymobile/ymwork/widget/ShopFilterFragment;->access$1(Lcom/cymobile/ymwork/widget/ShopFilterFragment;)Lcom/cymobile/ymwork/adapter/SubFilterAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/cymobile/ymwork/adapter/SubFilterAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cymobile/ymwork/types/Category;

    .line 205
    .local v0, subCategory:Lcom/cymobile/ymwork/types/Category;
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragment$1;->this$0:Lcom/cymobile/ymwork/widget/ShopFilterFragment;

    #setter for: Lcom/cymobile/ymwork/widget/ShopFilterFragment;->selectedCategory:Lcom/cymobile/ymwork/types/Category;
    invoke-static {v1, v0}, Lcom/cymobile/ymwork/widget/ShopFilterFragment;->access$3(Lcom/cymobile/ymwork/widget/ShopFilterFragment;Lcom/cymobile/ymwork/types/Category;)V

    .line 206
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragment$1;->this$0:Lcom/cymobile/ymwork/widget/ShopFilterFragment;

    iget-object v1, v1, Lcom/cymobile/ymwork/widget/ShopFilterFragment;->btnCategoryFilter:Landroid/widget/Button;

    iget-object v2, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragment$1;->this$0:Lcom/cymobile/ymwork/widget/ShopFilterFragment;

    #getter for: Lcom/cymobile/ymwork/widget/ShopFilterFragment;->selectedCategory:Lcom/cymobile/ymwork/types/Category;
    invoke-static {v2}, Lcom/cymobile/ymwork/widget/ShopFilterFragment;->access$4(Lcom/cymobile/ymwork/widget/ShopFilterFragment;)Lcom/cymobile/ymwork/types/Category;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/Category;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragment$1;->this$0:Lcom/cymobile/ymwork/widget/ShopFilterFragment;

    const/4 v2, 0x1

    #calls: Lcom/cymobile/ymwork/widget/ShopFilterFragment;->dismissCategory(Z)V
    invoke-static {v1, v2}, Lcom/cymobile/ymwork/widget/ShopFilterFragment;->access$5(Lcom/cymobile/ymwork/widget/ShopFilterFragment;Z)V

    .line 208
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragment$1;->this$0:Lcom/cymobile/ymwork/widget/ShopFilterFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/widget/ShopFilterFragment;->selectionChanged(Z)V

    .line 209
    return-void
.end method
