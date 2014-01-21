.class Lcom/cymobile/ymwork/act/AddReplay$1;
.super Ljava/lang/Object;
.source "AddReplay.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/AddReplay;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/AddReplay;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/AddReplay;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/AddReplay$1;->this$0:Lcom/cymobile/ymwork/act/AddReplay;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/cymobile/ymwork/act/AddReplay$1;->this$0:Lcom/cymobile/ymwork/act/AddReplay;

    new-instance v1, Lcom/cymobile/ymwork/act/AddReplay$AddTask;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/AddReplay$1;->this$0:Lcom/cymobile/ymwork/act/AddReplay;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/cymobile/ymwork/act/AddReplay$AddTask;-><init>(Lcom/cymobile/ymwork/act/AddReplay;Lcom/cymobile/ymwork/act/AddReplay$AddTask;)V

    #setter for: Lcom/cymobile/ymwork/act/AddReplay;->mAddTask:Landroid/os/AsyncTask;
    invoke-static {v0, v1}, Lcom/cymobile/ymwork/act/AddReplay;->access$5(Lcom/cymobile/ymwork/act/AddReplay;Landroid/os/AsyncTask;)V

    .line 65
    iget-object v0, p0, Lcom/cymobile/ymwork/act/AddReplay$1;->this$0:Lcom/cymobile/ymwork/act/AddReplay;

    #getter for: Lcom/cymobile/ymwork/act/AddReplay;->mAddTask:Landroid/os/AsyncTask;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/AddReplay;->access$6(Lcom/cymobile/ymwork/act/AddReplay;)Landroid/os/AsyncTask;

    move-result-object v0

    invoke-static {v0}, Lcom/cymobile/ymwork/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    .line 66
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 67
    return-void
.end method
