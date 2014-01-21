.class Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$5;
.super Ljava/lang/Object;
.source "VisitorvolumeReportAct.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

.field private final synthetic val$streenItme:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$5;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    iput-object p2, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$5;->val$streenItme:[Ljava/lang/String;

    .line 220
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

    .line 225
    if-nez p3, :cond_2

    .line 226
    iget-object v0, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$5;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    #getter for: Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->txt_Street:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->access$19(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$5;->val$streenItme:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v0, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$5;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    #setter for: Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->STREET_NO:I
    invoke-static {v0, v3}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->access$20(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;I)V

    .line 228
    iget-object v0, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$5;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    #getter for: Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->flag:Z
    invoke-static {v0}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->access$17(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$5;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    #getter for: Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$StateHolder;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->access$18(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;)Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$StateHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$5;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$StateHolder;->startTask(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;)V

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$5;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    #setter for: Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->flag:Z
    invoke-static {v0, v3}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->access$21(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;Z)V

    goto :goto_0

    .line 233
    :cond_2
    if-ne p3, v3, :cond_0

    .line 234
    iget-object v0, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$5;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    #getter for: Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->txt_Street:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->access$19(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$5;->val$streenItme:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v0, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$5;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    const/4 v1, 0x2

    #setter for: Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->STREET_NO:I
    invoke-static {v0, v1}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->access$20(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;I)V

    .line 236
    iget-object v0, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$5;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    #getter for: Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$StateHolder;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->access$18(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;)Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$StateHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$5;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$StateHolder;->startTask(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;)V

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
    .line 242
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
