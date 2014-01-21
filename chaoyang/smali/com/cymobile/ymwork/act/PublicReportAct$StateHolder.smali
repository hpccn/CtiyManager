.class public Lcom/cymobile/ymwork/act/PublicReportAct$StateHolder;
.super Ljava/lang/Object;
.source "PublicReportAct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/PublicReportAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StateHolder"
.end annotation


# instance fields
.field private mRanOnce:Z

.field private mTaskShops:Lcom/cymobile/ymwork/act/PublicReportAct$TaskShops;

.field final synthetic this$0:Lcom/cymobile/ymwork/act/PublicReportAct;


# direct methods
.method public constructor <init>(Lcom/cymobile/ymwork/act/PublicReportAct;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 315
    iput-object p1, p0, Lcom/cymobile/ymwork/act/PublicReportAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput-boolean v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct$StateHolder;->mRanOnce:Z

    .line 317
    #setter for: Lcom/cymobile/ymwork/act/PublicReportAct;->mIsRunningTask:Z
    invoke-static {p1, v0}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$14(Lcom/cymobile/ymwork/act/PublicReportAct;Z)V

    .line 318
    new-instance v0, Lcom/cymobile/ymwork/types/BuildingReport;

    invoke-direct {v0}, Lcom/cymobile/ymwork/types/BuildingReport;-><init>()V

    #setter for: Lcom/cymobile/ymwork/act/PublicReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;
    invoke-static {p1, v0}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$15(Lcom/cymobile/ymwork/act/PublicReportAct;Lcom/cymobile/ymwork/types/BuildingReport;)V

    .line 319
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 357
    iget-object v1, p0, Lcom/cymobile/ymwork/act/PublicReportAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    #getter for: Lcom/cymobile/ymwork/act/PublicReportAct;->mIsRunningTask:Z
    invoke-static {v1}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$17(Lcom/cymobile/ymwork/act/PublicReportAct;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 359
    :try_start_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/PublicReportAct$StateHolder;->mTaskShops:Lcom/cymobile/ymwork/act/PublicReportAct$TaskShops;

    if-eqz v1, :cond_0

    .line 360
    iget-object v1, p0, Lcom/cymobile/ymwork/act/PublicReportAct$StateHolder;->mTaskShops:Lcom/cymobile/ymwork/act/PublicReportAct$TaskShops;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/act/PublicReportAct$TaskShops;->cancel(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/PublicReportAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    const/4 v2, 0x0

    #setter for: Lcom/cymobile/ymwork/act/PublicReportAct;->mIsRunningTask:Z
    invoke-static {v1, v2}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$14(Lcom/cymobile/ymwork/act/PublicReportAct;Z)V

    .line 367
    :cond_1
    return-void

    .line 362
    :catch_0
    move-exception v0

    .line 363
    .local v0, ee:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getIsRunningTask()Z
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    #getter for: Lcom/cymobile/ymwork/act/PublicReportAct;->mIsRunningTask:Z
    invoke-static {v0}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$17(Lcom/cymobile/ymwork/act/PublicReportAct;)Z

    move-result v0

    return v0
.end method

.method public getRanOnce()Z
    .locals 1

    .prologue
    .line 326
    iget-boolean v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct$StateHolder;->mRanOnce:Z

    return v0
.end method

.method public getShops()Lcom/cymobile/ymwork/types/BuildingReport;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    #getter for: Lcom/cymobile/ymwork/act/PublicReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$16(Lcom/cymobile/ymwork/act/PublicReportAct;)Lcom/cymobile/ymwork/types/BuildingReport;

    move-result-object v0

    return-object v0
.end method

.method getTaskShops()Lcom/cymobile/ymwork/act/PublicReportAct$TaskShops;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct$StateHolder;->mTaskShops:Lcom/cymobile/ymwork/act/PublicReportAct$TaskShops;

    return-object v0
.end method

.method public setActivity(Lcom/cymobile/ymwork/act/PublicReportAct;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 342
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    #getter for: Lcom/cymobile/ymwork/act/PublicReportAct;->mIsRunningTask:Z
    invoke-static {v0}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$17(Lcom/cymobile/ymwork/act/PublicReportAct;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct$StateHolder;->mTaskShops:Lcom/cymobile/ymwork/act/PublicReportAct$TaskShops;

    invoke-virtual {v0, p1}, Lcom/cymobile/ymwork/act/PublicReportAct$TaskShops;->setActivity(Lcom/cymobile/ymwork/act/PublicReportAct;)V

    .line 345
    :cond_0
    return-void
.end method

.method public setIsRunningTask(Z)V
    .locals 1
    .parameter "isRunning"

    .prologue
    .line 338
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    #setter for: Lcom/cymobile/ymwork/act/PublicReportAct;->mIsRunningTask:Z
    invoke-static {v0, p1}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$14(Lcom/cymobile/ymwork/act/PublicReportAct;Z)V

    .line 339
    return-void
.end method

.method public setRanOnce(Z)V
    .locals 0
    .parameter "ranOnce"

    .prologue
    .line 330
    iput-boolean p1, p0, Lcom/cymobile/ymwork/act/PublicReportAct$StateHolder;->mRanOnce:Z

    .line 331
    return-void
.end method

.method public startTask(Lcom/cymobile/ymwork/act/PublicReportAct;)V
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v2, 0x1

    .line 348
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    #getter for: Lcom/cymobile/ymwork/act/PublicReportAct;->mIsRunningTask:Z
    invoke-static {v0}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$17(Lcom/cymobile/ymwork/act/PublicReportAct;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/act/PublicReportAct;->setProgressBarIndeterminateVisibility(Z)V

    .line 350
    new-instance v0, Lcom/cymobile/ymwork/act/PublicReportAct$TaskShops;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/PublicReportAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    invoke-direct {v0, v1, p1}, Lcom/cymobile/ymwork/act/PublicReportAct$TaskShops;-><init>(Lcom/cymobile/ymwork/act/PublicReportAct;Lcom/cymobile/ymwork/act/PublicReportAct;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct$StateHolder;->mTaskShops:Lcom/cymobile/ymwork/act/PublicReportAct$TaskShops;

    .line 351
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct$StateHolder;->mTaskShops:Lcom/cymobile/ymwork/act/PublicReportAct$TaskShops;

    invoke-static {v0}, Lcom/cymobile/ymwork/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    .line 352
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    #setter for: Lcom/cymobile/ymwork/act/PublicReportAct;->mIsRunningTask:Z
    invoke-static {v0, v2}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$14(Lcom/cymobile/ymwork/act/PublicReportAct;Z)V

    .line 354
    :cond_0
    return-void
.end method
