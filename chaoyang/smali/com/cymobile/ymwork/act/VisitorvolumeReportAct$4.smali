.class Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$4;
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

.field private final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$4;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    iput-object p2, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$4;->val$list:Ljava/util/List;

    .line 185
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
    const/4 v1, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 190
    if-nez p3, :cond_1

    .line 192
    iget-object v0, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$4;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    #setter for: Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mark:I
    invoke-static {v0, v4}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->access$15(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;I)V

    .line 193
    iget-object v0, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$4;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    #getter for: Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->txt_title:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->access$16(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$4;->val$list:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v0, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$4;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    #getter for: Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->flag:Z
    invoke-static {v0}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->access$17(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$4;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    #getter for: Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$StateHolder;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->access$18(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;)Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$StateHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$4;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$StateHolder;->startTask(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;)V

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    if-ne p3, v2, :cond_2

    .line 198
    iget-object v0, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$4;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    #setter for: Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mark:I
    invoke-static {v0, v2}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->access$15(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;I)V

    .line 199
    iget-object v0, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$4;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    #getter for: Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->txt_title:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->access$16(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$4;->val$list:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v0, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$4;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    #getter for: Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->flag:Z
    invoke-static {v0}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->access$17(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$4;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    #getter for: Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$StateHolder;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->access$18(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;)Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$StateHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$4;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$StateHolder;->startTask(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;)V

    goto :goto_0

    .line 203
    :cond_2
    if-ne p3, v3, :cond_3

    .line 204
    iget-object v0, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$4;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    #setter for: Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mark:I
    invoke-static {v0, v3}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->access$15(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;I)V

    .line 205
    iget-object v0, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$4;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    #getter for: Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->txt_title:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->access$16(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$4;->val$list:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v0, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$4;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    #getter for: Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->flag:Z
    invoke-static {v0}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->access$17(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$4;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    #getter for: Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$StateHolder;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->access$18(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;)Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$StateHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$4;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$StateHolder;->startTask(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;)V

    goto :goto_0

    .line 209
    :cond_3
    if-ne p3, v1, :cond_0

    .line 210
    iget-object v0, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$4;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    #setter for: Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mark:I
    invoke-static {v0, v1}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->access$15(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;I)V

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
    .line 218
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
