.class Lcom/cymobile/ymwork/act/UserListActivity$6;
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
    iput-object p1, p0, Lcom/cymobile/ymwork/act/UserListActivity$6;->this$0:Lcom/cymobile/ymwork/act/UserListActivity;

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserListActivity$6;->this$0:Lcom/cymobile/ymwork/act/UserListActivity;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/UserListActivity;->onBackPressed()V

    .line 203
    return-void
.end method
