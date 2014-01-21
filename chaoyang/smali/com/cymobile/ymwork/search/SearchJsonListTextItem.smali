.class public Lcom/cymobile/ymwork/search/SearchJsonListTextItem;
.super Lcom/cymobile/ymwork/search/TextListItem;
.source "SearchJsonListTextItem.java"


# instance fields
.field private mSearchJsonText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/cymobile/ymwork/search/TextListItem;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-direct {p0}, Lcom/cymobile/ymwork/search/SearchJsonListTextItem;->init()V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/cymobile/ymwork/search/TextListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    invoke-direct {p0}, Lcom/cymobile/ymwork/search/SearchJsonListTextItem;->init()V

    .line 22
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/cymobile/ymwork/search/SearchJsonListTextItem;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 26
    const v1, 0x7f030031

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 27
    const v0, 0x7f0800c8

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/search/SearchJsonListTextItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cymobile/ymwork/search/SearchJsonListTextItem;->mSearchJsonText:Landroid/widget/TextView;

    .line 28
    return-void
.end method


# virtual methods
.method public getItemText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/cymobile/ymwork/search/SearchJsonListTextItem;->mSearchJsonText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setItemText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cymobile/ymwork/search/SearchJsonListTextItem;->mSearchJsonText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    return-void
.end method

.method public setTextGravity(I)V
    .locals 1
    .parameter "g"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cymobile/ymwork/search/SearchJsonListTextItem;->mSearchJsonText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 40
    return-void
.end method
