.class Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$4;
.super Ljava/lang/Object;
.source "ButtonCaseSearchBar.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    iput-object p1, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$4;->this$0:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "editable"

    .prologue
    const/4 v1, 0x1

    const/16 v2, 0x8

    .line 185
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_2

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$4;->this$0:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;

    #getter for: Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mButtonText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->access$2(Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getInputType()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 187
    iget-object v0, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$4;->this$0:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;

    #getter for: Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mButtonText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->access$2(Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$4;->this$0:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;

    #getter for: Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mButtonSubmit:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->access$6(Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 196
    :goto_0
    return-void

    .line 190
    :cond_2
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc

    if-le v0, v1, :cond_3

    .line 191
    iget-object v0, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$4;->this$0:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;

    #getter for: Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mButtonSubmit:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->access$6(Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 194
    :cond_3
    iget-object v0, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$4;->this$0:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;

    #getter for: Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mButtonSubmit:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->access$6(Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 180
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 172
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 175
    :cond_0
    return-void
.end method
