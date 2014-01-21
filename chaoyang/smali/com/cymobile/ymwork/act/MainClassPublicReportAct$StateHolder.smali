.class public Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;
.super Ljava/lang/Object;
.source "MainClassPublicReportAct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/MainClassPublicReportAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StateHolder"
.end annotation


# instance fields
.field private mIsRunningTask:Z

.field private mMoreTaskShops:Lcom/cymobile/ymwork/act/MainClassPublicReportAct$TaskMoreShops;

.field private mRanOnce:Z

.field private mShops:Lcom/cymobile/ymwork/types/Group;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/ConstrustionField;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskShops:Lcom/cymobile/ymwork/act/MainClassPublicReportAct$TaskShops;

.field final synthetic this$0:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;


# direct methods
.method public constructor <init>(Lcom/cymobile/ymwork/act/MainClassPublicReportAct;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 344
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    iput-boolean v0, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->mRanOnce:Z

    .line 346
    iput-boolean v0, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->mIsRunningTask:Z

    .line 347
    new-instance v0, Lcom/cymobile/ymwork/types/Group;

    invoke-direct {v0}, Lcom/cymobile/ymwork/types/Group;-><init>()V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->mShops:Lcom/cymobile/ymwork/types/Group;

    .line 348
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 405
    iget-boolean v1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->mIsRunningTask:Z

    if-eqz v1, :cond_2

    .line 407
    :try_start_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->mTaskShops:Lcom/cymobile/ymwork/act/MainClassPublicReportAct$TaskShops;

    if-eqz v1, :cond_0

    .line 408
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->mTaskShops:Lcom/cymobile/ymwork/act/MainClassPublicReportAct$TaskShops;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$TaskShops;->cancel(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->mMoreTaskShops:Lcom/cymobile/ymwork/act/MainClassPublicReportAct$TaskMoreShops;

    if-eqz v1, :cond_1

    .line 415
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->mMoreTaskShops:Lcom/cymobile/ymwork/act/MainClassPublicReportAct$TaskMoreShops;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$TaskMoreShops;->cancel(Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 420
    :cond_1
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->mIsRunningTask:Z

    .line 422
    :cond_2
    return-void

    .line 410
    :catch_0
    move-exception v0

    .line 411
    .local v0, ee:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 417
    .end local v0           #ee:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 418
    .restart local v0       #ee:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getIsRunningTask()Z
    .locals 1

    .prologue
    .line 374
    iget-boolean v0, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->mIsRunningTask:Z

    return v0
.end method

.method public getRanOnce()Z
    .locals 1

    .prologue
    .line 366
    iget-boolean v0, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->mRanOnce:Z

    return v0
.end method

.method public getShops()Lcom/cymobile/ymwork/types/Group;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/ConstrustionField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 351
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->mShops:Lcom/cymobile/ymwork/types/Group;

    return-object v0
.end method

.method getTaskMoreShops()Lcom/cymobile/ymwork/act/MainClassPublicReportAct$TaskMoreShops;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->mMoreTaskShops:Lcom/cymobile/ymwork/act/MainClassPublicReportAct$TaskMoreShops;

    return-object v0
.end method

.method getTaskShops()Lcom/cymobile/ymwork/act/MainClassPublicReportAct$TaskShops;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->mTaskShops:Lcom/cymobile/ymwork/act/MainClassPublicReportAct$TaskShops;

    return-object v0
.end method

.method public setActivity(Lcom/cymobile/ymwork/act/MainClassPublicReportAct;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 382
    iget-boolean v0, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->mIsRunningTask:Z

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->mTaskShops:Lcom/cymobile/ymwork/act/MainClassPublicReportAct$TaskShops;

    invoke-virtual {v0, p1}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$TaskShops;->setActivity(Lcom/cymobile/ymwork/act/MainClassPublicReportAct;)V

    .line 385
    :cond_0
    return-void
.end method

.method public setIsRunningTask(Z)V
    .locals 0
    .parameter "isRunning"

    .prologue
    .line 378
    iput-boolean p1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->mIsRunningTask:Z

    .line 379
    return-void
.end method

.method public setRanOnce(Z)V
    .locals 0
    .parameter "ranOnce"

    .prologue
    .line 370
    iput-boolean p1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->mRanOnce:Z

    .line 371
    return-void
.end method

.method public setShops(Lcom/cymobile/ymwork/types/Group;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/ConstrustionField;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 355
    .local p1, shops:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/ConstrustionField;>;"
    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Group;->getNumber()I

    move-result v0

    if-nez v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->commonTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    .line 357
    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 358
    const v2, 0x7f0900ab

    .line 357
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 356
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    :goto_0
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->mShops:Lcom/cymobile/ymwork/types/Group;

    .line 363
    return-void

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->commonTitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u516c\u4f17\u4e3e\u62a5\u6295\u8bc9\u3010\u5171"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Group;->getNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u4ef6\u3011"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public startMoreTask(Lcom/cymobile/ymwork/act/MainClassPublicReportAct;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 397
    iget-boolean v0, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->mIsRunningTask:Z

    if-nez v0, :cond_0

    .line 398
    new-instance v0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$TaskMoreShops;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    invoke-direct {v0, v1, p1}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$TaskMoreShops;-><init>(Lcom/cymobile/ymwork/act/MainClassPublicReportAct;Lcom/cymobile/ymwork/act/MainClassPublicReportAct;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->mMoreTaskShops:Lcom/cymobile/ymwork/act/MainClassPublicReportAct$TaskMoreShops;

    .line 399
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->mMoreTaskShops:Lcom/cymobile/ymwork/act/MainClassPublicReportAct$TaskMoreShops;

    invoke-static {v0}, Lcom/cymobile/ymwork/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    .line 400
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->mIsRunningTask:Z

    .line 402
    :cond_0
    return-void
.end method

.method public startTask(Lcom/cymobile/ymwork/act/MainClassPublicReportAct;)V
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v2, 0x1

    .line 388
    iget-boolean v0, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->mIsRunningTask:Z

    if-nez v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->setProgressBarIndeterminateVisibility(Z)V

    .line 390
    new-instance v0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$TaskShops;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    invoke-direct {v0, v1, p1}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$TaskShops;-><init>(Lcom/cymobile/ymwork/act/MainClassPublicReportAct;Lcom/cymobile/ymwork/act/MainClassPublicReportAct;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->mTaskShops:Lcom/cymobile/ymwork/act/MainClassPublicReportAct$TaskShops;

    .line 391
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->mTaskShops:Lcom/cymobile/ymwork/act/MainClassPublicReportAct$TaskShops;

    invoke-static {v0}, Lcom/cymobile/ymwork/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    .line 392
    iput-boolean v2, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->mIsRunningTask:Z

    .line 394
    :cond_0
    return-void
.end method
