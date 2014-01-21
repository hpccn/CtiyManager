.class public Lcom/cymobile/ymwork/act/FireServiceReportAct$TaskShops;
.super Landroid/os/AsyncTask;
.source "FireServiceReportAct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/FireServiceReportAct;
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
.field private mActivity:Lcom/cymobile/ymwork/act/FireServiceReportAct;

.field private mException:Ljava/lang/Exception;

.field private mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;

.field final synthetic this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;


# direct methods
.method public constructor <init>(Lcom/cymobile/ymwork/act/FireServiceReportAct;Lcom/cymobile/ymwork/act/FireServiceReportAct;)V
    .locals 1
    .parameter
    .parameter "activity"

    .prologue
    .line 371
    iput-object p1, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 372
    invoke-virtual {p2}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/cymobile/ymwork/HomeApplication;

    iput-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$TaskShops;->mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;

    .line 373
    iput-object p2, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$TaskShops;->mActivity:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    .line 374
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
    .line 398
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->getFilterFragment()Lcom/cymobile/ymwork/widget/RangeFilterFragmentFireReport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentFireReport;->getReportDataSource()Lcom/cymobile/ymwork/adapter/ReportDataSource;

    move-result-object v7

    .line 399
    .local v7, rs:Lcom/cymobile/ymwork/adapter/ReportDataSource;
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

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

    #setter for: Lcom/cymobile/ymwork/act/FireServiceReportAct;->category:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->access$18(Lcom/cymobile/ymwork/act/FireServiceReportAct;Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    #getter for: Lcom/cymobile/ymwork/act/FireServiceReportAct;->category:Ljava/lang/String;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->access$19(Lcom/cymobile/ymwork/act/FireServiceReportAct;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    #getter for: Lcom/cymobile/ymwork/act/FireServiceReportAct;->userZoneId:Ljava/lang/String;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->access$20(Lcom/cymobile/ymwork/act/FireServiceReportAct;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/cymobile/ymwork/act/FireServiceReportAct;->category:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->access$18(Lcom/cymobile/ymwork/act/FireServiceReportAct;Ljava/lang/String;)V

    .line 403
    :cond_0
    const/4 v8, 0x0

    .line 405
    .local v8, shops:Lcom/cymobile/ymwork/types/BuildingReport;
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    #getter for: Lcom/cymobile/ymwork/act/FireServiceReportAct;->mark:I
    invoke-static {v0}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->access$2(Lcom/cymobile/ymwork/act/FireServiceReportAct;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    #getter for: Lcom/cymobile/ymwork/act/FireServiceReportAct;->mark:I
    invoke-static {v0}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->access$2(Lcom/cymobile/ymwork/act/FireServiceReportAct;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 406
    :cond_1
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$TaskShops;->mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/HomeApplication;->getServer()Lcom/cymobile/ymwork/server/Server;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    iget-object v1, v1, Lcom/cymobile/ymwork/act/FireServiceReportAct;->contexts:Landroid/content/Context;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    #getter for: Lcom/cymobile/ymwork/act/FireServiceReportAct;->category:Ljava/lang/String;
    invoke-static {v2}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->access$19(Lcom/cymobile/ymwork/act/FireServiceReportAct;)Ljava/lang/String;

    move-result-object v2

    .line 407
    iget-object v3, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    #getter for: Lcom/cymobile/ymwork/act/FireServiceReportAct;->STREET_NO:I
    invoke-static {v3}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->access$21(Lcom/cymobile/ymwork/act/FireServiceReportAct;)I

    move-result v3

    invoke-virtual {v7}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->curRange()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v4

    invoke-static {v4}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->toDays(I)I

    move-result v4

    .line 408
    iget-object v5, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    #getter for: Lcom/cymobile/ymwork/act/FireServiceReportAct;->userZoneId:Ljava/lang/String;
    invoke-static {v5}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->access$20(Lcom/cymobile/ymwork/act/FireServiceReportAct;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->curFilterId()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v6

    invoke-static {v6}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->getOrderDescStr(I)Ljava/lang/String;

    move-result-object v6

    .line 406
    invoke-virtual/range {v0 .. v6}, Lcom/cymobile/ymwork/server/Server;->FireReport3(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcom/cymobile/ymwork/types/BuildingReport;

    move-result-object v8

    .line 414
    :cond_2
    :goto_0
    return-object v8

    .line 409
    :cond_3
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    #getter for: Lcom/cymobile/ymwork/act/FireServiceReportAct;->mark:I
    invoke-static {v0}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->access$2(Lcom/cymobile/ymwork/act/FireServiceReportAct;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    #getter for: Lcom/cymobile/ymwork/act/FireServiceReportAct;->mark:I
    invoke-static {v0}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->access$2(Lcom/cymobile/ymwork/act/FireServiceReportAct;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 410
    :cond_4
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$TaskShops;->mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/HomeApplication;->getServer()Lcom/cymobile/ymwork/server/Server;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    iget-object v1, v1, Lcom/cymobile/ymwork/act/FireServiceReportAct;->contexts:Landroid/content/Context;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    #getter for: Lcom/cymobile/ymwork/act/FireServiceReportAct;->category:Ljava/lang/String;
    invoke-static {v2}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->access$19(Lcom/cymobile/ymwork/act/FireServiceReportAct;)Ljava/lang/String;

    move-result-object v2

    .line 411
    iget-object v3, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    #getter for: Lcom/cymobile/ymwork/act/FireServiceReportAct;->STREET_NO:I
    invoke-static {v3}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->access$21(Lcom/cymobile/ymwork/act/FireServiceReportAct;)I

    move-result v3

    invoke-virtual {v7}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->curRange()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v4

    invoke-static {v4}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->toDays(I)I

    move-result v4

    .line 412
    iget-object v5, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    #getter for: Lcom/cymobile/ymwork/act/FireServiceReportAct;->userZoneId:Ljava/lang/String;
    invoke-static {v5}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->access$20(Lcom/cymobile/ymwork/act/FireServiceReportAct;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->curFilterId()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v6

    invoke-static {v6}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->getOrderDescStr(I)Ljava/lang/String;

    move-result-object v6

    .line 410
    invoke-virtual/range {v0 .. v6}, Lcom/cymobile/ymwork/server/Server;->FireReport4(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcom/cymobile/ymwork/types/BuildingReport;

    move-result-object v8

    goto :goto_0
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Lcom/cymobile/ymwork/types/BuildingReport;
    .locals 2
    .parameter "params"

    .prologue
    .line 382
    const/4 v1, 0x0

    .line 384
    .local v1, shops:Lcom/cymobile/ymwork/types/BuildingReport;
    :try_start_0
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/FireServiceReportAct$TaskShops;->shops()Lcom/cymobile/ymwork/types/BuildingReport;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 389
    :goto_0
    return-object v1

    .line 385
    :catch_0
    move-exception v0

    .line 386
    .local v0, ex:Ljava/lang/Exception;
    iput-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$TaskShops;->mException:Ljava/lang/Exception;

    .line 387
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/FireServiceReportAct$TaskShops;->doInBackground([Ljava/lang/Void;)Lcom/cymobile/ymwork/types/BuildingReport;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/cymobile/ymwork/types/BuildingReport;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 419
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$TaskShops;->mActivity:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$TaskShops;->mActivity:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$TaskShops;->mException:Ljava/lang/Exception;

    #calls: Lcom/cymobile/ymwork/act/FireServiceReportAct;->onTaskComplete(Lcom/cymobile/ymwork/types/BuildingReport;Ljava/lang/Exception;)V
    invoke-static {v0, p1, v1}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->access$22(Lcom/cymobile/ymwork/act/FireServiceReportAct;Lcom/cymobile/ymwork/types/BuildingReport;Ljava/lang/Exception;)V

    .line 422
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/cymobile/ymwork/types/BuildingReport;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/FireServiceReportAct$TaskShops;->onPostExecute(Lcom/cymobile/ymwork/types/BuildingReport;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->setLoadingView()V

    .line 395
    return-void
.end method

.method public setActivity(Lcom/cymobile/ymwork/act/FireServiceReportAct;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 377
    iput-object p1, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$TaskShops;->mActivity:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    .line 378
    return-void
.end method
