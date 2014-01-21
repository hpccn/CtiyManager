.class public Lcom/cymobile/ymwork/widget/FragmentListActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "FragmentListActivity.java"


# instance fields
.field protected mAdapter:Landroid/widget/ListAdapter;

.field private mFinishedStart:Z

.field private mHandler:Landroid/os/Handler;

.field protected mList:Landroid/widget/ListView;

.field private mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mRequestFocus:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/FragmentListActivity;->mHandler:Landroid/os/Handler;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cymobile/ymwork/widget/FragmentListActivity;->mFinishedStart:Z

    .line 29
    new-instance v0, Lcom/cymobile/ymwork/widget/FragmentListActivity$1;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/widget/FragmentListActivity$1;-><init>(Lcom/cymobile/ymwork/widget/FragmentListActivity;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/FragmentListActivity;->mRequestFocus:Ljava/lang/Runnable;

    .line 162
    new-instance v0, Lcom/cymobile/ymwork/widget/FragmentListActivity$2;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/widget/FragmentListActivity$2;-><init>(Lcom/cymobile/ymwork/widget/FragmentListActivity;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/FragmentListActivity;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 14
    return-void
.end method

.method private ensureList()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/FragmentListActivity;->mList:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 160
    :goto_0
    return-void

    .line 159
    :cond_0
    const v0, 0x7f03001c

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/widget/FragmentListActivity;->setContentView(I)V

    goto :goto_0
.end method


# virtual methods
.method public getListAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/FragmentListActivity;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/cymobile/ymwork/widget/FragmentListActivity;->ensureList()V

    .line 142
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/FragmentListActivity;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method public getSelectedItemId()J
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/FragmentListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/FragmentListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public onContentChanged()V
    .locals 3

    .prologue
    .line 78
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onContentChanged()V

    .line 84
    const v1, 0x1020004

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/widget/FragmentListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 85
    .local v0, emptyView:Landroid/view/View;
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/widget/FragmentListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/cymobile/ymwork/widget/FragmentListActivity;->mList:Landroid/widget/ListView;

    .line 86
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/FragmentListActivity;->mList:Landroid/widget/ListView;

    if-nez v1, :cond_0

    .line 87
    new-instance v1, Ljava/lang/RuntimeException;

    .line 88
    const-string v2, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    .line 87
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 91
    :cond_0
    if-eqz v0, :cond_1

    .line 92
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/FragmentListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 94
    :cond_1
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/FragmentListActivity;->mList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/cymobile/ymwork/widget/FragmentListActivity;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 95
    iget-boolean v1, p0, Lcom/cymobile/ymwork/widget/FragmentListActivity;->mFinishedStart:Z

    if-eqz v1, :cond_2

    .line 96
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/FragmentListActivity;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/widget/FragmentListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 98
    :cond_2
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/FragmentListActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/cymobile/ymwork/widget/FragmentListActivity;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 99
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/cymobile/ymwork/widget/FragmentListActivity;->mFinishedStart:Z

    .line 100
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/FragmentListActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/FragmentListActivity;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 67
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 68
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 47
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/cymobile/ymwork/widget/FragmentListActivity;->ensureList()V

    .line 58
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 59
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 106
    monitor-enter p0

    .line 107
    :try_start_0
    invoke-direct {p0}, Lcom/cymobile/ymwork/widget/FragmentListActivity;->ensureList()V

    .line 108
    iput-object p1, p0, Lcom/cymobile/ymwork/widget/FragmentListActivity;->mAdapter:Landroid/widget/ListAdapter;

    .line 109
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/FragmentListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 106
    monitor-exit p0

    .line 111
    return-void

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSelection(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/FragmentListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 121
    return-void
.end method
