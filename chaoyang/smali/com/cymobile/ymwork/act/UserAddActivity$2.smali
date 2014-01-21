.class Lcom/cymobile/ymwork/act/UserAddActivity$2;
.super Ljava/lang/Object;
.source "UserAddActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/UserAddActivity;->ensureUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/UserAddActivity;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/UserAddActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/UserAddActivity$2;->this$0:Lcom/cymobile/ymwork/act/UserAddActivity;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserAddActivity$2;->this$0:Lcom/cymobile/ymwork/act/UserAddActivity;

    new-instance v1, Lcom/cymobile/ymwork/act/UserAddActivity$AddTask;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/UserAddActivity$2;->this$0:Lcom/cymobile/ymwork/act/UserAddActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/cymobile/ymwork/act/UserAddActivity$AddTask;-><init>(Lcom/cymobile/ymwork/act/UserAddActivity;Lcom/cymobile/ymwork/act/UserAddActivity$AddTask;)V

    #setter for: Lcom/cymobile/ymwork/act/UserAddActivity;->mAddTask:Landroid/os/AsyncTask;
    invoke-static {v0, v1}, Lcom/cymobile/ymwork/act/UserAddActivity;->access$13(Lcom/cymobile/ymwork/act/UserAddActivity;Landroid/os/AsyncTask;)V

    .line 110
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserAddActivity$2;->this$0:Lcom/cymobile/ymwork/act/UserAddActivity;

    #getter for: Lcom/cymobile/ymwork/act/UserAddActivity;->mAddTask:Landroid/os/AsyncTask;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/UserAddActivity;->access$14(Lcom/cymobile/ymwork/act/UserAddActivity;)Landroid/os/AsyncTask;

    move-result-object v0

    invoke-static {v0}, Lcom/cymobile/ymwork/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    .line 111
    return-void
.end method
