.class Lcom/cymobile/ymwork/SystemService$RetreiveServerSettingTask;
.super Landroid/os/AsyncTask;
.source "SystemService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/SystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RetreiveServerSettingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/cymobile/ymwork/types/ServerSettings;",
        ">;"
    }
.end annotation


# instance fields
.field private exception:Ljava/lang/Exception;

.field showResultAlways:Z

.field final synthetic this$0:Lcom/cymobile/ymwork/SystemService;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/SystemService;Z)V
    .locals 1
    .parameter
    .parameter "showAlways"

    .prologue
    .line 199
    iput-object p1, p0, Lcom/cymobile/ymwork/SystemService$RetreiveServerSettingTask;->this$0:Lcom/cymobile/ymwork/SystemService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 198
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cymobile/ymwork/SystemService$RetreiveServerSettingTask;->showResultAlways:Z

    .line 200
    iput-boolean p2, p0, Lcom/cymobile/ymwork/SystemService$RetreiveServerSettingTask;->showResultAlways:Z

    .line 201
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/cymobile/ymwork/types/ServerSettings;
    .locals 5
    .parameter "urls"

    .prologue
    .line 204
    :try_start_0
    iget-object v3, p0, Lcom/cymobile/ymwork/SystemService$RetreiveServerSettingTask;->this$0:Lcom/cymobile/ymwork/SystemService;

    #getter for: Lcom/cymobile/ymwork/SystemService;->mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;
    invoke-static {v3}, Lcom/cymobile/ymwork/SystemService;->access$3(Lcom/cymobile/ymwork/SystemService;)Lcom/cymobile/ymwork/HomeApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cymobile/ymwork/HomeApplication;->getLastKnownLocation()Lcom/cymobile/ymwork/server/Server$Location;

    move-result-object v1

    .line 205
    .local v1, loc:Lcom/cymobile/ymwork/server/Server$Location;
    iget-object v3, p0, Lcom/cymobile/ymwork/SystemService$RetreiveServerSettingTask;->this$0:Lcom/cymobile/ymwork/SystemService;

    #getter for: Lcom/cymobile/ymwork/SystemService;->mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;
    invoke-static {v3}, Lcom/cymobile/ymwork/SystemService;->access$3(Lcom/cymobile/ymwork/SystemService;)Lcom/cymobile/ymwork/HomeApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cymobile/ymwork/HomeApplication;->getServer()Lcom/cymobile/ymwork/server/Server;

    move-result-object v3

    .line 206
    iget-object v4, p0, Lcom/cymobile/ymwork/SystemService$RetreiveServerSettingTask;->this$0:Lcom/cymobile/ymwork/SystemService;

    #getter for: Lcom/cymobile/ymwork/SystemService;->contexts:Landroid/content/Context;
    invoke-static {v4}, Lcom/cymobile/ymwork/SystemService;->access$4(Lcom/cymobile/ymwork/SystemService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/cymobile/ymwork/server/Server;->serverSettings(Landroid/content/Context;Lcom/cymobile/ymwork/server/Server$Location;)Lcom/cymobile/ymwork/types/ServerSettings;

    move-result-object v2

    .line 207
    .local v2, serverSettings:Lcom/cymobile/ymwork/types/ServerSettings;
    const-string v3, "SystemService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    .end local v1           #loc:Lcom/cymobile/ymwork/server/Server$Location;
    .end local v2           #serverSettings:Lcom/cymobile/ymwork/types/ServerSettings;
    :goto_0
    return-object v2

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 211
    iput-object v0, p0, Lcom/cymobile/ymwork/SystemService$RetreiveServerSettingTask;->exception:Ljava/lang/Exception;

    .line 212
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/SystemService$RetreiveServerSettingTask;->doInBackground([Ljava/lang/Void;)Lcom/cymobile/ymwork/types/ServerSettings;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/cymobile/ymwork/types/ServerSettings;)V
    .locals 9
    .parameter "serverSettings"

    .prologue
    .line 216
    iget-object v6, p0, Lcom/cymobile/ymwork/SystemService$RetreiveServerSettingTask;->this$0:Lcom/cymobile/ymwork/SystemService;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.cymobile.ymwork.intent.action.versionfetchdone"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/cymobile/ymwork/SystemService;->sendBroadcast(Landroid/content/Intent;)V

    .line 217
    if-eqz p1, :cond_2

    .line 218
    iget-object v6, p0, Lcom/cymobile/ymwork/SystemService$RetreiveServerSettingTask;->this$0:Lcom/cymobile/ymwork/SystemService;

    iput-object p1, v6, Lcom/cymobile/ymwork/SystemService;->currentServerSettings:Lcom/cymobile/ymwork/types/ServerSettings;

    .line 219
    sget-boolean v6, Lcom/cymobile/ymwork/SystemService;->settingParsed:Z

    if-nez v6, :cond_0

    .line 220
    const/4 v6, 0x1

    sput-boolean v6, Lcom/cymobile/ymwork/SystemService;->settingParsed:Z

    .line 223
    :try_start_0
    iget-object v6, p0, Lcom/cymobile/ymwork/SystemService$RetreiveServerSettingTask;->this$0:Lcom/cymobile/ymwork/SystemService;

    invoke-virtual {v6}, Lcom/cymobile/ymwork/SystemService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, p0, Lcom/cymobile/ymwork/SystemService$RetreiveServerSettingTask;->this$0:Lcom/cymobile/ymwork/SystemService;

    invoke-virtual {v7}, Lcom/cymobile/ymwork/SystemService;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 224
    .local v2, pinfo:Landroid/content/pm/PackageInfo;
    iget v5, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 225
    .local v5, versionNumber:I
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 226
    .local v4, versionName:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/ServerSettings;->getVersion()Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, newVersion:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    int-to-float v7, v5

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    .line 228
    iget-object v6, p0, Lcom/cymobile/ymwork/SystemService$RetreiveServerSettingTask;->this$0:Lcom/cymobile/ymwork/SystemService;

    invoke-virtual {v6}, Lcom/cymobile/ymwork/SystemService;->createVersionDialog()Landroid/app/Dialog;

    move-result-object v3

    .line 229
    .local v3, versionDialog:Landroid/app/Dialog;
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d3

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 230
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 241
    .end local v1           #newVersion:Ljava/lang/String;
    .end local v2           #pinfo:Landroid/content/pm/PackageInfo;
    .end local v3           #versionDialog:Landroid/app/Dialog;
    .end local v4           #versionName:Ljava/lang/String;
    .end local v5           #versionNumber:I
    :cond_0
    :goto_0
    return-void

    .line 231
    .restart local v1       #newVersion:Ljava/lang/String;
    .restart local v2       #pinfo:Landroid/content/pm/PackageInfo;
    .restart local v4       #versionName:Ljava/lang/String;
    .restart local v5       #versionNumber:I
    :cond_1
    iget-boolean v6, p0, Lcom/cymobile/ymwork/SystemService$RetreiveServerSettingTask;->showResultAlways:Z

    if-eqz v6, :cond_0

    .line 232
    iget-object v6, p0, Lcom/cymobile/ymwork/SystemService$RetreiveServerSettingTask;->this$0:Lcom/cymobile/ymwork/SystemService;

    const v7, 0x7f09008e

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 234
    .end local v1           #newVersion:Ljava/lang/String;
    .end local v2           #pinfo:Landroid/content/pm/PackageInfo;
    .end local v4           #versionName:Ljava/lang/String;
    .end local v5           #versionNumber:I
    :catch_0
    move-exception v0

    .line 235
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 239
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    const-string v6, "SystemService"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "serverSettings "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/cymobile/ymwork/types/ServerSettings;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/SystemService$RetreiveServerSettingTask;->onPostExecute(Lcom/cymobile/ymwork/types/ServerSettings;)V

    return-void
.end method
