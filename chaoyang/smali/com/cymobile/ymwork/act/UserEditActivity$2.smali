.class Lcom/cymobile/ymwork/act/UserEditActivity$2;
.super Ljava/lang/Object;
.source "UserEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/UserEditActivity;->ensureUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/UserEditActivity;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/UserEditActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/UserEditActivity$2;->this$0:Lcom/cymobile/ymwork/act/UserEditActivity;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserEditActivity$2;->this$0:Lcom/cymobile/ymwork/act/UserEditActivity;

    new-instance v1, Lcom/cymobile/ymwork/act/UserEditActivity$EditTask;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/UserEditActivity$2;->this$0:Lcom/cymobile/ymwork/act/UserEditActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/cymobile/ymwork/act/UserEditActivity$EditTask;-><init>(Lcom/cymobile/ymwork/act/UserEditActivity;Lcom/cymobile/ymwork/act/UserEditActivity$EditTask;)V

    #setter for: Lcom/cymobile/ymwork/act/UserEditActivity;->mEditTask:Landroid/os/AsyncTask;
    invoke-static {v0, v1}, Lcom/cymobile/ymwork/act/UserEditActivity;->access$13(Lcom/cymobile/ymwork/act/UserEditActivity;Landroid/os/AsyncTask;)V

    .line 128
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserEditActivity$2;->this$0:Lcom/cymobile/ymwork/act/UserEditActivity;

    #getter for: Lcom/cymobile/ymwork/act/UserEditActivity;->mEditTask:Landroid/os/AsyncTask;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/UserEditActivity;->access$14(Lcom/cymobile/ymwork/act/UserEditActivity;)Landroid/os/AsyncTask;

    move-result-object v0

    invoke-static {v0}, Lcom/cymobile/ymwork/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    .line 129
    return-void
.end method
