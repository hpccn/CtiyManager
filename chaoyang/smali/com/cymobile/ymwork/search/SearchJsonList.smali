.class public Lcom/cymobile/ymwork/search/SearchJsonList;
.super Landroid/widget/LinearLayout;
.source "SearchJsonList.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mJsonLoadingText:Landroid/widget/TextView;

.field private mListener:Lcom/cymobile/ymwork/search/ISearchJsonListListener;

.field private mSearchJsonListView:Landroid/widget/ListView;

.field private mSearchJsonView:Landroid/widget/LinearLayout;

.field private mjsonKeywordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object p1, p0, Lcom/cymobile/ymwork/search/SearchJsonList;->mContext:Landroid/content/Context;

    .line 30
    invoke-direct {p0}, Lcom/cymobile/ymwork/search/SearchJsonList;->init()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    iput-object p1, p0, Lcom/cymobile/ymwork/search/SearchJsonList;->mContext:Landroid/content/Context;

    .line 36
    invoke-direct {p0}, Lcom/cymobile/ymwork/search/SearchJsonList;->init()V

    .line 37
    return-void
.end method

.method static synthetic access$0(Lcom/cymobile/ymwork/search/SearchJsonList;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/cymobile/ymwork/search/SearchJsonList;->mjsonKeywordList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cymobile/ymwork/search/SearchJsonList;)Lcom/cymobile/ymwork/search/ISearchJsonListListener;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/cymobile/ymwork/search/SearchJsonList;->mListener:Lcom/cymobile/ymwork/search/ISearchJsonListListener;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 40
    iget-object v0, p0, Lcom/cymobile/ymwork/search/SearchJsonList;->mContext:Landroid/content/Context;

    .line 41
    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030030

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 40
    iput-object v0, p0, Lcom/cymobile/ymwork/search/SearchJsonList;->mSearchJsonView:Landroid/widget/LinearLayout;

    .line 42
    iget-object v0, p0, Lcom/cymobile/ymwork/search/SearchJsonList;->mSearchJsonView:Landroid/widget/LinearLayout;

    .line 43
    const v1, 0x7f0800c4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 42
    iput-object v0, p0, Lcom/cymobile/ymwork/search/SearchJsonList;->mJsonLoadingText:Landroid/widget/TextView;

    .line 44
    iget-object v0, p0, Lcom/cymobile/ymwork/search/SearchJsonList;->mSearchJsonView:Landroid/widget/LinearLayout;

    .line 45
    const v1, 0x7f0800c5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 44
    iput-object v0, p0, Lcom/cymobile/ymwork/search/SearchJsonList;->mSearchJsonListView:Landroid/widget/ListView;

    .line 46
    iget-object v0, p0, Lcom/cymobile/ymwork/search/SearchJsonList;->mSearchJsonListView:Landroid/widget/ListView;

    new-instance v1, Lcom/cymobile/ymwork/search/SearchJsonList$1;

    invoke-direct {v1, p0}, Lcom/cymobile/ymwork/search/SearchJsonList$1;-><init>(Lcom/cymobile/ymwork/search/SearchJsonList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 56
    return-void
.end method


# virtual methods
.method public displayJosnLoading(Z)V
    .locals 2
    .parameter "display"

    .prologue
    .line 59
    if-eqz p1, :cond_0

    .line 60
    iget-object v0, p0, Lcom/cymobile/ymwork/search/SearchJsonList;->mJsonLoadingText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/search/SearchJsonList;->mJsonLoadingText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setAdapter(Lcom/cymobile/ymwork/search/SearchJsonListAdapter;Ljava/util/List;)V
    .locals 1
    .parameter "adpt"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cymobile/ymwork/search/SearchJsonListAdapter;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p2, p0, Lcom/cymobile/ymwork/search/SearchJsonList;->mjsonKeywordList:Ljava/util/List;

    .line 68
    iget-object v0, p0, Lcom/cymobile/ymwork/search/SearchJsonList;->mSearchJsonListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 69
    return-void
.end method

.method public setJosnViewVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/cymobile/ymwork/search/SearchJsonList;->mSearchJsonView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 73
    iget-object v0, p0, Lcom/cymobile/ymwork/search/SearchJsonList;->mSearchJsonView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 74
    :cond_0
    return-void
.end method

.method public setListener(Lcom/cymobile/ymwork/search/ISearchJsonListListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/cymobile/ymwork/search/SearchJsonList;->mListener:Lcom/cymobile/ymwork/search/ISearchJsonListListener;

    .line 78
    return-void
.end method
