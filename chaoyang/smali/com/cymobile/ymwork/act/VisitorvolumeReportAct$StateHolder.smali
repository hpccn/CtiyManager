.class public Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$StateHolder;
.super Ljava/lang/Object;
.source "VisitorvolumeReportAct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StateHolder"
.end annotation


# instance fields
.field private mRanOnce:Z

.field private mTaskShops:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$TaskShops;

.field final synthetic this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;


# direct methods
.method public constructor <init>(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 309
    iput-object p1, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    iput-boolean v0, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$StateHolder;->mRanOnce:Z

    .line 311
    #setter for: Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mIsRunningTask:Z
    invoke-static {p1, v0}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->access$4(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;Z)V

    .line 312
    new-instance v0, Lcom/cymobile/ymwork/types/VisitorvolumeReports;

    invoke-direct {v0}, Lcom/cymobile/ymwork/types/VisitorvolumeReports;-><init>()V

    #setter for: Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mShops:Lcom/cymobile/ymwork/types/VisitorvolumeReports;
    invoke-static {p1, v0}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->access$5(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;Lcom/cymobile/ymwork/types/VisitorvolumeReports;)V

    .line 313
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 351
    iget-object v1, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    #getter for: Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mIsRunningTask:Z
    invoke-static {v1}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->access$7(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 353
    :try_start_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$StateHolder;->mTaskShops:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$TaskShops;

    if-eqz v1, :cond_0

    .line 354
    iget-object v1, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$StateHolder;->mTaskShops:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$TaskShops;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$TaskShops;->cancel(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    const/4 v2, 0x0

    #setter for: Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mIsRunningTask:Z
    invoke-static {v1, v2}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->access$4(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;Z)V

    .line 361
    :cond_1
    return-void

    .line 356
    :catch_0
    move-exception v0

    .line 357
    .local v0, ee:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getIsRunningTask()Z
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    #getter for: Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mIsRunningTask:Z
    invoke-static {v0}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->access$7(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;)Z

    move-result v0

    return v0
.end method

.method public getRanOnce()Z
    .locals 1

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$StateHolder;->mRanOnce:Z

    return v0
.end method

.method public getShops()Lcom/cymobile/ymwork/types/VisitorvolumeReports;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    #getter for: Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mShops:Lcom/cymobile/ymwork/types/VisitorvolumeReports;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->access$6(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;)Lcom/cymobile/ymwork/types/VisitorvolumeReports;

    move-result-object v0

    return-object v0
.end method

.method getTaskShops()Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$TaskShops;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$StateHolder;->mTaskShops:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$TaskShops;

    return-object v0
.end method

.method public setActivity(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 336
    iget-object v0, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    #getter for: Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mIsRunningTask:Z
    invoke-static {v0}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->access$7(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$StateHolder;->mTaskShops:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$TaskShops;

    invoke-virtual {v0, p1}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$TaskShops;->setActivity(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;)V

    .line 339
    :cond_0
    return-void
.end method

.method public setIsRunningTask(Z)V
    .locals 1
    .parameter "isRunning"

    .prologue
    .line 332
    iget-object v0, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    #setter for: Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mIsRunningTask:Z
    invoke-static {v0, p1}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->access$4(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;Z)V

    .line 333
    return-void
.end method

.method public setRanOnce(Z)V
    .locals 0
    .parameter "ranOnce"

    .prologue
    .line 324
    iput-boolean p1, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$StateHolder;->mRanOnce:Z

    .line 325
    return-void
.end method

.method public startTask(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;)V
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v2, 0x1

    .line 342
    iget-object v0, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    #getter for: Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mIsRunningTask:Z
    invoke-static {v0}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->access$7(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->setProgressBarIndeterminateVisibility(Z)V

    .line 344
    new-instance v0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$TaskShops;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    invoke-direct {v0, v1, p1}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$TaskShops;-><init>(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$StateHolder;->mTaskShops:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$TaskShops;

    .line 345
    iget-object v0, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$StateHolder;->mTaskShops:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$TaskShops;

    invoke-static {v0}, Lcom/cymobile/ymwork/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    .line 346
    iget-object v0, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    #setter for: Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mIsRunningTask:Z
    invoke-static {v0, v2}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->access$4(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;Z)V

    .line 348
    :cond_0
    return-void
.end method
