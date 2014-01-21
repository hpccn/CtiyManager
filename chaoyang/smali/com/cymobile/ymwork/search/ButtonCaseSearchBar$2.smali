.class Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$2;
.super Ljava/lang/Object;
.source "ButtonCaseSearchBar.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->initButtonText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$2;->this$0:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .parameter
    .parameter "selectedItemView"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parentView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 121
    const-string v1, "xxx"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "select "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    if-nez p3, :cond_2

    .line 123
    iget-object v1, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$2;->this$0:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;

    iget-object v1, v1, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->search_class_chooser:Landroid/widget/ImageView;

    const v2, 0x7f020047

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 124
    iget-object v1, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$2;->this$0:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;

    #setter for: Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->classid:I
    invoke-static {v1, v4}, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->access$5(Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;I)V

    .line 142
    :cond_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$2;->this$0:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;

    #getter for: Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mButtonText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->access$2(Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 143
    iget-object v1, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$2;->this$0:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;

    #getter for: Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mButtonText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->access$2(Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$2;->this$0:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;

    #getter for: Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mButtonText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->access$2(Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 144
    iget-object v1, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$2;->this$0:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;

    #getter for: Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mButtonText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->access$2(Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$2;->this$0:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;

    #getter for: Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mButtonText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->access$2(Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :cond_1
    :goto_1
    return-void

    .line 125
    :cond_2
    const/4 v1, 0x1

    if-ne p3, v1, :cond_3

    .line 126
    iget-object v1, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$2;->this$0:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;

    iget-object v1, v1, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->search_class_chooser:Landroid/widget/ImageView;

    const v2, 0x7f020051

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 127
    iget-object v1, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$2;->this$0:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;

    #setter for: Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->classid:I
    invoke-static {v1, v4}, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->access$5(Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;I)V

    goto :goto_0

    .line 128
    :cond_3
    const/4 v1, 0x2

    if-ne p3, v1, :cond_4

    .line 129
    iget-object v1, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$2;->this$0:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;

    iget-object v1, v1, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->search_class_chooser:Landroid/widget/ImageView;

    const v2, 0x7f02004c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 130
    iget-object v1, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$2;->this$0:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;

    #setter for: Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->classid:I
    invoke-static {v1, v4}, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->access$5(Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;I)V

    goto :goto_0

    .line 131
    :cond_4
    if-ne p3, v5, :cond_5

    .line 132
    iget-object v1, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$2;->this$0:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;

    iget-object v1, v1, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->search_class_chooser:Landroid/widget/ImageView;

    const v2, 0x7f02005a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 133
    iget-object v1, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$2;->this$0:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;

    #setter for: Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->classid:I
    invoke-static {v1, v5}, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->access$5(Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;I)V

    goto :goto_0

    .line 134
    :cond_5
    if-ne p3, v6, :cond_6

    .line 135
    iget-object v1, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$2;->this$0:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;

    iget-object v1, v1, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->search_class_chooser:Landroid/widget/ImageView;

    const v2, 0x7f02003a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 136
    iget-object v1, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$2;->this$0:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;

    #setter for: Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->classid:I
    invoke-static {v1, v6}, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->access$5(Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;I)V

    goto/16 :goto_0

    .line 137
    :cond_6
    if-ne p3, v7, :cond_0

    .line 138
    iget-object v1, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$2;->this$0:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;

    iget-object v1, v1, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->search_class_chooser:Landroid/widget/ImageView;

    const v2, 0x7f02004a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 139
    iget-object v1, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$2;->this$0:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;

    #setter for: Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->classid:I
    invoke-static {v1, v7}, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->access$5(Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;I)V

    goto/16 :goto_0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, ee:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, parentView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v0, "xxx"

    const-string v1, "select "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-void
.end method
