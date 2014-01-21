.class public Lcom/cymobile/ymwork/widget/LoadableListFragmentWithViewAndHeaderFire;
.super Lcom/cymobile/ymwork/widget/FragmentListActivity;
.source "LoadableListFragmentWithViewAndHeaderFire.java"


# static fields
.field public static final CONTENT_VIEW_ID:I = 0x9a2114


# instance fields
.field private filterFragment:Lcom/cymobile/ymwork/widget/RangeFilterFragmentFire;

.field private mLayoutHeader:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/cymobile/ymwork/widget/FragmentListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getFilterDataSource()Lcom/cymobile/ymwork/adapter/FilterDataSource;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/LoadableListFragmentWithViewAndHeaderFire;->filterFragment:Lcom/cymobile/ymwork/widget/RangeFilterFragmentFire;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentFire;->getFilterDataSource()Lcom/cymobile/ymwork/adapter/FilterDataSource;

    move-result-object v0

    return-object v0
.end method

.method public getFilterFragment()Lcom/cymobile/ymwork/widget/RangeFilterFragmentFire;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/LoadableListFragmentWithViewAndHeaderFire;->filterFragment:Lcom/cymobile/ymwork/widget/RangeFilterFragmentFire;

    return-object v0
.end method

.method public getHeaderLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/LoadableListFragmentWithViewAndHeaderFire;->mLayoutHeader:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getLayoutHeader()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/LoadableListFragmentWithViewAndHeaderFire;->mLayoutHeader:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getNoSearchResultsStringId()I
    .locals 1

    .prologue
    .line 94
    const v0, 0x7f090033

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/LoadableListFragmentWithViewAndHeaderFire;->filterFragment:Lcom/cymobile/ymwork/widget/RangeFilterFragmentFire;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentFire;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    invoke-super {p0}, Lcom/cymobile/ymwork/widget/FragmentListActivity;->onBackPressed()V

    .line 61
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const v3, 0x9a2114

    .line 42
    invoke-super {p0, p1}, Lcom/cymobile/ymwork/widget/FragmentListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    new-instance v1, Lcom/cymobile/ymwork/widget/RangeFilterFragmentFire;

    invoke-direct {v1}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentFire;-><init>()V

    iput-object v1, p0, Lcom/cymobile/ymwork/widget/LoadableListFragmentWithViewAndHeaderFire;->filterFragment:Lcom/cymobile/ymwork/widget/RangeFilterFragmentFire;

    .line 44
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/LoadableListFragmentWithViewAndHeaderFire;->filterFragment:Lcom/cymobile/ymwork/widget/RangeFilterFragmentFire;

    new-instance v2, Lcom/cymobile/ymwork/adapter/FilterDataSource;

    invoke-direct {v2}, Lcom/cymobile/ymwork/adapter/FilterDataSource;-><init>()V

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentFire;->setShopListDataSource(Lcom/cymobile/ymwork/adapter/FilterDataSource;)V

    .line 45
    const v1, 0x7f0800a6

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/widget/LoadableListFragmentWithViewAndHeaderFire;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/cymobile/ymwork/widget/LoadableListFragmentWithViewAndHeaderFire;->mLayoutHeader:Landroid/widget/LinearLayout;

    .line 46
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/LoadableListFragmentWithViewAndHeaderFire;->mLayoutHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setId(I)V

    .line 49
    invoke-virtual {p0}, Lcom/cymobile/ymwork/widget/LoadableListFragmentWithViewAndHeaderFire;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 50
    .local v0, ft:Landroid/support/v4/app/FragmentTransaction;
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/LoadableListFragmentWithViewAndHeaderFire;->filterFragment:Lcom/cymobile/ymwork/widget/RangeFilterFragmentFire;

    invoke-virtual {v0, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 52
    invoke-virtual {p0}, Lcom/cymobile/ymwork/widget/LoadableListFragmentWithViewAndHeaderFire;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 53
    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 64
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :cond_0
    :goto_0
    const v2, 0x1020004

    invoke-virtual {p0, v2}, Lcom/cymobile/ymwork/widget/LoadableListFragmentWithViewAndHeaderFire;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 71
    .local v1, parent:Landroid/widget/LinearLayout;
    if-eqz v1, :cond_1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 72
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 75
    :cond_1
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-le v2, v4, :cond_2

    .line 76
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 79
    :cond_2
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 80
    return-void

    .line 67
    .end local v1           #parent:Landroid/widget/LinearLayout;
    :catch_0
    move-exception v0

    .line 68
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setLoadingView()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 83
    const v2, 0x102000a

    invoke-virtual {p0, v2}, Lcom/cymobile/ymwork/widget/LoadableListFragmentWithViewAndHeaderFire;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;

    .line 84
    .local v0, list:Lcom/cymobile/ymwork/widget/PullToRefreshListView;
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->setVisibility(I)V

    .line 85
    const v2, 0x1020004

    invoke-virtual {p0, v2}, Lcom/cymobile/ymwork/widget/LoadableListFragmentWithViewAndHeaderFire;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 86
    .local v1, parent:Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-le v2, v4, :cond_0

    .line 87
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 89
    :cond_0
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 90
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 91
    return-void
.end method
