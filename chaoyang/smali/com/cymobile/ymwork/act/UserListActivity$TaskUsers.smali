.class Lcom/cymobile/ymwork/act/UserListActivity$TaskUsers;
.super Landroid/os/AsyncTask;
.source "UserListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/UserListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TaskUsers"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/cymobile/ymwork/types/Group",
        "<",
        "Lcom/cymobile/ymwork/types/User;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mActivity:Lcom/cymobile/ymwork/act/UserListActivity;

.field private mException:Ljava/lang/Exception;

.field private mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;


# direct methods
.method public constructor <init>(Lcom/cymobile/ymwork/act/UserListActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 293
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 294
    invoke-virtual {p1}, Lcom/cymobile/ymwork/act/UserListActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/cymobile/ymwork/HomeApplication;

    iput-object v0, p0, Lcom/cymobile/ymwork/act/UserListActivity$TaskUsers;->mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;

    .line 295
    iput-object p1, p0, Lcom/cymobile/ymwork/act/UserListActivity$TaskUsers;->mActivity:Lcom/cymobile/ymwork/act/UserListActivity;

    .line 296
    return-void
.end method

.method private users()Lcom/cymobile/ymwork/types/Group;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/User;",
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
    .line 337
    iget-object v1, p0, Lcom/cymobile/ymwork/act/UserListActivity$TaskUsers;->mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/HomeApplication;->getServer()Lcom/cymobile/ymwork/server/Server;

    move-result-object v1

    invoke-static {}, Lcom/cymobile/ymwork/act/UserListActivity;->access$2()Landroid/content/Context;

    move-result-object v2

    .line 338
    iget-object v3, p0, Lcom/cymobile/ymwork/act/UserListActivity$TaskUsers;->mActivity:Lcom/cymobile/ymwork/act/UserListActivity;

    iget-object v3, v3, Lcom/cymobile/ymwork/act/UserListActivity;->zoneCode:Ljava/lang/String;

    .line 337
    invoke-virtual {v1, v2, v3}, Lcom/cymobile/ymwork/server/Server;->users(Landroid/content/Context;Ljava/lang/String;)Lcom/cymobile/ymwork/types/Group;

    move-result-object v0

    .line 339
    .local v0, users:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/User;>;"
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
            "Lcom/cymobile/ymwork/types/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 304
    const/4 v1, 0x0

    .line 306
    .local v1, users:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/User;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/UserListActivity$TaskUsers;->users()Lcom/cymobile/ymwork/types/Group;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 312
    :goto_0
    return-object v1

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, ex:Ljava/lang/Exception;
    iput-object v0, p0, Lcom/cymobile/ymwork/act/UserListActivity$TaskUsers;->mException:Ljava/lang/Exception;

    .line 309
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/UserListActivity$TaskUsers;->doInBackground([Ljava/lang/Void;)Lcom/cymobile/ymwork/types/Group;

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
            "Lcom/cymobile/ymwork/types/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 321
    .local p1, users:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/User;>;"
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserListActivity$TaskUsers;->mActivity:Lcom/cymobile/ymwork/act/UserListActivity;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserListActivity$TaskUsers;->mActivity:Lcom/cymobile/ymwork/act/UserListActivity;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/UserListActivity$TaskUsers;->mException:Ljava/lang/Exception;

    #calls: Lcom/cymobile/ymwork/act/UserListActivity;->onTaskComplete(Lcom/cymobile/ymwork/types/Group;Ljava/lang/Exception;)V
    invoke-static {v0, p1, v1}, Lcom/cymobile/ymwork/act/UserListActivity;->access$1(Lcom/cymobile/ymwork/act/UserListActivity;Lcom/cymobile/ymwork/types/Group;Ljava/lang/Exception;)V

    .line 324
    :cond_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/cymobile/ymwork/types/Group;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/UserListActivity$TaskUsers;->onPostExecute(Lcom/cymobile/ymwork/types/Group;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserListActivity$TaskUsers;->mActivity:Lcom/cymobile/ymwork/act/UserListActivity;

    #calls: Lcom/cymobile/ymwork/act/UserListActivity;->onRefreshTaskStart()V
    invoke-static {v0}, Lcom/cymobile/ymwork/act/UserListActivity;->access$0(Lcom/cymobile/ymwork/act/UserListActivity;)V

    .line 318
    return-void
.end method

.method public setActivity(Lcom/cymobile/ymwork/act/UserListActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 299
    iput-object p1, p0, Lcom/cymobile/ymwork/act/UserListActivity$TaskUsers;->mActivity:Lcom/cymobile/ymwork/act/UserListActivity;

    .line 300
    return-void
.end method
