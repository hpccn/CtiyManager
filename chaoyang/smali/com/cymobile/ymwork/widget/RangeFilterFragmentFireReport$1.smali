.class Lcom/cymobile/ymwork/widget/RangeFilterFragmentFireReport$1;
.super Ljava/lang/Object;
.source "RangeFilterFragmentFireReport.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/widget/RangeFilterFragmentFireReport;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/widget/RangeFilterFragmentFireReport;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/widget/RangeFilterFragmentFireReport;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentFireReport$1;->this$0:Lcom/cymobile/ymwork/widget/RangeFilterFragmentFireReport;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentFireReport$1;->this$0:Lcom/cymobile/ymwork/widget/RangeFilterFragmentFireReport;

    const/4 v1, 0x1

    #calls: Lcom/cymobile/ymwork/widget/RangeFilterFragmentFireReport;->dismissRange(Z)V
    invoke-static {v0, v1}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentFireReport;->access$0(Lcom/cymobile/ymwork/widget/RangeFilterFragmentFireReport;Z)V

    .line 101
    return-void
.end method
