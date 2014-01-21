.class public Lcom/cymobile/ymwork/search/SearchJsonListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SearchJsonListAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SearchJsonListAdapter"


# instance fields
.field private mCloseButton:Landroid/widget/Button;

.field private mCloseItemView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mObserver:Lcom/cymobile/ymwork/search/SugCloseButtonCloseObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/cymobile/ymwork/search/SearchJsonListAdapter;->mDataList:Ljava/util/List;

    .line 28
    iput-object p1, p0, Lcom/cymobile/ymwork/search/SearchJsonListAdapter;->mContext:Landroid/content/Context;

    .line 29
    check-cast p1, Lcom/cymobile/ymwork/search/SugCloseButtonCloseObserver;

    .end local p1
    iput-object p1, p0, Lcom/cymobile/ymwork/search/SearchJsonListAdapter;->mObserver:Lcom/cymobile/ymwork/search/SugCloseButtonCloseObserver;

    .line 30
    return-void
.end method

.method static synthetic access$0(Lcom/cymobile/ymwork/search/SearchJsonListAdapter;)Lcom/cymobile/ymwork/search/SugCloseButtonCloseObserver;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/cymobile/ymwork/search/SearchJsonListAdapter;->mObserver:Lcom/cymobile/ymwork/search/SugCloseButtonCloseObserver;

    return-object v0
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
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/cymobile/ymwork/search/SearchJsonListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 34
    invoke-virtual {p0}, Lcom/cymobile/ymwork/search/SearchJsonListAdapter;->notifyDataSetChanged()V

    .line 35
    return-void
.end method

.method public addItem(Ljava/lang/String;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/cymobile/ymwork/search/SearchJsonListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-virtual {p0}, Lcom/cymobile/ymwork/search/SearchJsonListAdapter;->notifyDataSetChanged()V

    .line 40
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cymobile/ymwork/search/SearchJsonListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "i"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/cymobile/ymwork/search/SearchJsonListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "i"

    .prologue
    .line 51
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "i"
    .parameter "view"
    .parameter "viewGroup"

    .prologue
    .line 55
    const-string v1, "SearchJsonListAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SearchJsonListAdapter getView()"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "view="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, item:Lcom/cymobile/ymwork/search/SearchJsonListTextItem;
    iget-object v1, p0, Lcom/cymobile/ymwork/search/SearchJsonListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 58
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v0, p2

    .line 59
    check-cast v0, Lcom/cymobile/ymwork/search/SearchJsonListTextItem;

    .line 64
    :goto_0
    iget-object v1, p0, Lcom/cymobile/ymwork/search/SearchJsonListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/search/SearchJsonListTextItem;->setItemText(Ljava/lang/String;)V

    move-object v1, v0

    .line 79
    :goto_1
    return-object v1

    .line 61
    :cond_0
    new-instance v0, Lcom/cymobile/ymwork/search/SearchJsonListTextItem;

    .end local v0           #item:Lcom/cymobile/ymwork/search/SearchJsonListTextItem;
    iget-object v1, p0, Lcom/cymobile/ymwork/search/SearchJsonListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cymobile/ymwork/search/SearchJsonListTextItem;-><init>(Landroid/content/Context;)V

    .line 62
    .restart local v0       #item:Lcom/cymobile/ymwork/search/SearchJsonListTextItem;
    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/search/SearchJsonListTextItem;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 67
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 68
    iput-object p2, p0, Lcom/cymobile/ymwork/search/SearchJsonListAdapter;->mCloseItemView:Landroid/view/View;

    .line 78
    :goto_2
    iget-object v1, p0, Lcom/cymobile/ymwork/search/SearchJsonListAdapter;->mCloseItemView:Landroid/view/View;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 79
    iget-object v1, p0, Lcom/cymobile/ymwork/search/SearchJsonListAdapter;->mCloseItemView:Landroid/view/View;

    goto :goto_1

    .line 70
    :cond_2
    iget-object v1, p0, Lcom/cymobile/ymwork/search/SearchJsonListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030033

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/cymobile/ymwork/search/SearchJsonListAdapter;->mCloseItemView:Landroid/view/View;

    .line 71
    iget-object v1, p0, Lcom/cymobile/ymwork/search/SearchJsonListAdapter;->mCloseItemView:Landroid/view/View;

    const v2, 0x7f0800ce

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/cymobile/ymwork/search/SearchJsonListAdapter;->mCloseButton:Landroid/widget/Button;

    .line 72
    iget-object v1, p0, Lcom/cymobile/ymwork/search/SearchJsonListAdapter;->mCloseButton:Landroid/widget/Button;

    new-instance v2, Lcom/cymobile/ymwork/search/SearchJsonListAdapter$1;

    invoke-direct {v2, p0}, Lcom/cymobile/ymwork/search/SearchJsonListAdapter$1;-><init>(Lcom/cymobile/ymwork/search/SearchJsonListAdapter;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method
