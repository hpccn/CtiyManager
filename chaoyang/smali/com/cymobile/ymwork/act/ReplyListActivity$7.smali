.class Lcom/cymobile/ymwork/act/ReplyListActivity$7;
.super Ljava/lang/Object;
.source "ReplyListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/ReplyListActivity;->onCreateDialog(I)Landroid/app/Dialog;
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
    iput-object p1, p0, Lcom/cymobile/ymwork/act/ReplyListActivity$7;->this$0:Lcom/cymobile/ymwork/act/ReplyListActivity;

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 385
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 386
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "caseid"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/cymobile/ymwork/act/ReplyListActivity$7;->this$0:Lcom/cymobile/ymwork/act/ReplyListActivity;

    #getter for: Lcom/cymobile/ymwork/act/ReplyListActivity;->mCaseid:Ljava/lang/String;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/ReplyListActivity;->access$3(Lcom/cymobile/ymwork/act/ReplyListActivity;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 388
    .local v0, extra:[Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/ReplyListActivity$7;->this$0:Lcom/cymobile/ymwork/act/ReplyListActivity;

    const-class v3, Lcom/cymobile/ymwork/act/AddReplay;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 389
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/cymobile/ymwork/act/ReplyListActivity$7;->this$0:Lcom/cymobile/ymwork/act/ReplyListActivity;

    const-class v3, Lcom/cymobile/ymwork/act/ReplyListActivity;

    invoke-static {v2, v3, v0}, Lcom/cymobile/ymwork/HomeApplication;->redirectToLoginActivityAndBack(Landroid/app/Activity;Ljava/lang/Class;[Ljava/lang/String;)V

    .line 390
    return-void
.end method
