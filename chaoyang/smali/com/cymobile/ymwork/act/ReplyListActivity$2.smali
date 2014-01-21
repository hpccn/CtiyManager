.class Lcom/cymobile/ymwork/act/ReplyListActivity$2;
.super Ljava/lang/Object;
.source "ReplyListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/ReplyListActivity;->ensureUi()V
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
    iput-object p1, p0, Lcom/cymobile/ymwork/act/ReplyListActivity$2;->this$0:Lcom/cymobile/ymwork/act/ReplyListActivity;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 96
    iget-object v2, p0, Lcom/cymobile/ymwork/act/ReplyListActivity$2;->this$0:Lcom/cymobile/ymwork/act/ReplyListActivity;

    #getter for: Lcom/cymobile/ymwork/act/ReplyListActivity;->mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;
    invoke-static {v2}, Lcom/cymobile/ymwork/act/ReplyListActivity;->access$4(Lcom/cymobile/ymwork/act/ReplyListActivity;)Lcom/cymobile/ymwork/HomeApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cymobile/ymwork/HomeApplication;->isLogined()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 97
    iget-object v2, p0, Lcom/cymobile/ymwork/act/ReplyListActivity$2;->this$0:Lcom/cymobile/ymwork/act/ReplyListActivity;

    iget-object v2, v2, Lcom/cymobile/ymwork/act/ReplyListActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "key_GlobalZoneId"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, userZoneid:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    .line 99
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/ReplyListActivity$2;->this$0:Lcom/cymobile/ymwork/act/ReplyListActivity;

    const-class v3, Lcom/cymobile/ymwork/act/AddReplay;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "caseid"

    iget-object v3, p0, Lcom/cymobile/ymwork/act/ReplyListActivity$2;->this$0:Lcom/cymobile/ymwork/act/ReplyListActivity;

    #getter for: Lcom/cymobile/ymwork/act/ReplyListActivity;->mCaseid:Ljava/lang/String;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/ReplyListActivity;->access$3(Lcom/cymobile/ymwork/act/ReplyListActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const-string v2, "classid"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 102
    iget-object v2, p0, Lcom/cymobile/ymwork/act/ReplyListActivity$2;->this$0:Lcom/cymobile/ymwork/act/ReplyListActivity;

    invoke-virtual {v2, v0}, Lcom/cymobile/ymwork/act/ReplyListActivity;->startActivity(Landroid/content/Intent;)V

    .line 109
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #userZoneid:Ljava/lang/String;
    :goto_0
    return-void

    .line 104
    .restart local v1       #userZoneid:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/cymobile/ymwork/act/ReplyListActivity$2;->this$0:Lcom/cymobile/ymwork/act/ReplyListActivity;

    const v3, 0x7f0900cd

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 107
    .end local v1           #userZoneid:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/cymobile/ymwork/act/ReplyListActivity$2;->this$0:Lcom/cymobile/ymwork/act/ReplyListActivity;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/cymobile/ymwork/act/ReplyListActivity;->showDialog(I)V

    goto :goto_0
.end method
