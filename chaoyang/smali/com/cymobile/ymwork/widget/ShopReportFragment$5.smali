.class Lcom/cymobile/ymwork/widget/ShopReportFragment$5;
.super Ljava/lang/Object;
.source "ShopReportFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/widget/ShopReportFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    iput-object p1, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment$5;->this$0:Lcom/cymobile/ymwork/widget/ShopReportFragment;

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    const/4 v1, 0x1

    .line 326
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment$5;->this$0:Lcom/cymobile/ymwork/widget/ShopReportFragment;

    #getter for: Lcom/cymobile/ymwork/widget/ShopReportFragment;->categoryLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/cymobile/ymwork/widget/ShopReportFragment;->access$10(Lcom/cymobile/ymwork/widget/ShopReportFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 327
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment$5;->this$0:Lcom/cymobile/ymwork/widget/ShopReportFragment;

    #getter for: Lcom/cymobile/ymwork/widget/ShopReportFragment;->categoryLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/cymobile/ymwork/widget/ShopReportFragment;->access$10(Lcom/cymobile/ymwork/widget/ShopReportFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment$5;->this$0:Lcom/cymobile/ymwork/widget/ShopReportFragment;

    #calls: Lcom/cymobile/ymwork/widget/ShopReportFragment;->dismissCategory(Z)V
    invoke-static {v0, v1}, Lcom/cymobile/ymwork/widget/ShopReportFragment;->access$5(Lcom/cymobile/ymwork/widget/ShopReportFragment;Z)V

    .line 332
    :goto_0
    return-void

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment$5;->this$0:Lcom/cymobile/ymwork/widget/ShopReportFragment;

    #calls: Lcom/cymobile/ymwork/widget/ShopReportFragment;->showCategory()V
    invoke-static {v0}, Lcom/cymobile/ymwork/widget/ShopReportFragment;->access$11(Lcom/cymobile/ymwork/widget/ShopReportFragment;)V

    goto :goto_0
.end method
