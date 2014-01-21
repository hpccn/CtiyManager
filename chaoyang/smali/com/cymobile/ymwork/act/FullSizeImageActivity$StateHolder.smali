.class Lcom/cymobile/ymwork/act/FullSizeImageActivity$StateHolder;
.super Ljava/lang/Object;
.source "FullSizeImageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/FullSizeImageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StateHolder"
.end annotation


# instance fields
.field private mAllowSetPhoto:Z

.field private mImagePath:Ljava/lang/String;

.field private mIsRunningTaskSetPhoto:Z

.field private mPreparedResult:Landroid/content/Intent;

.field private mTaskSetPhoto:Lcom/cymobile/ymwork/act/FullSizeImageActivity$TaskSetPhoto;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    iput-boolean v0, p0, Lcom/cymobile/ymwork/act/FullSizeImageActivity$StateHolder;->mAllowSetPhoto:Z

    .line 334
    iput-boolean v0, p0, Lcom/cymobile/ymwork/act/FullSizeImageActivity$StateHolder;->mIsRunningTaskSetPhoto:Z

    .line 335
    return-void
.end method


# virtual methods
.method public getAllowSetPhoto()Z
    .locals 1

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/cymobile/ymwork/act/FullSizeImageActivity$StateHolder;->mAllowSetPhoto:Z

    return v0
.end method

.method public getImagePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FullSizeImageActivity$StateHolder;->mImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getIsRunningTaskSetPhoto()Z
    .locals 1

    .prologue
    .line 354
    iget-boolean v0, p0, Lcom/cymobile/ymwork/act/FullSizeImageActivity$StateHolder;->mIsRunningTaskSetPhoto:Z

    return v0
.end method

.method public getPreparedResult()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FullSizeImageActivity$StateHolder;->mPreparedResult:Landroid/content/Intent;

    return-object v0
.end method

.method public setActivity(Lcom/cymobile/ymwork/act/FullSizeImageActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 362
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FullSizeImageActivity$StateHolder;->mTaskSetPhoto:Lcom/cymobile/ymwork/act/FullSizeImageActivity$TaskSetPhoto;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FullSizeImageActivity$StateHolder;->mTaskSetPhoto:Lcom/cymobile/ymwork/act/FullSizeImageActivity$TaskSetPhoto;

    invoke-virtual {v0, p1}, Lcom/cymobile/ymwork/act/FullSizeImageActivity$TaskSetPhoto;->setActivity(Lcom/cymobile/ymwork/act/FullSizeImageActivity;)V

    .line 365
    :cond_0
    return-void
.end method

.method public setAllowSetPhoto(Z)V
    .locals 0
    .parameter "allowSetPhoto"

    .prologue
    .line 350
    iput-boolean p1, p0, Lcom/cymobile/ymwork/act/FullSizeImageActivity$StateHolder;->mAllowSetPhoto:Z

    .line 351
    return-void
.end method

.method public setImagePath(Ljava/lang/String;)V
    .locals 0
    .parameter "imagePath"

    .prologue
    .line 342
    iput-object p1, p0, Lcom/cymobile/ymwork/act/FullSizeImageActivity$StateHolder;->mImagePath:Ljava/lang/String;

    .line 343
    return-void
.end method

.method public setIsRunningTaskSetPhoto(Z)V
    .locals 0
    .parameter "isRunning"

    .prologue
    .line 358
    iput-boolean p1, p0, Lcom/cymobile/ymwork/act/FullSizeImageActivity$StateHolder;->mIsRunningTaskSetPhoto:Z

    .line 359
    return-void
.end method

.method public setPreparedResult(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 382
    iput-object p1, p0, Lcom/cymobile/ymwork/act/FullSizeImageActivity$StateHolder;->mPreparedResult:Landroid/content/Intent;

    .line 383
    return-void
.end method

.method public startTaskSetPhoto(Lcom/cymobile/ymwork/act/FullSizeImageActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "activity"
    .parameter "pathImage"
    .parameter "username"
    .parameter "password"

    .prologue
    const/4 v3, 0x1

    .line 369
    iget-boolean v0, p0, Lcom/cymobile/ymwork/act/FullSizeImageActivity$StateHolder;->mIsRunningTaskSetPhoto:Z

    if-nez v0, :cond_0

    .line 370
    iput-boolean v3, p0, Lcom/cymobile/ymwork/act/FullSizeImageActivity$StateHolder;->mIsRunningTaskSetPhoto:Z

    .line 371
    new-instance v0, Lcom/cymobile/ymwork/act/FullSizeImageActivity$TaskSetPhoto;

    invoke-direct {v0, p1}, Lcom/cymobile/ymwork/act/FullSizeImageActivity$TaskSetPhoto;-><init>(Lcom/cymobile/ymwork/act/FullSizeImageActivity;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/FullSizeImageActivity$StateHolder;->mTaskSetPhoto:Lcom/cymobile/ymwork/act/FullSizeImageActivity$TaskSetPhoto;

    .line 373
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FullSizeImageActivity$StateHolder;->mTaskSetPhoto:Lcom/cymobile/ymwork/act/FullSizeImageActivity$TaskSetPhoto;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    aput-object p3, v1, v3

    const/4 v2, 0x2

    aput-object p4, v1, v2

    invoke-static {v0, v1}, Lcom/cymobile/ymwork/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 375
    :cond_0
    return-void
.end method
