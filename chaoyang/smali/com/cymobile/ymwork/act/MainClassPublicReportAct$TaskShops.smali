.class Lcom/cymobile/ymwork/act/MainClassPublicReportAct$TaskShops;
.super Landroid/os/AsyncTask;
.source "MainClassPublicReportAct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/MainClassPublicReportAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskShops"
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
    .line 886
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 887
    invoke-virtual {p2}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/cymobile/ymwork/HomeApplication;

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$TaskShops;->mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;

    .line 888
    iput-object p2, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$TaskShops;->mActivity:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    .line 889
    return-void
.end method

.method private shops()Lcom/cymobile/ymwork/types/Group;
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

    .line 927
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->getFilterFragment()Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;

    move-result-object v0

    .line 928
    invoke-virtual {v0}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->getFilterDataSource()Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;

    move-result-object v12

    .line 929
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

    .line 930
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

    .line 931
    .local v10, curFilter:Ljava/lang/String;
    const-string v0, "0"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 932
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    iget-object v5, v0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->userZoneId:Ljava/lang/String;

    .line 934
    :cond_0
    const-string v0, "1"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 935
    const-string v10, ""

    .line 937
    :cond_1
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    #getter for: Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->access$0(Lcom/cymobile/ymwork/act/MainClassPublicReportAct;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/cymobile/ymwork/SettingBase;->getListNum(Landroid/content/SharedPreferences;)I

    move-result v8

    .line 938
    .local v8, listnum:I
    if-gez v8, :cond_2

    .line 939
    const/16 v8, 0x32

    .line 941
    :cond_2
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$TaskShops;->mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/HomeApplication;->getServer()Lcom/cymobile/ymwork/server/Server;

    move-result-object v0

    .line 942
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    iget-object v1, v1, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->contexts:Landroid/content/Context;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    #getter for: Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->classid:I
    invoke-static {v2}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->access$3(Lcom/cymobile/ymwork/act/MainClassPublicReportAct;)I

    move-result v2

    iget-object v3, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    iget-object v3, v3, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->userZoneId:Ljava/lang/String;

    invoke-virtual {v12}, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->curRange()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v4

    invoke-static {v4}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->toDays(I)I

    move-result v4

    .line 943
    invoke-virtual {v12}, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->curFilterId()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v6

    invoke-static {v6}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->getOrderDescStr(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v11, v9

    .line 942
    invoke-virtual/range {v0 .. v11}, Lcom/cymobile/ymwork/server/Server;->construstionfield(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;IILcom/cymobile/ymwork/server/Server$Location;Ljava/lang/String;Ljava/lang/String;)Lcom/cymobile/ymwork/types/Group;

    move-result-object v13

    .line 947
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
    .line 897
    const/4 v1, 0x0

    .line 899
    .local v1, shops:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/ConstrustionField;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$TaskShops;->shops()Lcom/cymobile/ymwork/types/Group;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 905
    :goto_0
    return-object v1

    .line 900
    :catch_0
    move-exception v0

    .line 901
    .local v0, ex:Ljava/lang/Exception;
    iput-object v0, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$TaskShops;->mException:Ljava/lang/Exception;

    .line 902
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$TaskShops;->doInBackground([Ljava/lang/Void;)Lcom/cymobile/ymwork/types/Group;

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
    .line 914
    .local p1, shops:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/ConstrustionField;>;"
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$TaskShops;->mActivity:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    if-eqz v0, :cond_0

    .line 915
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$TaskShops;->mActivity:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$TaskShops;->mException:Ljava/lang/Exception;

    #calls: Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->onTaskComplete(Lcom/cymobile/ymwork/types/Group;Ljava/lang/Exception;)V
    invoke-static {v0, p1, v1}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->access$2(Lcom/cymobile/ymwork/act/MainClassPublicReportAct;Lcom/cymobile/ymwork/types/Group;Ljava/lang/Exception;)V

    .line 917
    :cond_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/cymobile/ymwork/types/Group;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$TaskShops;->onPostExecute(Lcom/cymobile/ymwork/types/Group;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 910
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$TaskShops;->mActivity:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    #calls: Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->onRefreshTaskStart()V
    invoke-static {v0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->access$1(Lcom/cymobile/ymwork/act/MainClassPublicReportAct;)V

    .line 911
    return-void
.end method

.method public setActivity(Lcom/cymobile/ymwork/act/MainClassPublicReportAct;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 892
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$TaskShops;->mActivity:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    .line 893
    return-void
.end method
