.class Lcom/cymobile/ymwork/act/ReplyListActivity$5;
.super Ljava/lang/Object;
.source "ReplyListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/ReplyListActivity;->setEmptyView(Landroid/view/View;Lcom/cymobile/ymwork/server/error/ServerException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/ReplyListActivity;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/ReplyListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/ReplyListActivity$5;->this$0:Lcom/cymobile/ymwork/act/ReplyListActivity;

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ReplyListActivity$5;->this$0:Lcom/cymobile/ymwork/act/ReplyListActivity;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/ReplyListActivity;->setLoadingView()V

    .line 204
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ReplyListActivity$5;->this$0:Lcom/cymobile/ymwork/act/ReplyListActivity;

    #getter for: Lcom/cymobile/ymwork/act/ReplyListActivity;->mStateHolder:Lcom/cymobile/ymwork/act/ReplyListActivity$StateHolder;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/ReplyListActivity;->access$5(Lcom/cymobile/ymwork/act/ReplyListActivity;)Lcom/cymobile/ymwork/act/ReplyListActivity$StateHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/act/ReplyListActivity$5;->this$0:Lcom/cymobile/ymwork/act/ReplyListActivity;

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/ReplyListActivity$StateHolder;->startTask(Lcom/cymobile/ymwork/act/ReplyListActivity;)V

    .line 205
    return-void
.end method
