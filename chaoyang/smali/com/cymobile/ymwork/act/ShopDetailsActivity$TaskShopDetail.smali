.class Lcom/cymobile/ymwork/act/ShopDetailsActivity$TaskShopDetail;
.super Landroid/os/AsyncTask;
.source "ShopDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/ShopDetailsActivity;
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
        "Lcom/cymobile/ymwork/types/Building;",
        ">;"
    }
.end annotation


# instance fields
.field private mActivity:Lcom/cymobile/ymwork/act/ShopDetailsActivity;

.field private mException:Ljava/lang/Exception;

.field final synthetic this$0:Lcom/cymobile/ymwork/act/ShopDetailsActivity;


# direct methods
.method public constructor <init>(Lcom/cymobile/ymwork/act/ShopDetailsActivity;Lcom/cymobile/ymwork/act/ShopDetailsActivity;)V
    .locals 0
    .parameter
    .parameter "activity"

    .prologue
    .line 476
    iput-object p1, p0, Lcom/cymobile/ymwork/act/ShopDetailsActivity$TaskShopDetail;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 477
    iput-object p2, p0, Lcom/cymobile/ymwork/act/ShopDetailsActivity$TaskShopDetail;->mActivity:Lcom/cymobile/ymwork/act/ShopDetailsActivity;

    .line 478
    return-void
.end method

.method private shopDetail(Ljava/lang/String;I)Lcom/cymobile/ymwork/types/Building;
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
    .line 529
    iget-object v2, p0, Lcom/cymobile/ymwork/act/ShopDetailsActivity$TaskShopDetail;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsActivity;

    iget-object v2, v2, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "key_GlobalZoneId"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 530
    .local v1, userZoneId:Ljava/lang/String;
    iget-object v2, p0, Lcom/cymobile/ymwork/act/ShopDetailsActivity$TaskShopDetail;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsActivity;

    #getter for: Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;
    invoke-static {v2}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->access$6(Lcom/cymobile/ymwork/act/ShopDetailsActivity;)Lcom/cymobile/ymwork/HomeApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cymobile/ymwork/HomeApplication;->getServer()Lcom/cymobile/ymwork/server/Server;

    move-result-object v2

    iget-object v3, p0, Lcom/cymobile/ymwork/act/ShopDetailsActivity$TaskShopDetail;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsActivity;

    #getter for: Lcom/cymobile/ymwork/act/ShopDetailsActivity;->contexts:Landroid/content/Context;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->access$7(Lcom/cymobile/ymwork/act/ShopDetailsActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, p1, v1, p2}, Lcom/cymobile/ymwork/server/Server;->buildingDetailFullNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/cymobile/ymwork/types/Building;

    move-result-object v0

    .line 533
    .local v0, shop:Lcom/cymobile/ymwork/types/Building;
    return-object v0
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Lcom/cymobile/ymwork/types/Building;
    .locals 4
    .parameter "params"

    .prologue
    .line 486
    const/4 v1, 0x0

    .line 488
    .local v1, shop:Lcom/cymobile/ymwork/types/Building;
    :try_start_0
    iget-object v2, p0, Lcom/cymobile/ymwork/act/ShopDetailsActivity$TaskShopDetail;->mActivity:Lcom/cymobile/ymwork/act/ShopDetailsActivity;

    #getter for: Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mCaseid:Ljava/lang/String;
    invoke-static {v2}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->access$2(Lcom/cymobile/ymwork/act/ShopDetailsActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cymobile/ymwork/act/ShopDetailsActivity$TaskShopDetail;->mActivity:Lcom/cymobile/ymwork/act/ShopDetailsActivity;

    #getter for: Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mClassid:I
    invoke-static {v3}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->access$3(Lcom/cymobile/ymwork/act/ShopDetailsActivity;)I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/cymobile/ymwork/act/ShopDetailsActivity$TaskShopDetail;->shopDetail(Ljava/lang/String;I)Lcom/cymobile/ymwork/types/Building;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 493
    :goto_0
    return-object v1

    .line 489
    :catch_0
    move-exception v0

    .line 490
    .local v0, ex:Ljava/lang/Exception;
    iput-object v0, p0, Lcom/cymobile/ymwork/act/ShopDetailsActivity$TaskShopDetail;->mException:Ljava/lang/Exception;

    .line 491
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/ShopDetailsActivity$TaskShopDetail;->doInBackground([Ljava/lang/Void;)Lcom/cymobile/ymwork/types/Building;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Lcom/cymobile/ymwork/types/Building;)V
    .locals 2
    .parameter "shop"

    .prologue
    .line 502
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ShopDetailsActivity$TaskShopDetail;->mActivity:Lcom/cymobile/ymwork/act/ShopDetailsActivity;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ShopDetailsActivity$TaskShopDetail;->mActivity:Lcom/cymobile/ymwork/act/ShopDetailsActivity;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/ShopDetailsActivity$TaskShopDetail;->mException:Ljava/lang/Exception;

    #calls: Lcom/cymobile/ymwork/act/ShopDetailsActivity;->onTaskComplete(Lcom/cymobile/ymwork/types/Building;Ljava/lang/Exception;)V
    invoke-static {v0, p1, v1}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->access$5(Lcom/cymobile/ymwork/act/ShopDetailsActivity;Lcom/cymobile/ymwork/types/Building;Ljava/lang/Exception;)V

    .line 505
    :cond_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/cymobile/ymwork/types/Building;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/ShopDetailsActivity$TaskShopDetail;->onPostExecute(Lcom/cymobile/ymwork/types/Building;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ShopDetailsActivity$TaskShopDetail;->mActivity:Lcom/cymobile/ymwork/act/ShopDetailsActivity;

    #calls: Lcom/cymobile/ymwork/act/ShopDetailsActivity;->onLoadTaskStart()V
    invoke-static {v0}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->access$4(Lcom/cymobile/ymwork/act/ShopDetailsActivity;)V

    .line 499
    return-void
.end method

.method public setActivity(Lcom/cymobile/ymwork/act/ShopDetailsActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 481
    iput-object p1, p0, Lcom/cymobile/ymwork/act/ShopDetailsActivity$TaskShopDetail;->mActivity:Lcom/cymobile/ymwork/act/ShopDetailsActivity;

    .line 482
    return-void
.end method
