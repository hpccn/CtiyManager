.class Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$TaskShops;
.super Landroid/os/AsyncTask;
.source "MainClassConstrustionFieldAct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;
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
.field private mActivity:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;

.field private mException:Ljava/lang/Exception;

.field private mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;

.field final synthetic this$0:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;


# direct methods
.method public constructor <init>(Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;)V
    .locals 1
    .parameter
    .parameter "activity"

    .prologue
    .line 822
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 823
    invoke-virtual {p2}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/cymobile/ymwork/HomeApplication;

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$TaskShops;->mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;

    .line 824
    iput-object p2, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$TaskShops;->mActivity:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;

    .line 825
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

    .line 864
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->getFilterFragment()Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstruction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstruction;->getFilterDataSource()Lcom/cymobile/ymwork/adapter/FilterDataSource;

    move-result-object v12

    .line 865
    .local v12, ds:Lcom/cymobile/ymwork/adapter/FilterDataSource;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curCategory()Lcom/cymobile/ymwork/types/Category;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Category;->id()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 866
    .local v5, category:Ljava/lang/String;
    const-string v0, "0"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 867
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;

    iget-object v5, v0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->userZoneId:Ljava/lang/String;

    .line 869
    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;

    #getter for: Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->access$0(Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/cymobile/ymwork/SettingBase;->getListNum(Landroid/content/SharedPreferences;)I

    move-result v8

    .line 870
    .local v8, listnum:I
    if-gez v8, :cond_1

    .line 871
    const/16 v8, 0x32

    .line 873
    :cond_1
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$TaskShops;->mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/HomeApplication;->getServer()Lcom/cymobile/ymwork/server/Server;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;

    iget-object v1, v1, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->contexts:Landroid/content/Context;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;

    #getter for: Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->classid:I
    invoke-static {v2}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->access$3(Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;)I

    move-result v2

    iget-object v3, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$TaskShops;->this$0:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;

    iget-object v3, v3, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->userZoneId:Ljava/lang/String;

    invoke-virtual {v12}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curRange()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v4

    invoke-static {v4}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->toDays(I)I

    move-result v4

    .line 874
    invoke-virtual {v12}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curFilterId()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v6

    invoke-static {v6}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->getOrderDescStr(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v10, v9

    move-object v11, v9

    .line 873
    invoke-virtual/range {v0 .. v11}, Lcom/cymobile/ymwork/server/Server;->construstionfield(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;IILcom/cymobile/ymwork/server/Server$Location;Ljava/lang/String;Ljava/lang/String;)Lcom/cymobile/ymwork/types/Group;

    move-result-object v13

    .line 877
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
    .line 833
    const/4 v1, 0x0

    .line 835
    .local v1, shops:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/ConstrustionField;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$TaskShops;->shops()Lcom/cymobile/ymwork/types/Group;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 841
    :goto_0
    return-object v1

    .line 836
    :catch_0
    move-exception v0

    .line 837
    .local v0, ex:Ljava/lang/Exception;
    iput-object v0, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$TaskShops;->mException:Ljava/lang/Exception;

    .line 838
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$TaskShops;->doInBackground([Ljava/lang/Void;)Lcom/cymobile/ymwork/types/Group;

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
    .line 850
    .local p1, shops:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/ConstrustionField;>;"
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$TaskShops;->mActivity:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;

    if-eqz v0, :cond_0

    .line 851
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$TaskShops;->mActivity:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$TaskShops;->mException:Ljava/lang/Exception;

    #calls: Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->onTaskComplete(Lcom/cymobile/ymwork/types/Group;Ljava/lang/Exception;)V
    invoke-static {v0, p1, v1}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->access$2(Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;Lcom/cymobile/ymwork/types/Group;Ljava/lang/Exception;)V

    .line 853
    :cond_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/cymobile/ymwork/types/Group;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$TaskShops;->onPostExecute(Lcom/cymobile/ymwork/types/Group;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 846
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$TaskShops;->mActivity:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;

    #calls: Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->onRefreshTaskStart()V
    invoke-static {v0}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->access$1(Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;)V

    .line 847
    return-void
.end method

.method public setActivity(Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 828
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$TaskShops;->mActivity:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;

    .line 829
    return-void
.end method
