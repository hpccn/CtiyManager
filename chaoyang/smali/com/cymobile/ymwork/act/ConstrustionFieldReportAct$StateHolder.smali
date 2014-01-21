.class public Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$StateHolder;
.super Ljava/lang/Object;
.source "ConstrustionFieldReportAct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StateHolder"
.end annotation


# instance fields
.field private mRanOnce:Z

.field private mTaskShops:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$TaskShops;

.field final synthetic this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;


# direct methods
.method public constructor <init>(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 329
    iput-object p1, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    iput-boolean v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$StateHolder;->mRanOnce:Z

    .line 331
    #setter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mIsRunningTask:Z
    invoke-static {p1, v0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$15(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;Z)V

    .line 332
    new-instance v0, Lcom/cymobile/ymwork/types/BuildingReport;

    invoke-direct {v0}, Lcom/cymobile/ymwork/types/BuildingReport;-><init>()V

    #setter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;
    invoke-static {p1, v0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$16(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;Lcom/cymobile/ymwork/types/BuildingReport;)V

    .line 333
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 371
    iget-object v1, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    #getter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mIsRunningTask:Z
    invoke-static {v1}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$18(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 373
    :try_start_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$StateHolder;->mTaskShops:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$TaskShops;

    if-eqz v1, :cond_0

    .line 374
    iget-object v1, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$StateHolder;->mTaskShops:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$TaskShops;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$TaskShops;->cancel(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    const/4 v2, 0x0

    #setter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mIsRunningTask:Z
    invoke-static {v1, v2}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$15(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;Z)V

    .line 381
    :cond_1
    return-void

    .line 376
    :catch_0
    move-exception v0

    .line 377
    .local v0, ee:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getIsRunningTask()Z
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    #getter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mIsRunningTask:Z
    invoke-static {v0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$18(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)Z

    move-result v0

    return v0
.end method

.method public getRanOnce()Z
    .locals 1

    .prologue
    .line 340
    iget-boolean v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$StateHolder;->mRanOnce:Z

    return v0
.end method

.method public getShops()Lcom/cymobile/ymwork/types/BuildingReport;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    #getter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$17(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)Lcom/cymobile/ymwork/types/BuildingReport;

    move-result-object v0

    return-object v0
.end method

.method getTaskShops()Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$TaskShops;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$StateHolder;->mTaskShops:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$TaskShops;

    return-object v0
.end method

.method public setActivity(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 356
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    #getter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mIsRunningTask:Z
    invoke-static {v0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$18(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$StateHolder;->mTaskShops:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$TaskShops;

    invoke-virtual {v0, p1}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$TaskShops;->setActivity(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)V

    .line 359
    :cond_0
    return-void
.end method

.method public setIsRunningTask(Z)V
    .locals 1
    .parameter "isRunning"

    .prologue
    .line 352
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    #setter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mIsRunningTask:Z
    invoke-static {v0, p1}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$15(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;Z)V

    .line 353
    return-void
.end method

.method public setRanOnce(Z)V
    .locals 0
    .parameter "ranOnce"

    .prologue
    .line 344
    iput-boolean p1, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$StateHolder;->mRanOnce:Z

    .line 345
    return-void
.end method

.method public startTask(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)V
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v2, 0x1

    .line 362
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    #getter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mIsRunningTask:Z
    invoke-static {v0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$18(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->setProgressBarIndeterminateVisibility(Z)V

    .line 364
    new-instance v0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$TaskShops;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    invoke-direct {v0, v1, p1}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$TaskShops;-><init>(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$StateHolder;->mTaskShops:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$TaskShops;

    .line 365
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$StateHolder;->mTaskShops:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$TaskShops;

    invoke-static {v0}, Lcom/cymobile/ymwork/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    .line 366
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    #setter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mIsRunningTask:Z
    invoke-static {v0, v2}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$15(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;Z)V

    .line 368
    :cond_0
    return-void
.end method
