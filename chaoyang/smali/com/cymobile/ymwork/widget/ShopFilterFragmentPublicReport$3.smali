.class Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport$3;
.super Ljava/lang/Object;
.source "ShopFilterFragmentPublicReport.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->onActivityCreated(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport$3;->this$0:Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;

    .line 339
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
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x0

    .line 345
    .line 346
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 347
    .local v0, selected:Ljava/lang/Object;
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport$3;->this$0:Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;

    #getter for: Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->filterPairAdapter:Lcom/cymobile/ymwork/adapter/SubFilterAdapter;
    invoke-static {v1}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->access$13(Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;)Lcom/cymobile/ymwork/adapter/SubFilterAdapter;

    move-result-object v1

    .line 348
    invoke-virtual {v1, p3}, Lcom/cymobile/ymwork/adapter/SubFilterAdapter;->setSelectItem(I)V

    .line 349
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport$3;->this$0:Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;

    #getter for: Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->filterPairAdapter:Lcom/cymobile/ymwork/adapter/SubFilterAdapter;
    invoke-static {v1}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->access$13(Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;)Lcom/cymobile/ymwork/adapter/SubFilterAdapter;

    move-result-object v1

    .line 350
    invoke-virtual {v1}, Lcom/cymobile/ymwork/adapter/SubFilterAdapter;->notifyDataSetChanged()V

    .line 353
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport$3;->this$0:Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;

    #getter for: Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->btnMoreFilter:Landroid/widget/Button;
    invoke-static {v1}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->access$14(Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;)Landroid/widget/Button;

    move-result-object v2

    move-object v1, v0

    .line 354
    check-cast v1, Lcom/cymobile/ymwork/types/Pair;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Pair;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 355
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport$3;->this$0:Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;

    check-cast v0, Lcom/cymobile/ymwork/types/Pair;

    .end local v0           #selected:Ljava/lang/Object;
    #setter for: Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->selectedFilter:Lcom/cymobile/ymwork/types/Pair;
    invoke-static {v1, v0}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->access$15(Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;Lcom/cymobile/ymwork/types/Pair;)V

    .line 356
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport$3;->this$0:Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;

    const/4 v2, 0x1

    #calls: Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->dismissFilter(Z)V
    invoke-static {v1, v2}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->access$16(Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;Z)V

    .line 357
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport$3;->this$0:Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;

    invoke-virtual {v1, v3}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->selectionChanged(Z)V

    .line 358
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport$3;->this$0:Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;

    invoke-virtual {v1, v3}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->classChanged(Z)V

    .line 370
    return-void
.end method
