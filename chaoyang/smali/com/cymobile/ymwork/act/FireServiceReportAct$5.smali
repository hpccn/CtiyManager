.class Lcom/cymobile/ymwork/act/FireServiceReportAct$5;
.super Ljava/lang/Object;
.source "FireServiceReportAct.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/FireServiceReportAct;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

.field private final synthetic val$streenItme:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/FireServiceReportAct;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$5;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    iput-object p2, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$5;->val$streenItme:[Ljava/lang/String;

    .line 209
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

    .line 214
    if-nez p3, :cond_2

    .line 215
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$5;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$5;->val$streenItme:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/cymobile/ymwork/act/FireServiceReportAct;->str_list_street:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->access$29(Lcom/cymobile/ymwork/act/FireServiceReportAct;Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$5;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    #getter for: Lcom/cymobile/ymwork/act/FireServiceReportAct;->txt_Street:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->access$30(Lcom/cymobile/ymwork/act/FireServiceReportAct;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$5;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    #getter for: Lcom/cymobile/ymwork/act/FireServiceReportAct;->str_list_street:Ljava/lang/String;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->access$11(Lcom/cymobile/ymwork/act/FireServiceReportAct;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$5;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    #setter for: Lcom/cymobile/ymwork/act/FireServiceReportAct;->STREET_NO:I
    invoke-static {v0, v3}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->access$31(Lcom/cymobile/ymwork/act/FireServiceReportAct;I)V

    .line 218
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$5;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    iget-object v0, v0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 219
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$5;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->getCancel()V

    .line 220
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$5;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    #getter for: Lcom/cymobile/ymwork/act/FireServiceReportAct;->flag:Z
    invoke-static {v0}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->access$28(Lcom/cymobile/ymwork/act/FireServiceReportAct;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$5;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    #getter for: Lcom/cymobile/ymwork/act/FireServiceReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/FireServiceReportAct$StateHolder;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->access$13(Lcom/cymobile/ymwork/act/FireServiceReportAct;)Lcom/cymobile/ymwork/act/FireServiceReportAct$StateHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$5;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/FireServiceReportAct$StateHolder;->startTask(Lcom/cymobile/ymwork/act/FireServiceReportAct;)V

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$5;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    #setter for: Lcom/cymobile/ymwork/act/FireServiceReportAct;->flag:Z
    invoke-static {v0, v3}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->access$32(Lcom/cymobile/ymwork/act/FireServiceReportAct;Z)V

    goto :goto_0

    .line 225
    :cond_2
    if-ne p3, v3, :cond_0

    .line 226
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$5;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$5;->val$streenItme:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/cymobile/ymwork/act/FireServiceReportAct;->str_list_street:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->access$29(Lcom/cymobile/ymwork/act/FireServiceReportAct;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$5;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    #getter for: Lcom/cymobile/ymwork/act/FireServiceReportAct;->txt_Street:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->access$30(Lcom/cymobile/ymwork/act/FireServiceReportAct;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$5;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    #getter for: Lcom/cymobile/ymwork/act/FireServiceReportAct;->str_list_street:Ljava/lang/String;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->access$11(Lcom/cymobile/ymwork/act/FireServiceReportAct;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$5;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    const/4 v1, 0x2

    #setter for: Lcom/cymobile/ymwork/act/FireServiceReportAct;->STREET_NO:I
    invoke-static {v0, v1}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->access$31(Lcom/cymobile/ymwork/act/FireServiceReportAct;I)V

    .line 229
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$5;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    iget-object v0, v0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 230
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$5;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->getCancel()V

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
    .line 237
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
