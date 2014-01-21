.class Lcom/cymobile/ymwork/act/MapFragmentActivity$8;
.super Ljava/lang/Object;
.source "MapFragmentActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/MapFragmentActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/MapFragmentActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$8;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    .line 595
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 600
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 601
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$8;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapFragmentActivity;->isLocateTaskRunning:Z
    invoke-static {v0}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$30(Lcom/cymobile/ymwork/act/MapFragmentActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$8;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapFragmentActivity;->locateTask:Lcom/cymobile/ymwork/act/MapFragmentActivity$LocatingTask;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$31(Lcom/cymobile/ymwork/act/MapFragmentActivity;)Lcom/cymobile/ymwork/act/MapFragmentActivity$LocatingTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/MapFragmentActivity$LocatingTask;->cancel(Z)Z

    .line 607
    :cond_0
    return-void
.end method
