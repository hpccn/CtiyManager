.class Lcom/cymobile/ymwork/act/MapFragmentActivity$PaganiteTask;
.super Landroid/os/AsyncTask;
.source "MapFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/MapFragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PaganiteTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/MapFragmentActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 395
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$PaganiteTask;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method static synthetic access$3(Lcom/cymobile/ymwork/act/MapFragmentActivity$PaganiteTask;)Lcom/cymobile/ymwork/act/MapFragmentActivity;
    .locals 1
    .parameter

    .prologue
    .line 395
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$PaganiteTask;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 13
    .parameter "params"

    .prologue
    const/4 v12, 0x0

    .line 404
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$PaganiteTask;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapFragmentActivity;->circleProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$12(Lcom/cymobile/ymwork/act/MapFragmentActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 405
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$PaganiteTask;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    new-instance v2, Lcom/cymobile/ymwork/act/MapFragmentActivity$PaganiteTask$1;

    invoke-direct {v2, p0}, Lcom/cymobile/ymwork/act/MapFragmentActivity$PaganiteTask$1;-><init>(Lcom/cymobile/ymwork/act/MapFragmentActivity$PaganiteTask;)V

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 412
    :cond_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$PaganiteTask;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapFragmentActivity;->mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$13(Lcom/cymobile/ymwork/act/MapFragmentActivity;)Lcom/cymobile/ymwork/HomeApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/HomeApplication;->getServer()Lcom/cymobile/ymwork/server/Server;

    move-result-object v0

    .line 413
    .local v0, mServer:Lcom/cymobile/ymwork/server/Server;
    const/4 v10, 0x0

    .line 416
    .local v10, buildings:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Building;>;"
    :try_start_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$PaganiteTask;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    iget-object v1, v1, Lcom/cymobile/ymwork/act/MapFragmentActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v1}, Lcom/cymobile/ymwork/SettingBase;->getListNum(Landroid/content/SharedPreferences;)I

    move-result v8

    .line 417
    .local v8, listnum:I
    if-gez v8, :cond_2

    .line 418
    const v8, 0xf4240

    .line 419
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$PaganiteTask;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    const/4 v2, 0x0

    iput v2, v1, Lcom/cymobile/ymwork/act/MapFragmentActivity;->currentPageCount:I

    .line 427
    :goto_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$PaganiteTask;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    iget-object v1, v1, Lcom/cymobile/ymwork/act/MapFragmentActivity;->contexts:Landroid/content/Context;

    invoke-static {}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$4()I

    move-result v2

    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$PaganiteTask;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    iget-object v3, v3, Lcom/cymobile/ymwork/act/MapFragmentActivity;->userZoneId:Ljava/lang/String;

    iget-object v4, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$PaganiteTask;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapFragmentActivity;->days:I
    invoke-static {v4}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$18(Lcom/cymobile/ymwork/act/MapFragmentActivity;)I

    move-result v4

    .line 428
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$PaganiteTask;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapFragmentActivity;->zoneId:Ljava/lang/String;
    invoke-static {v5}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$14(Lcom/cymobile/ymwork/act/MapFragmentActivity;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "timeup"

    iget-object v7, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$PaganiteTask;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    iget v7, v7, Lcom/cymobile/ymwork/act/MapFragmentActivity;->currentPageCount:I

    const/4 v9, 0x0

    .line 427
    invoke-virtual/range {v0 .. v9}, Lcom/cymobile/ymwork/server/Server;->buildings(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;IILcom/cymobile/ymwork/server/Server$Location;)Lcom/cymobile/ymwork/types/Group;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 433
    if-eqz v10, :cond_1

    .line 434
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$PaganiteTask;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    #setter for: Lcom/cymobile/ymwork/act/MapFragmentActivity;->shops:Lcom/cymobile/ymwork/types/Group;
    invoke-static {v1, v10}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$19(Lcom/cymobile/ymwork/act/MapFragmentActivity;Lcom/cymobile/ymwork/types/Group;)V

    .line 436
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .end local v8           #listnum:I
    :goto_1
    return-object v1

    .line 421
    .restart local v8       #listnum:I
    :cond_2
    if-eqz p1, :cond_3

    :try_start_1
    array-length v1, p1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 422
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$PaganiteTask;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    iget v2, v1, Lcom/cymobile/ymwork/act/MapFragmentActivity;->currentPageCount:I

    add-int/2addr v2, v8

    iput v2, v1, Lcom/cymobile/ymwork/act/MapFragmentActivity;->currentPageCount:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 429
    .end local v8           #listnum:I
    :catch_0
    move-exception v11

    .line 430
    .local v11, e:Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 431
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_1

    .line 424
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v8       #listnum:I
    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$PaganiteTask;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$PaganiteTask;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    iget v1, v1, Lcom/cymobile/ymwork/act/MapFragmentActivity;->currentPageCount:I

    sub-int/2addr v1, v8

    if-ltz v1, :cond_4

    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$PaganiteTask;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    iget v1, v1, Lcom/cymobile/ymwork/act/MapFragmentActivity;->currentPageCount:I

    sub-int/2addr v1, v8

    :goto_2
    iput v1, v2, Lcom/cymobile/ymwork/act/MapFragmentActivity;->currentPageCount:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :cond_4
    move v1, v12

    goto :goto_2
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/MapFragmentActivity$PaganiteTask;->doInBackground([Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 446
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 447
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$PaganiteTask;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 452
    :goto_0
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$PaganiteTask;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapFragmentActivity;->circleProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$12(Lcom/cymobile/ymwork/act/MapFragmentActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 453
    return-void

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$PaganiteTask;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    const v1, 0x7f090092

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/MapFragmentActivity$PaganiteTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 398
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 399
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$PaganiteTask;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapFragmentActivity;->circleProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$12(Lcom/cymobile/ymwork/act/MapFragmentActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 400
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 441
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 442
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/MapFragmentActivity$PaganiteTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
