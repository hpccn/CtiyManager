.class Lcom/cymobile/ymwork/act/NewBuildingReportAct$5;
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

.field private final synthetic val$streenItme:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/NewBuildingReportAct;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$5;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    iput-object p2, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$5;->val$streenItme:[Ljava/lang/String;

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    const/4 v3, 0x1

    .line 209
    if-nez p3, :cond_3

    .line 210
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$5;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$5;->val$streenItme:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->str_list_street:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$29(Lcom/cymobile/ymwork/act/NewBuildingReportAct;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$5;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    #getter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->txt_Street:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$30(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$5;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    #getter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->str_list_street:Ljava/lang/String;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$15(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$5;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    #setter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->STREET_NO:I
    invoke-static {v0, v3}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$31(Lcom/cymobile/ymwork/act/NewBuildingReportAct;I)V

    .line 213
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$5;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    iget-object v0, v0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 214
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$5;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    #getter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/NewBuildingReportAct$StateHolder;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$27(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Lcom/cymobile/ymwork/act/NewBuildingReportAct$StateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/NewBuildingReportAct$StateHolder;->getIsRunningTask()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$5;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->getStateHolder()Lcom/cymobile/ymwork/act/NewBuildingReportAct$StateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/NewBuildingReportAct$StateHolder;->cancel()V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$5;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    #getter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->flag:Z
    invoke-static {v0}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$28(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 218
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$5;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    #getter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/NewBuildingReportAct$StateHolder;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$27(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Lcom/cymobile/ymwork/act/NewBuildingReportAct$StateHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$5;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/NewBuildingReportAct$StateHolder;->startTask(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)V

    .line 232
    :cond_1
    :goto_0
    return-void

    .line 220
    :cond_2
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$5;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    #setter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->flag:Z
    invoke-static {v0, v3}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$32(Lcom/cymobile/ymwork/act/NewBuildingReportAct;Z)V

    goto :goto_0

    .line 222
    :cond_3
    if-ne p3, v3, :cond_1

    .line 223
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$5;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$5;->val$streenItme:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->str_list_street:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$29(Lcom/cymobile/ymwork/act/NewBuildingReportAct;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$5;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    #getter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->txt_Street:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$30(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$5;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    #getter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->str_list_street:Ljava/lang/String;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$15(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$5;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    const/4 v1, 0x2

    #setter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->STREET_NO:I
    invoke-static {v0, v1}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$31(Lcom/cymobile/ymwork/act/NewBuildingReportAct;I)V

    .line 226
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$5;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    iget-object v0, v0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 227
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$5;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    #getter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/NewBuildingReportAct$StateHolder;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$27(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Lcom/cymobile/ymwork/act/NewBuildingReportAct$StateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/NewBuildingReportAct$StateHolder;->getIsRunningTask()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 228
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$5;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->getStateHolder()Lcom/cymobile/ymwork/act/NewBuildingReportAct$StateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/NewBuildingReportAct$StateHolder;->cancel()V

    .line 230
    :cond_4
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$5;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    #getter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/NewBuildingReportAct$StateHolder;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$27(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Lcom/cymobile/ymwork/act/NewBuildingReportAct$StateHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$5;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/NewBuildingReportAct$StateHolder;->startTask(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)V

    goto :goto_0
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
    .line 236
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
