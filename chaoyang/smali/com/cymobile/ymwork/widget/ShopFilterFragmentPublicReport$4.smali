.class Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport$4;
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
    iput-object p1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport$4;->this$0:Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 426
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport$4;->this$0:Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;

    const/4 v1, 0x1

    #calls: Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->dismissClassCategory(Z)V
    invoke-static {v0, v1}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->access$10(Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;Z)V

    .line 427
    return-void
.end method
