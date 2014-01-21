.class Lcom/cymobile/ymwork/act/UserListActivity$5;
.super Ljava/lang/Object;
.source "UserListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/UserListActivity;->setEmptyView(Landroid/view/View;Lcom/cymobile/ymwork/server/error/ServerException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/UserListActivity;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/UserListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/UserListActivity$5;->this$0:Lcom/cymobile/ymwork/act/UserListActivity;

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserListActivity$5;->this$0:Lcom/cymobile/ymwork/act/UserListActivity;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/UserListActivity;->setLoadingView()V

    .line 196
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserListActivity$5;->this$0:Lcom/cymobile/ymwork/act/UserListActivity;

    #getter for: Lcom/cymobile/ymwork/act/UserListActivity;->mStateHolder:Lcom/cymobile/ymwork/act/UserListActivity$StateHolder;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/UserListActivity;->access$3(Lcom/cymobile/ymwork/act/UserListActivity;)Lcom/cymobile/ymwork/act/UserListActivity$StateHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/act/UserListActivity$5;->this$0:Lcom/cymobile/ymwork/act/UserListActivity;

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/UserListActivity$StateHolder;->startTask(Lcom/cymobile/ymwork/act/UserListActivity;)V

    .line 197
    return-void
.end method
