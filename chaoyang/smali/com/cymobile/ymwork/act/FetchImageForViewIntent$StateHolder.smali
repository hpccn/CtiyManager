.class Lcom/cymobile/ymwork/act/FetchImageForViewIntent$StateHolder;
.super Ljava/lang/Object;
.source "FetchImageForViewIntent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/FetchImageForViewIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StateHolder"
.end annotation


# instance fields
.field mIsRunning:Z

.field mLaunchViewIntentOnCompletion:Z

.field mProgressMessage:Ljava/lang/String;

.field mProgressTitle:Ljava/lang/String;

.field mTaskFetchImage:Lcom/cymobile/ymwork/act/FetchImageForViewIntent$FetchImageTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent$StateHolder;->mIsRunning:Z

    .line 366
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent$StateHolder;->mLaunchViewIntentOnCompletion:Z

    .line 367
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent$StateHolder;->mTaskFetchImage:Lcom/cymobile/ymwork/act/FetchImageForViewIntent$FetchImageTask;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent$StateHolder;->mTaskFetchImage:Lcom/cymobile/ymwork/act/FetchImageForViewIntent$FetchImageTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/FetchImageForViewIntent$FetchImageTask;->cancel(Z)Z

    .line 405
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent$StateHolder;->mIsRunning:Z

    .line 407
    :cond_0
    return-void
.end method

.method public getIsRunning()Z
    .locals 1

    .prologue
    .line 391
    iget-boolean v0, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent$StateHolder;->mIsRunning:Z

    return v0
.end method

.method public getLaunchViewIntentOnCompletion()Z
    .locals 1

    .prologue
    .line 410
    iget-boolean v0, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent$StateHolder;->mLaunchViewIntentOnCompletion:Z

    return v0
.end method

.method public getProgressMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent$StateHolder;->mProgressMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getProgressTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent$StateHolder;->mProgressTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setActivity(Lcom/cymobile/ymwork/act/FetchImageForViewIntent;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 381
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent$StateHolder;->mTaskFetchImage:Lcom/cymobile/ymwork/act/FetchImageForViewIntent$FetchImageTask;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent$StateHolder;->mTaskFetchImage:Lcom/cymobile/ymwork/act/FetchImageForViewIntent$FetchImageTask;

    invoke-virtual {v0, p1}, Lcom/cymobile/ymwork/act/FetchImageForViewIntent$FetchImageTask;->setActivity(Lcom/cymobile/ymwork/act/FetchImageForViewIntent;)V

    .line 384
    :cond_0
    return-void
.end method

.method public setIsRunning(Z)V
    .locals 0
    .parameter "isRunning"

    .prologue
    .line 387
    iput-boolean p1, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent$StateHolder;->mIsRunning:Z

    .line 388
    return-void
.end method

.method public setLaunchViewIntentOnCompletion(Z)V
    .locals 0
    .parameter "launchViewIntentOnCompletion"

    .prologue
    .line 414
    iput-boolean p1, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent$StateHolder;->mLaunchViewIntentOnCompletion:Z

    .line 415
    return-void
.end method

.method public startTask(Lcom/cymobile/ymwork/act/FetchImageForViewIntent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6
    .parameter "activity"
    .parameter "url"
    .parameter "extension"
    .parameter "progressBarTitle"
    .parameter "progressBarMessage"
    .parameter "connectionTimeoutInSeconds"
    .parameter "readTimeoutInSeconds"

    .prologue
    .line 372
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent$StateHolder;->mIsRunning:Z

    .line 373
    iput-object p4, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent$StateHolder;->mProgressTitle:Ljava/lang/String;

    .line 374
    iput-object p5, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent$StateHolder;->mProgressMessage:Ljava/lang/String;

    .line 375
    new-instance v0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent$FetchImageTask;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p6

    move v5, p7

    .line 376
    invoke-direct/range {v0 .. v5}, Lcom/cymobile/ymwork/act/FetchImageForViewIntent$FetchImageTask;-><init>(Lcom/cymobile/ymwork/act/FetchImageForViewIntent;Ljava/lang/String;Ljava/lang/String;II)V

    .line 375
    iput-object v0, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent$StateHolder;->mTaskFetchImage:Lcom/cymobile/ymwork/act/FetchImageForViewIntent$FetchImageTask;

    .line 377
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent$StateHolder;->mTaskFetchImage:Lcom/cymobile/ymwork/act/FetchImageForViewIntent$FetchImageTask;

    invoke-static {v0}, Lcom/cymobile/ymwork/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    .line 378
    return-void
.end method
