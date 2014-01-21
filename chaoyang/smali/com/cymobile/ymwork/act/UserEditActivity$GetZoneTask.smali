.class Lcom/cymobile/ymwork/act/UserEditActivity$GetZoneTask;
.super Landroid/os/AsyncTask;
.source "UserEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/UserEditActivity;
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

.field final synthetic this$0:Lcom/cymobile/ymwork/act/UserEditActivity;


# direct methods
.method private constructor <init>(Lcom/cymobile/ymwork/act/UserEditActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 372
    iput-object p1, p0, Lcom/cymobile/ymwork/act/UserEditActivity$GetZoneTask;->this$0:Lcom/cymobile/ymwork/act/UserEditActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cymobile/ymwork/act/UserEditActivity;Lcom/cymobile/ymwork/act/UserEditActivity$GetZoneTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 372
    invoke-direct {p0, p1}, Lcom/cymobile/ymwork/act/UserEditActivity$GetZoneTask;-><init>(Lcom/cymobile/ymwork/act/UserEditActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 9
    .parameter "params"

    .prologue
    .line 381
    const/4 v2, 0x0

    .line 382
    .local v2, result:Z
    iget-object v6, p0, Lcom/cymobile/ymwork/act/UserEditActivity$GetZoneTask;->this$0:Lcom/cymobile/ymwork/act/UserEditActivity;

    invoke-virtual {v6}, Lcom/cymobile/ymwork/act/UserEditActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/HomeApplication;

    .line 383
    .local v1, homeApplication:Lcom/cymobile/ymwork/HomeApplication;
    invoke-virtual {v1}, Lcom/cymobile/ymwork/HomeApplication;->getServer()Lcom/cymobile/ymwork/server/Server;

    move-result-object v3

    .line 385
    .local v3, server:Lcom/cymobile/ymwork/server/Server;
    :try_start_0
    iget-object v6, p0, Lcom/cymobile/ymwork/act/UserEditActivity$GetZoneTask;->this$0:Lcom/cymobile/ymwork/act/UserEditActivity;

    #getter for: Lcom/cymobile/ymwork/act/UserEditActivity;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v6}, Lcom/cymobile/ymwork/act/UserEditActivity;->access$6(Lcom/cymobile/ymwork/act/UserEditActivity;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "key_GlobalZoneId"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 386
    .local v4, zonecode:Ljava/lang/String;
    iget-object v6, p0, Lcom/cymobile/ymwork/act/UserEditActivity$GetZoneTask;->this$0:Lcom/cymobile/ymwork/act/UserEditActivity;

    #getter for: Lcom/cymobile/ymwork/act/UserEditActivity;->contexts:Landroid/content/Context;
    invoke-static {v6}, Lcom/cymobile/ymwork/act/UserEditActivity;->access$8(Lcom/cymobile/ymwork/act/UserEditActivity;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v3, v6, v4}, Lcom/cymobile/ymwork/server/Server;->getZone(Landroid/content/Context;Ljava/lang/String;)Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    .line 387
    .local v5, zones:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Zone;>;"
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 388
    iget-object v6, p0, Lcom/cymobile/ymwork/act/UserEditActivity$GetZoneTask;->this$0:Lcom/cymobile/ymwork/act/UserEditActivity;

    iput-object v5, v6, Lcom/cymobile/ymwork/act/UserEditActivity;->userSubZones:Lcom/cymobile/ymwork/types/Group;

    .line 389
    iget-object v6, p0, Lcom/cymobile/ymwork/act/UserEditActivity$GetZoneTask;->this$0:Lcom/cymobile/ymwork/act/UserEditActivity;

    iget-object v6, v6, Lcom/cymobile/ymwork/act/UserEditActivity;->userSubZones:Lcom/cymobile/ymwork/types/Group;

    invoke-static {v6}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->setSubZone(Lcom/cymobile/ymwork/types/Group;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    const/4 v2, 0x1

    .line 396
    .end local v4           #zonecode:Ljava/lang/String;
    .end local v5           #zones:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Zone;>;"
    :cond_0
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    return-object v6

    .line 392
    :catch_0
    move-exception v0

    .line 393
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 394
    iput-object v0, p0, Lcom/cymobile/ymwork/act/UserEditActivity$GetZoneTask;->mReason:Ljava/lang/Exception;

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/UserEditActivity$GetZoneTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserEditActivity$GetZoneTask;->this$0:Lcom/cymobile/ymwork/act/UserEditActivity;

    #calls: Lcom/cymobile/ymwork/act/UserEditActivity;->dismissLoadZoneDialog()V
    invoke-static {v0}, Lcom/cymobile/ymwork/act/UserEditActivity;->access$11(Lcom/cymobile/ymwork/act/UserEditActivity;)V

    .line 412
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 401
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserEditActivity$GetZoneTask;->this$0:Lcom/cymobile/ymwork/act/UserEditActivity;

    #calls: Lcom/cymobile/ymwork/act/UserEditActivity;->dismissLoadZoneDialog()V
    invoke-static {v0}, Lcom/cymobile/ymwork/act/UserEditActivity;->access$11(Lcom/cymobile/ymwork/act/UserEditActivity;)V

    .line 402
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserEditActivity$GetZoneTask;->mReason:Ljava/lang/Exception;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserEditActivity$GetZoneTask;->this$0:Lcom/cymobile/ymwork/act/UserEditActivity;

    const v1, 0x7f09006b

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 404
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserEditActivity$GetZoneTask;->this$0:Lcom/cymobile/ymwork/act/UserEditActivity;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/UserEditActivity;->finish()V

    .line 408
    :goto_0
    return-void

    .line 406
    :cond_1
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserEditActivity$GetZoneTask;->this$0:Lcom/cymobile/ymwork/act/UserEditActivity;

    iget-object v0, v0, Lcom/cymobile/ymwork/act/UserEditActivity;->handler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/UserEditActivity$GetZoneTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserEditActivity$GetZoneTask;->this$0:Lcom/cymobile/ymwork/act/UserEditActivity;

    #calls: Lcom/cymobile/ymwork/act/UserEditActivity;->showLoadZoneDialog()Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/UserEditActivity;->access$10(Lcom/cymobile/ymwork/act/UserEditActivity;)Landroid/app/ProgressDialog;

    .line 377
    return-void
.end method
