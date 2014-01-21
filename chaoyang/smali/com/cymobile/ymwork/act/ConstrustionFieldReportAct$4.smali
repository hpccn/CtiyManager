.class Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$4;
.super Ljava/lang/Object;
.source "ConstrustionFieldReportAct.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

.field private final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$4;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    iput-object p2, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$4;->val$list:Ljava/util/List;

    .line 178
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
    const/4 v5, 0x0

    const v4, 0x7f0900d1

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 183
    if-nez p3, :cond_3

    .line 185
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$4;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    #setter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mark:I
    invoke-static {v0, v5}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$27(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;I)V

    .line 186
    iget-object v1, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$4;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$4;->val$list:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    #setter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->str_list_item:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$28(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$4;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    #getter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->STREET_NO:I
    invoke-static {v0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$22(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 188
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$4;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    #getter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->txt_title:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$11(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$4;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$4;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    #getter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->str_list_item:Ljava/lang/String;
    invoke-static {v2}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$13(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$4;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->getCancel()V

    .line 193
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$4;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    #getter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->flag:Z
    invoke-static {v0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$29(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$4;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    #getter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$StateHolder;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$14(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$StateHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$4;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$StateHolder;->startTask(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)V

    .line 221
    :cond_1
    :goto_1
    return-void

    .line 189
    :cond_2
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$4;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    #getter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->STREET_NO:I
    invoke-static {v0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$22(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 190
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$4;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    #getter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->txt_title:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$11(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$4;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    #getter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->str_list_street:Ljava/lang/String;
    invoke-static {v2}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$12(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$4;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    #getter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->str_list_item:Ljava/lang/String;
    invoke-static {v2}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$13(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 196
    :cond_3
    if-ne p3, v2, :cond_6

    .line 197
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$4;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    #setter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mark:I
    invoke-static {v0, v2}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$27(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;I)V

    .line 198
    iget-object v1, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$4;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$4;->val$list:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    #setter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->str_list_item:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$28(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$4;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    #getter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->STREET_NO:I
    invoke-static {v0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$22(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 200
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$4;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    #getter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->txt_title:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$11(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$4;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$4;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    #getter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->str_list_item:Ljava/lang/String;
    invoke-static {v2}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$13(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$4;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->getCancel()V

    .line 205
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$4;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    #getter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->flag:Z
    invoke-static {v0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$29(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$4;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    #getter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$StateHolder;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$14(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$StateHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$4;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$StateHolder;->startTask(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)V

    goto/16 :goto_1

    .line 201
    :cond_5
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$4;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    #getter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->STREET_NO:I
    invoke-static {v0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$22(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 202
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$4;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    #getter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->txt_title:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$11(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$4;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    #getter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->str_list_street:Ljava/lang/String;
    invoke-static {v2}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$12(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$4;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    #getter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->str_list_item:Ljava/lang/String;
    invoke-static {v2}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$13(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 208
    :cond_6
    if-ne p3, v3, :cond_1

    .line 209
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$4;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    const/4 v1, 0x3

    #setter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mark:I
    invoke-static {v0, v1}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$27(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;I)V

    .line 210
    iget-object v1, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$4;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$4;->val$list:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    #setter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->str_list_item:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$28(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$4;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    #getter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->STREET_NO:I
    invoke-static {v0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$22(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)I

    move-result v0

    if-ne v0, v2, :cond_8

    .line 212
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$4;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    #getter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->txt_title:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$11(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$4;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$4;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    #getter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->str_list_item:Ljava/lang/String;
    invoke-static {v2}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$13(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$4;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->getCancel()V

    .line 217
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$4;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    #getter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->flag:Z
    invoke-static {v0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$29(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$4;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    #getter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$StateHolder;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$14(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$StateHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$4;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$StateHolder;->startTask(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)V

    goto/16 :goto_1

    .line 213
    :cond_8
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$4;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    #getter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->STREET_NO:I
    invoke-static {v0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$22(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)I

    move-result v0

    if-ne v0, v3, :cond_7

    .line 214
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$4;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    #getter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->txt_title:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$11(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$4;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    #getter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->str_list_street:Ljava/lang/String;
    invoke-static {v2}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$12(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$4;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    #getter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->str_list_item:Ljava/lang/String;
    invoke-static {v2}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$13(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
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
    .line 225
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
