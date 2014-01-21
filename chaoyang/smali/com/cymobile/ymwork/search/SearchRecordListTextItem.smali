.class public Lcom/cymobile/ymwork/search/SearchRecordListTextItem;
.super Lcom/cymobile/ymwork/search/TextListItem;
.source "SearchRecordListTextItem.java"


# instance fields
.field private mDeleteItemButton:Landroid/widget/Button;

.field private mSearchRecordText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/cymobile/ymwork/search/TextListItem;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-direct {p0}, Lcom/cymobile/ymwork/search/SearchRecordListTextItem;->init()V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/cymobile/ymwork/search/TextListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-direct {p0}, Lcom/cymobile/ymwork/search/SearchRecordListTextItem;->init()V

    .line 23
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/cymobile/ymwork/search/SearchRecordListTextItem;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 27
    const v1, 0x7f030032

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 28
    const v0, 0x7f0800cb

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/search/SearchRecordListTextItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cymobile/ymwork/search/SearchRecordListTextItem;->mSearchRecordText:Landroid/widget/TextView;

    .line 29
    const v0, 0x7f0800cc

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/search/SearchRecordListTextItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cymobile/ymwork/search/SearchRecordListTextItem;->mDeleteItemButton:Landroid/widget/Button;

    .line 30
    return-void
.end method


# virtual methods
.method public getDeletButotnTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cymobile/ymwork/search/SearchRecordListTextItem;->mDeleteItemButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getItemText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/cymobile/ymwork/search/SearchRecordListTextItem;->mSearchRecordText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDeletButotnTag(Ljava/lang/String;)V
    .locals 1
    .parameter "tag"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/cymobile/ymwork/search/SearchRecordListTextItem;->mDeleteItemButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method public setItemText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/cymobile/ymwork/search/SearchRecordListTextItem;->mSearchRecordText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    return-void
.end method

.method public setOnSearchHistoryDeleteItemButtonClickListener(Lcom/cymobile/ymwork/search/SearchHistoryDeleteItemButtonClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/cymobile/ymwork/search/SearchRecordListTextItem;->mDeleteItemButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    return-void
.end method

.method public setTextGravity(I)V
    .locals 1
    .parameter "g"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/cymobile/ymwork/search/SearchRecordListTextItem;->mSearchRecordText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 55
    return-void
.end method
