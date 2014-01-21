.class Lcom/cymobile/ymwork/act/MoreActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "MoreActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/MoreActivity;
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
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MoreActivity$1;->this$0:Lcom/cymobile/ymwork/act/MoreActivity;

    .line 129
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 132
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.cymobile.ymwork.intent.action.versionfetchdone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MoreActivity$1;->this$0:Lcom/cymobile/ymwork/act/MoreActivity;

    #calls: Lcom/cymobile/ymwork/act/MoreActivity;->dismissProgressDialog()V
    invoke-static {v0}, Lcom/cymobile/ymwork/act/MoreActivity;->access$0(Lcom/cymobile/ymwork/act/MoreActivity;)V

    goto :goto_0
.end method
