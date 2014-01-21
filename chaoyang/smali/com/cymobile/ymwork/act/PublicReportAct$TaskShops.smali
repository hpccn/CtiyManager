.class public Lcom/cymobile/ymwork/act/PublicReportAct$TaskShops;
.super Landroid/os/AsyncTask;
.source "PublicReportAct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/PublicReportAct;
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
.field private mActivity:Lcom/cymobile/ymwork/act/PublicReportAct;

.field private mException:Ljava/lang/Exception;

.field private mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;

.field final synthetic this$0:Lcom/cymobile/ymwork/act/PublicReportAct;


# direct methods
.method public constructor <init>(Lcom/cymobile/ymwork/act/PublicReportAct;Lcom/cymobile/ymwork/act/PublicReportAct;)V
    .locals 1
    .parameter
    .parameter "activity"

    .prologue
    .line 375
    iput-object p1, p0, Lcom/cymobile/ymwork/act/PublicReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 376
    invoke-virtual {p2}, Lcom/cymobile/ymwork/act/PublicReportAct;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/cymobile/ymwork/HomeApplication;

    iput-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct$TaskShops;->mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;

    .line 377
    iput-object p2, p0, Lcom/cymobile/ymwork/act/PublicReportAct$TaskShops;->mActivity:Lcom/cymobile/ymwork/act/PublicReportAct;

    .line 378
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
    .line 402
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/PublicReportAct;->getFilterFragment()Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublic_Report;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublic_Report;->getReportDataSource()Lcom/cymobile/ymwork/adapter/ReportDataSource;

    move-result-object v7

    .line 403
    .local v7, rs:Lcom/cymobile/ymwork/adapter/ReportDataSource;
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

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

    #setter for: Lcom/cymobile/ymwork/act/PublicReportAct;->category:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$18(Lcom/cymobile/ymwork/act/PublicReportAct;Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    #getter for: Lcom/cymobile/ymwork/act/PublicReportAct;->category:Ljava/lang/String;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$19(Lcom/cymobile/ymwork/act/PublicReportAct;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/PublicReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    #getter for: Lcom/cymobile/ymwork/act/PublicReportAct;->userZoneId:Ljava/lang/String;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$20(Lcom/cymobile/ymwork/act/PublicReportAct;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/cymobile/ymwork/act/PublicReportAct;->category:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$18(Lcom/cymobile/ymwork/act/PublicReportAct;Ljava/lang/String;)V

    .line 407
    :cond_0
    const/4 v8, 0x0

    .line 409
    .local v8, shops:Lcom/cymobile/ymwork/types/BuildingReport;
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    #getter for: Lcom/cymobile/ymwork/act/PublicReportAct;->mark:I
    invoke-static {v0}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$2(Lcom/cymobile/ymwork/act/PublicReportAct;)I

    move-result v0

    if-nez v0, :cond_2

    .line 410
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct$TaskShops;->mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/HomeApplication;->getServer()Lcom/cymobile/ymwork/server/Server;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/act/PublicReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    iget-object v1, v1, Lcom/cymobile/ymwork/act/PublicReportAct;->contexts:Landroid/content/Context;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/PublicReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    #getter for: Lcom/cymobile/ymwork/act/PublicReportAct;->category:Ljava/lang/String;
    invoke-static {v2}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$19(Lcom/cymobile/ymwork/act/PublicReportAct;)Ljava/lang/String;

    move-result-object v2

    .line 411
    iget-object v3, p0, Lcom/cymobile/ymwork/act/PublicReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    #getter for: Lcom/cymobile/ymwork/act/PublicReportAct;->STREET_NO:I
    invoke-static {v3}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$21(Lcom/cymobile/ymwork/act/PublicReportAct;)I

    move-result v3

    invoke-virtual {v7}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->curRange()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v4

    invoke-static {v4}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->toDays(I)I

    move-result v4

    .line 412
    iget-object v5, p0, Lcom/cymobile/ymwork/act/PublicReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    #getter for: Lcom/cymobile/ymwork/act/PublicReportAct;->userZoneId:Ljava/lang/String;
    invoke-static {v5}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$20(Lcom/cymobile/ymwork/act/PublicReportAct;)Ljava/lang/String;

    move-result-object v5

    .line 413
    invoke-virtual {v7}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->curFilterId()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v6

    invoke-static {v6}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->getOrderDescStr(I)Ljava/lang/String;

    move-result-object v6

    .line 410
    invoke-virtual/range {v0 .. v6}, Lcom/cymobile/ymwork/server/Server;->PublicReport(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcom/cymobile/ymwork/types/BuildingReport;

    move-result-object v8

    .line 420
    :cond_1
    :goto_0
    return-object v8

    .line 414
    :cond_2
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    #getter for: Lcom/cymobile/ymwork/act/PublicReportAct;->mark:I
    invoke-static {v0}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$2(Lcom/cymobile/ymwork/act/PublicReportAct;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 415
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct$TaskShops;->mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/HomeApplication;->getServer()Lcom/cymobile/ymwork/server/Server;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/act/PublicReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    iget-object v1, v1, Lcom/cymobile/ymwork/act/PublicReportAct;->contexts:Landroid/content/Context;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/PublicReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    #getter for: Lcom/cymobile/ymwork/act/PublicReportAct;->category:Ljava/lang/String;
    invoke-static {v2}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$19(Lcom/cymobile/ymwork/act/PublicReportAct;)Ljava/lang/String;

    move-result-object v2

    .line 416
    iget-object v3, p0, Lcom/cymobile/ymwork/act/PublicReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    #getter for: Lcom/cymobile/ymwork/act/PublicReportAct;->STREET_NO:I
    invoke-static {v3}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$21(Lcom/cymobile/ymwork/act/PublicReportAct;)I

    move-result v3

    invoke-virtual {v7}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->curRange()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v4

    invoke-static {v4}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->toDays(I)I

    move-result v4

    .line 417
    iget-object v5, p0, Lcom/cymobile/ymwork/act/PublicReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    #getter for: Lcom/cymobile/ymwork/act/PublicReportAct;->userZoneId:Ljava/lang/String;
    invoke-static {v5}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$20(Lcom/cymobile/ymwork/act/PublicReportAct;)Ljava/lang/String;

    move-result-object v5

    .line 418
    invoke-virtual {v7}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->curFilterId()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v6

    invoke-static {v6}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->getOrderDescStr(I)Ljava/lang/String;

    move-result-object v6

    .line 415
    invoke-virtual/range {v0 .. v6}, Lcom/cymobile/ymwork/server/Server;->PublicReport2(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcom/cymobile/ymwork/types/BuildingReport;

    move-result-object v8

    goto :goto_0
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Lcom/cymobile/ymwork/types/BuildingReport;
    .locals 2
    .parameter "params"

    .prologue
    .line 386
    const/4 v1, 0x0

    .line 388
    .local v1, shops:Lcom/cymobile/ymwork/types/BuildingReport;
    :try_start_0
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/PublicReportAct$TaskShops;->shops()Lcom/cymobile/ymwork/types/BuildingReport;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 393
    :goto_0
    return-object v1

    .line 389
    :catch_0
    move-exception v0

    .line 390
    .local v0, ex:Ljava/lang/Exception;
    iput-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct$TaskShops;->mException:Ljava/lang/Exception;

    .line 391
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/PublicReportAct$TaskShops;->doInBackground([Ljava/lang/Void;)Lcom/cymobile/ymwork/types/BuildingReport;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/cymobile/ymwork/types/BuildingReport;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 425
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct$TaskShops;->mActivity:Lcom/cymobile/ymwork/act/PublicReportAct;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct$TaskShops;->mActivity:Lcom/cymobile/ymwork/act/PublicReportAct;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/PublicReportAct$TaskShops;->mException:Ljava/lang/Exception;

    #calls: Lcom/cymobile/ymwork/act/PublicReportAct;->onTaskComplete(Lcom/cymobile/ymwork/types/BuildingReport;Ljava/lang/Exception;)V
    invoke-static {v0, p1, v1}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$22(Lcom/cymobile/ymwork/act/PublicReportAct;Lcom/cymobile/ymwork/types/BuildingReport;Ljava/lang/Exception;)V

    .line 428
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/cymobile/ymwork/types/BuildingReport;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/PublicReportAct$TaskShops;->onPostExecute(Lcom/cymobile/ymwork/types/BuildingReport;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/PublicReportAct;->setLoadingView()V

    .line 399
    return-void
.end method

.method public setActivity(Lcom/cymobile/ymwork/act/PublicReportAct;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 381
    iput-object p1, p0, Lcom/cymobile/ymwork/act/PublicReportAct$TaskShops;->mActivity:Lcom/cymobile/ymwork/act/PublicReportAct;

    .line 382
    return-void
.end method
