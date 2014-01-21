.class Lcom/cymobile/ymwork/widget/ShopFilterFragment$6;
.super Ljava/lang/Object;
.source "ShopFilterFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/widget/ShopFilterFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    iput-object p1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragment$6;->this$0:Lcom/cymobile/ymwork/widget/ShopFilterFragment;

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    const/4 v1, 0x1

    .line 318
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragment$6;->this$0:Lcom/cymobile/ymwork/widget/ShopFilterFragment;

    #getter for: Lcom/cymobile/ymwork/widget/ShopFilterFragment;->filterLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/cymobile/ymwork/widget/ShopFilterFragment;->access$12(Lcom/cymobile/ymwork/widget/ShopFilterFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 319
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragment$6;->this$0:Lcom/cymobile/ymwork/widget/ShopFilterFragment;

    #getter for: Lcom/cymobile/ymwork/widget/ShopFilterFragment;->filterLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/cymobile/ymwork/widget/ShopFilterFragment;->access$12(Lcom/cymobile/ymwork/widget/ShopFilterFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragment$6;->this$0:Lcom/cymobile/ymwork/widget/ShopFilterFragment;

    #calls: Lcom/cymobile/ymwork/widget/ShopFilterFragment;->dismissFilter(Z)V
    invoke-static {v0, v1}, Lcom/cymobile/ymwork/widget/ShopFilterFragment;->access$9(Lcom/cymobile/ymwork/widget/ShopFilterFragment;Z)V

    .line 324
    :goto_0
    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragment$6;->this$0:Lcom/cymobile/ymwork/widget/ShopFilterFragment;

    #calls: Lcom/cymobile/ymwork/widget/ShopFilterFragment;->showFilter()V
    invoke-static {v0}, Lcom/cymobile/ymwork/widget/ShopFilterFragment;->access$13(Lcom/cymobile/ymwork/widget/ShopFilterFragment;)V

    goto :goto_0
.end method
