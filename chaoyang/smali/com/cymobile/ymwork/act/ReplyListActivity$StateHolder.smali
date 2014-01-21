.class Lcom/cymobile/ymwork/act/ReplyListActivity$StateHolder;
.super Ljava/lang/Object;
.source "ReplyListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/ReplyListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateHolder"
.end annotation


# instance fields
.field private mIsRunningTask:Z

.field private mRanOnce:Z

.field private mReply:Lcom/cymobile/ymwork/types/Group;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/Reply;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskReplys:Lcom/cymobile/ymwork/act/ReplyListActivity$TaskReplys;

.field final synthetic this$0:Lcom/cymobile/ymwork/act/ReplyListActivity;


# direct methods
.method public constructor <init>(Lcom/cymobile/ymwork/act/ReplyListActivity;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 233
    iput-object p1, p0, Lcom/cymobile/ymwork/act/ReplyListActivity$StateHolder;->this$0:Lcom/cymobile/ymwork/act/ReplyListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput-boolean v0, p0, Lcom/cymobile/ymwork/act/ReplyListActivity$StateHolder;->mRanOnce:Z

    .line 235
    iput-boolean v0, p0, Lcom/cymobile/ymwork/act/ReplyListActivity$StateHolder;->mIsRunningTask:Z

    .line 236
    new-instance v0, Lcom/cymobile/ymwork/types/Group;

    invoke-direct {v0}, Lcom/cymobile/ymwork/types/Group;-><init>()V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/ReplyListActivity$StateHolder;->mReply:Lcom/cymobile/ymwork/types/Group;

    .line 237
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 284
    iget-boolean v0, p0, Lcom/cymobile/ymwork/act/ReplyListActivity$StateHolder;->mIsRunningTask:Z

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ReplyListActivity$StateHolder;->mTaskReplys:Lcom/cymobile/ymwork/act/ReplyListActivity$TaskReplys;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/ReplyListActivity$TaskReplys;->cancel(Z)Z

    .line 286
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cymobile/ymwork/act/ReplyListActivity$StateHolder;->mIsRunningTask:Z

    .line 288
    :cond_0
    return-void
.end method

.method public getIsRunningTask()Z
    .locals 1

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/cymobile/ymwork/act/ReplyListActivity$StateHolder;->mIsRunningTask:Z

    return v0
.end method

.method public getRanOnce()Z
    .locals 1

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/cymobile/ymwork/act/ReplyListActivity$StateHolder;->mRanOnce:Z

    return v0
.end method

.method public getReply()Lcom/cymobile/ymwork/types/Group;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/Reply;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ReplyListActivity$StateHolder;->mReply:Lcom/cymobile/ymwork/types/Group;

    return-object v0
.end method

.method public setActivity(Lcom/cymobile/ymwork/act/ReplyListActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 270
    iget-boolean v0, p0, Lcom/cymobile/ymwork/act/ReplyListActivity$StateHolder;->mIsRunningTask:Z

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ReplyListActivity$StateHolder;->mTaskReplys:Lcom/cymobile/ymwork/act/ReplyListActivity$TaskReplys;

    invoke-virtual {v0, p1}, Lcom/cymobile/ymwork/act/ReplyListActivity$TaskReplys;->setActivity(Lcom/cymobile/ymwork/act/ReplyListActivity;)V

    .line 273
    :cond_0
    return-void
.end method

.method public setIsRunningTask(Z)V
    .locals 0
    .parameter "isRunning"

    .prologue
    .line 266
    iput-boolean p1, p0, Lcom/cymobile/ymwork/act/ReplyListActivity$StateHolder;->mIsRunningTask:Z

    .line 267
    return-void
.end method

.method public setRanOnce(Z)V
    .locals 0
    .parameter "ranOnce"

    .prologue
    .line 258
    iput-boolean p1, p0, Lcom/cymobile/ymwork/act/ReplyListActivity$StateHolder;->mRanOnce:Z

    .line 259
    return-void
.end method

.method public setReply(Lcom/cymobile/ymwork/types/Group;)V
    .locals 5
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
    .line 244
    .local p1, us:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Reply;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 245
    iget-object v2, p0, Lcom/cymobile/ymwork/act/ReplyListActivity$StateHolder;->this$0:Lcom/cymobile/ymwork/act/ReplyListActivity;

    iget-object v2, v2, Lcom/cymobile/ymwork/act/ReplyListActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "key_newGlobalUserPhone"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 246
    .local v1, mobile:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 249
    iput-object p1, p0, Lcom/cymobile/ymwork/act/ReplyListActivity$StateHolder;->mReply:Lcom/cymobile/ymwork/types/Group;

    .line 251
    .end local v0           #i:I
    .end local v1           #mobile:Ljava/lang/String;
    :cond_0
    return-void

    .line 247
    .restart local v0       #i:I
    .restart local v1       #mobile:Ljava/lang/String;
    :cond_1
    invoke-virtual {p1, v0}, Lcom/cymobile/ymwork/types/Group;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cymobile/ymwork/types/Reply;

    .line 246
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public startTask(Lcom/cymobile/ymwork/act/ReplyListActivity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/cymobile/ymwork/act/ReplyListActivity$StateHolder;->mIsRunningTask:Z

    if-nez v0, :cond_0

    .line 277
    new-instance v0, Lcom/cymobile/ymwork/act/ReplyListActivity$TaskReplys;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/ReplyListActivity$StateHolder;->this$0:Lcom/cymobile/ymwork/act/ReplyListActivity;

    invoke-direct {v0, v1, p1}, Lcom/cymobile/ymwork/act/ReplyListActivity$TaskReplys;-><init>(Lcom/cymobile/ymwork/act/ReplyListActivity;Lcom/cymobile/ymwork/act/ReplyListActivity;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/ReplyListActivity$StateHolder;->mTaskReplys:Lcom/cymobile/ymwork/act/ReplyListActivity$TaskReplys;

    .line 278
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ReplyListActivity$StateHolder;->mTaskReplys:Lcom/cymobile/ymwork/act/ReplyListActivity$TaskReplys;

    invoke-static {v0}, Lcom/cymobile/ymwork/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cymobile/ymwork/act/ReplyListActivity$StateHolder;->mIsRunningTask:Z

    .line 281
    :cond_0
    return-void
.end method
