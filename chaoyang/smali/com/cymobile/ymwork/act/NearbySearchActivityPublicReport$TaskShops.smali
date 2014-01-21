.class Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$TaskShops;
.super Landroid/os/AsyncTask;
.source "NearbySearchActivityPublicReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;
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
    .line 848
    iput-object p1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$TaskShops;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 849
    invoke-virtual {p2}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/cymobile/ymwork/HomeApplication;

    iput-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$TaskShops;->mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;

    .line 850
    iput-object p2, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$TaskShops;->mActivity:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    .line 851
    return-void
.end method

.method private shops()Lcom/cymobile/ymwork/types/Group;
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
    .line 890
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$TaskShops;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->getFilterFragment()Lcom/cymobile/ymwork/widget/RangeFilterFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cymobile/ymwork/widget/RangeFilterFragment;->getFilterDataSource()Lcom/cymobile/ymwork/adapter/FilterDataSource;

    move-result-object v10

    .line 891
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

    .line 892
    .local v5, category:Ljava/lang/String;
    const-string v0, "0"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 893
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$TaskShops;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    iget-object v5, v0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->userZoneId:Ljava/lang/String;

    .line 895
    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$TaskShops;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    #getter for: Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->access$0(Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/cymobile/ymwork/SettingBase;->getListNum(Landroid/content/SharedPreferences;)I

    move-result v8

    .line 896
    .local v8, listnum:I
    if-gez v8, :cond_1

    .line 897
    const/16 v8, 0x32

    .line 899
    :cond_1
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$TaskShops;->mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/HomeApplication;->getServer()Lcom/cymobile/ymwork/server/Server;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$TaskShops;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    #getter for: Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->contexts:Landroid/content/Context;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->access$1(Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$TaskShops;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    #getter for: Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->classid:I
    invoke-static {v2}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->access$2(Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;)I

    move-result v2

    iget-object v3, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$TaskShops;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    iget-object v3, v3, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->userZoneId:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curRange()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v4

    invoke-static {v4}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->toDays(I)I

    move-result v4

    .line 900
    invoke-virtual {v10}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curFilterId()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v6

    invoke-static {v6}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->getOrderDescStr(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 899
    invoke-virtual/range {v0 .. v9}, Lcom/cymobile/ymwork/server/Server;->buildings(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;IILcom/cymobile/ymwork/server/Server$Location;)Lcom/cymobile/ymwork/types/Group;

    move-result-object v11

    .line 903
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
    .line 859
    const/4 v1, 0x0

    .line 861
    .local v1, shops:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Building;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$TaskShops;->shops()Lcom/cymobile/ymwork/types/Group;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 867
    :goto_0
    return-object v1

    .line 862
    :catch_0
    move-exception v0

    .line 863
    .local v0, ex:Ljava/lang/Exception;
    iput-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$TaskShops;->mException:Ljava/lang/Exception;

    .line 864
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$TaskShops;->doInBackground([Ljava/lang/Void;)Lcom/cymobile/ymwork/types/Group;

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
    .line 876
    .local p1, shops:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Building;>;"
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$TaskShops;->mActivity:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    if-eqz v0, :cond_0

    .line 877
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$TaskShops;->mActivity:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$TaskShops;->mException:Ljava/lang/Exception;

    #calls: Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->onTaskComplete(Lcom/cymobile/ymwork/types/Group;Ljava/lang/Exception;)V
    invoke-static {v0, p1, v1}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->access$5(Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;Lcom/cymobile/ymwork/types/Group;Ljava/lang/Exception;)V

    .line 879
    :cond_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/cymobile/ymwork/types/Group;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$TaskShops;->onPostExecute(Lcom/cymobile/ymwork/types/Group;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 872
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$TaskShops;->mActivity:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    #calls: Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->onRefreshTaskStart()V
    invoke-static {v0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->access$4(Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;)V

    .line 873
    return-void
.end method

.method public setActivity(Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 854
    iput-object p1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$TaskShops;->mActivity:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    .line 855
    return-void
.end method
