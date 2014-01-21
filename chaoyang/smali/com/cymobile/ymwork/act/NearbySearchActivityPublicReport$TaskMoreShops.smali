.class Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$TaskMoreShops;
.super Landroid/os/AsyncTask;
.source "NearbySearchActivityPublicReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;
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
        "Lcom/cymobile/ymwork/types/Building;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mActivity:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

.field private mException:Ljava/lang/Exception;

.field private mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;

.field final synthetic this$0:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;


# direct methods
.method public constructor <init>(Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;)V
    .locals 1
    .parameter
    .parameter "activity"

    .prologue
    .line 914
    iput-object p1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$TaskMoreShops;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 915
    invoke-virtual {p2}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/cymobile/ymwork/HomeApplication;

    iput-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$TaskMoreShops;->mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;

    .line 916
    iput-object p2, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$TaskMoreShops;->mActivity:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    .line 917
    return-void
.end method

.method private moreShops()Lcom/cymobile/ymwork/types/Group;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/Building;",
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
    .line 955
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$TaskMoreShops;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->getFilterFragment()Lcom/cymobile/ymwork/widget/RangeFilterFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cymobile/ymwork/widget/RangeFilterFragment;->getFilterDataSource()Lcom/cymobile/ymwork/adapter/FilterDataSource;

    move-result-object v10

    .line 956
    .local v10, ds:Lcom/cymobile/ymwork/adapter/FilterDataSource;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curCategory()Lcom/cymobile/ymwork/types/Category;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Category;->id()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 957
    .local v5, category:Ljava/lang/String;
    const-string v0, "0"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 958
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$TaskMoreShops;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    iget-object v5, v0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->userZoneId:Ljava/lang/String;

    .line 960
    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$TaskMoreShops;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    #getter for: Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->access$0(Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/cymobile/ymwork/SettingBase;->getListNum(Landroid/content/SharedPreferences;)I

    move-result v8

    .line 961
    .local v8, listnum:I
    if-gez v8, :cond_1

    .line 962
    const/16 v8, 0x32

    .line 964
    :cond_1
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$TaskMoreShops;->mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/HomeApplication;->getServer()Lcom/cymobile/ymwork/server/Server;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$TaskMoreShops;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    #getter for: Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->contexts:Landroid/content/Context;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->access$1(Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;)Landroid/content/Context;

    move-result-object v1

    .line 965
    iget-object v2, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$TaskMoreShops;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    #getter for: Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->classid:I
    invoke-static {v2}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->access$2(Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;)I

    move-result v2

    iget-object v3, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$TaskMoreShops;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    iget-object v3, v3, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->userZoneId:Ljava/lang/String;

    .line 966
    invoke-virtual {v10}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curRange()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v4

    invoke-static {v4}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->toDays(I)I

    move-result v4

    .line 967
    invoke-virtual {v10}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curFilterId()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v6

    invoke-static {v6}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->getOrderDescStr(I)Ljava/lang/String;

    move-result-object v6

    .line 968
    iget-object v7, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$TaskMoreShops;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    #getter for: Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mStateHolder:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;
    invoke-static {v7}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->access$7(Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;)Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v7

    const/4 v9, 0x0

    .line 964
    invoke-virtual/range {v0 .. v9}, Lcom/cymobile/ymwork/server/Server;->buildings(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;IILcom/cymobile/ymwork/server/Server$Location;)Lcom/cymobile/ymwork/types/Group;

    move-result-object v11

    .line 971
    .local v11, shops:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Building;>;"
    return-object v11
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
            "Lcom/cymobile/ymwork/types/Building;",
            ">;"
        }
    .end annotation

    .prologue
    .line 925
    const/4 v1, 0x0

    .line 927
    .local v1, shops:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Building;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$TaskMoreShops;->moreShops()Lcom/cymobile/ymwork/types/Group;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 932
    :goto_0
    return-object v1

    .line 928
    :catch_0
    move-exception v0

    .line 929
    .local v0, ex:Ljava/lang/Exception;
    iput-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$TaskMoreShops;->mException:Ljava/lang/Exception;

    .line 930
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$TaskMoreShops;->doInBackground([Ljava/lang/Void;)Lcom/cymobile/ymwork/types/Group;

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
            "Lcom/cymobile/ymwork/types/Building;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 941
    .local p1, shops:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Building;>;"
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$TaskMoreShops;->mActivity:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    if-eqz v0, :cond_0

    .line 942
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$TaskMoreShops;->mActivity:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$TaskMoreShops;->mException:Ljava/lang/Exception;

    invoke-virtual {v0, p1, v1}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->onAddMoreTaskComplete(Lcom/cymobile/ymwork/types/Group;Ljava/lang/Exception;)V

    .line 944
    :cond_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/cymobile/ymwork/types/Group;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$TaskMoreShops;->onPostExecute(Lcom/cymobile/ymwork/types/Group;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 937
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$TaskMoreShops;->mActivity:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    #calls: Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->onMoreTaskStart()V
    invoke-static {v0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->access$6(Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;)V

    .line 938
    return-void
.end method

.method public setActivity(Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 920
    iput-object p1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$TaskMoreShops;->mActivity:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    .line 921
    return-void
.end method
