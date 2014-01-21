.class Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$8;
.super Ljava/lang/Object;
.source "MapConstrustionFragmentActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$8;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    .line 761
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 766
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 767
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$8;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->isLocateTaskRunning:Z
    invoke-static {v0}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$34(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 768
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$8;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->locateTask:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$LocatingTask;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$35(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$LocatingTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$LocatingTask;->cancel(Z)Z

    .line 773
    :cond_0
    return-void
.end method
