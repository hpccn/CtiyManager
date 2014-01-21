.class Lcom/cymobile/ymwork/act/FullSizeImageActivity$TaskSetPhoto;
.super Landroid/os/AsyncTask;
.source "FullSizeImageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/FullSizeImageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TaskSetPhoto"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/cymobile/ymwork/types/User;",
        ">;"
    }
.end annotation


# instance fields
.field private mActivity:Lcom/cymobile/ymwork/act/FullSizeImageActivity;

.field private mReason:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Lcom/cymobile/ymwork/act/FullSizeImageActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 281
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 282
    iput-object p1, p0, Lcom/cymobile/ymwork/act/FullSizeImageActivity$TaskSetPhoto;->mActivity:Lcom/cymobile/ymwork/act/FullSizeImageActivity;

    .line 283
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/cymobile/ymwork/types/User;
    .locals 5
    .parameter "params"

    .prologue
    .line 298
    :try_start_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/FullSizeImageActivity$TaskSetPhoto;->mActivity:Lcom/cymobile/ymwork/act/FullSizeImageActivity;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/HomeApplication;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/HomeApplication;->getServer()Lcom/cymobile/ymwork/server/Server;

    move-result-object v1

    .line 299
    const/4 v2, 0x0

    aget-object v2, p1, v2

    const/4 v3, 0x1

    aget-object v3, p1, v3

    const/4 v4, 0x2

    aget-object v4, p1, v4

    .line 298
    invoke-virtual {v1, v2, v3, v4}, Lcom/cymobile/ymwork/server/Server;->userUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cymobile/ymwork/types/User;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 304
    :goto_0
    return-object v1

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "FullSizeImageActivity"

    const-string v2, "Error submitting new profile photo."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 302
    iput-object v0, p0, Lcom/cymobile/ymwork/act/FullSizeImageActivity$TaskSetPhoto;->mReason:Ljava/lang/Exception;

    .line 304
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/FullSizeImageActivity$TaskSetPhoto;->doInBackground([Ljava/lang/String;)Lcom/cymobile/ymwork/types/User;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 5

    .prologue
    .line 316
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FullSizeImageActivity$TaskSetPhoto;->mActivity:Lcom/cymobile/ymwork/act/FullSizeImageActivity;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FullSizeImageActivity$TaskSetPhoto;->mActivity:Lcom/cymobile/ymwork/act/FullSizeImageActivity;

    const/4 v1, 0x0

    new-instance v2, Lcom/cymobile/ymwork/server/error/ServerException;

    .line 318
    iget-object v3, p0, Lcom/cymobile/ymwork/act/FullSizeImageActivity$TaskSetPhoto;->mActivity:Lcom/cymobile/ymwork/act/FullSizeImageActivity;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09001f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/cymobile/ymwork/server/error/ServerException;-><init>(Ljava/lang/String;)V

    .line 317
    #calls: Lcom/cymobile/ymwork/act/FullSizeImageActivity;->onTaskSetPhotoComplete(Lcom/cymobile/ymwork/types/User;Ljava/lang/Exception;)V
    invoke-static {v0, v1, v2}, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->access$1(Lcom/cymobile/ymwork/act/FullSizeImageActivity;Lcom/cymobile/ymwork/types/User;Ljava/lang/Exception;)V

    .line 320
    :cond_0
    return-void
.end method

.method protected onPostExecute(Lcom/cymobile/ymwork/types/User;)V
    .locals 2
    .parameter "user"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FullSizeImageActivity$TaskSetPhoto;->mActivity:Lcom/cymobile/ymwork/act/FullSizeImageActivity;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FullSizeImageActivity$TaskSetPhoto;->mActivity:Lcom/cymobile/ymwork/act/FullSizeImageActivity;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/FullSizeImageActivity$TaskSetPhoto;->mReason:Ljava/lang/Exception;

    #calls: Lcom/cymobile/ymwork/act/FullSizeImageActivity;->onTaskSetPhotoComplete(Lcom/cymobile/ymwork/types/User;Ljava/lang/Exception;)V
    invoke-static {v0, p1, v1}, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->access$1(Lcom/cymobile/ymwork/act/FullSizeImageActivity;Lcom/cymobile/ymwork/types/User;Ljava/lang/Exception;)V

    .line 312
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/cymobile/ymwork/types/User;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/FullSizeImageActivity$TaskSetPhoto;->onPostExecute(Lcom/cymobile/ymwork/types/User;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FullSizeImageActivity$TaskSetPhoto;->mActivity:Lcom/cymobile/ymwork/act/FullSizeImageActivity;

    #calls: Lcom/cymobile/ymwork/act/FullSizeImageActivity;->onTaskSetPhotoCompleteStart()V
    invoke-static {v0}, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->access$0(Lcom/cymobile/ymwork/act/FullSizeImageActivity;)V

    .line 292
    return-void
.end method

.method public setActivity(Lcom/cymobile/ymwork/act/FullSizeImageActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 286
    iput-object p1, p0, Lcom/cymobile/ymwork/act/FullSizeImageActivity$TaskSetPhoto;->mActivity:Lcom/cymobile/ymwork/act/FullSizeImageActivity;

    .line 287
    return-void
.end method
