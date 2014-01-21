.class Lcom/cymobile/ymwork/act/UserListActivity$3;
.super Ljava/lang/Object;
.source "UserListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/UserListActivity;->ensureUiListView()V
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
.field final synthetic this$0:Lcom/cymobile/ymwork/act/UserListActivity;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/UserListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/UserListActivity$3;->this$0:Lcom/cymobile/ymwork/act/UserListActivity;

    .line 118
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
    .line 120
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/UserListActivity$3;->this$0:Lcom/cymobile/ymwork/act/UserListActivity;

    const-class v2, Lcom/cymobile/ymwork/act/UserEditActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 121
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "Extra_userMobile"

    iget-object v1, p0, Lcom/cymobile/ymwork/act/UserListActivity$3;->this$0:Lcom/cymobile/ymwork/act/UserListActivity;

    #getter for: Lcom/cymobile/ymwork/act/UserListActivity;->mStateHolder:Lcom/cymobile/ymwork/act/UserListActivity$StateHolder;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/UserListActivity;->access$3(Lcom/cymobile/ymwork/act/UserListActivity;)Lcom/cymobile/ymwork/act/UserListActivity$StateHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/UserListActivity$StateHolder;->getUsers()Lcom/cymobile/ymwork/types/Group;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/cymobile/ymwork/types/Group;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/types/User;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/User;->getMobile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    iget-object v1, p0, Lcom/cymobile/ymwork/act/UserListActivity$3;->this$0:Lcom/cymobile/ymwork/act/UserListActivity;

    invoke-virtual {v1, v0}, Lcom/cymobile/ymwork/act/UserListActivity;->startActivity(Landroid/content/Intent;)V

    .line 123
    return-void
.end method
