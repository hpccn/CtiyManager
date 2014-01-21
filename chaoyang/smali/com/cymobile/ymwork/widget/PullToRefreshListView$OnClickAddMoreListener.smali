.class Lcom/cymobile/ymwork/widget/PullToRefreshListView$OnClickAddMoreListener;
.super Ljava/lang/Object;
.source "PullToRefreshListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/widget/PullToRefreshListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnClickAddMoreListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/widget/PullToRefreshListView;


# direct methods
.method private constructor <init>(Lcom/cymobile/ymwork/widget/PullToRefreshListView;)V
    .locals 0
    .parameter

    .prologue
    .line 673
    iput-object p1, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView$OnClickAddMoreListener;->this$0:Lcom/cymobile/ymwork/widget/PullToRefreshListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cymobile/ymwork/widget/PullToRefreshListView;Lcom/cymobile/ymwork/widget/PullToRefreshListView$OnClickAddMoreListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 673
    invoke-direct {p0, p1}, Lcom/cymobile/ymwork/widget/PullToRefreshListView$OnClickAddMoreListener;-><init>(Lcom/cymobile/ymwork/widget/PullToRefreshListView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 676
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView$OnClickAddMoreListener;->this$0:Lcom/cymobile/ymwork/widget/PullToRefreshListView;

    #getter for: Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mAddMoreState:I
    invoke-static {v0}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->access$1(Lcom/cymobile/ymwork/widget/PullToRefreshListView;)I

    move-result v0

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    .line 678
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView$OnClickAddMoreListener;->this$0:Lcom/cymobile/ymwork/widget/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->prepareForAddMore()V

    .line 679
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView$OnClickAddMoreListener;->this$0:Lcom/cymobile/ymwork/widget/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->onAddMore()V

    .line 682
    :cond_0
    return-void
.end method
