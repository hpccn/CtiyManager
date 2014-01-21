.class Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$6;
.super Ljava/lang/Object;
.source "ButtonCaseSearchBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->initButtonText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$6;->this$0:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 221
    iget-object v1, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$6;->this$0:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;

    #getter for: Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mButtonText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->access$2(Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mCurrentSearchText:Ljava/lang/String;

    .line 222
    sget-object v1, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mCurrentSearchText:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mCurrentSearchText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$6;->this$0:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;

    #getter for: Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->access$3(Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 224
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$6;->this$0:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;

    #getter for: Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mButtonText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->access$2(Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 225
    iget-object v1, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$6;->this$0:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;

    #getter for: Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mStateHolder:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$StateHolder;
    invoke-static {v1}, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->access$7(Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;)Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$StateHolder;

    move-result-object v2

    iget-object v1, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$6;->this$0:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;

    #getter for: Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->access$3(Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/act/MainActivity;

    invoke-virtual {v2, v1}, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$StateHolder;->startTask(Lcom/cymobile/ymwork/act/MainActivity;)V

    .line 227
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method
