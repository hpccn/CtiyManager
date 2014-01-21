.class Lcom/cymobile/ymwork/widget/ShopReportFragment$1;
.super Ljava/lang/Object;
.source "ShopReportFragment.java"

# interfaces
.implements Lcom/cymobile/ymwork/widget/DoubleLevelList$OnDoubleItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/widget/ShopReportFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/widget/ShopReportFragment;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/widget/ShopReportFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment$1;->this$0:Lcom/cymobile/ymwork/widget/ShopReportFragment;

    .line 207
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
    .line 210
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment$1;->this$0:Lcom/cymobile/ymwork/widget/ShopReportFragment;

    #getter for: Lcom/cymobile/ymwork/widget/ShopReportFragment;->mainFilterAdapter:Lcom/cymobile/ymwork/adapter/MainFilterAdapter;
    invoke-static {v1}, Lcom/cymobile/ymwork/widget/ShopReportFragment;->access$0(Lcom/cymobile/ymwork/widget/ShopReportFragment;)Lcom/cymobile/ymwork/adapter/MainFilterAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/cymobile/ymwork/adapter/MainFilterAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 211
    .local v0, mainCategory:Landroid/os/Parcelable;
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment$1;->this$0:Lcom/cymobile/ymwork/widget/ShopReportFragment;

    #getter for: Lcom/cymobile/ymwork/widget/ShopReportFragment;->mainFilterAdapter:Lcom/cymobile/ymwork/adapter/MainFilterAdapter;
    invoke-static {v1}, Lcom/cymobile/ymwork/widget/ShopReportFragment;->access$0(Lcom/cymobile/ymwork/widget/ShopReportFragment;)Lcom/cymobile/ymwork/adapter/MainFilterAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/cymobile/ymwork/adapter/MainFilterAdapter;->setSelectItem(I)V

    .line 212
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment$1;->this$0:Lcom/cymobile/ymwork/widget/ShopReportFragment;

    #getter for: Lcom/cymobile/ymwork/widget/ShopReportFragment;->subFilterAdapter:Lcom/cymobile/ymwork/adapter/SubFilterAdapter;
    invoke-static {v1}, Lcom/cymobile/ymwork/widget/ShopReportFragment;->access$1(Lcom/cymobile/ymwork/widget/ShopReportFragment;)Lcom/cymobile/ymwork/adapter/SubFilterAdapter;

    move-result-object v2

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment$1;->this$0:Lcom/cymobile/ymwork/widget/ShopReportFragment;

    #getter for: Lcom/cymobile/ymwork/widget/ShopReportFragment;->subCategoryMapItems:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/cymobile/ymwork/widget/ShopReportFragment;->access$2(Lcom/cymobile/ymwork/widget/ShopReportFragment;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/cymobile/ymwork/adapter/SubFilterAdapter;->setDataSet(Ljava/util/List;Landroid/os/Parcelable;)V

    .line 213
    return-void
.end method

.method public onSubItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x2

    .line 216
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment$1;->this$0:Lcom/cymobile/ymwork/widget/ShopReportFragment;

    #getter for: Lcom/cymobile/ymwork/widget/ShopReportFragment;->subFilterAdapter:Lcom/cymobile/ymwork/adapter/SubFilterAdapter;
    invoke-static {v1}, Lcom/cymobile/ymwork/widget/ShopReportFragment;->access$1(Lcom/cymobile/ymwork/widget/ShopReportFragment;)Lcom/cymobile/ymwork/adapter/SubFilterAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/cymobile/ymwork/adapter/SubFilterAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cymobile/ymwork/types/Category;

    .line 217
    .local v0, subCategory:Lcom/cymobile/ymwork/types/Category;
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment$1;->this$0:Lcom/cymobile/ymwork/widget/ShopReportFragment;

    #setter for: Lcom/cymobile/ymwork/widget/ShopReportFragment;->selectedCategory:Lcom/cymobile/ymwork/types/Category;
    invoke-static {v1, v0}, Lcom/cymobile/ymwork/widget/ShopReportFragment;->access$3(Lcom/cymobile/ymwork/widget/ShopReportFragment;Lcom/cymobile/ymwork/types/Category;)V

    .line 218
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment$1;->this$0:Lcom/cymobile/ymwork/widget/ShopReportFragment;

    #getter for: Lcom/cymobile/ymwork/widget/ShopReportFragment;->selectedCategory:Lcom/cymobile/ymwork/types/Category;
    invoke-static {v1}, Lcom/cymobile/ymwork/widget/ShopReportFragment;->access$4(Lcom/cymobile/ymwork/widget/ShopReportFragment;)Lcom/cymobile/ymwork/types/Category;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Category;->name()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/cymobile/ymwork/widget/ShopReportFragment;->street_name:Ljava/lang/String;

    .line 219
    sget-object v1, Lcom/cymobile/ymwork/widget/ShopReportFragment;->street_name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 220
    const-string v1, "\u5168\u533a"

    sput-object v1, Lcom/cymobile/ymwork/widget/ShopReportFragment;->street_name:Ljava/lang/String;

    .line 226
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment$1;->this$0:Lcom/cymobile/ymwork/widget/ShopReportFragment;

    iget-object v1, v1, Lcom/cymobile/ymwork/widget/ShopReportFragment;->btnCategoryFilter:Landroid/widget/Button;

    sget-object v2, Lcom/cymobile/ymwork/widget/ShopReportFragment;->street_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment$1;->this$0:Lcom/cymobile/ymwork/widget/ShopReportFragment;

    const/4 v2, 0x1

    #calls: Lcom/cymobile/ymwork/widget/ShopReportFragment;->dismissCategory(Z)V
    invoke-static {v1, v2}, Lcom/cymobile/ymwork/widget/ShopReportFragment;->access$5(Lcom/cymobile/ymwork/widget/ShopReportFragment;Z)V

    .line 228
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment$1;->this$0:Lcom/cymobile/ymwork/widget/ShopReportFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/widget/ShopReportFragment;->selectionChanged(Z)V

    .line 229
    return-void

    .line 222
    :cond_1
    sget-object v1, Lcom/cymobile/ymwork/widget/ShopReportFragment;->street_name:Ljava/lang/String;

    const-string v2, "\u5168\u90e8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    sget-object v1, Lcom/cymobile/ymwork/widget/ShopReportFragment;->street_name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/cymobile/ymwork/widget/ShopReportFragment;->street_name:Ljava/lang/String;

    goto :goto_0
.end method
