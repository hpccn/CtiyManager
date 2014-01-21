.class Lcom/cymobile/ymwork/act/MainClassFireServiceAct$TaskMoreShops;
.super Landroid/os/AsyncTask;
.source "MainClassFireServiceAct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/MainClassFireServiceAct;
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
.field private mActivity:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

.field private mException:Ljava/lang/Exception;

.field private mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;

.field final synthetic this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;


# direct methods
.method public constructor <init>(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)V
    .locals 1
    .parameter
    .parameter "activity"

    .prologue
    .line 962
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$TaskMoreShops;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 963
    invoke-virtual {p2}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/cymobile/ymwork/HomeApplication;

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$TaskMoreShops;->mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;

    .line 964
    iput-object p2, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$TaskMoreShops;->mActivity:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    .line 965
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

    .line 1003
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$TaskMoreShops;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->getFilterFragment()Lcom/cymobile/ymwork/widget/RangeFilterFragmentFire;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentFire;->getFilterDataSource()Lcom/cymobile/ymwork/adapter/FilterDataSource;

    move-result-object v12

    .line 1004
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

    .line 1005
    .local v5, category:Ljava/lang/String;
    const-string v0, "0"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1006
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$TaskMoreShops;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    iget-object v5, v0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->userZoneId:Ljava/lang/String;

    .line 1008
    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$TaskMoreShops;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    #getter for: Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->access$0(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/cymobile/ymwork/SettingBase;->getListNum(Landroid/content/SharedPreferences;)I

    move-result v8

    .line 1009
    .local v8, listnum:I
    if-gez v8, :cond_1

    .line 1010
    const/16 v8, 0x32

    .line 1012
    :cond_1
    const/4 v13, 0x0

    .line 1013
    .local v13, shops:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/ConstrustionField;>;"
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$TaskMoreShops;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    #getter for: Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->classid:I
    invoke-static {v0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->access$1(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$TaskMoreShops;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    #getter for: Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->classid:I
    invoke-static {v0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->access$1(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$TaskMoreShops;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    #getter for: Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->classid:I
    invoke-static {v0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->access$1(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_4

    .line 1014
    :cond_2
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$TaskMoreShops;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    #getter for: Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->flag:Z
    invoke-static {v0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->access$5(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1015
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$TaskMoreShops;->mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/HomeApplication;->getServer()Lcom/cymobile/ymwork/server/Server;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$TaskMoreShops;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    iget-object v1, v1, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->contexts:Landroid/content/Context;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$TaskMoreShops;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    #getter for: Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->classid:I
    invoke-static {v2}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->access$1(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)I

    move-result v2

    iget-object v3, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$TaskMoreShops;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    iget-object v3, v3, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->userZoneId:Ljava/lang/String;

    invoke-virtual {v12}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curRange()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v4

    invoke-static {v4}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->toDays(I)I

    move-result v4

    .line 1016
    invoke-virtual {v12}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curFilterId()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v6

    invoke-static {v6}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->getOrderDescStr(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$TaskMoreShops;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    #getter for: Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;
    invoke-static {v7}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->access$7(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v7

    move-object v10, v9

    move-object v11, v9

    .line 1015
    invoke-virtual/range {v0 .. v11}, Lcom/cymobile/ymwork/server/Server;->construstionfield(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;IILcom/cymobile/ymwork/server/Server$Location;Ljava/lang/String;Ljava/lang/String;)Lcom/cymobile/ymwork/types/Group;

    move-result-object v13

    .line 1028
    :goto_0
    return-object v13

    .line 1018
    :cond_3
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$TaskMoreShops;->mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/HomeApplication;->getServer()Lcom/cymobile/ymwork/server/Server;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$TaskMoreShops;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    iget-object v1, v1, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->contexts:Landroid/content/Context;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$TaskMoreShops;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    #getter for: Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->classid:I
    invoke-static {v2}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->access$1(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)I

    move-result v2

    iget-object v3, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$TaskMoreShops;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    iget-object v3, v3, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->userZoneId:Ljava/lang/String;

    invoke-virtual {v12}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curRange()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v4

    invoke-static {v4}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->toDays(I)I

    move-result v4

    .line 1019
    invoke-virtual {v12}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curFilterId()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v6

    invoke-static {v6}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->getOrderDescStr(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$TaskMoreShops;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    #getter for: Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;
    invoke-static {v7}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->access$7(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v7

    iget-object v10, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$TaskMoreShops;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    #getter for: Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->emphasis:Ljava/lang/String;
    invoke-static {v10}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->access$2(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)Ljava/lang/String;

    move-result-object v11

    move-object v10, v9

    .line 1018
    invoke-virtual/range {v0 .. v11}, Lcom/cymobile/ymwork/server/Server;->construstionfield(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;IILcom/cymobile/ymwork/server/Server$Location;Ljava/lang/String;Ljava/lang/String;)Lcom/cymobile/ymwork/types/Group;

    move-result-object v13

    goto :goto_0

    .line 1024
    :cond_4
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$TaskMoreShops;->mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/HomeApplication;->getServer()Lcom/cymobile/ymwork/server/Server;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$TaskMoreShops;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    iget-object v1, v1, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->contexts:Landroid/content/Context;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$TaskMoreShops;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    #getter for: Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->classid:I
    invoke-static {v2}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->access$1(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)I

    move-result v2

    iget-object v3, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$TaskMoreShops;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    iget-object v3, v3, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->userZoneId:Ljava/lang/String;

    invoke-virtual {v12}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curRange()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v4

    invoke-static {v4}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->toDays(I)I

    move-result v4

    .line 1025
    invoke-virtual {v12}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curFilterId()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v6

    invoke-static {v6}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->getOrderDescStr(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$TaskMoreShops;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    #getter for: Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;
    invoke-static {v7}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->access$7(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v7

    move-object v10, v9

    move-object v11, v9

    .line 1024
    invoke-virtual/range {v0 .. v11}, Lcom/cymobile/ymwork/server/Server;->Extra18(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;IILcom/cymobile/ymwork/server/Server$Location;Ljava/lang/String;Ljava/lang/String;)Lcom/cymobile/ymwork/types/Group;

    move-result-object v13

    goto/16 :goto_0
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
    .line 973
    const/4 v1, 0x0

    .line 975
    .local v1, shops:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/ConstrustionField;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$TaskMoreShops;->moreShops()Lcom/cymobile/ymwork/types/Group;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 980
    :goto_0
    return-object v1

    .line 976
    :catch_0
    move-exception v0

    .line 977
    .local v0, ex:Ljava/lang/Exception;
    iput-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$TaskMoreShops;->mException:Ljava/lang/Exception;

    .line 978
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$TaskMoreShops;->doInBackground([Ljava/lang/Void;)Lcom/cymobile/ymwork/types/Group;

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
    .line 989
    .local p1, shops:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/ConstrustionField;>;"
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$TaskMoreShops;->mActivity:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    if-eqz v0, :cond_0

    .line 990
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$TaskMoreShops;->mActivity:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$TaskMoreShops;->mException:Ljava/lang/Exception;

    invoke-virtual {v0, p1, v1}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->onAddMoreTaskComplete(Lcom/cymobile/ymwork/types/Group;Ljava/lang/Exception;)V

    .line 992
    :cond_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/cymobile/ymwork/types/Group;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$TaskMoreShops;->onPostExecute(Lcom/cymobile/ymwork/types/Group;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 985
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$TaskMoreShops;->mActivity:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    #calls: Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->onMoreTaskStart()V
    invoke-static {v0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->access$6(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)V

    .line 986
    return-void
.end method

.method public setActivity(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 968
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$TaskMoreShops;->mActivity:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    .line 969
    return-void
.end method
