.class Lcom/cymobile/ymwork/act/MainClassPublicReportAct$TaskMoreShops;
.super Landroid/os/AsyncTask;
.source "MainClassPublicReportAct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/MainClassPublicReportAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskMoreShops"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/cymobile/ymwork/types/Group",
        "<",
        "Lcom/cymobile/ymwork/types/ConstrustionField;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mActivity:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

.field private mException:Ljava/lang/Exception;

.field private mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;

.field final synthetic this$0:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;


# direct methods
.method public constructor <init>(Lcom/cymobile/ymwork/act/MainClassPublicReportAct;Lcom/cymobile/ymwork/act/MainClassPublicReportAct;)V
    .locals 1
    .parameter
    .parameter "activity"

    .prologue
    .line 958
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$TaskMoreShops;->this$0:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 959
    invoke-virtual {p2}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/cymobile/ymwork/HomeApplication;

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$TaskMoreShops;->mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;

    .line 960
    iput-object p2, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$TaskMoreShops;->mActivity:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    .line 961
    return-void
.end method

.method private moreShops()Lcom/cymobile/ymwork/types/Group;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/ConstrustionField;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cymobile/ymwork/server/error/ServerException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 998
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$TaskMoreShops;->this$0:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->getFilterFragment()Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;

    move-result-object v0

    .line 999
    invoke-virtual {v0}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->getFilterDataSource()Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;

    move-result-object v12

    .line 1000
    .local v12, ds:Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->curCategory()Lcom/cymobile/ymwork/types/Category;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Category;->id()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1001
    .local v5, category:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->curClasses()Lcom/cymobile/ymwork/types/Category;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Category;->id()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1002
    .local v10, curFilter:Ljava/lang/String;
    const-string v0, "0"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1003
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$TaskMoreShops;->this$0:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    iget-object v5, v0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->userZoneId:Ljava/lang/String;

    .line 1005
    :cond_0
    const-string v0, "1"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1006
    const-string v10, ""

    .line 1008
    :cond_1
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$TaskMoreShops;->this$0:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    #getter for: Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->access$0(Lcom/cymobile/ymwork/act/MainClassPublicReportAct;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/cymobile/ymwork/SettingBase;->getListNum(Landroid/content/SharedPreferences;)I

    move-result v8

    .line 1009
    .local v8, listnum:I
    if-gez v8, :cond_2

    .line 1010
    const/16 v8, 0x32

    .line 1012
    :cond_2
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$TaskMoreShops;->mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/HomeApplication;->getServer()Lcom/cymobile/ymwork/server/Server;

    move-result-object v0

    .line 1013
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$TaskMoreShops;->this$0:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    iget-object v1, v1, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->contexts:Landroid/content/Context;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$TaskMoreShops;->this$0:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    #getter for: Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->classid:I
    invoke-static {v2}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->access$3(Lcom/cymobile/ymwork/act/MainClassPublicReportAct;)I

    move-result v2

    iget-object v3, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$TaskMoreShops;->this$0:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    iget-object v3, v3, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->userZoneId:Ljava/lang/String;

    invoke-virtual {v12}, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->curRange()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v4

    invoke-static {v4}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->toDays(I)I

    move-result v4

    .line 1014
    invoke-virtual {v12}, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->curFilterId()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v6

    invoke-static {v6}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->getOrderDescStr(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$TaskMoreShops;->this$0:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    #getter for: Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;
    invoke-static {v7}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->access$5(Lcom/cymobile/ymwork/act/MainClassPublicReportAct;)Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v7

    move-object v11, v9

    .line 1013
    invoke-virtual/range {v0 .. v11}, Lcom/cymobile/ymwork/server/Server;->construstionfield(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;IILcom/cymobile/ymwork/server/Server$Location;Ljava/lang/String;Ljava/lang/String;)Lcom/cymobile/ymwork/types/Group;

    move-result-object v13

    .line 1018
    .local v13, shops:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/ConstrustionField;>;"
    return-object v13
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Lcom/cymobile/ymwork/types/Group;
    .locals 2
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/ConstrustionField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 969
    const/4 v1, 0x0

    .line 971
    .local v1, shops:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/ConstrustionField;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$TaskMoreShops;->moreShops()Lcom/cymobile/ymwork/types/Group;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 976
    :goto_0
    return-object v1

    .line 972
    :catch_0
    move-exception v0

    .line 973
    .local v0, ex:Ljava/lang/Exception;
    iput-object v0, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$TaskMoreShops;->mException:Ljava/lang/Exception;

    .line 974
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$TaskMoreShops;->doInBackground([Ljava/lang/Void;)Lcom/cymobile/ymwork/types/Group;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Lcom/cymobile/ymwork/types/Group;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/ConstrustionField;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 985
    .local p1, shops:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/ConstrustionField;>;"
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$TaskMoreShops;->mActivity:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    if-eqz v0, :cond_0

    .line 986
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$TaskMoreShops;->mActivity:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$TaskMoreShops;->mException:Ljava/lang/Exception;

    invoke-virtual {v0, p1, v1}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->onAddMoreTaskComplete(Lcom/cymobile/ymwork/types/Group;Ljava/lang/Exception;)V

    .line 988
    :cond_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/cymobile/ymwork/types/Group;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$TaskMoreShops;->onPostExecute(Lcom/cymobile/ymwork/types/Group;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 981
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$TaskMoreShops;->mActivity:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    #calls: Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->onMoreTaskStart()V
    invoke-static {v0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->access$4(Lcom/cymobile/ymwork/act/MainClassPublicReportAct;)V

    .line 982
    return-void
.end method

.method public setActivity(Lcom/cymobile/ymwork/act/MainClassPublicReportAct;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 964
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$TaskMoreShops;->mActivity:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    .line 965
    return-void
.end method
