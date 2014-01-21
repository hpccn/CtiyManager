.class Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$DownloadTask;
.super Landroid/os/AsyncTask;
.source "MapConstrustionFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
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
    .line 370
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$DownloadTask;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 15
    .parameter "params"

    .prologue
    .line 393
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$DownloadTask;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->circleProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$15(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 394
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$DownloadTask;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->circleProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$15(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 396
    :cond_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$DownloadTask;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$16(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Lcom/cymobile/ymwork/HomeApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/HomeApplication;->getServer()Lcom/cymobile/ymwork/server/Server;

    move-result-object v0

    .line 412
    .local v0, mServer:Lcom/cymobile/ymwork/server/Server;
    const/4 v14, 0x0

    .line 415
    .local v14, uas:Lcom/cymobile/ymwork/types/UserArea;
    :try_start_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$DownloadTask;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    iget-object v1, v1, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->contexts:Landroid/content/Context;

    const-string v2, "0"

    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$DownloadTask;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->zoneId:Ljava/lang/String;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$17(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/cymobile/ymwork/server/Server;->UserAreas(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cymobile/ymwork/types/UserArea;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 419
    :goto_0
    if-eqz v14, :cond_1

    .line 421
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$DownloadTask;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    invoke-virtual {v14}, Lcom/cymobile/ymwork/types/UserArea;->getBIANJIE()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->Bianjie:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$18(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;Ljava/lang/String;)V

    .line 423
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$DownloadTask;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/cymobile/ymwork/types/UserArea;->getGEOX()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 424
    invoke-virtual {v14}, Lcom/cymobile/ymwork/types/UserArea;->getGEOY()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 423
    #setter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->CenterPoint:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$19(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;Ljava/lang/String;)V

    .line 425
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$DownloadTask;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/cymobile/ymwork/types/UserArea;->getLEFTDOWNX()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 426
    invoke-virtual {v14}, Lcom/cymobile/ymwork/types/UserArea;->getLEFTDOWNY()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 427
    invoke-virtual {v14}, Lcom/cymobile/ymwork/types/UserArea;->geRIGHTUPX()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 428
    invoke-virtual {v14}, Lcom/cymobile/ymwork/types/UserArea;->getRIGHTUPY()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 425
    #setter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->Bounds:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$20(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;Ljava/lang/String;)V

    .line 429
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$DownloadTask;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    invoke-virtual {v14}, Lcom/cymobile/ymwork/types/UserArea;->getAreaName()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->AreaName:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$4(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;Ljava/lang/String;)V

    .line 431
    :cond_1
    const/4 v12, 0x0

    .line 435
    .local v12, buildings:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/ConstrustionField;>;"
    :try_start_1
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$DownloadTask;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    iget-object v1, v1, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v1}, Lcom/cymobile/ymwork/SettingBase;->getListNum(Landroid/content/SharedPreferences;)I

    move-result v8

    .line 436
    .local v8, listnum:I
    if-gez v8, :cond_2

    .line 437
    const v8, 0xf4240

    .line 439
    :cond_2
    invoke-static {}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$6()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    invoke-static {}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$6()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_3

    invoke-static {}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$6()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_5

    .line 440
    :cond_3
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$DownloadTask;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    iget-object v1, v1, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->contexts:Landroid/content/Context;

    invoke-static {}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$6()I

    move-result v2

    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$DownloadTask;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    iget-object v3, v3, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->userZoneId:Ljava/lang/String;

    iget-object v4, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$DownloadTask;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->days:I
    invoke-static {v4}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$21(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)I

    move-result v4

    iget-object v5, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$DownloadTask;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->zoneId:Ljava/lang/String;
    invoke-static {v5}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$17(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "timeup"

    .line 441
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$DownloadTask;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->mark:Ljava/lang/String;
    invoke-static {v11}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$7(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Ljava/lang/String;

    move-result-object v11

    .line 440
    invoke-virtual/range {v0 .. v11}, Lcom/cymobile/ymwork/server/Server;->construstionfield(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;IILcom/cymobile/ymwork/server/Server$Location;Ljava/lang/String;Ljava/lang/String;)Lcom/cymobile/ymwork/types/Group;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v12

    .line 451
    :goto_1
    if-eqz v12, :cond_4

    .line 452
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$DownloadTask;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #setter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->shops:Lcom/cymobile/ymwork/types/Group;
    invoke-static {v1, v12}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$22(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;Lcom/cymobile/ymwork/types/Group;)V

    .line 454
    :cond_4
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .end local v8           #listnum:I
    :goto_2
    return-object v1

    .line 416
    .end local v12           #buildings:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/ConstrustionField;>;"
    :catch_0
    move-exception v13

    .line 417
    .local v13, e:Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 443
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v8       #listnum:I
    .restart local v12       #buildings:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/ConstrustionField;>;"
    :cond_5
    :try_start_2
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$DownloadTask;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    iget-object v1, v1, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->contexts:Landroid/content/Context;

    invoke-static {}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$6()I

    move-result v2

    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$DownloadTask;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    iget-object v3, v3, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->userZoneId:Ljava/lang/String;

    iget-object v4, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$DownloadTask;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->days:I
    invoke-static {v4}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$21(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)I

    move-result v4

    iget-object v5, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$DownloadTask;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->zoneId:Ljava/lang/String;
    invoke-static {v5}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$17(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "timeup"

    .line 444
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 443
    invoke-virtual/range {v0 .. v11}, Lcom/cymobile/ymwork/server/Server;->Extra18(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;IILcom/cymobile/ymwork/server/Server$Location;Ljava/lang/String;Ljava/lang/String;)Lcom/cymobile/ymwork/types/Group;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v12

    goto :goto_1

    .line 447
    .end local v8           #listnum:I
    :catch_1
    move-exception v13

    .line 448
    .restart local v13       #e:Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    .line 449
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_2
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$DownloadTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 464
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 465
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$DownloadTask;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 471
    :goto_0
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$DownloadTask;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->circleProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$15(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 472
    return-void

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$DownloadTask;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    .line 469
    const v1, 0x7f090092

    const/4 v2, 0x0

    .line 468
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 469
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$DownloadTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 376
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 378
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$DownloadTask;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->circleProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$15(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 379
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 459
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 460
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$DownloadTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
