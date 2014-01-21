.class Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstruction$2;
.super Ljava/lang/Object;
.source "RangeFilterFragmentConstruction.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstruction;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstruction;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstruction;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstruction$2;->this$0:Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstruction;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstruction$2;->this$0:Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstruction;

    #getter for: Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstruction;->rangeLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstruction;->access$1(Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstruction;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstruction$2;->this$0:Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstruction;

    const/4 v1, 0x1

    #calls: Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstruction;->dismissRange(Z)V
    invoke-static {v0, v1}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstruction;->access$0(Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstruction;Z)V

    .line 115
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstruction$2;->this$0:Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstruction;

    #calls: Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstruction;->showRange()V
    invoke-static {v0}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstruction;->access$2(Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstruction;)V

    goto :goto_0
.end method
