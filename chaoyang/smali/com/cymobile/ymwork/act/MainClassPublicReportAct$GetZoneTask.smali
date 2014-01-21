.class Lcom/cymobile/ymwork/act/MainClassPublicReportAct$GetZoneTask;
.super Landroid/os/AsyncTask;
.source "MainClassPublicReportAct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/MainClassPublicReportAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetZoneTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mReason:Ljava/lang/Exception;

.field final synthetic this$0:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;


# direct methods
.method public constructor <init>(Lcom/cymobile/ymwork/act/MainClassPublicReportAct;Lcom/cymobile/ymwork/act/MainClassPublicReportAct;)V
    .locals 0
    .parameter
    .parameter "activity"

    .prologue
    .line 228
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$GetZoneTask;->this$0:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 229
    return-void
.end method

.method static synthetic access$2(Lcom/cymobile/ymwork/act/MainClassPublicReportAct$GetZoneTask;)Lcom/cymobile/ymwork/act/MainClassPublicReportAct;
    .locals 1
    .parameter

    .prologue
    .line 227
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$GetZoneTask;->this$0:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 11
    .parameter "params"

    .prologue
    .line 239
    const/4 v3, 0x0

    .line 240
    .local v3, result:Z
    iget-object v8, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$GetZoneTask;->this$0:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    invoke-virtual {v8}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/cymobile/ymwork/HomeApplication;

    .line 241
    .local v2, homeApplication:Lcom/cymobile/ymwork/HomeApplication;
    invoke-virtual {v2}, Lcom/cymobile/ymwork/HomeApplication;->getServer()Lcom/cymobile/ymwork/server/Server;

    move-result-object v4

    .line 243
    .local v4, server:Lcom/cymobile/ymwork/server/Server;
    :try_start_0
    iget-object v8, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$GetZoneTask;->this$0:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    #getter for: Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v8}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->access$0(Lcom/cymobile/ymwork/act/MainClassPublicReportAct;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 244
    const-string v9, "key_GlobalZoneId"

    const/4 v10, 0x0

    .line 243
    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 245
    .local v6, zonecode:Ljava/lang/String;
    iget-object v8, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$GetZoneTask;->this$0:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    iget-object v8, v8, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->contexts:Landroid/content/Context;

    invoke-virtual {v4, v8, v6}, Lcom/cymobile/ymwork/server/Server;->getZone(Landroid/content/Context;Ljava/lang/String;)Lcom/cymobile/ymwork/types/Group;

    move-result-object v7

    .line 246
    .local v7, zones:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Zone;>;"
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 247
    iget-object v8, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$GetZoneTask;->this$0:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    iput-object v7, v8, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->userSubZones:Lcom/cymobile/ymwork/types/Group;

    .line 248
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x6

    if-ne v8, v9, :cond_3

    .line 249
    iget-object v8, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$GetZoneTask;->this$0:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    iget-object v8, v8, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->contexts:Landroid/content/Context;

    invoke-virtual {v4, v8}, Lcom/cymobile/ymwork/server/Server;->getAllComm(Landroid/content/Context;)Lcom/cymobile/ymwork/types/Group;

    move-result-object v0

    .line 250
    .local v0, comms:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Zone;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 251
    invoke-virtual {v0}, Lcom/cymobile/ymwork/types/Group;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_2

    .line 254
    iget-object v8, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$GetZoneTask;->this$0:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    iget-object v8, v8, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->userSubZones:Lcom/cymobile/ymwork/types/Group;

    invoke-static {v8}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->setSubZone(Lcom/cymobile/ymwork/types/Group;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    .end local v0           #comms:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Zone;>;"
    :cond_0
    :goto_1
    const/4 v3, 0x1

    .line 265
    .end local v6           #zonecode:Ljava/lang/String;
    .end local v7           #zones:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Zone;>;"
    :cond_1
    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    return-object v8

    .line 251
    .restart local v0       #comms:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Zone;>;"
    .restart local v6       #zonecode:Ljava/lang/String;
    .restart local v7       #zones:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Zone;>;"
    :cond_2
    :try_start_1
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cymobile/ymwork/types/Zone;

    .line 252
    .local v5, zone:Lcom/cymobile/ymwork/types/Zone;
    iget-object v9, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$GetZoneTask;->this$0:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    iget-object v9, v9, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->userSubZones:Lcom/cymobile/ymwork/types/Group;

    invoke-virtual {v9, v5}, Lcom/cymobile/ymwork/types/Group;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 261
    .end local v0           #comms:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Zone;>;"
    .end local v5           #zone:Lcom/cymobile/ymwork/types/Zone;
    .end local v6           #zonecode:Ljava/lang/String;
    .end local v7           #zones:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Zone;>;"
    :catch_0
    move-exception v1

    .line 262
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 263
    iput-object v1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$GetZoneTask;->mReason:Ljava/lang/Exception;

    goto :goto_2

    .line 257
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v6       #zonecode:Ljava/lang/String;
    .restart local v7       #zones:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Zone;>;"
    :cond_3
    :try_start_2
    iget-object v8, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$GetZoneTask;->this$0:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    iget-object v8, v8, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->userSubZones:Lcom/cymobile/ymwork/types/Group;

    invoke-static {v8}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->setSubZone(Lcom/cymobile/ymwork/types/Group;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$GetZoneTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 291
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$GetZoneTask;->mReason:Ljava/lang/Exception;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$GetZoneTask;->this$0:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    new-instance v1, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$GetZoneTask$1;

    invoke-direct {v1, p0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$GetZoneTask$1;-><init>(Lcom/cymobile/ymwork/act/MainClassPublicReportAct$GetZoneTask;)V

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 287
    :goto_0
    return-void

    .line 281
    :cond_1
    invoke-static {}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getSubZone()Lcom/cymobile/ymwork/types/Group;

    move-result-object v0

    .line 280
    invoke-static {v0}, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->setCategory(Lcom/cymobile/ymwork/types/Group;)V

    .line 283
    invoke-static {}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getSubClasses()Lcom/cymobile/ymwork/types/Group;

    move-result-object v0

    .line 282
    invoke-static {v0}, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->setCategoryClass(Lcom/cymobile/ymwork/types/Group;)V

    .line 284
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$GetZoneTask;->this$0:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->getFilterFragment()Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;

    move-result-object v0

    .line 285
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->onDataChanged(I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$GetZoneTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 235
    return-void
.end method
