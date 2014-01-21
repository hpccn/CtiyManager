.class Lcom/cymobile/ymwork/search/EditSearchBar$1;
.super Ljava/lang/Object;
.source "EditSearchBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/cymobile/ymwork/search/EditSearchBar$1;->this$0:Lcom/cymobile/ymwork/search/EditSearchBar;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 58
    iget-object v0, p0, Lcom/cymobile/ymwork/search/EditSearchBar$1;->this$0:Lcom/cymobile/ymwork/search/EditSearchBar;

    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/search/EditSearchBar;->dispSoftMethodInput(Z)V

    .line 59
    iget-object v0, p0, Lcom/cymobile/ymwork/search/EditSearchBar$1;->this$0:Lcom/cymobile/ymwork/search/EditSearchBar;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/search/EditSearchBar;->setEditFocus()V

    .line 60
    iget-object v0, p0, Lcom/cymobile/ymwork/search/EditSearchBar$1;->this$0:Lcom/cymobile/ymwork/search/EditSearchBar;

    iget-object v1, p0, Lcom/cymobile/ymwork/search/EditSearchBar$1;->this$0:Lcom/cymobile/ymwork/search/EditSearchBar;

    #getter for: Lcom/cymobile/ymwork/search/EditSearchBar;->mEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/cymobile/ymwork/search/EditSearchBar;->access$0(Lcom/cymobile/ymwork/search/EditSearchBar;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cymobile/ymwork/search/EditSearchBar;->mDispSearchText:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/cymobile/ymwork/search/EditSearchBar$1;->this$0:Lcom/cymobile/ymwork/search/EditSearchBar;

    #getter for: Lcom/cymobile/ymwork/search/EditSearchBar;->mChangeObserver:Lcom/cymobile/ymwork/search/ISearchBarChangeObserver;
    invoke-static {v0}, Lcom/cymobile/ymwork/search/EditSearchBar;->access$1(Lcom/cymobile/ymwork/search/EditSearchBar;)Lcom/cymobile/ymwork/search/ISearchBarChangeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/search/EditSearchBar$1;->this$0:Lcom/cymobile/ymwork/search/EditSearchBar;

    iget-object v1, v1, Lcom/cymobile/ymwork/search/EditSearchBar;->mDispSearchText:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/cymobile/ymwork/search/ISearchBarChangeObserver;->onSearchBarChange(ILjava/lang/String;)V

    .line 62
    return-void
.end method
