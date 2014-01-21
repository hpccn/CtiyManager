.class Lcom/cymobile/ymwork/act/ChangePasswordActivity$2;
.super Ljava/lang/Object;
.source "ChangePasswordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/ChangePasswordActivity;->ensureUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/ChangePasswordActivity;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/ChangePasswordActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity$2;->this$0:Lcom/cymobile/ymwork/act/ChangePasswordActivity;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity$2;->this$0:Lcom/cymobile/ymwork/act/ChangePasswordActivity;

    new-instance v1, Lcom/cymobile/ymwork/act/ChangePasswordActivity$ChangeTask;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity$2;->this$0:Lcom/cymobile/ymwork/act/ChangePasswordActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/cymobile/ymwork/act/ChangePasswordActivity$ChangeTask;-><init>(Lcom/cymobile/ymwork/act/ChangePasswordActivity;Lcom/cymobile/ymwork/act/ChangePasswordActivity$ChangeTask;)V

    #setter for: Lcom/cymobile/ymwork/act/ChangePasswordActivity;->mChangeTask:Landroid/os/AsyncTask;
    invoke-static {v0, v1}, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->access$6(Lcom/cymobile/ymwork/act/ChangePasswordActivity;Landroid/os/AsyncTask;)V

    .line 92
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity$2;->this$0:Lcom/cymobile/ymwork/act/ChangePasswordActivity;

    #getter for: Lcom/cymobile/ymwork/act/ChangePasswordActivity;->mChangeTask:Landroid/os/AsyncTask;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->access$7(Lcom/cymobile/ymwork/act/ChangePasswordActivity;)Landroid/os/AsyncTask;

    move-result-object v0

    invoke-static {v0}, Lcom/cymobile/ymwork/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    .line 93
    return-void
.end method
