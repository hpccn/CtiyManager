.class Lcom/cymobile/ymwork/widget/PullToRefreshListView$OnClickRefreshListener;
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
    name = "OnClickRefreshListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/widget/PullToRefreshListView;


# direct methods
.method private constructor <init>(Lcom/cymobile/ymwork/widget/PullToRefreshListView;)V
    .locals 0
    .parameter

    .prologue
    .line 662
    iput-object p1, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView$OnClickRefreshListener;->this$0:Lcom/cymobile/ymwork/widget/PullToRefreshListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cymobile/ymwork/widget/PullToRefreshListView;Lcom/cymobile/ymwork/widget/PullToRefreshListView$OnClickRefreshListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 662
    invoke-direct {p0, p1}, Lcom/cymobile/ymwork/widget/PullToRefreshListView$OnClickRefreshListener;-><init>(Lcom/cymobile/ymwork/widget/PullToRefreshListView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 665
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView$OnClickRefreshListener;->this$0:Lcom/cymobile/ymwork/widget/PullToRefreshListView;

    #getter for: Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshState:I
    invoke-static {v0}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->access$0(Lcom/cymobile/ymwork/widget/PullToRefreshListView;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 666
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView$OnClickRefreshListener;->this$0:Lcom/cymobile/ymwork/widget/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->prepareForRefresh()V

    .line 667
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView$OnClickRefreshListener;->this$0:Lcom/cymobile/ymwork/widget/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->onRefresh()V

    .line 669
    :cond_0
    return-void
.end method
