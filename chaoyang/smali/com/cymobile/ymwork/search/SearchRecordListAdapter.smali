.class public Lcom/cymobile/ymwork/search/SearchRecordListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SearchRecordListAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cymobile/ymwork/search/SearchRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 19
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/cymobile/ymwork/search/SearchRecordListAdapter;->mDataList:Ljava/util/List;

    .line 20
    iput-object p1, p0, Lcom/cymobile/ymwork/search/SearchRecordListAdapter;->mContext:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method public addAllItem(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cymobile/ymwork/search/SearchRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/cymobile/ymwork/search/SearchRecord;>;"
    iget-object v0, p0, Lcom/cymobile/ymwork/search/SearchRecordListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 25
    invoke-virtual {p0}, Lcom/cymobile/ymwork/search/SearchRecordListAdapter;->notifyDataSetChanged()V

    .line 26
    return-void
.end method

.method public addItem(Lcom/cymobile/ymwork/search/SearchRecord;)V
    .locals 1
    .parameter "searchRecord"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/cymobile/ymwork/search/SearchRecordListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    invoke-virtual {p0}, Lcom/cymobile/ymwork/search/SearchRecordListAdapter;->notifyDataSetChanged()V

    .line 31
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/cymobile/ymwork/search/SearchRecordListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "i"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/cymobile/ymwork/search/SearchRecordListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "i"

    .prologue
    .line 42
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "i"
    .parameter "view"
    .parameter "viewGroup"

    .prologue
    .line 46
    const/4 v1, 0x0

    .line 47
    .local v1, searRecordListTextItem:Lcom/cymobile/ymwork/search/SearchRecordListTextItem;
    if-nez p2, :cond_0

    .line 48
    new-instance v1, Lcom/cymobile/ymwork/search/SearchRecordListTextItem;

    .end local v1           #searRecordListTextItem:Lcom/cymobile/ymwork/search/SearchRecordListTextItem;
    iget-object v4, p0, Lcom/cymobile/ymwork/search/SearchRecordListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/cymobile/ymwork/search/SearchRecordListTextItem;-><init>(Landroid/content/Context;)V

    .line 52
    .restart local v1       #searRecordListTextItem:Lcom/cymobile/ymwork/search/SearchRecordListTextItem;
    :goto_0
    iget-object v4, p0, Lcom/cymobile/ymwork/search/SearchRecordListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cymobile/ymwork/search/SearchRecord;

    invoke-virtual {v4}, Lcom/cymobile/ymwork/search/SearchRecord;->getSearchRecordText()Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, text:Ljava/lang/String;
    invoke-virtual {v1, v3}, Lcom/cymobile/ymwork/search/SearchRecordListTextItem;->setItemText(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v1, v3}, Lcom/cymobile/ymwork/search/SearchRecordListTextItem;->setDeletButotnTag(Ljava/lang/String;)V

    .line 55
    iget-object v2, p0, Lcom/cymobile/ymwork/search/SearchRecordListAdapter;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/cymobile/ymwork/act/SearchableActivity;

    .line 56
    .local v2, searchview:Lcom/cymobile/ymwork/act/SearchableActivity;
    new-instance v0, Lcom/cymobile/ymwork/search/SearchHistoryDeleteItemButtonClickListener;

    invoke-direct {v0, v2}, Lcom/cymobile/ymwork/search/SearchHistoryDeleteItemButtonClickListener;-><init>(Lcom/cymobile/ymwork/act/SearchableActivity;)V

    .line 57
    .local v0, listener:Lcom/cymobile/ymwork/search/SearchHistoryDeleteItemButtonClickListener;
    invoke-virtual {v1, v0}, Lcom/cymobile/ymwork/search/SearchRecordListTextItem;->setOnSearchHistoryDeleteItemButtonClickListener(Lcom/cymobile/ymwork/search/SearchHistoryDeleteItemButtonClickListener;)V

    .line 58
    return-object v1

    .end local v0           #listener:Lcom/cymobile/ymwork/search/SearchHistoryDeleteItemButtonClickListener;
    .end local v2           #searchview:Lcom/cymobile/ymwork/act/SearchableActivity;
    .end local v3           #text:Ljava/lang/String;
    :cond_0
    move-object v1, p2

    .line 50
    check-cast v1, Lcom/cymobile/ymwork/search/SearchRecordListTextItem;

    goto :goto_0
.end method
