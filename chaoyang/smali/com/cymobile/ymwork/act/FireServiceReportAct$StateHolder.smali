.class public Lcom/cymobile/ymwork/act/FireServiceReportAct$StateHolder;
.super Ljava/lang/Object;
.source "FireServiceReportAct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/FireServiceReportAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StateHolder"
.end annotation


# instance fields
.field private mRanOnce:Z

.field private mTaskShops:Lcom/cymobile/ymwork/act/FireServiceReportAct$TaskShops;

.field final synthetic this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;


# direct methods
.method public constructor <init>(Lcom/cymobile/ymwork/act/FireServiceReportAct;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 311
    iput-object p1, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    iput-boolean v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$StateHolder;->mRanOnce:Z

    .line 313
    #setter for: Lcom/cymobile/ymwork/act/FireServiceReportAct;->mIsRunningTask:Z
    invoke-static {p1, v0}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->access$14(Lcom/cymobile/ymwork/act/FireServiceReportAct;Z)V

    .line 314
    new-instance v0, Lcom/cymobile/ymwork/types/BuildingReport;

    invoke-direct {v0}, Lcom/cymobile/ymwork/types/BuildingReport;-><init>()V

    #setter for: Lcom/cymobile/ymwork/act/FireServiceReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;
    invoke-static {p1, v0}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->access$15(Lcom/cymobile/ymwork/act/FireServiceReportAct;Lcom/cymobile/ymwork/types/BuildingReport;)V

    .line 315
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 353
    iget-object v1, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    #getter for: Lcom/cymobile/ymwork/act/FireServiceReportAct;->mIsRunningTask:Z
    invoke-static {v1}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->access$17(Lcom/cymobile/ymwork/act/FireServiceReportAct;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 355
    :try_start_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$StateHolder;->mTaskShops:Lcom/cymobile/ymwork/act/FireServiceReportAct$TaskShops;

    if-eqz v1, :cond_0

    .line 356
    iget-object v1, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$StateHolder;->mTaskShops:Lcom/cymobile/ymwork/act/FireServiceReportAct$TaskShops;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/act/FireServiceReportAct$TaskShops;->cancel(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    const/4 v2, 0x0

    #setter for: Lcom/cymobile/ymwork/act/FireServiceReportAct;->mIsRunningTask:Z
    invoke-static {v1, v2}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->access$14(Lcom/cymobile/ymwork/act/FireServiceReportAct;Z)V

    .line 363
    :cond_1
    return-void

    .line 358
    :catch_0
    move-exception v0

    .line 359
    .local v0, ee:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getIsRunningTask()Z
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    #getter for: Lcom/cymobile/ymwork/act/FireServiceReportAct;->mIsRunningTask:Z
    invoke-static {v0}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->access$17(Lcom/cymobile/ymwork/act/FireServiceReportAct;)Z

    move-result v0

    return v0
.end method

.method public getRanOnce()Z
    .locals 1

    .prologue
    .line 322
    iget-boolean v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$StateHolder;->mRanOnce:Z

    return v0
.end method

.method public getShops()Lcom/cymobile/ymwork/types/BuildingReport;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    #getter for: Lcom/cymobile/ymwork/act/FireServiceReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->access$16(Lcom/cymobile/ymwork/act/FireServiceReportAct;)Lcom/cymobile/ymwork/types/BuildingReport;

    move-result-object v0

    return-object v0
.end method

.method getTaskShops()Lcom/cymobile/ymwork/act/FireServiceReportAct$TaskShops;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$StateHolder;->mTaskShops:Lcom/cymobile/ymwork/act/FireServiceReportAct$TaskShops;

    return-object v0
.end method

.method public setActivity(Lcom/cymobile/ymwork/act/FireServiceReportAct;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 338
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    #getter for: Lcom/cymobile/ymwork/act/FireServiceReportAct;->mIsRunningTask:Z
    invoke-static {v0}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->access$17(Lcom/cymobile/ymwork/act/FireServiceReportAct;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$StateHolder;->mTaskShops:Lcom/cymobile/ymwork/act/FireServiceReportAct$TaskShops;

    invoke-virtual {v0, p1}, Lcom/cymobile/ymwork/act/FireServiceReportAct$TaskShops;->setActivity(Lcom/cymobile/ymwork/act/FireServiceReportAct;)V

    .line 341
    :cond_0
    return-void
.end method

.method public setIsRunningTask(Z)V
    .locals 1
    .parameter "isRunning"

    .prologue
    .line 334
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    #setter for: Lcom/cymobile/ymwork/act/FireServiceReportAct;->mIsRunningTask:Z
    invoke-static {v0, p1}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->access$14(Lcom/cymobile/ymwork/act/FireServiceReportAct;Z)V

    .line 335
    return-void
.end method

.method public setRanOnce(Z)V
    .locals 0
    .parameter "ranOnce"

    .prologue
    .line 326
    iput-boolean p1, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$StateHolder;->mRanOnce:Z

    .line 327
    return-void
.end method

.method public startTask(Lcom/cymobile/ymwork/act/FireServiceReportAct;)V
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v2, 0x1

    .line 344
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    #getter for: Lcom/cymobile/ymwork/act/FireServiceReportAct;->mIsRunningTask:Z
    invoke-static {v0}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->access$17(Lcom/cymobile/ymwork/act/FireServiceReportAct;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->setProgressBarIndeterminateVisibility(Z)V

    .line 346
    new-instance v0, Lcom/cymobile/ymwork/act/FireServiceReportAct$TaskShops;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    invoke-direct {v0, v1, p1}, Lcom/cymobile/ymwork/act/FireServiceReportAct$TaskShops;-><init>(Lcom/cymobile/ymwork/act/FireServiceReportAct;Lcom/cymobile/ymwork/act/FireServiceReportAct;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$StateHolder;->mTaskShops:Lcom/cymobile/ymwork/act/FireServiceReportAct$TaskShops;

    .line 347
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$StateHolder;->mTaskShops:Lcom/cymobile/ymwork/act/FireServiceReportAct$TaskShops;

    invoke-static {v0}, Lcom/cymobile/ymwork/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    .line 348
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    #setter for: Lcom/cymobile/ymwork/act/FireServiceReportAct;->mIsRunningTask:Z
    invoke-static {v0, v2}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->access$14(Lcom/cymobile/ymwork/act/FireServiceReportAct;Z)V

    .line 350
    :cond_0
    return-void
.end method
