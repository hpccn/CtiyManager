.class Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$PaganiteTask;
.super Landroid/os/AsyncTask;
.source "MapConstrustionFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;
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
.field final synthetic this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 478
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$PaganiteTask;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method static synthetic access$3(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$PaganiteTask;)Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;
    .locals 1
    .parameter

    .prologue
    .line 478
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$PaganiteTask;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 14
    .parameter "params"

    .prologue
    .line 487
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$PaganiteTask;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->circleProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$15(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 488
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$PaganiteTask;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    .line 489
    new-instance v2, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$PaganiteTask$1;

    invoke-direct {v2, p0}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$PaganiteTask$1;-><init>(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$PaganiteTask;)V

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 496
    :cond_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$PaganiteTask;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$16(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Lcom/cymobile/ymwork/HomeApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/HomeApplication;->getServer()Lcom/cymobile/ymwork/server/Server;

    move-result-object v0

    .line 497
    .local v0, mServer:Lcom/cymobile/ymwork/server/Server;
    const/4 v12, 0x0

    .line 500
    .local v12, buildings:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/ConstrustionField;>;"
    :try_start_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$PaganiteTask;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    iget-object v1, v1, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v1}, Lcom/cymobile/ymwork/SettingBase;->getListNum(Landroid/content/SharedPreferences;)I

    move-result v8

    .line 501
    .local v8, listnum:I
    if-gez v8, :cond_3

    .line 502
    const v8, 0xf4240

    .line 503
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$PaganiteTask;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    const/4 v2, 0x0

    iput v2, v1, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->currentPageCount:I

    .line 512
    :goto_0
    invoke-static {}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$6()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    invoke-static {}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$6()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    invoke-static {}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$6()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_6

    .line 513
    :cond_1
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$PaganiteTask;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    iget-object v1, v1, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->contexts:Landroid/content/Context;

    invoke-static {}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$6()I

    move-result v2

    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$PaganiteTask;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    iget-object v3, v3, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->userZoneId:Ljava/lang/String;

    iget-object v4, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$PaganiteTask;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->days:I
    invoke-static {v4}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$21(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)I

    move-result v4

    iget-object v5, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$PaganiteTask;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->zoneId:Ljava/lang/String;
    invoke-static {v5}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$17(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "timeup"

    .line 514
    iget-object v7, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$PaganiteTask;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    iget v7, v7, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->currentPageCount:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$PaganiteTask;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->mark:Ljava/lang/String;
    invoke-static {v11}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$7(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Ljava/lang/String;

    move-result-object v11

    .line 513
    invoke-virtual/range {v0 .. v11}, Lcom/cymobile/ymwork/server/Server;->construstionfield(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;IILcom/cymobile/ymwork/server/Server$Location;Ljava/lang/String;Ljava/lang/String;)Lcom/cymobile/ymwork/types/Group;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 523
    :goto_1
    if-eqz v12, :cond_2

    .line 524
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$PaganiteTask;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #setter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->shops:Lcom/cymobile/ymwork/types/Group;
    invoke-static {v1, v12}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$22(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;Lcom/cymobile/ymwork/types/Group;)V

    .line 526
    :cond_2
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .end local v8           #listnum:I
    :goto_2
    return-object v1

    .line 505
    .restart local v8       #listnum:I
    :cond_3
    if-eqz p1, :cond_4

    :try_start_1
    array-length v1, p1

    if-lez v1, :cond_4

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 506
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$PaganiteTask;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    iget v2, v1, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->currentPageCount:I

    add-int/2addr v2, v8

    iput v2, v1, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->currentPageCount:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 519
    .end local v8           #listnum:I
    :catch_0
    move-exception v13

    .line 520
    .local v13, e:Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    .line 521
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_2

    .line 508
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v8       #listnum:I
    :cond_4
    :try_start_2
    iget-object v2, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$PaganiteTask;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$PaganiteTask;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    iget v1, v1, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->currentPageCount:I

    sub-int/2addr v1, v8

    if-ltz v1, :cond_5

    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$PaganiteTask;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    iget v1, v1, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->currentPageCount:I

    sub-int/2addr v1, v8

    :goto_3
    iput v1, v2, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->currentPageCount:I

    goto :goto_0

    .line 509
    :cond_5
    const/4 v1, 0x0

    goto :goto_3

    .line 516
    :cond_6
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$PaganiteTask;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    iget-object v1, v1, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->contexts:Landroid/content/Context;

    invoke-static {}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$6()I

    move-result v2

    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$PaganiteTask;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    iget-object v3, v3, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->userZoneId:Ljava/lang/String;

    iget-object v4, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$PaganiteTask;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->days:I
    invoke-static {v4}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$21(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)I

    move-result v4

    iget-object v5, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$PaganiteTask;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->zoneId:Ljava/lang/String;
    invoke-static {v5}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$17(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "timeup"

    .line 517
    iget-object v7, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$PaganiteTask;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    iget v7, v7, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->currentPageCount:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 516
    invoke-virtual/range {v0 .. v11}, Lcom/cymobile/ymwork/server/Server;->Extra18(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;IILcom/cymobile/ymwork/server/Server$Location;Ljava/lang/String;Ljava/lang/String;)Lcom/cymobile/ymwork/types/Group;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v12

    goto :goto_1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$PaganiteTask;->doInBackground([Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 536
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 537
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$PaganiteTask;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 543
    :goto_0
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$PaganiteTask;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->circleProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$15(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 544
    return-void

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$PaganiteTask;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    .line 541
    const v1, 0x7f090092

    const/4 v2, 0x0

    .line 540
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 541
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$PaganiteTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 481
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 482
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$PaganiteTask;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->circleProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$15(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 483
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 531
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 532
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$PaganiteTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
