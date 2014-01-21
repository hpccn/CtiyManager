.class Lcom/cymobile/ymwork/search/EditSearchBar$3;
.super Ljava/lang/Object;
.source "EditSearchBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/search/EditSearchBar;->initSearchButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/search/EditSearchBar;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/search/EditSearchBar;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/search/EditSearchBar$3;->this$0:Lcom/cymobile/ymwork/search/EditSearchBar;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/cymobile/ymwork/search/EditSearchBar$3;->this$0:Lcom/cymobile/ymwork/search/EditSearchBar;

    #getter for: Lcom/cymobile/ymwork/search/EditSearchBar;->mEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/cymobile/ymwork/search/EditSearchBar;->access$0(Lcom/cymobile/ymwork/search/EditSearchBar;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cymobile/ymwork/search/EditSearchBar;->mCurrentSearchText:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/cymobile/ymwork/search/EditSearchBar$3;->this$0:Lcom/cymobile/ymwork/search/EditSearchBar;

    #getter for: Lcom/cymobile/ymwork/search/EditSearchBar;->mChangeObserver:Lcom/cymobile/ymwork/search/ISearchBarChangeObserver;
    invoke-static {v0}, Lcom/cymobile/ymwork/search/EditSearchBar;->access$1(Lcom/cymobile/ymwork/search/EditSearchBar;)Lcom/cymobile/ymwork/search/ISearchBarChangeObserver;

    move-result-object v0

    const/4 v1, 0x3

    sget-object v2, Lcom/cymobile/ymwork/search/EditSearchBar;->mCurrentSearchText:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/cymobile/ymwork/search/ISearchBarChangeObserver;->onSearchBarChange(ILjava/lang/String;)V

    .line 92
    return-void
.end method
