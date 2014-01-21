.class public Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$TaskShops;
.super Landroid/os/AsyncTask;
.source "ConstrustionFieldReportAct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TaskShops"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/cymobile/ymwork/types/BuildingReport;",
        ">;"
    }
.end annotation


# instance fields
.field private mActivity:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

.field private mException:Ljava/lang/Exception;

.field private mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;

.field final synthetic this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;


# direct methods
.method public constructor <init>(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)V
    .locals 1
    .parameter
    .parameter "activity"

    .prologue
    .line 389
    iput-object p1, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 390
    invoke-virtual {p2}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/cymobile/ymwork/HomeApplication;

    iput-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$TaskShops;->mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;

    .line 391
    iput-object p2, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$TaskShops;->mActivity:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    .line 392
    return-void
.end method

.method private shops()Lcom/cymobile/ymwork/types/BuildingReport;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cymobile/ymwork/server/error/ServerException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 416
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->getFilterFragment()Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport;->getReportDataSource()Lcom/cymobile/ymwork/adapter/ReportDataSource;

    move-result-object v7

    .line 417
    .local v7, rs:Lcom/cymobile/ymwork/adapter/ReportDataSource;
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->curCategory()Lcom/cymobile/ymwork/types/Category;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/Category;->id()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->category:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$19(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;Ljava/lang/String;)V

    .line 418
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    #getter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->category:Ljava/lang/String;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$20(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    #getter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->userZoneId:Ljava/lang/String;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$21(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->category:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$19(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;Ljava/lang/String;)V

    .line 421
    :cond_0
    const/4 v8, 0x0

    .line 423
    .local v8, shops:Lcom/cymobile/ymwork/types/BuildingReport;
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    #getter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mark:I
    invoke-static {v0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$2(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)I

    move-result v0

    if-nez v0, :cond_2

    .line 424
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$TaskShops;->mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/HomeApplication;->getServer()Lcom/cymobile/ymwork/server/Server;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    iget-object v1, v1, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->contexts:Landroid/content/Context;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    #getter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->category:Ljava/lang/String;
    invoke-static {v2}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$20(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)Ljava/lang/String;

    move-result-object v2

    .line 425
    iget-object v3, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    #getter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->STREET_NO:I
    invoke-static {v3}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$22(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)I

    move-result v3

    invoke-virtual {v7}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->curRange()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v4

    invoke-static {v4}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->toDays(I)I

    move-result v4

    .line 426
    iget-object v5, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    #getter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->userZoneId:Ljava/lang/String;
    invoke-static {v5}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$21(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)Ljava/lang/String;

    move-result-object v5

    .line 427
    invoke-virtual {v7}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->curFilterId()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v6

    invoke-static {v6}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->getOrderDescStr(I)Ljava/lang/String;

    move-result-object v6

    .line 424
    invoke-virtual/range {v0 .. v6}, Lcom/cymobile/ymwork/server/Server;->ConstrustionFieldReport1(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcom/cymobile/ymwork/types/BuildingReport;

    move-result-object v8

    .line 439
    :cond_1
    :goto_0
    return-object v8

    .line 428
    :cond_2
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    #getter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mark:I
    invoke-static {v0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$2(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 429
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$TaskShops;->mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/HomeApplication;->getServer()Lcom/cymobile/ymwork/server/Server;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    iget-object v1, v1, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->contexts:Landroid/content/Context;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    #getter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->category:Ljava/lang/String;
    invoke-static {v2}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$20(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)Ljava/lang/String;

    move-result-object v2

    .line 430
    iget-object v3, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    #getter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->STREET_NO:I
    invoke-static {v3}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$22(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)I

    move-result v3

    invoke-virtual {v7}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->curRange()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v4

    invoke-static {v4}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->toDays(I)I

    move-result v4

    .line 431
    iget-object v5, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    #getter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->userZoneId:Ljava/lang/String;
    invoke-static {v5}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$21(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)Ljava/lang/String;

    move-result-object v5

    .line 432
    invoke-virtual {v7}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->curFilterId()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v6

    invoke-static {v6}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->getOrderDescStr(I)Ljava/lang/String;

    move-result-object v6

    .line 429
    invoke-virtual/range {v0 .. v6}, Lcom/cymobile/ymwork/server/Server;->ConstrustionFieldReport2(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcom/cymobile/ymwork/types/BuildingReport;

    move-result-object v8

    goto :goto_0

    .line 433
    :cond_3
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    #getter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mark:I
    invoke-static {v0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$2(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 434
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$TaskShops;->mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/HomeApplication;->getServer()Lcom/cymobile/ymwork/server/Server;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    iget-object v1, v1, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->contexts:Landroid/content/Context;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    #getter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->category:Ljava/lang/String;
    invoke-static {v2}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$20(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)Ljava/lang/String;

    move-result-object v2

    .line 435
    iget-object v3, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    #getter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->STREET_NO:I
    invoke-static {v3}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$22(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)I

    move-result v3

    invoke-virtual {v7}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->curRange()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v4

    invoke-static {v4}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->toDays(I)I

    move-result v4

    .line 436
    iget-object v5, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    #getter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->userZoneId:Ljava/lang/String;
    invoke-static {v5}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$21(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)Ljava/lang/String;

    move-result-object v5

    .line 437
    invoke-virtual {v7}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->curFilterId()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v6

    invoke-static {v6}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->getOrderDescStr(I)Ljava/lang/String;

    move-result-object v6

    .line 434
    invoke-virtual/range {v0 .. v6}, Lcom/cymobile/ymwork/server/Server;->ConstrustionFieldReport4(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcom/cymobile/ymwork/types/BuildingReport;

    move-result-object v8

    goto/16 :goto_0
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Lcom/cymobile/ymwork/types/BuildingReport;
    .locals 2
    .parameter "params"

    .prologue
    .line 400
    const/4 v1, 0x0

    .line 402
    .local v1, shops:Lcom/cymobile/ymwork/types/BuildingReport;
    :try_start_0
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$TaskShops;->shops()Lcom/cymobile/ymwork/types/BuildingReport;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 407
    :goto_0
    return-object v1

    .line 403
    :catch_0
    move-exception v0

    .line 404
    .local v0, ex:Ljava/lang/Exception;
    iput-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$TaskShops;->mException:Ljava/lang/Exception;

    .line 405
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$TaskShops;->doInBackground([Ljava/lang/Void;)Lcom/cymobile/ymwork/types/BuildingReport;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/cymobile/ymwork/types/BuildingReport;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 444
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$TaskShops;->mActivity:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$TaskShops;->mActivity:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$TaskShops;->mException:Ljava/lang/Exception;

    #calls: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->onTaskComplete(Lcom/cymobile/ymwork/types/BuildingReport;Ljava/lang/Exception;)V
    invoke-static {v0, p1, v1}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$23(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;Lcom/cymobile/ymwork/types/BuildingReport;Ljava/lang/Exception;)V

    .line 447
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/cymobile/ymwork/types/BuildingReport;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$TaskShops;->onPostExecute(Lcom/cymobile/ymwork/types/BuildingReport;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->setLoadingView()V

    .line 413
    return-void
.end method

.method public setActivity(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 395
    iput-object p1, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$TaskShops;->mActivity:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    .line 396
    return-void
.end method
