.class public Lcom/cymobile/ymwork/search/SearchHistoryDeleteItemButtonClickListener;
.super Ljava/lang/Object;
.source "SearchHistoryDeleteItemButtonClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field mObserver:Lcom/cymobile/ymwork/act/SearchableActivity;


# direct methods
.method public constructor <init>(Lcom/cymobile/ymwork/act/SearchableActivity;)V
    .locals 0
    .parameter "searchView"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/cymobile/ymwork/search/SearchHistoryDeleteItemButtonClickListener;->mObserver:Lcom/cymobile/ymwork/act/SearchableActivity;

    .line 15
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 18
    check-cast p1, Landroid/widget/Button;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 19
    .local v0, str:Ljava/lang/String;
    iget-object v1, p0, Lcom/cymobile/ymwork/search/SearchHistoryDeleteItemButtonClickListener;->mObserver:Lcom/cymobile/ymwork/act/SearchableActivity;

    invoke-virtual {v1, v0}, Lcom/cymobile/ymwork/act/SearchableActivity;->onDeleteItemButtonClick(Ljava/lang/String;)V

    .line 20
    return-void
.end method
