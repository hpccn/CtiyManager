.class Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport$9;
.super Ljava/lang/Object;
.source "ShopFilterFragmentPublicReport.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport$9;->this$0:Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;

    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    const/4 v1, 0x1

    .line 477
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport$9;->this$0:Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;

    #getter for: Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->filterLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->access$21(Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 478
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport$9;->this$0:Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;

    #getter for: Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->filterLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->access$21(Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport$9;->this$0:Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;

    #calls: Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->dismissFilter(Z)V
    invoke-static {v0, v1}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->access$16(Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;Z)V

    .line 483
    :goto_0
    return-void

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport$9;->this$0:Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;

    #calls: Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->showFilter()V
    invoke-static {v0}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->access$22(Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;)V

    goto :goto_0
.end method
