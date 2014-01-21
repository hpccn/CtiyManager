.class Lcom/cymobile/ymwork/act/MoreActivity$3;
.super Ljava/lang/Object;
.source "MoreActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/MoreActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/MoreActivity;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/MoreActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MoreActivity$3;->this$0:Lcom/cymobile/ymwork/act/MoreActivity;

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 202
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 204
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MoreActivity$3;->this$0:Lcom/cymobile/ymwork/act/MoreActivity;

    iget-object v1, v1, Lcom/cymobile/ymwork/act/MoreActivity;->homeApplication:Lcom/cymobile/ymwork/HomeApplication;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/HomeApplication;->logout()V

    .line 205
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MoreActivity$3;->this$0:Lcom/cymobile/ymwork/act/MoreActivity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.cymobile.ymwork.intent.action.LOGGED_OUT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/act/MoreActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 206
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/MoreActivity$3;->this$0:Lcom/cymobile/ymwork/act/MoreActivity;

    .line 207
    const-class v2, Lcom/cymobile/ymwork/act/LoginActivity;

    .line 206
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 208
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 209
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MoreActivity$3;->this$0:Lcom/cymobile/ymwork/act/MoreActivity;

    invoke-virtual {v1, v0}, Lcom/cymobile/ymwork/act/MoreActivity;->startActivity(Landroid/content/Intent;)V

    .line 210
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MoreActivity$3;->this$0:Lcom/cymobile/ymwork/act/MoreActivity;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/MoreActivity;->finish()V

    .line 211
    return-void
.end method
