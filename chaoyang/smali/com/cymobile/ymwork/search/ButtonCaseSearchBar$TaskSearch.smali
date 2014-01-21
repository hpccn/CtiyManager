.class Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$TaskSearch;
.super Landroid/os/AsyncTask;
.source "ButtonCaseSearchBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskSearch"
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
.field private mActivity:Lcom/cymobile/ymwork/act/MainActivity;

.field private mException:Ljava/lang/Exception;

.field private mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;

.field final synthetic this$0:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;


# direct methods
.method public constructor <init>(Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;Lcom/cymobile/ymwork/act/MainActivity;)V
    .locals 1
    .parameter
    .parameter "activity"

    .prologue
    .line 473
    iput-object p1, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$TaskSearch;->this$0:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 474
    invoke-virtual {p2}, Lcom/cymobile/ymwork/act/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/cymobile/ymwork/HomeApplication;

    iput-object v0, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$TaskSearch;->mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;

    .line 475
    iput-object p2, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$TaskSearch;->mActivity:Lcom/cymobile/ymwork/act/MainActivity;

    .line 476
    return-void
.end method

.method private building()Lcom/cymobile/ymwork/types/Building;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cymobile/ymwork/server/error/ServerException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 506
    iget-object v5, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$TaskSearch;->this$0:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;

    iget-object v6, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$TaskSearch;->this$0:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;

    #getter for: Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mButtonText:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->access$2(Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mDispSearchText:Ljava/lang/String;

    .line 507
    .local v1, caseNumber:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x8

    if-ge v5, v6, :cond_0

    .line 508
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 509
    .local v0, c:Ljava/util/Calendar;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 510
    .local v4, year:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$TaskSearch;->this$0:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;

    #getter for: Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->access$3(Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0900a2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 512
    .end local v0           #c:Ljava/util/Calendar;
    .end local v4           #year:I
    :cond_0
    iget-object v5, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$TaskSearch;->this$0:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;

    iget-object v5, v5, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mPrefs:Landroid/content/SharedPreferences;

    const-string v6, "key_GlobalZoneId"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 513
    .local v3, userZoneId:Ljava/lang/String;
    iget-object v5, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$TaskSearch;->mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/HomeApplication;->getServer()Lcom/cymobile/ymwork/server/Server;

    move-result-object v5

    iget-object v6, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$TaskSearch;->this$0:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;

    #getter for: Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->access$3(Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;)Landroid/content/Context;

    move-result-object v6

    .line 514
    iget-object v7, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$TaskSearch;->this$0:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;

    #getter for: Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->classid:I
    invoke-static {v7}, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->access$4(Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;)I

    move-result v7

    .line 513
    invoke-virtual {v5, v6, v1, v3, v7}, Lcom/cymobile/ymwork/server/Server;->buildingDetailFullNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/cymobile/ymwork/types/Building;

    move-result-object v2

    .line 515
    .local v2, shop:Lcom/cymobile/ymwork/types/Building;
    return-object v2
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Lcom/cymobile/ymwork/types/Building;
    .locals 2
    .parameter "params"

    .prologue
    .line 484
    const/4 v0, 0x0

    .line 486
    .local v0, building:Lcom/cymobile/ymwork/types/Building;
    :try_start_0
    invoke-direct {p0}, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$TaskSearch;->building()Lcom/cymobile/ymwork/types/Building;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 491
    :goto_0
    return-object v0

    .line 487
    :catch_0
    move-exception v1

    .line 488
    .local v1, ex:Ljava/lang/Exception;
    iput-object v1, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$TaskSearch;->mException:Ljava/lang/Exception;

    .line 489
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$TaskSearch;->doInBackground([Ljava/lang/Void;)Lcom/cymobile/ymwork/types/Building;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Lcom/cymobile/ymwork/types/Building;)V
    .locals 2
    .parameter "shop"

    .prologue
    .line 500
    iget-object v0, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$TaskSearch;->mActivity:Lcom/cymobile/ymwork/act/MainActivity;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$TaskSearch;->this$0:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;

    iget-object v1, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$TaskSearch;->mException:Ljava/lang/Exception;

    #calls: Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->onTaskComplete(Lcom/cymobile/ymwork/types/Building;Ljava/lang/Exception;)V
    invoke-static {v0, p1, v1}, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->access$1(Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;Lcom/cymobile/ymwork/types/Building;Ljava/lang/Exception;)V

    .line 503
    :cond_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/cymobile/ymwork/types/Building;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$TaskSearch;->onPostExecute(Lcom/cymobile/ymwork/types/Building;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$TaskSearch;->this$0:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;

    #calls: Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->onRefreshTaskStart()V
    invoke-static {v0}, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->access$0(Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;)V

    .line 497
    return-void
.end method

.method public setActivity(Lcom/cymobile/ymwork/act/MainActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 479
    iput-object p1, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$TaskSearch;->mActivity:Lcom/cymobile/ymwork/act/MainActivity;

    .line 480
    return-void
.end method
