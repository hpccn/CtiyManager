.class public Lcom/cymobile/ymwork/widget/SeparatedListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SeparatedListAdapter.java"

# interfaces
.implements Lcom/cymobile/ymwork/widget/ObservableAdapter;


# instance fields
.field mContext:Landroid/content/Context;

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field public final sections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/widget/Adapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 16
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->sections:Ljava/util/Map;

    .line 146
    new-instance v0, Lcom/cymobile/ymwork/widget/SeparatedListAdapter$1;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter$1;-><init>(Lcom/cymobile/ymwork/widget/SeparatedListAdapter;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 20
    iput-object p1, p0, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->mContext:Landroid/content/Context;

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "layoutId"

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 16
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->sections:Ljava/util/Map;

    .line 146
    new-instance v0, Lcom/cymobile/ymwork/widget/SeparatedListAdapter$1;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter$1;-><init>(Lcom/cymobile/ymwork/widget/SeparatedListAdapter;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 25
    iput-object p1, p0, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->mContext:Landroid/content/Context;

    .line 26
    return-void
.end method


# virtual methods
.method public addSection(Ljava/lang/String;Landroid/widget/Adapter;)V
    .locals 1
    .parameter "section"
    .parameter "adapter"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p2, v0}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 34
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 50
    invoke-virtual {p0}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->notifyDataSetInvalidated()V

    .line 51
    return-void
.end method

.method public getAdapter(Ljava/lang/String;)Landroid/widget/Adapter;
    .locals 1
    .parameter "section"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    return-object v0
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 70
    const/4 v1, 0x0

    .line 71
    .local v1, total:I
    iget-object v2, p0, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 73
    return v1

    .line 71
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    .line 72
    .local v0, adapter:Landroid/widget/Adapter;
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 5
    .parameter "position"

    .prologue
    .line 54
    iget-object v3, p0, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 65
    const/4 v1, 0x0

    :cond_0
    :goto_1
    return-object v1

    .line 54
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 55
    .local v1, section:Ljava/lang/Object;
    iget-object v4, p0, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    .line 56
    .local v0, adapter:Landroid/widget/Adapter;
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    add-int/lit8 v2, v4, 0x1

    .line 59
    .local v2, size:I
    if-eqz p1, :cond_0

    .line 60
    if-ge p1, v2, :cond_2

    add-int/lit8 v3, p1, -0x1

    invoke-interface {v0, v3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 63
    :cond_2
    sub-int/2addr p1, v2

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 138
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 7
    .parameter "position"

    .prologue
    const/4 v4, -0x1

    .line 87
    const/4 v3, 0x1

    .line 88
    .local v3, type:I
    iget-object v5, p0, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 101
    :cond_0
    :goto_1
    return v4

    .line 88
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 89
    .local v1, section:Ljava/lang/Object;
    iget-object v6, p0, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    .line 90
    .local v0, adapter:Landroid/widget/Adapter;
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v6

    add-int/lit8 v2, v6, 0x1

    .line 94
    .local v2, size:I
    if-eqz p1, :cond_0

    .line 95
    if-ge p1, v2, :cond_2

    add-int/lit8 v4, p1, -0x1

    invoke-interface {v0, v4}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v4

    add-int/2addr v4, v3

    goto :goto_1

    .line 98
    :cond_2
    sub-int/2addr p1, v2

    .line 99
    invoke-interface {v0}, Landroid/widget/Adapter;->getViewTypeCount()I

    move-result v6

    add-int/2addr v3, v6

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 121
    const/4 v2, 0x0

    .line 122
    .local v2, sectionnum:I
    iget-object v4, p0, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 134
    const/4 v4, 0x0

    :goto_1
    return-object v4

    .line 122
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 123
    .local v1, section:Ljava/lang/Object;
    iget-object v5, p0, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    .line 124
    .local v0, adapter:Landroid/widget/Adapter;
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    .line 128
    .local v3, size:I
    if-ge p1, v3, :cond_1

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto :goto_1

    .line 131
    :cond_1
    sub-int/2addr p1, v3

    .line 132
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 4

    .prologue
    .line 79
    const/4 v1, 0x1

    .line 80
    .local v1, total:I
    iget-object v2, p0, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 82
    return v1

    .line 80
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    .line 81
    .local v0, adapter:Landroid/widget/Adapter;
    invoke-interface {v0}, Landroid/widget/Adapter;->getViewTypeCount()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method public removeObserver()V
    .locals 4

    .prologue
    .line 40
    iget-object v2, p0, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 46
    return-void

    .line 40
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 41
    .local v1, it:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/widget/Adapter;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/cymobile/ymwork/widget/ObservableAdapter;

    if-eqz v3, :cond_0

    .line 42
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cymobile/ymwork/widget/ObservableAdapter;

    .line 43
    .local v0, adapter:Lcom/cymobile/ymwork/widget/ObservableAdapter;
    invoke-interface {v0}, Lcom/cymobile/ymwork/widget/ObservableAdapter;->removeObserver()V

    goto :goto_0
.end method
