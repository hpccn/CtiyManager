.class public Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;
.super Ljava/lang/Object;
.source "MainClassConstrustionFieldAct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StateHolder"
.end annotation


# instance fields
.field private mIsRunningTask:Z

.field private mMoreTaskShops:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$TaskMoreShops;

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

.field private mTaskShops:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$TaskShops;

.field final synthetic this$0:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;


# direct methods
.method public constructor <init>(Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 307
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    iput-boolean v0, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;->mRanOnce:Z

    .line 309
    iput-boolean v0, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;->mIsRunningTask:Z

    .line 310
    new-instance v0, Lcom/cymobile/ymwork/types/Group;

    invoke-direct {v0}, Lcom/cymobile/ymwork/types/Group;-><init>()V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;->mShops:Lcom/cymobile/ymwork/types/Group;

    .line 311
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 366
    iget-boolean v1, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;->mIsRunningTask:Z

    if-eqz v1, :cond_2

    .line 368
    :try_start_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;->mTaskShops:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$TaskShops;

    if-eqz v1, :cond_0

    .line 369
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;->mTaskShops:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$TaskShops;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$TaskShops;->cancel(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;->mMoreTaskShops:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$TaskMoreShops;

    if-eqz v1, :cond_1

    .line 376
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;->mMoreTaskShops:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$TaskMoreShops;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$TaskMoreShops;->cancel(Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 381
    :cond_1
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;->mIsRunningTask:Z

    .line 383
    :cond_2
    return-void

    .line 371
    :catch_0
    move-exception v0

    .line 372
    .local v0, ee:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 378
    .end local v0           #ee:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 379
    .restart local v0       #ee:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getIsRunningTask()Z
    .locals 1

    .prologue
    .line 336
    iget-boolean v0, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;->mIsRunningTask:Z

    return v0
.end method

.method public getRanOnce()Z
    .locals 1

    .prologue
    .line 328
    iget-boolean v0, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;->mRanOnce:Z

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
    .line 314
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;->mShops:Lcom/cymobile/ymwork/types/Group;

    return-object v0
.end method

.method getTaskMoreShops()Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$TaskMoreShops;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;->mMoreTaskShops:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$TaskMoreShops;

    return-object v0
.end method

.method getTaskShops()Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$TaskShops;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;->mTaskShops:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$TaskShops;

    return-object v0
.end method

.method public setActivity(Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;->mIsRunningTask:Z

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;->mTaskShops:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$TaskShops;

    invoke-virtual {v0, p1}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$TaskShops;->setActivity(Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;)V

    .line 347
    :cond_0
    return-void
.end method

.method public setIsRunningTask(Z)V
    .locals 0
    .parameter "isRunning"

    .prologue
    .line 340
    iput-boolean p1, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;->mIsRunningTask:Z

    .line 341
    return-void
.end method

.method public setRanOnce(Z)V
    .locals 0
    .parameter "ranOnce"

    .prologue
    .line 332
    iput-boolean p1, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;->mRanOnce:Z

    .line 333
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
    .line 318
    .local p1, shops:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/ConstrustionField;>;"
    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Group;->getNumber()I

    move-result v0

    if-nez v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->commonTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    :goto_0
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;->mShops:Lcom/cymobile/ymwork/types/Group;

    .line 325
    return-void

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->commonTitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u571f\u65b9\u5de5\u5730\u3010\u5171"

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

.method public startMoreTask(Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 359
    iget-boolean v0, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;->mIsRunningTask:Z

    if-nez v0, :cond_0

    .line 360
    new-instance v0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$TaskMoreShops;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;

    invoke-direct {v0, v1, p1}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$TaskMoreShops;-><init>(Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;->mMoreTaskShops:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$TaskMoreShops;

    .line 361
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;->mMoreTaskShops:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$TaskMoreShops;

    invoke-static {v0}, Lcom/cymobile/ymwork/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    .line 362
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;->mIsRunningTask:Z

    .line 364
    :cond_0
    return-void
.end method

.method public startTask(Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;)V
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v2, 0x1

    .line 350
    iget-boolean v0, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;->mIsRunningTask:Z

    if-nez v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;

    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->setProgressBarIndeterminateVisibility(Z)V

    .line 352
    new-instance v0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$TaskShops;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;

    invoke-direct {v0, v1, p1}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$TaskShops;-><init>(Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;->mTaskShops:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$TaskShops;

    .line 353
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;->mTaskShops:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$TaskShops;

    invoke-static {v0}, Lcom/cymobile/ymwork/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    .line 354
    iput-boolean v2, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;->mIsRunningTask:Z

    .line 356
    :cond_0
    return-void
.end method
