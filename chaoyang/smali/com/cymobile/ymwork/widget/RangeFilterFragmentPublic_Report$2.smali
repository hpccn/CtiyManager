.class Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublic_Report$2;
.super Ljava/lang/Object;
.source "RangeFilterFragmentPublic_Report.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublic_Report;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublic_Report;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublic_Report;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublic_Report$2;->this$0:Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublic_Report;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublic_Report$2;->this$0:Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublic_Report;

    #getter for: Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublic_Report;->rangeLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublic_Report;->access$1(Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublic_Report;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublic_Report$2;->this$0:Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublic_Report;

    const/4 v1, 0x1

    #calls: Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublic_Report;->dismissRange(Z)V
    invoke-static {v0, v1}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublic_Report;->access$0(Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublic_Report;Z)V

    .line 113
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublic_Report$2;->this$0:Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublic_Report;

    #calls: Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublic_Report;->showRange()V
    invoke-static {v0}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublic_Report;->access$2(Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublic_Report;)V

    goto :goto_0
.end method
