.class Lcom/cymobile/ymwork/act/MapFragmentActivity$DownloadTask;
.super Landroid/os/AsyncTask;
.source "MapFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/MapFragmentActivity;
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
.field final synthetic this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/MapFragmentActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$DownloadTask;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 14
    .parameter "params"

    .prologue
    const/4 v13, 0x0

    .line 319
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$DownloadTask;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapFragmentActivity;->circleProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$12(Lcom/cymobile/ymwork/act/MapFragmentActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 320
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$DownloadTask;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapFragmentActivity;->circleProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$12(Lcom/cymobile/ymwork/act/MapFragmentActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 322
    :cond_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$DownloadTask;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapFragmentActivity;->mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$13(Lcom/cymobile/ymwork/act/MapFragmentActivity;)Lcom/cymobile/ymwork/HomeApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/HomeApplication;->getServer()Lcom/cymobile/ymwork/server/Server;

    move-result-object v0

    .line 338
    .local v0, mServer:Lcom/cymobile/ymwork/server/Server;
    const/4 v12, 0x0

    .line 341
    .local v12, uas:Lcom/cymobile/ymwork/types/UserArea;
    :try_start_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$DownloadTask;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    iget-object v1, v1, Lcom/cymobile/ymwork/act/MapFragmentActivity;->contexts:Landroid/content/Context;

    const-string v2, "0"

    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$DownloadTask;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapFragmentActivity;->zoneId:Ljava/lang/String;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$14(Lcom/cymobile/ymwork/act/MapFragmentActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/cymobile/ymwork/server/Server;->UserAreas(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cymobile/ymwork/types/UserArea;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 345
    :goto_0
    if-eqz v12, :cond_1

    .line 347
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$DownloadTask;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    invoke-virtual {v12}, Lcom/cymobile/ymwork/types/UserArea;->getBIANJIE()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/cymobile/ymwork/act/MapFragmentActivity;->Bianjie:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$15(Lcom/cymobile/ymwork/act/MapFragmentActivity;Ljava/lang/String;)V

    .line 349
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$DownloadTask;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/cymobile/ymwork/types/UserArea;->getGEOX()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 350
    invoke-virtual {v12}, Lcom/cymobile/ymwork/types/UserArea;->getGEOY()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 349
    #setter for: Lcom/cymobile/ymwork/act/MapFragmentActivity;->CenterPoint:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$16(Lcom/cymobile/ymwork/act/MapFragmentActivity;Ljava/lang/String;)V

    .line 351
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$DownloadTask;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/cymobile/ymwork/types/UserArea;->getLEFTDOWNX()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 352
    invoke-virtual {v12}, Lcom/cymobile/ymwork/types/UserArea;->getLEFTDOWNY()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 353
    invoke-virtual {v12}, Lcom/cymobile/ymwork/types/UserArea;->geRIGHTUPX()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 354
    invoke-virtual {v12}, Lcom/cymobile/ymwork/types/UserArea;->getRIGHTUPY()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 351
    #setter for: Lcom/cymobile/ymwork/act/MapFragmentActivity;->Bounds:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$17(Lcom/cymobile/ymwork/act/MapFragmentActivity;Ljava/lang/String;)V

    .line 355
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$DownloadTask;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    invoke-virtual {v12}, Lcom/cymobile/ymwork/types/UserArea;->getAreaName()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/cymobile/ymwork/act/MapFragmentActivity;->AreaName:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$2(Lcom/cymobile/ymwork/act/MapFragmentActivity;Ljava/lang/String;)V

    .line 357
    :cond_1
    const/4 v10, 0x0

    .line 361
    .local v10, buildings:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Building;>;"
    :try_start_1
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$DownloadTask;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    iget-object v1, v1, Lcom/cymobile/ymwork/act/MapFragmentActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v1}, Lcom/cymobile/ymwork/SettingBase;->getListNum(Landroid/content/SharedPreferences;)I

    move-result v8

    .line 362
    .local v8, listnum:I
    if-gez v8, :cond_2

    .line 363
    const v8, 0xf4240

    .line 365
    :cond_2
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$DownloadTask;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    iget-object v1, v1, Lcom/cymobile/ymwork/act/MapFragmentActivity;->contexts:Landroid/content/Context;

    invoke-static {}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$4()I

    move-result v2

    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$DownloadTask;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    iget-object v3, v3, Lcom/cymobile/ymwork/act/MapFragmentActivity;->userZoneId:Ljava/lang/String;

    iget-object v4, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$DownloadTask;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapFragmentActivity;->days:I
    invoke-static {v4}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$18(Lcom/cymobile/ymwork/act/MapFragmentActivity;)I

    move-result v4

    .line 366
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$DownloadTask;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapFragmentActivity;->zoneId:Ljava/lang/String;
    invoke-static {v5}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$14(Lcom/cymobile/ymwork/act/MapFragmentActivity;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "timeup"

    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 365
    invoke-virtual/range {v0 .. v9}, Lcom/cymobile/ymwork/server/Server;->buildings(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;IILcom/cymobile/ymwork/server/Server$Location;)Lcom/cymobile/ymwork/types/Group;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    .line 371
    if-eqz v10, :cond_3

    .line 372
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$DownloadTask;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    #setter for: Lcom/cymobile/ymwork/act/MapFragmentActivity;->shops:Lcom/cymobile/ymwork/types/Group;
    invoke-static {v1, v10}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$19(Lcom/cymobile/ymwork/act/MapFragmentActivity;Lcom/cymobile/ymwork/types/Group;)V

    .line 374
    :cond_3
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .end local v8           #listnum:I
    :goto_1
    return-object v1

    .line 342
    .end local v10           #buildings:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Building;>;"
    :catch_0
    move-exception v11

    .line 343
    .local v11, e:Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 367
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v10       #buildings:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Building;>;"
    :catch_1
    move-exception v11

    .line 368
    .restart local v11       #e:Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 369
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/MapFragmentActivity$DownloadTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 384
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 385
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$DownloadTask;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 390
    :goto_0
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$DownloadTask;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapFragmentActivity;->circleProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$12(Lcom/cymobile/ymwork/act/MapFragmentActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 391
    return-void

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$DownloadTask;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

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

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/MapFragmentActivity$DownloadTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 302
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 304
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$DownloadTask;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapFragmentActivity;->circleProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$12(Lcom/cymobile/ymwork/act/MapFragmentActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 305
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 379
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 380
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/MapFragmentActivity$DownloadTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
