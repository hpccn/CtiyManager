.class Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$GetZoneTask;
.super Landroid/os/AsyncTask;
.source "NearbySearchActivityPublicReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;
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

.field final synthetic this$0:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;


# direct methods
.method public constructor <init>(Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;)V
    .locals 0
    .parameter
    .parameter "activity"

    .prologue
    .line 211
    iput-object p1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$GetZoneTask;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 212
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 11
    .parameter "params"

    .prologue
    .line 220
    const/4 v3, 0x0

    .line 221
    .local v3, result:Z
    iget-object v8, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$GetZoneTask;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    invoke-virtual {v8}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/cymobile/ymwork/HomeApplication;

    .line 222
    .local v2, homeApplication:Lcom/cymobile/ymwork/HomeApplication;
    invoke-virtual {v2}, Lcom/cymobile/ymwork/HomeApplication;->getServer()Lcom/cymobile/ymwork/server/Server;

    move-result-object v4

    .line 224
    .local v4, server:Lcom/cymobile/ymwork/server/Server;
    :try_start_0
    iget-object v8, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$GetZoneTask;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    #getter for: Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v8}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->access$0(Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "key_GlobalZoneId"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 225
    .local v6, zonecode:Ljava/lang/String;
    iget-object v8, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$GetZoneTask;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    #getter for: Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->contexts:Landroid/content/Context;
    invoke-static {v8}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->access$1(Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v4, v8, v6}, Lcom/cymobile/ymwork/server/Server;->getZone(Landroid/content/Context;Ljava/lang/String;)Lcom/cymobile/ymwork/types/Group;

    move-result-object v7

    .line 226
    .local v7, zones:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Zone;>;"
    const-string v8, "zonezone"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 228
    iget-object v8, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$GetZoneTask;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    iput-object v7, v8, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->userSubZones:Lcom/cymobile/ymwork/types/Group;

    .line 229
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x6

    if-ne v8, v9, :cond_3

    .line 230
    iget-object v8, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$GetZoneTask;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    #getter for: Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->contexts:Landroid/content/Context;
    invoke-static {v8}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->access$1(Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/cymobile/ymwork/server/Server;->getAllComm(Landroid/content/Context;)Lcom/cymobile/ymwork/types/Group;

    move-result-object v0

    .line 231
    .local v0, comms:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Zone;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 232
    invoke-virtual {v0}, Lcom/cymobile/ymwork/types/Group;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_2

    .line 235
    iget-object v8, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$GetZoneTask;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    iget-object v8, v8, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->userSubZones:Lcom/cymobile/ymwork/types/Group;

    invoke-static {v8}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->setSubZone(Lcom/cymobile/ymwork/types/Group;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    .end local v0           #comms:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Zone;>;"
    :cond_0
    :goto_1
    const/4 v3, 0x1

    .line 248
    .end local v6           #zonecode:Ljava/lang/String;
    .end local v7           #zones:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Zone;>;"
    :cond_1
    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    return-object v8

    .line 232
    .restart local v0       #comms:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Zone;>;"
    .restart local v6       #zonecode:Ljava/lang/String;
    .restart local v7       #zones:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Zone;>;"
    :cond_2
    :try_start_1
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cymobile/ymwork/types/Zone;

    .line 233
    .local v5, zone:Lcom/cymobile/ymwork/types/Zone;
    iget-object v9, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$GetZoneTask;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    iget-object v9, v9, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->userSubZones:Lcom/cymobile/ymwork/types/Group;

    invoke-virtual {v9, v5}, Lcom/cymobile/ymwork/types/Group;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 244
    .end local v0           #comms:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Zone;>;"
    .end local v5           #zone:Lcom/cymobile/ymwork/types/Zone;
    .end local v6           #zonecode:Ljava/lang/String;
    .end local v7           #zones:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Zone;>;"
    :catch_0
    move-exception v1

    .line 245
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 246
    iput-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$GetZoneTask;->mReason:Ljava/lang/Exception;

    goto :goto_2

    .line 238
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v6       #zonecode:Ljava/lang/String;
    .restart local v7       #zones:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Zone;>;"
    :cond_3
    :try_start_2
    iget-object v8, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$GetZoneTask;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    iget-object v8, v8, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->userSubZones:Lcom/cymobile/ymwork/types/Group;

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

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$GetZoneTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 263
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$GetZoneTask;->mReason:Ljava/lang/Exception;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$GetZoneTask;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    const v1, 0x7f09006b

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 260
    :goto_0
    return-void

    .line 256
    :cond_1
    invoke-static {}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getSubZone()Lcom/cymobile/ymwork/types/Group;

    move-result-object v0

    invoke-static {v0}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->setCategory(Lcom/cymobile/ymwork/types/Group;)V

    .line 257
    invoke-static {}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getSubClasses()Lcom/cymobile/ymwork/types/Group;

    move-result-object v0

    invoke-static {v0}, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->setCategoryClass(Lcom/cymobile/ymwork/types/Group;)V

    .line 258
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$GetZoneTask;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->getFilterFragment()Lcom/cymobile/ymwork/widget/RangeFilterFragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/widget/RangeFilterFragment;->onDataChanged(I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$GetZoneTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 216
    return-void
.end method
