.class Lcom/cymobile/ymwork/act/NewBuildingReportAct$4;
.super Ljava/lang/Object;
.source "NewBuildingReportAct.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/NewBuildingReportAct;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

.field private final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/NewBuildingReportAct;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$4;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    iput-object p2, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$4;->val$list:Ljava/util/List;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 177
    if-nez p3, :cond_4

    .line 178
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$4;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    iget-object v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$4;->val$list:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    #setter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->str_list_item:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$26(Lcom/cymobile/ymwork/act/NewBuildingReportAct;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$4;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    #getter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->STREET_NO:I
    invoke-static {v0}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$1(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 180
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$4;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    #getter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->txt_title:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$3(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$4;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900d1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$4;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    #getter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->str_list_item:Ljava/lang/String;
    invoke-static {v2}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$5(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$4;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    #getter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/NewBuildingReportAct$StateHolder;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$27(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Lcom/cymobile/ymwork/act/NewBuildingReportAct$StateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/NewBuildingReportAct$StateHolder;->getIsRunningTask()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$4;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->getStateHolder()Lcom/cymobile/ymwork/act/NewBuildingReportAct$StateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/NewBuildingReportAct$StateHolder;->cancel()V

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$4;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    #getter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->flag:Z
    invoke-static {v0}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$28(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 188
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$4;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    #getter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/NewBuildingReportAct$StateHolder;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$27(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Lcom/cymobile/ymwork/act/NewBuildingReportAct$StateHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$4;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/NewBuildingReportAct$StateHolder;->startTask(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)V

    .line 198
    :cond_2
    :goto_1
    return-void

    .line 181
    :cond_3
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$4;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    #getter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->STREET_NO:I
    invoke-static {v0}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$1(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 182
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$4;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    #getter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->txt_title:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$3(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$4;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    #getter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->str_list_street:Ljava/lang/String;
    invoke-static {v2}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$15(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$4;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    #getter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->str_list_item:Ljava/lang/String;
    invoke-static {v2}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$5(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 190
    :cond_4
    if-eq p3, v3, :cond_2

    .line 192
    if-eq p3, v4, :cond_2

    goto :goto_1
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
    .line 202
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
