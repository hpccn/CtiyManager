.class Lcom/cymobile/ymwork/act/UserListActivity$StateHolder;
.super Ljava/lang/Object;
.source "UserListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/UserListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateHolder"
.end annotation


# instance fields
.field private mIsRunningTask:Z

.field private mRanOnce:Z

.field private mTaskUsers:Lcom/cymobile/ymwork/act/UserListActivity$TaskUsers;

.field private mUsers:Lcom/cymobile/ymwork/types/Group;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/User;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/cymobile/ymwork/act/UserListActivity;


# direct methods
.method public constructor <init>(Lcom/cymobile/ymwork/act/UserListActivity;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 225
    iput-object p1, p0, Lcom/cymobile/ymwork/act/UserListActivity$StateHolder;->this$0:Lcom/cymobile/ymwork/act/UserListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    iput-boolean v0, p0, Lcom/cymobile/ymwork/act/UserListActivity$StateHolder;->mRanOnce:Z

    .line 227
    iput-boolean v0, p0, Lcom/cymobile/ymwork/act/UserListActivity$StateHolder;->mIsRunningTask:Z

    .line 228
    new-instance v0, Lcom/cymobile/ymwork/types/Group;

    invoke-direct {v0}, Lcom/cymobile/ymwork/types/Group;-><init>()V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/UserListActivity$StateHolder;->mUsers:Lcom/cymobile/ymwork/types/Group;

    .line 229
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/cymobile/ymwork/act/UserListActivity$StateHolder;->mIsRunningTask:Z

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserListActivity$StateHolder;->mTaskUsers:Lcom/cymobile/ymwork/act/UserListActivity$TaskUsers;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/UserListActivity$TaskUsers;->cancel(Z)Z

    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cymobile/ymwork/act/UserListActivity$StateHolder;->mIsRunningTask:Z

    .line 283
    :cond_0
    return-void
.end method

.method public getIsRunningTask()Z
    .locals 1

    .prologue
    .line 257
    iget-boolean v0, p0, Lcom/cymobile/ymwork/act/UserListActivity$StateHolder;->mIsRunningTask:Z

    return v0
.end method

.method public getRanOnce()Z
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/cymobile/ymwork/act/UserListActivity$StateHolder;->mRanOnce:Z

    return v0
.end method

.method public getUsers()Lcom/cymobile/ymwork/types/Group;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserListActivity$StateHolder;->mUsers:Lcom/cymobile/ymwork/types/Group;

    return-object v0
.end method

.method public setActivity(Lcom/cymobile/ymwork/act/UserListActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 265
    iget-boolean v0, p0, Lcom/cymobile/ymwork/act/UserListActivity$StateHolder;->mIsRunningTask:Z

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserListActivity$StateHolder;->mTaskUsers:Lcom/cymobile/ymwork/act/UserListActivity$TaskUsers;

    invoke-virtual {v0, p1}, Lcom/cymobile/ymwork/act/UserListActivity$TaskUsers;->setActivity(Lcom/cymobile/ymwork/act/UserListActivity;)V

    .line 268
    :cond_0
    return-void
.end method

.method public setIsRunningTask(Z)V
    .locals 0
    .parameter "isRunning"

    .prologue
    .line 261
    iput-boolean p1, p0, Lcom/cymobile/ymwork/act/UserListActivity$StateHolder;->mIsRunningTask:Z

    .line 262
    return-void
.end method

.method public setRanOnce(Z)V
    .locals 0
    .parameter "ranOnce"

    .prologue
    .line 253
    iput-boolean p1, p0, Lcom/cymobile/ymwork/act/UserListActivity$StateHolder;->mRanOnce:Z

    .line 254
    return-void
.end method

.method public setUsers(Lcom/cymobile/ymwork/types/Group;)V
    .locals 6
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
    .line 236
    .local p1, us:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/User;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 237
    iget-object v3, p0, Lcom/cymobile/ymwork/act/UserListActivity$StateHolder;->this$0:Lcom/cymobile/ymwork/act/UserListActivity;

    iget-object v3, v3, Lcom/cymobile/ymwork/act/UserListActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "key_newGlobalUserPhone"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, mobile:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 244
    iput-object p1, p0, Lcom/cymobile/ymwork/act/UserListActivity$StateHolder;->mUsers:Lcom/cymobile/ymwork/types/Group;

    .line 246
    .end local v0           #i:I
    .end local v1           #mobile:Ljava/lang/String;
    :cond_0
    return-void

    .line 239
    .restart local v0       #i:I
    .restart local v1       #mobile:Ljava/lang/String;
    :cond_1
    invoke-virtual {p1, v0}, Lcom/cymobile/ymwork/types/Group;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cymobile/ymwork/types/User;

    .line 240
    .local v2, u:Lcom/cymobile/ymwork/types/User;
    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/User;->getMobile()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/User;->getMobile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 241
    invoke-virtual {p1, v0}, Lcom/cymobile/ymwork/types/Group;->remove(I)Ljava/lang/Object;

    .line 238
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public startTask(Lcom/cymobile/ymwork/act/UserListActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/cymobile/ymwork/act/UserListActivity$StateHolder;->mIsRunningTask:Z

    if-nez v0, :cond_0

    .line 272
    new-instance v0, Lcom/cymobile/ymwork/act/UserListActivity$TaskUsers;

    invoke-direct {v0, p1}, Lcom/cymobile/ymwork/act/UserListActivity$TaskUsers;-><init>(Lcom/cymobile/ymwork/act/UserListActivity;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/UserListActivity$StateHolder;->mTaskUsers:Lcom/cymobile/ymwork/act/UserListActivity$TaskUsers;

    .line 273
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserListActivity$StateHolder;->mTaskUsers:Lcom/cymobile/ymwork/act/UserListActivity$TaskUsers;

    invoke-static {v0}, Lcom/cymobile/ymwork/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    .line 274
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cymobile/ymwork/act/UserListActivity$StateHolder;->mIsRunningTask:Z

    .line 276
    :cond_0
    return-void
.end method
