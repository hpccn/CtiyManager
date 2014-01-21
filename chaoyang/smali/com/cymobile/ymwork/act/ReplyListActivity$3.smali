.class Lcom/cymobile/ymwork/act/ReplyListActivity$3;
.super Ljava/lang/Object;
.source "ReplyListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/ReplyListActivity;->ensureUiListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/ReplyListActivity;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/ReplyListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/ReplyListActivity$3;->this$0:Lcom/cymobile/ymwork/act/ReplyListActivity;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 128
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/ReplyListActivity$3;->this$0:Lcom/cymobile/ymwork/act/ReplyListActivity;

    const-class v2, Lcom/cymobile/ymwork/act/AddReplay;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "caseid"

    iget-object v2, p0, Lcom/cymobile/ymwork/act/ReplyListActivity$3;->this$0:Lcom/cymobile/ymwork/act/ReplyListActivity;

    #getter for: Lcom/cymobile/ymwork/act/ReplyListActivity;->mCaseid:Ljava/lang/String;
    invoke-static {v2}, Lcom/cymobile/ymwork/act/ReplyListActivity;->access$3(Lcom/cymobile/ymwork/act/ReplyListActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    iget-object v1, p0, Lcom/cymobile/ymwork/act/ReplyListActivity$3;->this$0:Lcom/cymobile/ymwork/act/ReplyListActivity;

    invoke-virtual {v1, v0}, Lcom/cymobile/ymwork/act/ReplyListActivity;->startActivity(Landroid/content/Intent;)V

    .line 131
    return-void
.end method
