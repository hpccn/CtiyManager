.class Lcom/cymobile/ymwork/act/PublicReportAct$5;
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

.field private final synthetic val$streenItme:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/PublicReportAct;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/PublicReportAct$5;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    iput-object p2, p0, Lcom/cymobile/ymwork/act/PublicReportAct$5;->val$streenItme:[Ljava/lang/String;

    .line 213
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

    .line 218
    if-nez p3, :cond_2

    .line 219
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct$5;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/PublicReportAct$5;->val$streenItme:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/cymobile/ymwork/act/PublicReportAct;->str_list_street:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$29(Lcom/cymobile/ymwork/act/PublicReportAct;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct$5;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    #getter for: Lcom/cymobile/ymwork/act/PublicReportAct;->txt_Street:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$30(Lcom/cymobile/ymwork/act/PublicReportAct;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/act/PublicReportAct$5;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    #getter for: Lcom/cymobile/ymwork/act/PublicReportAct;->str_list_street:Ljava/lang/String;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$11(Lcom/cymobile/ymwork/act/PublicReportAct;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct$5;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    #setter for: Lcom/cymobile/ymwork/act/PublicReportAct;->STREET_NO:I
    invoke-static {v0, v3}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$31(Lcom/cymobile/ymwork/act/PublicReportAct;I)V

    .line 222
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct$5;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    iget-object v0, v0, Lcom/cymobile/ymwork/act/PublicReportAct;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 223
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct$5;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/PublicReportAct;->getCancel()V

    .line 224
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct$5;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    #getter for: Lcom/cymobile/ymwork/act/PublicReportAct;->flag:Z
    invoke-static {v0}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$28(Lcom/cymobile/ymwork/act/PublicReportAct;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct$5;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    #getter for: Lcom/cymobile/ymwork/act/PublicReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/PublicReportAct$StateHolder;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$13(Lcom/cymobile/ymwork/act/PublicReportAct;)Lcom/cymobile/ymwork/act/PublicReportAct$StateHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/act/PublicReportAct$5;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/PublicReportAct$StateHolder;->startTask(Lcom/cymobile/ymwork/act/PublicReportAct;)V

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct$5;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    #setter for: Lcom/cymobile/ymwork/act/PublicReportAct;->flag:Z
    invoke-static {v0, v3}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$32(Lcom/cymobile/ymwork/act/PublicReportAct;Z)V

    goto :goto_0

    .line 229
    :cond_2
    if-ne p3, v3, :cond_0

    .line 230
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct$5;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/PublicReportAct$5;->val$streenItme:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/cymobile/ymwork/act/PublicReportAct;->str_list_street:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$29(Lcom/cymobile/ymwork/act/PublicReportAct;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct$5;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    #getter for: Lcom/cymobile/ymwork/act/PublicReportAct;->txt_Street:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$30(Lcom/cymobile/ymwork/act/PublicReportAct;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/act/PublicReportAct$5;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    #getter for: Lcom/cymobile/ymwork/act/PublicReportAct;->str_list_street:Ljava/lang/String;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$11(Lcom/cymobile/ymwork/act/PublicReportAct;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct$5;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    const/4 v1, 0x2

    #setter for: Lcom/cymobile/ymwork/act/PublicReportAct;->STREET_NO:I
    invoke-static {v0, v1}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$31(Lcom/cymobile/ymwork/act/PublicReportAct;I)V

    .line 233
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct$5;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    iget-object v0, v0, Lcom/cymobile/ymwork/act/PublicReportAct;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 234
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct$5;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/PublicReportAct;->getCancel()V

    .line 235
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct$5;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    #getter for: Lcom/cymobile/ymwork/act/PublicReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/PublicReportAct$StateHolder;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$13(Lcom/cymobile/ymwork/act/PublicReportAct;)Lcom/cymobile/ymwork/act/PublicReportAct$StateHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/act/PublicReportAct$5;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/PublicReportAct$StateHolder;->startTask(Lcom/cymobile/ymwork/act/PublicReportAct;)V

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
    .line 241
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
