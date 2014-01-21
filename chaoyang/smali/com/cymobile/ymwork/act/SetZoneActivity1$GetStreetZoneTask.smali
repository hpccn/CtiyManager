.class Lcom/cymobile/ymwork/act/SetZoneActivity1$GetStreetZoneTask;
.super Landroid/os/AsyncTask;
.source "SetZoneActivity1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/SetZoneActivity1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetStreetZoneTask"
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

.field final synthetic this$0:Lcom/cymobile/ymwork/act/SetZoneActivity1;


# direct methods
.method public constructor <init>(Lcom/cymobile/ymwork/act/SetZoneActivity1;)V
    .locals 0
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1$GetStreetZoneTask;->this$0:Lcom/cymobile/ymwork/act/SetZoneActivity1;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 231
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 7
    .parameter "params"

    .prologue
    .line 239
    const/4 v2, 0x0

    .line 240
    .local v2, result:Z
    iget-object v6, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1$GetStreetZoneTask;->this$0:Lcom/cymobile/ymwork/act/SetZoneActivity1;

    invoke-virtual {v6}, Lcom/cymobile/ymwork/act/SetZoneActivity1;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/HomeApplication;

    .line 241
    .local v1, homeApplication:Lcom/cymobile/ymwork/HomeApplication;
    invoke-virtual {v1}, Lcom/cymobile/ymwork/HomeApplication;->getServer()Lcom/cymobile/ymwork/server/Server;

    move-result-object v3

    .line 243
    .local v3, server:Lcom/cymobile/ymwork/server/Server;
    :try_start_0
    const-string v4, "110105"

    .line 244
    .local v4, zonecode:Ljava/lang/String;
    iget-object v6, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1$GetStreetZoneTask;->this$0:Lcom/cymobile/ymwork/act/SetZoneActivity1;

    #getter for: Lcom/cymobile/ymwork/act/SetZoneActivity1;->contexts:Landroid/content/Context;
    invoke-static {v6}, Lcom/cymobile/ymwork/act/SetZoneActivity1;->access$3(Lcom/cymobile/ymwork/act/SetZoneActivity1;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v3, v6, v4}, Lcom/cymobile/ymwork/server/Server;->getZone(Landroid/content/Context;Ljava/lang/String;)Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    .line 245
    .local v5, zones:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Zone;>;"
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 246
    iget-object v6, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1$GetStreetZoneTask;->this$0:Lcom/cymobile/ymwork/act/SetZoneActivity1;

    iput-object v5, v6, Lcom/cymobile/ymwork/act/SetZoneActivity1;->streetZones:Lcom/cymobile/ymwork/types/Group;

    .line 247
    iget-object v6, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1$GetStreetZoneTask;->this$0:Lcom/cymobile/ymwork/act/SetZoneActivity1;

    iget-object v6, v6, Lcom/cymobile/ymwork/act/SetZoneActivity1;->streetZones:Lcom/cymobile/ymwork/types/Group;

    invoke-static {v6}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->setStreetZone(Lcom/cymobile/ymwork/types/Group;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    const/4 v2, 0x1

    .line 254
    .end local v4           #zonecode:Ljava/lang/String;
    .end local v5           #zones:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Zone;>;"
    :cond_0
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    return-object v6

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 252
    iput-object v0, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1$GetStreetZoneTask;->mReason:Ljava/lang/Exception;

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/SetZoneActivity1$GetStreetZoneTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 269
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "result"

    .prologue
    const/16 v1, 0xb

    .line 259
    iget-object v0, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1$GetStreetZoneTask;->mReason:Ljava/lang/Exception;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1$GetStreetZoneTask;->this$0:Lcom/cymobile/ymwork/act/SetZoneActivity1;

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/SetZoneActivity1;->showDialog(I)V

    .line 266
    :goto_0
    return-void

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1$GetStreetZoneTask;->this$0:Lcom/cymobile/ymwork/act/SetZoneActivity1;

    iget-object v0, v0, Lcom/cymobile/ymwork/act/SetZoneActivity1;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/SetZoneActivity1$GetStreetZoneTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 235
    return-void
.end method
