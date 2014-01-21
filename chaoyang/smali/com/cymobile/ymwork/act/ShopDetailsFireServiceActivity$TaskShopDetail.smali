.class Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity$TaskShopDetail;
.super Landroid/os/AsyncTask;
.source "ShopDetailsFireServiceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskShopDetail"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/cymobile/ymwork/types/ConstrustionField;",
        ">;"
    }
.end annotation


# instance fields
.field private mActivity:Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;

.field private mException:Ljava/lang/Exception;

.field final synthetic this$0:Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;


# direct methods
.method public constructor <init>(Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;)V
    .locals 0
    .parameter
    .parameter "activity"

    .prologue
    .line 492
    iput-object p1, p0, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity$TaskShopDetail;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 493
    iput-object p2, p0, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity$TaskShopDetail;->mActivity:Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;

    .line 494
    return-void
.end method

.method private shopDetail(Ljava/lang/String;I)Lcom/cymobile/ymwork/types/ConstrustionField;
    .locals 5
    .parameter "shopid"
    .parameter "classid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cymobile/ymwork/server/error/ServerException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 545
    iget-object v2, p0, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity$TaskShopDetail;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;

    iget-object v2, v2, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "key_GlobalZoneId"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 546
    .local v1, userZoneId:Ljava/lang/String;
    iget-object v2, p0, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity$TaskShopDetail;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;

    #getter for: Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;->mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;
    invoke-static {v2}, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;->access$6(Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;)Lcom/cymobile/ymwork/HomeApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cymobile/ymwork/HomeApplication;->getServer()Lcom/cymobile/ymwork/server/Server;

    move-result-object v2

    iget-object v3, p0, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity$TaskShopDetail;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;

    #getter for: Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;->contexts:Landroid/content/Context;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;->access$7(Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, p1, v1, p2}, Lcom/cymobile/ymwork/server/Server;->construstionFieldDetailFullNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/cymobile/ymwork/types/ConstrustionField;

    move-result-object v0

    .line 549
    .local v0, shop:Lcom/cymobile/ymwork/types/ConstrustionField;
    return-object v0
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Lcom/cymobile/ymwork/types/ConstrustionField;
    .locals 4
    .parameter "params"

    .prologue
    .line 502
    const/4 v1, 0x0

    .line 504
    .local v1, shop:Lcom/cymobile/ymwork/types/ConstrustionField;
    :try_start_0
    iget-object v2, p0, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity$TaskShopDetail;->mActivity:Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;

    #getter for: Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;->mCaseid:Ljava/lang/String;
    invoke-static {v2}, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;->access$2(Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity$TaskShopDetail;->mActivity:Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;

    #getter for: Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;->mClassid:I
    invoke-static {v3}, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;->access$3(Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;)I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity$TaskShopDetail;->shopDetail(Ljava/lang/String;I)Lcom/cymobile/ymwork/types/ConstrustionField;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 509
    :goto_0
    return-object v1

    .line 505
    :catch_0
    move-exception v0

    .line 506
    .local v0, ex:Ljava/lang/Exception;
    iput-object v0, p0, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity$TaskShopDetail;->mException:Ljava/lang/Exception;

    .line 507
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity$TaskShopDetail;->doInBackground([Ljava/lang/Void;)Lcom/cymobile/ymwork/types/ConstrustionField;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Lcom/cymobile/ymwork/types/ConstrustionField;)V
    .locals 2
    .parameter "shop"

    .prologue
    .line 518
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity$TaskShopDetail;->mActivity:Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity$TaskShopDetail;->mActivity:Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity$TaskShopDetail;->mException:Ljava/lang/Exception;

    #calls: Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;->onTaskComplete(Lcom/cymobile/ymwork/types/ConstrustionField;Ljava/lang/Exception;)V
    invoke-static {v0, p1, v1}, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;->access$5(Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;Lcom/cymobile/ymwork/types/ConstrustionField;Ljava/lang/Exception;)V

    .line 521
    :cond_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/cymobile/ymwork/types/ConstrustionField;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity$TaskShopDetail;->onPostExecute(Lcom/cymobile/ymwork/types/ConstrustionField;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity$TaskShopDetail;->mActivity:Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;

    #calls: Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;->onLoadTaskStart()V
    invoke-static {v0}, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;->access$4(Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;)V

    .line 515
    return-void
.end method

.method public setActivity(Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 497
    iput-object p1, p0, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity$TaskShopDetail;->mActivity:Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;

    .line 498
    return-void
.end method
