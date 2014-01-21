.class public Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$StateHolder;
.super Ljava/lang/Object;
.source "ButtonCaseSearchBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StateHolder"
.end annotation


# instance fields
.field private mIsRunningTask:Z

.field private mRanOnce:Z

.field private mSearchResult:Lcom/cymobile/ymwork/types/Building;

.field private mTaskSearch:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$TaskSearch;

.field final synthetic this$0:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;


# direct methods
.method public constructor <init>(Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 409
    iput-object p1, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$StateHolder;->this$0:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 410
    iput-boolean v0, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$StateHolder;->mRanOnce:Z

    .line 411
    iput-boolean v0, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$StateHolder;->mIsRunningTask:Z

    .line 412
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 453
    iget-boolean v1, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$StateHolder;->mIsRunningTask:Z

    if-eqz v1, :cond_1

    .line 455
    :try_start_0
    iget-object v1, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$StateHolder;->mTaskSearch:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$TaskSearch;

    if-eqz v1, :cond_0

    .line 456
    iget-object v1, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$StateHolder;->mTaskSearch:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$TaskSearch;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$TaskSearch;->cancel(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$StateHolder;->mIsRunningTask:Z

    .line 463
    :cond_1
    return-void

    .line 458
    :catch_0
    move-exception v0

    .line 459
    .local v0, ee:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getIsRunningTask()Z
    .locals 1

    .prologue
    .line 431
    iget-boolean v0, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$StateHolder;->mIsRunningTask:Z

    return v0
.end method

.method public getRanOnce()Z
    .locals 1

    .prologue
    .line 423
    iget-boolean v0, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$StateHolder;->mRanOnce:Z

    return v0
.end method

.method public getSearchResult()Lcom/cymobile/ymwork/types/Building;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$StateHolder;->mSearchResult:Lcom/cymobile/ymwork/types/Building;

    return-object v0
.end method

.method getTaskSearch()Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$TaskSearch;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$StateHolder;->mTaskSearch:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$TaskSearch;

    return-object v0
.end method

.method public setActivity(Lcom/cymobile/ymwork/act/MainActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 439
    iget-boolean v0, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$StateHolder;->mIsRunningTask:Z

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$StateHolder;->mTaskSearch:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$TaskSearch;

    invoke-virtual {v0, p1}, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$TaskSearch;->setActivity(Lcom/cymobile/ymwork/act/MainActivity;)V

    .line 442
    :cond_0
    return-void
.end method

.method public setIsRunningTask(Z)V
    .locals 0
    .parameter "isRunning"

    .prologue
    .line 435
    iput-boolean p1, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$StateHolder;->mIsRunningTask:Z

    .line 436
    return-void
.end method

.method public setRanOnce(Z)V
    .locals 0
    .parameter "ranOnce"

    .prologue
    .line 427
    iput-boolean p1, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$StateHolder;->mRanOnce:Z

    .line 428
    return-void
.end method

.method public setSearchResult(Lcom/cymobile/ymwork/types/Building;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 419
    iput-object p1, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$StateHolder;->mSearchResult:Lcom/cymobile/ymwork/types/Building;

    .line 420
    return-void
.end method

.method public startTask(Lcom/cymobile/ymwork/act/MainActivity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 445
    iget-boolean v0, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$StateHolder;->mIsRunningTask:Z

    if-nez v0, :cond_0

    .line 446
    new-instance v0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$TaskSearch;

    iget-object v1, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$StateHolder;->this$0:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;

    invoke-direct {v0, v1, p1}, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$TaskSearch;-><init>(Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;Lcom/cymobile/ymwork/act/MainActivity;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$StateHolder;->mTaskSearch:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$TaskSearch;

    .line 447
    iget-object v0, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$StateHolder;->mTaskSearch:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$TaskSearch;

    invoke-static {v0}, Lcom/cymobile/ymwork/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    .line 448
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$StateHolder;->mIsRunningTask:Z

    .line 450
    :cond_0
    return-void
.end method
