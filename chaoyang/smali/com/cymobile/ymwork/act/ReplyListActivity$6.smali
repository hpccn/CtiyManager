.class Lcom/cymobile/ymwork/act/ReplyListActivity$6;
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
    iput-object p1, p0, Lcom/cymobile/ymwork/act/ReplyListActivity$6;->this$0:Lcom/cymobile/ymwork/act/ReplyListActivity;

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ReplyListActivity$6;->this$0:Lcom/cymobile/ymwork/act/ReplyListActivity;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/ReplyListActivity;->onBackPressed()V

    .line 211
    return-void
.end method
