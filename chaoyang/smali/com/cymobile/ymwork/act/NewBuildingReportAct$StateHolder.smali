.class public Lcom/cymobile/ymwork/act/NewBuildingReportAct$StateHolder;
.super Ljava/lang/Object;
.source "NewBuildingReportAct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/NewBuildingReportAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StateHolder"
.end annotation


# instance fields
.field private mRanOnce:Z

.field private mTaskShops:Lcom/cymobile/ymwork/act/NewBuildingReportAct$TaskShops;

.field final synthetic this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;


# direct methods
.method public constructor <init>(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 304
    iput-object p1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    iput-boolean v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$StateHolder;->mRanOnce:Z

    .line 306
    #setter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->mIsRunningTask:Z
    invoke-static {p1, v0}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$16(Lcom/cymobile/ymwork/act/NewBuildingReportAct;Z)V

    .line 307
    new-instance v0, Lcom/cymobile/ymwork/types/BuildingReport;

    invoke-direct {v0}, Lcom/cymobile/ymwork/types/BuildingReport;-><init>()V

    #setter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;
    invoke-static {p1, v0}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$17(Lcom/cymobile/ymwork/act/NewBuildingReportAct;Lcom/cymobile/ymwork/types/BuildingReport;)V

    .line 308
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 346
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    #getter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->mIsRunningTask:Z
    invoke-static {v1}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$19(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 348
    :try_start_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$StateHolder;->mTaskShops:Lcom/cymobile/ymwork/act/NewBuildingReportAct$TaskShops;

    if-eqz v1, :cond_0

    .line 349
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$StateHolder;->mTaskShops:Lcom/cymobile/ymwork/act/NewBuildingReportAct$TaskShops;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/act/NewBuildingReportAct$TaskShops;->cancel(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    const/4 v2, 0x0

    #setter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->mIsRunningTask:Z
    invoke-static {v1, v2}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$16(Lcom/cymobile/ymwork/act/NewBuildingReportAct;Z)V

    .line 356
    :cond_1
    return-void

    .line 351
    :catch_0
    move-exception v0

    .line 352
    .local v0, ee:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getIsRunningTask()Z
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    #getter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->mIsRunningTask:Z
    invoke-static {v0}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$19(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Z

    move-result v0

    return v0
.end method

.method public getRanOnce()Z
    .locals 1

    .prologue
    .line 315
    iget-boolean v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$StateHolder;->mRanOnce:Z

    return v0
.end method

.method public getShops()Lcom/cymobile/ymwork/types/BuildingReport;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    #getter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$18(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Lcom/cymobile/ymwork/types/BuildingReport;

    move-result-object v0

    return-object v0
.end method

.method getTaskShops()Lcom/cymobile/ymwork/act/NewBuildingReportAct$TaskShops;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$StateHolder;->mTaskShops:Lcom/cymobile/ymwork/act/NewBuildingReportAct$TaskShops;

    return-object v0
.end method

.method public setActivity(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 331
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    #getter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->mIsRunningTask:Z
    invoke-static {v0}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$19(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$StateHolder;->mTaskShops:Lcom/cymobile/ymwork/act/NewBuildingReportAct$TaskShops;

    invoke-virtual {v0, p1}, Lcom/cymobile/ymwork/act/NewBuildingReportAct$TaskShops;->setActivity(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)V

    .line 334
    :cond_0
    return-void
.end method

.method public setIsRunningTask(Z)V
    .locals 1
    .parameter "isRunning"

    .prologue
    .line 327
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    #setter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->mIsRunningTask:Z
    invoke-static {v0, p1}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$16(Lcom/cymobile/ymwork/act/NewBuildingReportAct;Z)V

    .line 328
    return-void
.end method

.method public setRanOnce(Z)V
    .locals 0
    .parameter "ranOnce"

    .prologue
    .line 319
    iput-boolean p1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$StateHolder;->mRanOnce:Z

    .line 320
    return-void
.end method

.method public startTask(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)V
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v2, 0x1

    .line 337
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    #getter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->mIsRunningTask:Z
    invoke-static {v0}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$19(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->setProgressBarIndeterminateVisibility(Z)V

    .line 339
    new-instance v0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$TaskShops;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    invoke-direct {v0, v1, p1}, Lcom/cymobile/ymwork/act/NewBuildingReportAct$TaskShops;-><init>(Lcom/cymobile/ymwork/act/NewBuildingReportAct;Lcom/cymobile/ymwork/act/NewBuildingReportAct;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$StateHolder;->mTaskShops:Lcom/cymobile/ymwork/act/NewBuildingReportAct$TaskShops;

    .line 340
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$StateHolder;->mTaskShops:Lcom/cymobile/ymwork/act/NewBuildingReportAct$TaskShops;

    invoke-static {v0}, Lcom/cymobile/ymwork/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    .line 341
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    #setter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->mIsRunningTask:Z
    invoke-static {v0, v2}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$16(Lcom/cymobile/ymwork/act/NewBuildingReportAct;Z)V

    .line 343
    :cond_0
    return-void
.end method
