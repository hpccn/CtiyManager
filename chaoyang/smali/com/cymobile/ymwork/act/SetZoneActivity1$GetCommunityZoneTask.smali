.class Lcom/cymobile/ymwork/act/SetZoneActivity1$GetCommunityZoneTask;
.super Landroid/os/AsyncTask;
.source "SetZoneActivity1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/SetZoneActivity1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetCommunityZoneTask"
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
    .line 324
    iput-object p1, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1$GetCommunityZoneTask;->this$0:Lcom/cymobile/ymwork/act/SetZoneActivity1;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 325
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 9
    .parameter "params"

    .prologue
    .line 333
    const/4 v2, 0x0

    .line 334
    .local v2, result:Z
    iget-object v7, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1$GetCommunityZoneTask;->this$0:Lcom/cymobile/ymwork/act/SetZoneActivity1;

    invoke-virtual {v7}, Lcom/cymobile/ymwork/act/SetZoneActivity1;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/HomeApplication;

    .line 335
    .local v1, homeApplication:Lcom/cymobile/ymwork/HomeApplication;
    invoke-virtual {v1}, Lcom/cymobile/ymwork/HomeApplication;->getServer()Lcom/cymobile/ymwork/server/Server;

    move-result-object v3

    .line 337
    .local v3, server:Lcom/cymobile/ymwork/server/Server;
    :try_start_0
    iget-object v7, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1$GetCommunityZoneTask;->this$0:Lcom/cymobile/ymwork/act/SetZoneActivity1;

    #getter for: Lcom/cymobile/ymwork/act/SetZoneActivity1;->streetZoneSpinner:Landroid/widget/Spinner;
    invoke-static {v7}, Lcom/cymobile/ymwork/act/SetZoneActivity1;->access$4(Lcom/cymobile/ymwork/act/SetZoneActivity1;)Landroid/widget/Spinner;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    .line 338
    .local v4, streetIndex:I
    invoke-static {}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getStreetZone()Lcom/cymobile/ymwork/types/Group;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getStreetZone()Lcom/cymobile/ymwork/types/Group;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v7

    if-le v7, v4, :cond_1

    .line 339
    invoke-static {}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getStreetZone()Lcom/cymobile/ymwork/types/Group;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/cymobile/ymwork/types/Group;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cymobile/ymwork/types/Zone;

    invoke-virtual {v7}, Lcom/cymobile/ymwork/types/Zone;->getZoneid()Ljava/lang/String;

    move-result-object v5

    .line 340
    .local v5, zonecode:Ljava/lang/String;
    iget-object v7, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1$GetCommunityZoneTask;->this$0:Lcom/cymobile/ymwork/act/SetZoneActivity1;

    #getter for: Lcom/cymobile/ymwork/act/SetZoneActivity1;->contexts:Landroid/content/Context;
    invoke-static {v7}, Lcom/cymobile/ymwork/act/SetZoneActivity1;->access$3(Lcom/cymobile/ymwork/act/SetZoneActivity1;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v3, v7, v5}, Lcom/cymobile/ymwork/server/Server;->getZone(Landroid/content/Context;Ljava/lang/String;)Lcom/cymobile/ymwork/types/Group;

    move-result-object v6

    .line 341
    .local v6, zones:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Zone;>;"
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 342
    iget-object v7, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1$GetCommunityZoneTask;->this$0:Lcom/cymobile/ymwork/act/SetZoneActivity1;

    iput-object v6, v7, Lcom/cymobile/ymwork/act/SetZoneActivity1;->communityZones:Lcom/cymobile/ymwork/types/Group;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    const/4 v2, 0x1

    .line 352
    .end local v4           #streetIndex:I
    .end local v5           #zonecode:Ljava/lang/String;
    .end local v6           #zones:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Zone;>;"
    :cond_0
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    return-object v7

    .line 346
    .restart local v4       #streetIndex:I
    :cond_1
    :try_start_1
    new-instance v7, Ljava/lang/Exception;

    const-string v8, "wrong"

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 348
    .end local v4           #streetIndex:I
    :catch_0
    move-exception v0

    .line 349
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 350
    iput-object v0, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1$GetCommunityZoneTask;->mReason:Ljava/lang/Exception;

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/SetZoneActivity1$GetCommunityZoneTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 366
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 357
    iget-object v0, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1$GetCommunityZoneTask;->mReason:Ljava/lang/Exception;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1$GetCommunityZoneTask;->this$0:Lcom/cymobile/ymwork/act/SetZoneActivity1;

    const v1, 0x7f09006b

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 359
    iget-object v0, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1$GetCommunityZoneTask;->this$0:Lcom/cymobile/ymwork/act/SetZoneActivity1;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/SetZoneActivity1;->finish()V

    .line 363
    :goto_0
    return-void

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1$GetCommunityZoneTask;->this$0:Lcom/cymobile/ymwork/act/SetZoneActivity1;

    iget-object v0, v0, Lcom/cymobile/ymwork/act/SetZoneActivity1;->handler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/SetZoneActivity1$GetCommunityZoneTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 329
    return-void
.end method
