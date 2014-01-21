.class Lcom/cymobile/ymwork/act/PublicReportAct$4;
.super Ljava/lang/Object;
.source "PublicReportAct.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/PublicReportAct;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

.field private final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/PublicReportAct;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/PublicReportAct$4;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    iput-object p2, p0, Lcom/cymobile/ymwork/act/PublicReportAct$4;->val$list:Ljava/util/List;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
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
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const v5, 0x7f0900d1

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 181
    if-nez p3, :cond_3

    .line 183
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct$4;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    #setter for: Lcom/cymobile/ymwork/act/PublicReportAct;->mark:I
    invoke-static {v0, v3}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$26(Lcom/cymobile/ymwork/act/PublicReportAct;I)V

    .line 184
    iget-object v1, p0, Lcom/cymobile/ymwork/act/PublicReportAct$4;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct$4;->val$list:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    #setter for: Lcom/cymobile/ymwork/act/PublicReportAct;->str_list_item:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$27(Lcom/cymobile/ymwork/act/PublicReportAct;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct$4;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    #getter for: Lcom/cymobile/ymwork/act/PublicReportAct;->STREET_NO:I
    invoke-static {v0}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$21(Lcom/cymobile/ymwork/act/PublicReportAct;)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 186
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct$4;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    #getter for: Lcom/cymobile/ymwork/act/PublicReportAct;->txt_title:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$10(Lcom/cymobile/ymwork/act/PublicReportAct;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/PublicReportAct$4;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/act/PublicReportAct;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cymobile/ymwork/act/PublicReportAct$4;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    #getter for: Lcom/cymobile/ymwork/act/PublicReportAct;->str_list_item:Ljava/lang/String;
    invoke-static {v2}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$12(Lcom/cymobile/ymwork/act/PublicReportAct;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct$4;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/PublicReportAct;->getCancel()V

    .line 191
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct$4;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    #getter for: Lcom/cymobile/ymwork/act/PublicReportAct;->flag:Z
    invoke-static {v0}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$28(Lcom/cymobile/ymwork/act/PublicReportAct;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct$4;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    #getter for: Lcom/cymobile/ymwork/act/PublicReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/PublicReportAct$StateHolder;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$13(Lcom/cymobile/ymwork/act/PublicReportAct;)Lcom/cymobile/ymwork/act/PublicReportAct$StateHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/act/PublicReportAct$4;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/PublicReportAct$StateHolder;->startTask(Lcom/cymobile/ymwork/act/PublicReportAct;)V

    .line 207
    :cond_1
    :goto_1
    return-void

    .line 187
    :cond_2
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct$4;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    #getter for: Lcom/cymobile/ymwork/act/PublicReportAct;->STREET_NO:I
    invoke-static {v0}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$21(Lcom/cymobile/ymwork/act/PublicReportAct;)I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 188
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct$4;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    #getter for: Lcom/cymobile/ymwork/act/PublicReportAct;->txt_title:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$10(Lcom/cymobile/ymwork/act/PublicReportAct;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/PublicReportAct$4;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    #getter for: Lcom/cymobile/ymwork/act/PublicReportAct;->str_list_street:Ljava/lang/String;
    invoke-static {v2}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$11(Lcom/cymobile/ymwork/act/PublicReportAct;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cymobile/ymwork/act/PublicReportAct$4;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    #getter for: Lcom/cymobile/ymwork/act/PublicReportAct;->str_list_item:Ljava/lang/String;
    invoke-static {v2}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$12(Lcom/cymobile/ymwork/act/PublicReportAct;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 194
    :cond_3
    if-ne p3, v2, :cond_1

    .line 195
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct$4;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    #setter for: Lcom/cymobile/ymwork/act/PublicReportAct;->mark:I
    invoke-static {v0, v2}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$26(Lcom/cymobile/ymwork/act/PublicReportAct;I)V

    .line 196
    iget-object v1, p0, Lcom/cymobile/ymwork/act/PublicReportAct$4;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct$4;->val$list:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    #setter for: Lcom/cymobile/ymwork/act/PublicReportAct;->str_list_item:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$27(Lcom/cymobile/ymwork/act/PublicReportAct;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct$4;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    #getter for: Lcom/cymobile/ymwork/act/PublicReportAct;->STREET_NO:I
    invoke-static {v0}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$21(Lcom/cymobile/ymwork/act/PublicReportAct;)I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 198
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct$4;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    #getter for: Lcom/cymobile/ymwork/act/PublicReportAct;->txt_title:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$10(Lcom/cymobile/ymwork/act/PublicReportAct;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/PublicReportAct$4;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/act/PublicReportAct;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cymobile/ymwork/act/PublicReportAct$4;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    #getter for: Lcom/cymobile/ymwork/act/PublicReportAct;->str_list_item:Ljava/lang/String;
    invoke-static {v2}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$12(Lcom/cymobile/ymwork/act/PublicReportAct;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct$4;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/PublicReportAct;->getCancel()V

    .line 203
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct$4;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    #getter for: Lcom/cymobile/ymwork/act/PublicReportAct;->flag:Z
    invoke-static {v0}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$28(Lcom/cymobile/ymwork/act/PublicReportAct;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct$4;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    #getter for: Lcom/cymobile/ymwork/act/PublicReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/PublicReportAct$StateHolder;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$13(Lcom/cymobile/ymwork/act/PublicReportAct;)Lcom/cymobile/ymwork/act/PublicReportAct$StateHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/act/PublicReportAct$4;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/PublicReportAct$StateHolder;->startTask(Lcom/cymobile/ymwork/act/PublicReportAct;)V

    goto/16 :goto_1

    .line 199
    :cond_5
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct$4;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    #getter for: Lcom/cymobile/ymwork/act/PublicReportAct;->STREET_NO:I
    invoke-static {v0}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$21(Lcom/cymobile/ymwork/act/PublicReportAct;)I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 200
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct$4;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    #getter for: Lcom/cymobile/ymwork/act/PublicReportAct;->txt_title:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$10(Lcom/cymobile/ymwork/act/PublicReportAct;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/PublicReportAct$4;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    #getter for: Lcom/cymobile/ymwork/act/PublicReportAct;->str_list_street:Ljava/lang/String;
    invoke-static {v2}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$11(Lcom/cymobile/ymwork/act/PublicReportAct;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cymobile/ymwork/act/PublicReportAct$4;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    #getter for: Lcom/cymobile/ymwork/act/PublicReportAct;->str_list_item:Ljava/lang/String;
    invoke-static {v2}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$12(Lcom/cymobile/ymwork/act/PublicReportAct;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 211
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
