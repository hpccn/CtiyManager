.class Lcom/cymobile/ymwork/search/EditSearchBar$2;
.super Ljava/lang/Object;
.source "EditSearchBar.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/search/EditSearchBar;->initEditText()V
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
    iput-object p1, p0, Lcom/cymobile/ymwork/search/EditSearchBar$2;->this$0:Lcom/cymobile/ymwork/search/EditSearchBar;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "editable"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/cymobile/ymwork/search/EditSearchBar$2;->this$0:Lcom/cymobile/ymwork/search/EditSearchBar;

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cymobile/ymwork/search/EditSearchBar;->mDispSearchText:Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcom/cymobile/ymwork/search/EditSearchBar$2;->this$0:Lcom/cymobile/ymwork/search/EditSearchBar;

    #getter for: Lcom/cymobile/ymwork/search/EditSearchBar;->mChangeObserver:Lcom/cymobile/ymwork/search/ISearchBarChangeObserver;
    invoke-static {v0}, Lcom/cymobile/ymwork/search/EditSearchBar;->access$1(Lcom/cymobile/ymwork/search/EditSearchBar;)Lcom/cymobile/ymwork/search/ISearchBarChangeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/cymobile/ymwork/search/EditSearchBar$2;->this$0:Lcom/cymobile/ymwork/search/EditSearchBar;

    #getter for: Lcom/cymobile/ymwork/search/EditSearchBar;->mChangeObserver:Lcom/cymobile/ymwork/search/ISearchBarChangeObserver;
    invoke-static {v0}, Lcom/cymobile/ymwork/search/EditSearchBar;->access$1(Lcom/cymobile/ymwork/search/EditSearchBar;)Lcom/cymobile/ymwork/search/ISearchBarChangeObserver;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/cymobile/ymwork/search/EditSearchBar$2;->this$0:Lcom/cymobile/ymwork/search/EditSearchBar;

    iget-object v2, v2, Lcom/cymobile/ymwork/search/EditSearchBar;->mDispSearchText:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/cymobile/ymwork/search/ISearchBarChangeObserver;->onSearchBarChange(ILjava/lang/String;)V

    .line 80
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 73
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 68
    return-void
.end method
