.class Lcom/cymobile/ymwork/act/ReplyListActivity$TaskReplys;
.super Landroid/os/AsyncTask;
.source "ReplyListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/ReplyListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskReplys"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/cymobile/ymwork/types/Group",
        "<",
        "Lcom/cymobile/ymwork/types/Reply;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mActivity:Lcom/cymobile/ymwork/act/ReplyListActivity;

.field private mException:Ljava/lang/Exception;

.field private mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;

.field final synthetic this$0:Lcom/cymobile/ymwork/act/ReplyListActivity;


# direct methods
.method public constructor <init>(Lcom/cymobile/ymwork/act/ReplyListActivity;Lcom/cymobile/ymwork/act/ReplyListActivity;)V
    .locals 1
    .parameter
    .parameter "activity"

    .prologue
    .line 296
    iput-object p1, p0, Lcom/cymobile/ymwork/act/ReplyListActivity$TaskReplys;->this$0:Lcom/cymobile/ymwork/act/ReplyListActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 297
    invoke-virtual {p2}, Lcom/cymobile/ymwork/act/ReplyListActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/cymobile/ymwork/HomeApplication;

    iput-object v0, p0, Lcom/cymobile/ymwork/act/ReplyListActivity$TaskReplys;->mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;

    .line 298
    iput-object p2, p0, Lcom/cymobile/ymwork/act/ReplyListActivity$TaskReplys;->mActivity:Lcom/cymobile/ymwork/act/ReplyListActivity;

    .line 299
    return-void
.end method

.method private reply()Lcom/cymobile/ymwork/types/Group;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/Reply;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cymobile/ymwork/server/error/ServerException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 330
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ReplyListActivity$TaskReplys;->mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/HomeApplication;->getServer()Lcom/cymobile/ymwork/server/Server;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/act/ReplyListActivity$TaskReplys;->this$0:Lcom/cymobile/ymwork/act/ReplyListActivity;

    #getter for: Lcom/cymobile/ymwork/act/ReplyListActivity;->contexts:Landroid/content/Context;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/ReplyListActivity;->access$2(Lcom/cymobile/ymwork/act/ReplyListActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cymobile/ymwork/act/ReplyListActivity$TaskReplys;->this$0:Lcom/cymobile/ymwork/act/ReplyListActivity;

    #getter for: Lcom/cymobile/ymwork/act/ReplyListActivity;->mCaseid:Ljava/lang/String;
    invoke-static {v2}, Lcom/cymobile/ymwork/act/ReplyListActivity;->access$3(Lcom/cymobile/ymwork/act/ReplyListActivity;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/cymobile/ymwork/server/Server;->getCaseReplys(Landroid/content/Context;Ljava/lang/String;I)Lcom/cymobile/ymwork/types/Group;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Lcom/cymobile/ymwork/types/Group;
    .locals 2
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/Reply;",
            ">;"
        }
    .end annotation

    .prologue
    .line 307
    const/4 v1, 0x0

    .line 309
    .local v1, reply:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Reply;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/ReplyListActivity$TaskReplys;->reply()Lcom/cymobile/ymwork/types/Group;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 315
    :goto_0
    return-object v1

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, ex:Ljava/lang/Exception;
    iput-object v0, p0, Lcom/cymobile/ymwork/act/ReplyListActivity$TaskReplys;->mException:Ljava/lang/Exception;

    .line 312
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/ReplyListActivity$TaskReplys;->doInBackground([Ljava/lang/Void;)Lcom/cymobile/ymwork/types/Group;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Lcom/cymobile/ymwork/types/Group;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/Reply;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 324
    .local p1, reply:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Reply;>;"
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ReplyListActivity$TaskReplys;->mActivity:Lcom/cymobile/ymwork/act/ReplyListActivity;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ReplyListActivity$TaskReplys;->mActivity:Lcom/cymobile/ymwork/act/ReplyListActivity;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/ReplyListActivity$TaskReplys;->mException:Ljava/lang/Exception;

    #calls: Lcom/cymobile/ymwork/act/ReplyListActivity;->onTaskComplete(Lcom/cymobile/ymwork/types/Group;Ljava/lang/Exception;)V
    invoke-static {v0, p1, v1}, Lcom/cymobile/ymwork/act/ReplyListActivity;->access$1(Lcom/cymobile/ymwork/act/ReplyListActivity;Lcom/cymobile/ymwork/types/Group;Ljava/lang/Exception;)V

    .line 327
    :cond_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/cymobile/ymwork/types/Group;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/ReplyListActivity$TaskReplys;->onPostExecute(Lcom/cymobile/ymwork/types/Group;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ReplyListActivity$TaskReplys;->mActivity:Lcom/cymobile/ymwork/act/ReplyListActivity;

    #calls: Lcom/cymobile/ymwork/act/ReplyListActivity;->onRefreshTaskStart()V
    invoke-static {v0}, Lcom/cymobile/ymwork/act/ReplyListActivity;->access$0(Lcom/cymobile/ymwork/act/ReplyListActivity;)V

    .line 321
    return-void
.end method

.method public setActivity(Lcom/cymobile/ymwork/act/ReplyListActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 302
    iput-object p1, p0, Lcom/cymobile/ymwork/act/ReplyListActivity$TaskReplys;->mActivity:Lcom/cymobile/ymwork/act/ReplyListActivity;

    .line 303
    return-void
.end method
