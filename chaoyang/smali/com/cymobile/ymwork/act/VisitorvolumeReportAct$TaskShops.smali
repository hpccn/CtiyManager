.class public Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$TaskShops;
.super Landroid/os/AsyncTask;
.source "VisitorvolumeReportAct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;
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
        "Lcom/cymobile/ymwork/types/VisitorvolumeReports;",
        ">;"
    }
.end annotation


# instance fields
.field private mActivity:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

.field private mException:Ljava/lang/Exception;

.field private mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;

.field final synthetic this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;


# direct methods
.method public constructor <init>(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;)V
    .locals 1
    .parameter
    .parameter "activity"

    .prologue
    .line 369
    iput-object p1, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 370
    invoke-virtual {p2}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/cymobile/ymwork/HomeApplication;

    iput-object v0, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$TaskShops;->mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;

    .line 371
    iput-object p2, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$TaskShops;->mActivity:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    .line 372
    return-void
.end method

.method private shops()Lcom/cymobile/ymwork/types/VisitorvolumeReports;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cymobile/ymwork/server/error/ServerException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 396
    iget-object v2, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->getFilterFragment()Lcom/cymobile/ymwork/widget/RangeFilterFragmentVisitorvolumeReport;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentVisitorvolumeReport;->getReportDataSource()Lcom/cymobile/ymwork/adapter/ReportDataSource;

    move-result-object v0

    .line 397
    .local v0, rs:Lcom/cymobile/ymwork/adapter/ReportDataSource;
    iget-object v2, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->curRange()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v3

    invoke-static {v3}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->toDays(I)I

    move-result v3

    #setter for: Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->s:I
    invoke-static {v2, v3}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->access$8(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;I)V

    .line 398
    iget-object v2, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->curCategory()Lcom/cymobile/ymwork/types/Category;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cymobile/ymwork/types/Category;->id()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->category:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->access$9(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;Ljava/lang/String;)V

    .line 399
    iget-object v2, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    #getter for: Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->category:Ljava/lang/String;
    invoke-static {v2}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->access$0(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 400
    iget-object v2, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    iget-object v3, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    #getter for: Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->userZoneId:Ljava/lang/String;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->access$10(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->category:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->access$9(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;Ljava/lang/String;)V

    .line 402
    :cond_0
    const/4 v1, 0x0

    .line 405
    .local v1, shops:Lcom/cymobile/ymwork/types/VisitorvolumeReports;
    iget-object v2, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$TaskShops;->mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/HomeApplication;->getServer()Lcom/cymobile/ymwork/server/Server;

    move-result-object v2

    iget-object v3, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    iget-object v3, v3, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->contexts:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->curRange()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v4

    invoke-static {v4}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->toDays(I)I

    move-result v4

    iget-object v5, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    #getter for: Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->category:Ljava/lang/String;
    invoke-static {v5}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->access$0(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/cymobile/ymwork/server/Server;->VisitorvolumeReport1(Landroid/content/Context;ILjava/lang/String;)Lcom/cymobile/ymwork/types/VisitorvolumeReports;

    move-result-object v1

    .line 406
    const-string v2, "***"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->curRange()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v4

    invoke-static {v4}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->toDays(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    return-object v1
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Lcom/cymobile/ymwork/types/VisitorvolumeReports;
    .locals 2
    .parameter "params"

    .prologue
    .line 380
    const/4 v1, 0x0

    .line 382
    .local v1, shops:Lcom/cymobile/ymwork/types/VisitorvolumeReports;
    :try_start_0
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$TaskShops;->shops()Lcom/cymobile/ymwork/types/VisitorvolumeReports;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 387
    :goto_0
    return-object v1

    .line 383
    :catch_0
    move-exception v0

    .line 384
    .local v0, ex:Ljava/lang/Exception;
    iput-object v0, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$TaskShops;->mException:Ljava/lang/Exception;

    .line 385
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$TaskShops;->doInBackground([Ljava/lang/Void;)Lcom/cymobile/ymwork/types/VisitorvolumeReports;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/cymobile/ymwork/types/VisitorvolumeReports;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 419
    iget-object v0, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$TaskShops;->mActivity:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$TaskShops;->mActivity:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$TaskShops;->mException:Ljava/lang/Exception;

    #calls: Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->onTaskComplete(Lcom/cymobile/ymwork/types/VisitorvolumeReports;Ljava/lang/Exception;)V
    invoke-static {v0, p1, v1}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->access$11(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;Lcom/cymobile/ymwork/types/VisitorvolumeReports;Ljava/lang/Exception;)V

    .line 422
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/cymobile/ymwork/types/VisitorvolumeReports;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$TaskShops;->onPostExecute(Lcom/cymobile/ymwork/types/VisitorvolumeReports;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->setLoadingView()V

    .line 393
    return-void
.end method

.method public setActivity(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 375
    iput-object p1, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$TaskShops;->mActivity:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    .line 376
    return-void
.end method
